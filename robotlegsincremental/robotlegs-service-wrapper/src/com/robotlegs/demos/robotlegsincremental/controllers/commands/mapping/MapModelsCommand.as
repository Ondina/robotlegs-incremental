package com.robotlegs.demos.robotlegsincremental.controllers.commands.mapping
{
    import com.robotlegs.demos.robotlegsincremental.models.SomeConfigModel;
    import com.robotlegs.demos.robotlegsincremental.models.SomeModel;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class MapModelsCommand extends Command
    {

        override public function execute():void
        {
            trace("[Impl] [Command] MapModelsCommand.execute()");
            injector.mapSingleton(SomeModel);
			injector.mapSingleton(SomeConfigModel);
        }
    }
}
