package com.robotlegs.demos.robotlegsincremental.services.interfaces
{
    import com.robotlegs.demos.robotlegsincremental.utils.ISomeParser;

    /**
     *
     * @author [Ondina D. F.]
     *
     */
    public interface ISomeService
    {
        function accessResources():void;
        function set parser(value:ISomeParser):void;
    }
}
