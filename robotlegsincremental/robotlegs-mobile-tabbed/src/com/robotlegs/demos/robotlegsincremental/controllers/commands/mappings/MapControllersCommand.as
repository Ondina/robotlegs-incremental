package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.popup.OpenPopUpCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.services.SomeAlternativeServiceRequestCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.services.SomeServiceRequestCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.services.SomeServiceResultCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeAlternativeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomePopUpEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class MapControllersCommand extends Command
    {

        override public function execute():void
        {
            commandMap.mapEvent(SomeServiceRequestEvent.DATA_REQUESTED, SomeServiceRequestCommand, SomeServiceRequestEvent, false);
			commandMap.mapEvent(SomeAlternativeServiceRequestEvent.ALTERNATIVE_DATA_REQUESTED, SomeAlternativeServiceRequestCommand, SomeAlternativeServiceRequestEvent, false);
            commandMap.mapEvent(SomeServiceResultEvent.DATA_RECEIVED, SomeServiceResultCommand, SomeServiceResultEvent, false);
			commandMap.mapEvent(SomePopUpEvent.OPEN_POPUP, OpenPopUpCommand, SomePopUpEvent, false);
        }
    }
}
