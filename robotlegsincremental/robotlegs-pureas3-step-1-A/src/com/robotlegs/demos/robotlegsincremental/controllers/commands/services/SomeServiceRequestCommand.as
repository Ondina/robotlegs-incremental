package com.robotlegs.demos.robotlegsincremental.controllers.commands.services
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeWrapperService;
    import com.robotlegs.demos.robotlegsincremental.services.SomeXMLService;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeServiceRequestCommand extends Command
    {
        [Inject]
        public var someService:SomeXMLService;

        [Inject]
        public var wrapper:SomeWrapperService;

        override public function execute():void
        {
            trace("[Impl] [Command] SomeServiceRequestCommand.execute()");
            wrapper.implementation=someService;
            wrapper.implementation.accessResources();
        }
    }
}
