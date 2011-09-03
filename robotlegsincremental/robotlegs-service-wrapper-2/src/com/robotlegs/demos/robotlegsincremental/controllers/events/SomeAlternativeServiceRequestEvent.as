package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeAlternativeServiceRequestEvent extends Event
    {

		public static const ALTERNATIVE_DATA_REQUESTED:String="alternativeDataRequested";

        public function SomeAlternativeServiceRequestEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
        }

        override public function clone():Event
        {
            return new SomeAlternativeServiceRequestEvent(type, bubbles, cancelable);
        }
    }
}
