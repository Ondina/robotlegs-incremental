package com.robotlegs.demos.robotlegsincremental.views.components
{
    import com.bit101.components.List;
    
    import flash.events.Event;

    public class SomeView extends List
    {
        public function SomeView()
        {
            super(parent);
            this.name="SomeView";
            this.addEventListener(Event.ADDED_TO_STAGE, onAddedToTheStage, false, 0, false);
        }


        public function setListDataProvider(dataProvider:Array):void
        {
            this.items=dataProvider;
            trace("[Flex] SomeView.setListDataProvider(dataProvider) <<<<<<<<<<<<<<<<< " + dataProvider.toString());
        }

        protected function onAddedToTheStage(event:Event):void
        {
            trace(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SomeView.onAddedToTheStage(event) " + event.target);
        }
    }
}
