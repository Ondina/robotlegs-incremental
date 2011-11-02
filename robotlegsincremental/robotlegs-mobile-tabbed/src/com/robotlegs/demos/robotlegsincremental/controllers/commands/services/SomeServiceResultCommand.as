package com.robotlegs.demos.robotlegsincremental.controllers.commands.services
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    import com.robotlegs.demos.robotlegsincremental.models.SomeModel;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeServiceResultCommand extends Command
    {

        [Inject]
        public var someModel:SomeModel;

        [Inject]
        public var someServiceResultEvent:SomeServiceResultEvent;

        override public function execute():void
        {
            trace("[Impl] [Command] SomeServiceResultCommand.execute()");
            someModel.someData=someServiceResultEvent.someServiceResult;
        }
    }
}
