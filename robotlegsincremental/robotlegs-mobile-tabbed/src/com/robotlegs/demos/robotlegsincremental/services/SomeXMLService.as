package com.robotlegs.demos.robotlegsincremental.services
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeAlternativeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    import com.robotlegs.demos.robotlegsincremental.models.SomeConfigModel;
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
    import flash.events.Event;
    import flash.events.HTTPStatusEvent;
    import flash.events.IOErrorEvent;
    import flash.events.SecurityErrorEvent;
    import flash.net.URLLoader;
    import flash.net.URLLoaderDataFormat;
    import flash.net.URLRequest;
    import mx.collections.ArrayCollection;
    import org.robotlegs.mvcs.Actor;

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public class SomeXMLService extends Actor implements ISomeService
    {

		[Inject]
		public var someConfigModel:SomeConfigModel;
		
		protected var _parser:ISomeParser;
		protected var urlLoader:URLLoader;
		
		[Inject]
		public function set parser(value:ISomeParser):void
		{
			_parser=value;
		}
        
		public function accessResources():void
		{
			var url:String=someConfigModel.someXMLURL();
			var urlRequest:URLRequest=new URLRequest(url);
			urlLoader=new URLLoader();
			
			urlLoader.dataFormat=URLLoaderDataFormat.TEXT;
			
			registerListeners();
			
			urlLoader.load(urlRequest);
		}


        protected function onDataReceived(event:Event):void
        {
			unregisterListeners();
			
			var someParsedResult:ArrayCollection=_parser.resultsAsArrayCollection(event.target.data);
			dispatch(new SomeServiceResultEvent(SomeServiceResultEvent.DATA_RECEIVED, someParsedResult));
        }

		protected function IOErrorHandler(event:IOErrorEvent):void
		{
			onServiceError(event.text);
		}
		
		protected function securityErrorHandler(event:SecurityErrorEvent):void
		{
			onServiceError(event.text);
		}
		
		protected function httpStatusHandler(event:HTTPStatusEvent):void
		{
			trace("[Impl] [Service] SomeXMLService httpStatusHandler: " + event.toString());
		}
		
		protected function onServiceError(message:String):void
		{
			unregisterListeners();
			urlLoader.close();			
			urlLoader=null;
			dispatch(new SomeAlternativeServiceRequestEvent(SomeAlternativeServiceRequestEvent.ALTERNATIVE_DATA_REQUESTED));
		}
		
		protected function registerListeners():void
		{
			urlLoader.addEventListener(Event.COMPLETE, onDataReceived);
			urlLoader.addEventListener(IOErrorEvent.IO_ERROR, IOErrorHandler);
			urlLoader.addEventListener(IOErrorEvent.NETWORK_ERROR, IOErrorHandler);
			urlLoader.addEventListener(IOErrorEvent.VERIFY_ERROR, IOErrorHandler);
			urlLoader.addEventListener(IOErrorEvent.DISK_ERROR, IOErrorHandler);
			urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
			//urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
		}
		
		protected function unregisterListeners():void
		{
			urlLoader.removeEventListener(Event.COMPLETE, onDataReceived);
			urlLoader.removeEventListener(IOErrorEvent.IO_ERROR, IOErrorHandler);
			urlLoader.removeEventListener(IOErrorEvent.NETWORK_ERROR, IOErrorHandler);
			urlLoader.removeEventListener(IOErrorEvent.VERIFY_ERROR, IOErrorHandler);
			urlLoader.removeEventListener(IOErrorEvent.DISK_ERROR, IOErrorHandler);
			urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
			//urlLoader.removeEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);
		}
    }
}
