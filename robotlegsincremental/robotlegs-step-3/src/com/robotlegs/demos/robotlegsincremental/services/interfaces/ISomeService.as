package com.robotlegs.demos.robotlegsincremental.services.interfaces
{
	import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;

	public interface ISomeService
	{
		function accessRessources():void;
		function set parser(value:ISomeParser):void;
	}
}