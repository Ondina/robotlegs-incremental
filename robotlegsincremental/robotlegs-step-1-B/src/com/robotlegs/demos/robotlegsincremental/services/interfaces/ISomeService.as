package com.robotlegs.demos.robotlegsincremental.services.interfaces
{
	import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;
	
	public interface ISomeService
	{
		function accessResources():void;
		function set parser(value:ISomeParser):void;
	}
}