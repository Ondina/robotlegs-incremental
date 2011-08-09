package com.robotlegs.demos.robotlegsincremental.models.events
{
	import flash.events.Event;
	import mx.collections.ArrayCollection;
	
	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class SomeModelEvent extends Event
	{
		
		public static const DATA_UPDATED:String="dataUpdated";
		
		public function SomeModelEvent(type:String, someUpdatedData:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			_someUpdatedData=someUpdatedData;
			super(type, bubbles, cancelable);
		}
		
		protected var _someUpdatedData:ArrayCollection;
		
		override public function clone():Event
		{
			return new SomeModelEvent(type, someUpdatedData, bubbles, cancelable);
		}
		
		public function get someUpdatedData():ArrayCollection
		{
			return _someUpdatedData;
		}
	}
}
