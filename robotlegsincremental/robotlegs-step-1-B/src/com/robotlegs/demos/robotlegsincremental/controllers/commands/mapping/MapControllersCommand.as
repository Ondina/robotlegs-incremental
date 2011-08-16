package com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping
{
	import com.robotlegs.demos.robotlegsincremental.controllers.commands.service.SomeServiceRequestCommand;
	import com.robotlegs.demos.robotlegsincremental.controllers.commands.service.SomeServiceResultCommand;
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
			commandMap.mapEvent(MappingsEvent.START_MAPPING, SomeServiceRequestCommand, MappingsEvent, true);
			commandMap.mapEvent(SomeServiceResultEvent.DATA_RECEIVED, SomeServiceResultCommand, SomeServiceResultEvent, true);
		}
	}
}
