package com.robotlegs.demos.robotlegsincremental.controllers.commands.services
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeWrapperService;
    import com.robotlegs.demos.robotlegsincremental.services.SomeXMLAlternativeService;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author  [Ondina D. F.]
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
            wrapper.implementation=someService;
            wrapper.implementation.accessResources();
        }
    }
}
