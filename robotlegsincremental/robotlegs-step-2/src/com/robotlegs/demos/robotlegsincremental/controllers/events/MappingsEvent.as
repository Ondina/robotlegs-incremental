package com.robotlegs.demos.robotlegsincremental.controllers.events
{
    import flash.events.Event;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class MappingsEvent extends Event
    {
        public static const MAPPING_COMPLETE:String="mappingComplete";

        public static const START_MAPPING:String="startMapping";

        public function MappingsEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
        {
            super(type, bubbles, cancelable);
        }

        override public function clone():Event
        {
            return new SomeServiceRequestEvent(type, bubbles, cancelable);
        }
    }
}
