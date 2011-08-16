package com.robotlegs.demos.robotlegsincremental.views.mediators
{
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;
    import org.robotlegs.mvcs.Mediator;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class SomeMediator extends Mediator
    {

        public function SomeMediator():void
        {
            trace("[Impl] [Mediator] Constructor SomeMediator()");
            super();
        }

        [Inject]
        public var view:SomeView;

        override public function onRegister():void
        {
            trace("[Impl] [Mediator] SomeMediator.onRegister() <<<<<<<<<<<<<<<<<");
        }
    }
}
