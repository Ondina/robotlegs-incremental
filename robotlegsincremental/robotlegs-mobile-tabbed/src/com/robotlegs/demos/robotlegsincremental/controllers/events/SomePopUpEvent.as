package com.robotlegs.demos.robotlegsincremental.controllers.events
{
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;

	public class SomePopUpEvent extends Event
	{
		public static const OPEN_POPUP:String="openPopupContainer";
		public static const CLOSE_POPUP:String="closePopupContainer";
		public static const POPUP_DATA_CHANGED:String="popupDataChanged";

		private var _popUpData:String;
		private var _popUpOwner:DisplayObjectContainer;
		
		public function SomePopUpEvent(type:String, popUpOwner:DisplayObjectContainer=null, popUpData:String=null)
		{
			_popUpData=popUpData;
			_popUpOwner=popUpOwner;
			super(type, true, true);
		}
		
		override public function clone():Event
		{
			return new SomePopUpEvent(type, popUpOwner, popUpData);
		}
		
		public function get popUpOwner():DisplayObjectContainer
		{
			return _popUpOwner;
		}
		
		public function get popUpData():String
		{
			return _popUpData;
		}
	}
}