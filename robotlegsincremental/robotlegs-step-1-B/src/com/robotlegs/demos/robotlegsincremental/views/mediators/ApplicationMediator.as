package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class ApplicationMediator extends Mediator
    {

        public function ApplicationMediator():void
        {
            trace("[Impl] [Mediator] Constructor ApplicationMediator()");
            super();
        }

        [Inject]
        public var view:ContextView;

        override public function onRegister():void
        {
            trace("[Impl] [Mediator] ApplicationMediator.onRegister() <<<<<<<<<<<<<<<<<");
            eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
        }

        protected function onDataUpdated(event:SomeModelEvent):void
        {
            trace("[Impl] [Mediator] ApplicationMediator.onDataUpdated(event:SomeModelEvent) <<<<<<<<<<<<<<<<<");
            view.setListDataProvider(event.someUpdatedData);
        }
    }
}
