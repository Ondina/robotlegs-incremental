package com.robotlegs.demos.robotlegsincremental.services
{
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
    import org.robotlegs.mvcs.Actor;
	
	/**
	 *
	 * @author [Ondina D. F.]
	 *
	 */
    public class SomeWrapperService extends Actor implements ISomeService
    {
        public var implementation:ISomeService;

        protected var _parser:ISomeParser;

        [Inject]
        public function set parser(value:ISomeParser):void
        {
            _parser=value;
        }

        public function accessResources():void
        {
            implementation.accessResources();
        }
    }
}
