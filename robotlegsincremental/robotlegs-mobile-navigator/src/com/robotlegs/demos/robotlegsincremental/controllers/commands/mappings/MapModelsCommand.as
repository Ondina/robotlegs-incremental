package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.models.NavigationModel;
    import com.robotlegs.demos.robotlegsincremental.models.SomeConfigModel;
    import com.robotlegs.demos.robotlegsincremental.models.SomeModel;
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class MapModelsCommand extends Command
    {

        override public function execute():void
        {
            injector.mapSingleton(SomeModel);
            injector.mapSingleton(SomeConfigModel);
            injector.mapSingleton(NavigationModel);
        }
    }
}
