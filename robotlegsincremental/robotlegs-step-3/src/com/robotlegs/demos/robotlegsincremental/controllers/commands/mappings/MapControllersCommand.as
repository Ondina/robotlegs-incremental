package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.services.SomeServiceRequestCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.services.SomeServiceResultCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class MapControllersCommand extends Command
    {

        override public function execute():void
        {
            trace("[Impl] [Command] MapControllersCommand.execute()");

            commandMap.mapEvent(SomeServiceRequestEvent.DATA_REQUESTED, SomeServiceRequestCommand, SomeServiceRequestEvent, true);
            commandMap.mapEvent(SomeServiceResultEvent.DATA_RECEIVED, SomeServiceResultCommand, SomeServiceResultEvent, true);
        }
    }
}
