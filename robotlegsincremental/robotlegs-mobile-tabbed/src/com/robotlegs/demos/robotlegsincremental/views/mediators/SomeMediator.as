package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomePopUpEvent;
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
			trace("SomeMediator.onRegister()");
            eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
            eventMap.mapListener(view, SomeViewStackEvent.STACK_INDEX_CHANGED, dispatch);
			eventMap.mapListener(view, SomePopUpEvent.OPEN_POPUP, dispatch);//triggers OpenPopUpCommand
			eventMap.mapListener(eventDispatcher, SomePopUpEvent.POPUP_DATA_CHANGED, onPopUpDataChanged);//data from popup
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

		protected function onPopUpDataChanged(event:SomePopUpEvent):void
		{
			view.setDataFromPopUp(event.popUpData);
		}
    }
}
