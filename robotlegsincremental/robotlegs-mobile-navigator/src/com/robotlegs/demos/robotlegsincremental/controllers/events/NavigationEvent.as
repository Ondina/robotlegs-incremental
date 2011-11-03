package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public class NavigationEvent extends Event
    {

        public static const ACTIVE_VIEW_CHANGED:String="activeViewChanged";

        public function NavigationEvent(type:String, viewClass:Class, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            _viewClass=viewClass;
            super(type, bubbles, cancelable);
        }

        private var _viewClass:Class;

        override public function clone():Event
        {
            return new NavigationEvent(type, viewClass, bubbles, cancelable);
        }

        public function get viewClass():Class
        {
            return _viewClass;
        }
    }
}
