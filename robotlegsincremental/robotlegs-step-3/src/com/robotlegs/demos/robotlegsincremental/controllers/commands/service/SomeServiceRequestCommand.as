package com.robotlegs.demos.robotlegsincremental.controllers.commands.service
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeService;
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeServiceRequestCommand extends Command
    {
        [Inject]
        public var someService:SomeService;

        override public function execute():void
        {
            trace("[Impl] [Command] SomeServiceRequestCommand.execute()");
            someService.makeServerRequest();
        }
    }
}
