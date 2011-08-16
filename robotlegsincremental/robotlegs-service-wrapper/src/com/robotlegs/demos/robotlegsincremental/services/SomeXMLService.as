package com.robotlegs.demos.robotlegsincremental.services
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceErrorEvent;
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

        [Inject]
        public function set parser(value:ISomeParser):void
        {
            _parser=value;
        }

        //todo: find a name to represent all kind of resources or services (web services, file system, data bases, etc) 
        public function accessResources():void
        {
            var url:String=someConfigModel.someXMLURL();
            var urlRequest:URLRequest=new URLRequest(url);
            var urlLoader:URLLoader=new URLLoader();

            urlLoader.dataFormat=URLLoaderDataFormat.TEXT;
			
            urlLoader.addEventListener(Event.COMPLETE, onDataReceived);
            urlLoader.addEventListener(IOErrorEvent.IO_ERROR, onDataError);
            urlLoader.addEventListener(IOErrorEvent.NETWORK_ERROR, onDataError);
            urlLoader.addEventListener(IOErrorEvent.VERIFY_ERROR, onDataError);
            urlLoader.addEventListener(IOErrorEvent.DISK_ERROR, onDataError);           
            urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR, securityErrorHandler);
           //urlLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatusHandler);

            urlLoader.load(urlRequest);
        }

        protected function onDataReceived(event:Event):void
        {
            trace("[Impl] [Service] SomeXMLService.onDataReceived(someServiceResult:Array)");
            var someParsedResult:ArrayCollection=_parser.resultsAsArrayCollection(event.target.data);
            dispatch(new SomeServiceResultEvent(SomeServiceResultEvent.DATA_RECEIVED, someParsedResult));
        }

        protected function onDataError(event:IOErrorEvent):void
        {
            trace("[Impl] [Service] SomeXMLService.onDataError(event) " + event.text);
            dispatch(new SomeServiceErrorEvent(SomeServiceErrorEvent.ALTERNATIVE_DATA_REQUESTED,""));
			//this will move to a command later...
       }

        protected function securityErrorHandler(event:SecurityErrorEvent):void
        {
            trace("[Impl] [Service] SomeXMLService securityErrorHandler: " + event.text);
        }

        protected function httpStatusHandler(event:HTTPStatusEvent):void
        {
            trace("[Impl] [Service] SomeXMLService httpStatusHandler: " + event.toString());
        }
    }
}
