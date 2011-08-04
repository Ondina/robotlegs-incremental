package com.robotlegs.demos.robotlegsincremental
{
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping.MapControllersCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping.MapModelsCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping.MapServicesCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping.MapViewsCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
    
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

            mapMappingsCommands();

            super.startup();
        }

        protected function mapMappingsCommands():void
        {
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapControllersCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapModelsCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapServicesCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapViewsCommand, MappingsEvent, true);

            trace("**********************************************************************************");
            trace("[Impl] [Context]***************** ApplicationContext.mapMappingsCommands() dispatchEvent(new MappingsEvent(MappingsEvent.START_MAPPING));");
            trace("**********************************************************************************");
            dispatchEvent(new MappingsEvent(MappingsEvent.START_MAPPING));
        }

        protected function onApplicationComplete(event:FlexEvent):void
        {
            trace("**********************************************************************************");
            trace("[Impl] [Context]***************** ApplicationContext.onApplicationComplete(FlexEvent.APPLICATION_COMPLETE) ****************");
            trace("**********************************************************************************");
        }

        protected function onMappingComplete(event:MappingsEvent):void
        {
            trace("**********************************************************************************");
            trace("[Impl] [Context] ****************** ApplicationContext.onMappingComplete(MappingsEvent.MAPPING_COMPLETE) ******************");
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
            this.addEventListener(MappingsEvent.MAPPING_COMPLETE, onMappingComplete); //dispatched by MapViewsCommand after mapping the views			
        }
    }
}
