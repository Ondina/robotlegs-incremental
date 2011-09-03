package com.robotlegs.demos.robotlegsincremental.models
{
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    import org.robotlegs.mvcs.Actor;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeModel extends Actor
    {

        protected var _someData:Array

        public function get someData():Array
        {
            return _someData;
        }

        public function set someData(value:Array):void
        {
            trace("[Impl] [Model] SomeModel.set someData(value)");

            _someData=value;
            dispatch(new SomeModelEvent(SomeModelEvent.DATA_UPDATED, someData));
        }
    }
}
