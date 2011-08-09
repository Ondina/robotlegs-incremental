package com.robotlegs.demos.robotlegsincremental.models
{
	import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
	
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	/**
	 *
	 * @author [Timur] & [Ondina D. F.]
	 *
	 */
	public class SomeModel extends Actor
	{
		
		/*protected var _someData:ArrayCollection;
		
		public function get someData():ArrayCollection
		{
		return _someData;
		}*/
		
		public function set someData(value:ArrayCollection):void
		{
			trace("[Impl] [Model] SomeModel.set someData(value)");
			
			/*	_someData = value;
			var event:SomeModelEvent = new SomeModelEvent(SomeModelEvent.DATA_UPDATED);
			event.payload = _someData;
			dispatch(event);*/
			dispatch(new SomeModelEvent(SomeModelEvent.DATA_UPDATED, value));
		}
	}
}
