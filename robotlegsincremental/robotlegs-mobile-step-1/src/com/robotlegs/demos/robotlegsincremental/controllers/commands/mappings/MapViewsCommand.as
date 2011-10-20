package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.AnotherView;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;
    import com.robotlegs.demos.robotlegsincremental.views.mediators.AnotherMediator;
    import com.robotlegs.demos.robotlegsincremental.views.mediators.ApplicationMediator;
    import com.robotlegs.demos.robotlegsincremental.views.mediators.SomeMediator;
    
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author [Timur] & [Ondina D. F.]
     *
     */
    public class MapViewsCommand extends Command
    {
        [Inject]
        public var event:MappingsEvent;

        override public function execute():void
        {
            trace("[Impl] [Command] MapViewsCommand.execute()");
            mediatorMap.mapView(SomeView, SomeMediator, null, true, true);
			mediatorMap.mapView(AnotherView, AnotherMediator, null, true, true);
            mediatorMap.mapView(ContextView, ApplicationMediator, null, true, false);

            this.dispatch(new MappingsEvent(MappingsEvent.MAPPING_COMPLETE));
        }
    }
}
