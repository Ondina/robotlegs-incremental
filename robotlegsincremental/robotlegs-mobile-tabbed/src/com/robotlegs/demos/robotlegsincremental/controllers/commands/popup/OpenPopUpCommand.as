package com.robotlegs.demos.robotlegsincremental.controllers.commands.popup
{
	import com.robotlegs.demos.robotlegsincremental.controllers.events.SomePopUpEvent;
	import com.robotlegs.demos.robotlegsincremental.views.components.ListView;
	import com.robotlegs.demos.robotlegsincremental.views.components.SomeCallOutView;
	
	import org.robotlegs.mvcs.Command;

	public class OpenPopUpCommand extends Command
	{
		[Inject]
		public var event:SomePopUpEvent;

		override public function execute():void
		{
			var someCallOut:SomeCallOutView = new SomeCallOutView();
			var listView:ListView = new ListView();
			this.mediatorMap.createMediator(someCallOut);			
			someCallOut.open(event.popUpOwner, true);
			someCallOut.calloutGroup.addElement(listView);
			this.mediatorMap.createMediator(listView);
			
			//you can have any other DisplayObjectContainer as the pop-up's owner, for example the contextView (TabbedViewNavigatorApplication):  
			//someCallOut.open(this.contextView, true);
		}
	}
}