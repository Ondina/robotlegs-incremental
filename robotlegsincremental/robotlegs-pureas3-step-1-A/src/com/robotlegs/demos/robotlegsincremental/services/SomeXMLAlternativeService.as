package com.robotlegs.demos.robotlegsincremental.services
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    import com.robotlegs.demos.robotlegsincremental.models.SomeConfigModel;
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
    
    import org.robotlegs.mvcs.Actor;
	
	/**
	 *
	 * @author [Ondina D. F.]
	 *
	 */
    public class SomeXMLAlternativeService extends Actor implements ISomeService
    {
        [Inject]
        public var someConfigModel:SomeConfigModel;

        protected var _parser:ISomeParser;

        [Inject]
        public function set parser(value:ISomeParser):void
        {
            _parser=value;
        }

        public function accessResources():void
        {

            var xml:XML=XML(someConfigModel.someAlternativeXMLURL().data);
            onDataReceived(xml);
        }

        protected function onDataReceived(xml:XML):void
        {
            trace("[Impl] [Service] SomeXMLAlternativeService.onDataReceived(someServiceResult:Array)");
            var someParsedResult:Array=_parser.resultsAsArray(xml);
            dispatch(new SomeServiceResultEvent(SomeServiceResultEvent.DATA_RECEIVED, someParsedResult));
        }
    }
}
