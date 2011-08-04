package com.robotlegs.demos.robotlegsincremental.services
{
	import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceResultEvent;
	import org.robotlegs.mvcs.Actor;

	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class SomeService extends Actor
	{
		public function makeServerRequest():void
		{
			onServerResult([{name: "Some Name", id: 1}, {name: "Other Name", id: 2}, {name: "No Name", id: 3}]);
		}

		private function onServerResult(someServiceResult:Array):void
		{
			trace("[Impl] [Service] SomeService.onServerResult(someServiceResult:Array)");
			dispatch(new SomeServiceResultEvent(SomeServiceResultEvent.DATA_RECEIVED, someServiceResult));
		}
	}
}
