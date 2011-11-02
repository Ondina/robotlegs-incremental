package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeServiceResultEvent extends Event
    {

        public static const DATA_RECEIVED:String="dataReceived";

        public function SomeServiceResultEvent(type:String, someServiceResult:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _someServiceResult=someServiceResult;
            super(type, bubbles, cancelable);
        }

        private var _someServiceResult:ArrayCollection;

        override public function clone():Event
        {
            return new SomeServiceResultEvent(type, someServiceResult, bubbles, cancelable);
        }

        public function get someServiceResult():ArrayCollection
        {
            return _someServiceResult;
        }
    }
}
