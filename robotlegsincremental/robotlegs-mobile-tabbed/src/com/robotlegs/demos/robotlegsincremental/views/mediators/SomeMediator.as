package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewStackEvent;
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeMediator extends Mediator
    {

        [Inject]
        public var view:SomeView;

        override public function onRegister():void
        {
            eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
            eventMap.mapListener(view, SomeViewStackEvent.STACK_INDEX_CHANGED, dispatch);
            serverRequest();
        }

        protected function serverRequest():void
        {
             dispatch(new SomeServiceRequestEvent(SomeServiceRequestEvent.DATA_REQUESTED));
        }

        protected function onDataUpdated(event:SomeModelEvent):void
        {
            view.setListDataProvider(event.someUpdatedData);
        }
    }
}
