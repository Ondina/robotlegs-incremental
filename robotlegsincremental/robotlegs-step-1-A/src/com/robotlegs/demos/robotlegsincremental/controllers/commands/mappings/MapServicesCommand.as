package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeService;
    import com.robotlegs.demos.robotlegsincremental.services.interfaces.ISomeService;
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
    import com.robotlegs.demos.robotlegsincremental.utils.SomeParser;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class MapServicesCommand extends Command
    {

        override public function execute():void
        {
            trace("[Impl] [Command] MapServicesCommand.execute()");          
			injector.mapSingletonOf(ISomeService, SomeService);
			injector.mapSingletonOf(ISomeParser, SomeParser);
        }
    }
}
