package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeErrorEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeMessageView;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeMessageMediator extends Mediator
    {

        public function SomeMessageMediator():void
        {
            trace("[Impl] [Mediator] Constructor SomeMessageMediator()");
            super();
        }

        [Inject]
        public var view:SomeMessageView;

        override public function onRegister():void
        {
            trace("[Impl] [Mediator] SomeMessageMediator.onRegister() <<<<<<<<<<<<<<<<<");
            eventMap.mapListener(eventDispatcher, SomeErrorEvent.SOME_MESSAGE, onSomeMessage);
         }        

        protected function onSomeMessage(event:SomeErrorEvent):void
        {
			view.showSomeMessage(event.someMessage);
        }
    }
}
