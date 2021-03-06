package com.robotlegs.demos.robotlegsincremental.services
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
    
    import mx.collections.ArrayCollection;
    
    import org.robotlegs.mvcs.Actor;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeService extends Actor implements ISomeService
    {
        private var _parser:ISomeParser;

        [Inject]
        public function set parser(value:ISomeParser):void
        {
            _parser=value;
        }

        public function accessResources():void
        {
            var someObject:Object=[{name: "Some Name", id: 1}, {name: "Other Name", id: 2}, {name: "No Name", id: 3}];
            onDataReceived(someObject);
        }

        private function onDataReceived(someResult:Object):void
        {
            trace("[Impl] [Service] SomeService.onDataReceived(someServiceResult:Array)");
            var someParsedResult:ArrayCollection=_parser.resultsAsArrayCollection(someResult);
            dispatch(new SomeServiceResultEvent(SomeServiceResultEvent.DATA_RECEIVED, someParsedResult));
        }
    }
}
