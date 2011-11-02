package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeAlternativeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.AnotherView;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class AnotherMediator extends Mediator
    {

        public function AnotherMediator():void
        {
            trace("[Impl] [Mediator] Constructor AnotherMediator()");
            super();
        }

        [Inject]
        public var view:AnotherView;

        override public function onRegister():void
        {
            trace("[Impl] [Mediator] AnotherMediator.onRegister() <<<<<<<<<<<<<<<<<");
            eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
            serverRequest();
        }

        protected function serverRequest():void
        {
            trace("AnotherMediator.serverRequest()");            
            dispatch(new SomeAlternativeServiceRequestEvent(SomeAlternativeServiceRequestEvent.ALTERNATIVE_DATA_REQUESTED,''));
        }

        protected function onDataUpdated(event:SomeModelEvent):void
        {
            trace("[Impl] [Mediator] AnotherMediator.onDataUpdated(event:SomeModelEvent)<<<<<<<<<<<<<<<<<");
            view.setListDataProvider(event.someUpdatedData);
        }
    }
}
