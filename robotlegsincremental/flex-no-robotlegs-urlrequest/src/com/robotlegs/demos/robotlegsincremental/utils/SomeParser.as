package com.robotlegs.demos.robotlegsincremental.utils
{
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;

	public class SomeParser implements ISomeParser
	{		
		public function resultsAsArrayCollection(results:Object):ArrayCollection
		{			
			XML.ignoreWhitespace=true;
			var loadedXML:XML=new XML(results);
			var myXMLList:XMLList=loadedXML.children();			
			var xmlListCollection: XMLListCollection= new XMLListCollection(myXMLList); 
			var resultArray:Array = xmlListCollection.toArray();			
			var resultCollection:ArrayCollection = new ArrayCollection(resultArray); 
			
			return resultCollection;
		}
	}
}