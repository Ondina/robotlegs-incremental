package com.robotlegs.demos.robotlegsincremental.views.mediators
{
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
    }
}
