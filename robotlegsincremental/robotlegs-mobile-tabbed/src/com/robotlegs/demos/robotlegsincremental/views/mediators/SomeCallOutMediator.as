package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomePopUpEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewStackEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeCallOutView;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class SomeCallOutMediator extends Mediator
    {
        [Inject]
        public var view:SomeCallOutView;

        override public function onRegister():void
        {
			trace("SomeCallOutMediator.onRegister");
			eventMap.mapListener(view, SomeViewStackEvent.STACK_INDEX_CHANGED, dispatch);
			eventMap.mapListener(view, SomePopUpEvent.CLOSE_POPUP, onClosePopup);			
 			view.onPopUpOpened("text from SomeCallOutMediator onregister()");
			//this.mediatorMap.createMediator(view.listView );				
        }
								
		protected function onClosePopup(event:SomePopUpEvent):void
		{
			dispatch(new SomePopUpEvent(SomePopUpEvent.POPUP_DATA_CHANGED, null, event.popUpData));
			trace("SomeCallOutMediator.onClosePopup");
			mediatorMap.removeMediator(this);
		}
	}
}
