package com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping
{
	import com.robotlegs.demos.robotlegsincremental.services.SomeService;
	import org.robotlegs.mvcs.Command;

	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class MapServicesCommand extends Command
	{

		override public function execute():void
		{
			trace("[Impl] [Command] MapServicesCommand.execute()");
			injector.mapSingleton(SomeService);
		}
	}
}
