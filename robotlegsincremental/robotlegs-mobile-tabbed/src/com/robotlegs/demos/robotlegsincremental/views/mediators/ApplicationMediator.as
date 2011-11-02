package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewStackEvent;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
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
            eventMap.mapListener(eventDispatcher, SomeViewStackEvent.STACK_INDEX_CHANGED, onStackIndexChanged);
            eventMap.mapListener(view, SomeViewStackEvent.STACK_INDEX_CHANGED, onStackIndexChangedFromStack);
        }

        protected function onStackIndexChanged(event:SomeViewStackEvent):void
        {
            view.changeStackIndex(event.viewStackIndex);
        }

        protected function onStackIndexChangedFromStack(event:SomeViewStackEvent):void
        {
            trace("ApplicationMediator.onIndexChangedFromView(event)" + event.viewStackIndex);
        }
    }
}
