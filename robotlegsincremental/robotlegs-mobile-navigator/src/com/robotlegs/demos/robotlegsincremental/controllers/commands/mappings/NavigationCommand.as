package com.robotlegs.demos.robotlegsincremental.controllers.commands.mappings
{
    import com.robotlegs.demos.robotlegsincremental.controllers.events.NavigationEvent;
    import com.robotlegs.demos.robotlegsincremental.controllers.events.SomeViewListEvent;
    import com.robotlegs.demos.robotlegsincremental.models.NavigationModel;
    import org.robotlegs.mvcs.Command;

    /**
     *
     * @author  [Ondina D. F.]
     *
     */
    public class NavigationCommand extends Command
    {
        [Inject]
        public var event:SomeViewListEvent;

        [Inject]
        public var navigationModel:NavigationModel;

        override public function execute():void
        {
            dispatch(new NavigationEvent(NavigationEvent.ACTIVE_VIEW_CHANGED, navigationModel.stackViews[event.viewStackIndex]));
        }
    }
}
