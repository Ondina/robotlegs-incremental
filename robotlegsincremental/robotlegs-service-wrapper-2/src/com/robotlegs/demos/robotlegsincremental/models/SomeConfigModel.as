package com.robotlegs.demos.robotlegsincremental.models
{
    import com.robotlegs.demos.robotlegsincremental.models.vos.SomeConfigVO;

	
	/**
	 *
	 * @author [Ondina D. F.]
	 *
	 */
    public class SomeConfigModel
    {

        public function someXMLURL():String
        {
            var someConfig:SomeConfigVO=new SomeConfigVO;
            return someConfig.someXMLURL;
        }

        public function someAlternativeXMLURL():Class
        {
            [Embed(source="../resources/xml/SomeAlternativeXML.xml", mimeType="text/xml")]
            var SomeXML:Class;
            return SomeXML;
        }
    }
}
