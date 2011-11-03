package com.robotlegs.demos.robotlegsincremental.models
{
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    
    import mx.collections.ArrayCollection;
    
    import org.robotlegs.mvcs.Actor;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeModel extends Actor
    {

        protected var _someData:ArrayCollection;

        public function get someData():ArrayCollection
        {
            return _someData;
        }

        public function set someData(value:ArrayCollection):void
        {
            _someData = value;
                
            dispatch(new SomeModelEvent(SomeModelEvent.DATA_UPDATED, someData));
        }
    }
}
