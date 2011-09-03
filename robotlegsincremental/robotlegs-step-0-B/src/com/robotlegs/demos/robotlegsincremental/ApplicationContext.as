package com.robotlegs.demos.robotlegsincremental
{
    import flash.display.DisplayObjectContainer;
    
    import mx.events.FlexEvent;
    
    import org.robotlegs.base.ContextEvent;
    import org.robotlegs.mvcs.Context;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class ApplicationContext extends Context
    {

        public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
        {
            trace("[Impl] [Context] Constructor ApplicationContext(contextView, autoStartup)");
            super(contextView, autoStartup);
        }

        override public function startup():void
        {
            registerListeners();

            super.startup();
        }

        protected function onApplicationComplete(event:FlexEvent):void
        {
            trace("**********************************************************************************");
            trace("[Impl] [Context]***************** ApplicationContext.onApplicationComplete(FlexEvent.APPLICATION_COMPLETE) ****************");
            trace("**********************************************************************************");
        }

        protected function onStartUpComplete(event:ContextEvent):void
        {
            trace("**********************************************************************************");
            trace("[Impl] [Context] ****************** ApplicationContext.onStartUpComplete(ContextEvent.STARTUP_COMPLETE) *******************");
            trace("**********************************************************************************");
        }

        protected function registerListeners():void
        {
            this.contextView.addEventListener(FlexEvent.APPLICATION_COMPLETE, onApplicationComplete);
            this.addEventListener(ContextEvent.STARTUP_COMPLETE, onStartUpComplete); //dispatched by Context.startup()		
        }
    }
}
