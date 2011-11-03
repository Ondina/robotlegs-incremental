package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeAlternativeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewListEvent;
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

        [Inject]
        public var view:AnotherView;

        override public function onRegister():void
        {
            eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
            eventMap.mapListener(view, SomeViewListEvent.LIST_INDEX_CHANGED, dispatch);
            serverRequest();
        }

        protected function serverRequest():void
        {
            dispatch(new SomeAlternativeServiceRequestEvent(SomeAlternativeServiceRequestEvent.ALTERNATIVE_DATA_REQUESTED, ''));
        }

        protected function onDataUpdated(event:SomeModelEvent):void
        {
            view.setListDataProvider(event.someUpdatedData);
        }
    }
}
