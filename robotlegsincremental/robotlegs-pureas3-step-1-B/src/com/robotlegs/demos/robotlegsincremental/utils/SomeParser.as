package com.robotlegs.demos.robotlegsincremental.utils
{

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public class SomeParser implements ISomeParser
    {
 
        public function resultsAsArray(results:Object):Array
        {
            XML.ignoreWhitespace=true;
            var loadedXML:XML=new XML(results);
            var resultArray:Array=[];
            resultArray=loadedXML.someitem.somename.text().toXMLString().split("\n");
			
            return resultArray;
        }       
    }
}
