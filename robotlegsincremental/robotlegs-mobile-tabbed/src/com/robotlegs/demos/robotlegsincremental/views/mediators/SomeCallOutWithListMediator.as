package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomePopUpEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewStackEvent;
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeCallOutViewWithList;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeCallOutMediator extends Mediator
    {
        [Inject]
        public var view:SomeCallOutViewWithList;

        override public function onRegister():void
        {
			trace("SomeCallOutMediator.onRegister");
			eventMap.mapListener(eventDispatcher, SomeModelEvent.DATA_UPDATED, onDataUpdated);
			eventMap.mapListener(view, SomeViewStackEvent.STACK_INDEX_CHANGED, dispatch);
			eventMap.mapListener(view, SomePopUpEvent.CLOSE_POPUP, onClosePopup);			
 			view.onPopUpOpened("text from SomeCallOutMediator onregister()");			
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
		protected function onClosePopup(event:SomePopUpEvent):void
		{
			dispatch(new SomePopUpEvent(SomePopUpEvent.POPUP_DATA_CHANGED, null, event.popUpData));
			trace("SomeCallOutMediator.onClosePopup");
			mediatorMap.removeMediator(this);
		}
	}
}
