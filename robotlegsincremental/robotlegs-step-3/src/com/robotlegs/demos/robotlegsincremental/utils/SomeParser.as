package com.robotlegs.demos.robotlegsincremental.utils
{
	import mx.collections.ArrayCollection;
	import mx.utils.ArrayUtil;

	public class SomeParser implements ISomeParser
	{		
		public function resultsAsArrayCollection(results:Object):ArrayCollection
		{
			var resultsAsArray:Array=ArrayUtil.toArray(results);
			var resultsAsAC:ArrayCollection=new ArrayCollection(resultsAsArray);
			return resultsAsAC;
		}
	}
}