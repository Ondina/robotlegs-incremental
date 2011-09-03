package com.robotlegs.demos.robotlegsincremental.controllers.commands.services
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeService;
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeServiceRequestCommand extends Command
    {
        [Inject]
        public var someService:ISomeService;

        override public function execute():void
        {
            trace("[Impl] [Command] SomeServiceRequestCommand.execute()");
            someService.accessResources();
        }
    }
}
