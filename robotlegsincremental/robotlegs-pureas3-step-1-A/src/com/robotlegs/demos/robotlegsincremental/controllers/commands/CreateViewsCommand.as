package com.robotlegs.demos.robotlegsincremental.controllers.commands
{       
    import com.robotlegs.demos.robotlegsincremental.controllers.events.MappingsEvent;
    import com.robotlegs.demos.robotlegsincremental.views.components.SomeView;
    
    import flash.events.Event;
    
    import mx.events.FlexEvent;
    
    import org.robotlegs.base.ContextEvent;
    import org.robotlegs.mvcs.Command;
    

    public class CreateViewsCommand extends Command
    {
		[Inject]
		public var event:MappingsEvent;
		
        override public function execute():void
        {	
			trace("CreateViewsCommand.execute()");
			addViewToTheContextView();												
        }
		protected function addViewToTheContextView():void
		{	
			var someView:SomeView=new SomeView();
			contextView.addChild(someView);
			
			someView.x=10;
			someView.y=100;
			someView.addEventListener(Event.ADDED_TO_STAGE, onSomeViewAddedToStage);
			someView.addEventListener(FlexEvent.CREATION_COMPLETE, onSomeViewCreationComplete);
		}
		protected function onSomeViewAddedToStage(event:Event):void
		{
			trace(".....CreateViewsCommand.onSomeViewAddedToStage(event)");			
		}
		protected function onSomeViewCreationComplete(event:FlexEvent):void
		{
			trace(".....CreateViewsCommand.onSomeViewCreationComplete(event)");			
		}		
    }
}