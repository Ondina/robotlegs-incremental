package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public class SomeViewStackEvent extends Event
    {

        public static const STACK_INDEX_CHANGED:String="indexChanged";

        public function SomeViewStackEvent(type:String, viewStackIndex:int, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _viewStackIndex=viewStackIndex;
            super(type, bubbles, cancelable);
        }

        private var _viewStackIndex:int;

        override public function clone():Event
        {
            return new SomeViewStackEvent(type, viewStackIndex, bubbles, cancelable);
        }

        public function get viewStackIndex():int
        {
            return _viewStackIndex;
        }
    }
}
