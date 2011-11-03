package com.robotlegs.demos.robotlegsincremental
{
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings.MapControllersCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings.MapModelsCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings.MapServicesCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings.MapViewsCommand;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
    
    import flash.display.DisplayObjectContainer;
    
    import org.robotlegs.mvcs.Context;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class ApplicationContext extends Context
    {

        public function ApplicationContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
        {
            super(contextView, autoStartup);
        }

        override public function startup():void
        {
            mapMappingsCommands();
        }

        protected function mapMappingsCommands():void
        {
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapControllersCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapModelsCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapServicesCommand, MappingsEvent, true);
            commandMap.mapEvent(MappingsEvent.START_MAPPING, MapViewsCommand, MappingsEvent, true);
            dispatchEvent(new MappingsEvent(MappingsEvent.START_MAPPING));
        }
    }
}
