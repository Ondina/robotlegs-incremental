package com.robotlegs.demos.robotlegsincremental.controllers.events
{
	import flash.events.Event;

	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class SomeServiceResultEvent extends Event
	{

		public static const DATA_RECEIVED:String="dataReceived";

		public function SomeServiceResultEvent(type:String, someServiceResult:Array, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			_someServiceResult=someServiceResult;
			super(type, bubbles, cancelable);
		}

		private var _someServiceResult:Array;

		override public function clone():Event
		{
			return new SomeServiceResultEvent(type, someServiceResult, bubbles, cancelable);
		}

		public function get someServiceResult():Array
		{
			return _someServiceResult;
		}
	}
}
