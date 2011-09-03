package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeErrorEvent extends Event
    {
        public static const SOME_SERVICE_ERROR:String="someServiceError";
		public static const SOME_MESSAGE:String="someMessage";

        public function SomeErrorEvent(type:String, someMessage:String=null, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _someMessage=someMessage;
            super(type, bubbles, cancelable);
        }

        private var _someMessage:String;

        override public function clone():Event
        {
            return new SomeErrorEvent(type, someMessage, bubbles, cancelable);
        }

        public function get someMessage():String
        {
            return _someMessage;
        }
    }
}
