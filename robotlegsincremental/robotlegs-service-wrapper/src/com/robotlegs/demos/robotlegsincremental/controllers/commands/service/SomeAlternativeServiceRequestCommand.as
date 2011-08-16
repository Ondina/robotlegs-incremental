package com.robotlegs.demos.robotlegsincremental.controllers.commands.service
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeWrapperService;
    import com.robotlegs.demos.robotlegsincremental.services.SomeXMLAlternativeService;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeAlternativeServiceRequestCommand extends Command
    {
        [Inject]
        public var someService:SomeXMLAlternativeService;

        [Inject]
        public var wrapper:SomeWrapperService;

        override public function execute():void
        {
            trace("[Impl] [Command] SomeAlternativeServiceRequestCommand.execute()");
            wrapper.implementation=someService;
            wrapper.implementation.accessResources();
        }
    }
}
