package com.robotlegs.demos.robotlegsincremental.utils
{
    import flash.xml.XMLDocument;
    
    import mx.collections.ArrayCollection;
    import mx.collections.XMLListCollection;
    import mx.rpc.xml.SimpleXMLDecoder;
	
	/**
	 *
	 * @author [Ondina D. F.]
	 *
	 */
    public class SomeParser implements ISomeParser
    {
       /* public function resultsAsArrayCollection(results:Object):ArrayCollection
       {
            XML.ignoreWhitespace=true;
            var loadedXML:XML=new XML(results);
            var myXMLList:XMLList=loadedXML.children();
            var xmlListCollection:XMLListCollection=new XMLListCollection(myXMLList);
            var resultArray:Array=xmlListCollection.toArray();
            var resultCollection:ArrayCollection=new ArrayCollection(resultArray);			
           return resultCollection;
        }*/
		public function resultsAsArrayCollection(results:Object):ArrayCollection
		{
			XML.ignoreWhitespace=true;
			var loadedXML:XML=new XML(results);
			var myXMLList:XMLList=loadedXML.children();			
			var arrcol:ArrayCollection = new ArrayCollection();			
			for each (var node:* in myXMLList)
			{
				arrcol.addItem(node);
			}		
			return arrcol;
		}						
    }
}
