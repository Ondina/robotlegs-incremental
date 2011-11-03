package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;
    
    import mx.collections.ArrayCollection;

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public class SomeViewListEvent extends Event
    {

        public static const LIST_INDEX_CHANGED:String="indexChanged";

        public function SomeViewListEvent(type:String, viewStackIndex:int, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _viewStackIndex=viewStackIndex;
            super(type, bubbles, cancelable);
        }

        private var _viewStackIndex:int;

        override public function clone():Event
        {
            return new SomeViewListEvent(type, viewStackIndex, bubbles, cancelable);
        }

        public function get viewStackIndex():int
        {
            return _viewStackIndex;
        }
    }
}
