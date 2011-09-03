package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeAlternativeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeErrorEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeMessageView;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeRequestView;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeRequestMediator extends Mediator
    {

        public function SomeRequestMediator():void
        {
            trace("[Impl] [Mediator] Constructor SomeRequestMediator()");
            super();
        }

        [Inject]
        public var view:SomeRequestView;

        override public function onRegister():void
        {
            trace("[Impl] [Mediator] SomeRequestMediator.onRegister() <<<<<<<<<<<<<<<<<");
			eventMap.mapListener(eventDispatcher, SomeErrorEvent.SOME_SERVICE_ERROR, onSomeServiceError);
            eventMap.mapListener(view, SomeAlternativeServiceRequestEvent.ALTERNATIVE_DATA_REQUESTED, dispatch);
        }
		protected function onSomeServiceError(event:SomeErrorEvent):void
		{
			trace("SomeRequestMediator.onSomeServiceError(event)");
			view.onSomeServiceError(event.someMessage);
		}      
    }
}
