package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeServiceRequestEvent extends Event
    {

        public static const DATA_REQUESTED:String="dataRequested";

        public function SomeServiceRequestEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
        }

        override public function clone():Event
        {
            return new SomeServiceRequestEvent(type, bubbles, cancelable);
        }
    }
}
