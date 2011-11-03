package com.robotlegs.demos.robotlegsincremental.models
{
    import com.robotlegs.demos.robotlegsincremental.views.components.AnotherView;
    import com.robotlegs.demos.robotlegsincremental.views.components.OtherView;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;

    public class NavigationModel
    {
        protected var _stackViews:Array=[SomeView, AnotherView, OtherView];

        public function get stackViews():Array
        {
            return _stackViews;
        }
    }
}
