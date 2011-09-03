package
{
    import com.robotlegs.demos.robotlegsincremental.ApplicationContext;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;
    
    import flash.display.Sprite;
    import flash.display.StageAlign;
    import flash.display.StageScaleMode;
    import flash.text.TextField;

    public class ContextView extends Sprite
    {
        public function ContextView()
        {
            stage.align=StageAlign.TOP;
            stage.scaleMode=StageScaleMode.NO_SCALE;
            context=new ApplicationContext(this);
        }

        private var context:ApplicationContext;

        public function createChildren():void
        {
            trace("ContextView.createChildren()");
            var myText:TextField=new TextField();
            myText.x=10;
			myText.width=400;
            myText.text="1-A Tracking the Start-Up Process of a Robotlegs Application - Actionscript Project";
            addChild(myText);
			
			var someView:SomeView = new SomeView();
			someView.x=10;
			someView.y=20;
            addChild(someView);
        }
    }
}
