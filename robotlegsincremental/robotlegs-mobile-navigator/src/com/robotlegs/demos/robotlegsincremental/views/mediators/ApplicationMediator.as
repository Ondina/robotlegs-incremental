package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.NavigationEvent;
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class ApplicationMediator extends Mediator
    {

        [Inject]
        public var view:ContextView;

        override public function onRegister():void
        {
            //eventMap.mapListener(view, NavigationEvent.ACTIVE_VIEW_CHANGED, onActiveViewChanged);
            eventMap.mapListener(eventDispatcher, NavigationEvent.ACTIVE_VIEW_CHANGED, changeActiveView);
        }


        protected function onActiveViewChanged(event:NavigationEvent):void
        {
            trace("ApplicationMediator.onActiveViewChanged(event)" + event.viewClass);
        }

        protected function changeActiveView(event:NavigationEvent):void
        {
            view.changeActiveView(event.viewClass);
        }
    }
}
