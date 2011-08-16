package com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping
{
    import com.robotlegs.demos.robotlegsincremental.services.SomeWrapperService;
    import com.robotlegs.demos.robotlegsincremental.services.SomeXMLAlternativeService;
    import com.robotlegs.demos.robotlegsincremental.services.SomeXMLService;
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
            injector.mapSingletonOf(ISomeParser, SomeParser);
            injector.mapSingleton(SomeXMLService);
            injector.mapSingleton(SomeXMLAlternativeService);
            //using a wrapper service - inspired by ZackPierce
            injector.mapValue(SomeWrapperService, new SomeWrapperService());
        }
    }
}
