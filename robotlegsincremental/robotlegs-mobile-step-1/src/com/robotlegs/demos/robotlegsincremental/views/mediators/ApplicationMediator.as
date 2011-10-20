package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeServiceRequestEvent;
    import com.robotlegs.demos.robotlegsincremental.models.events.SomeModelEvent;
    
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
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
        }
		protected function onDataRequested(event:SomeServiceRequestEvent):void
		{
			trace("////////////////ApplicationMediator.onDataRequested(event)");
			
		}
    }
}
