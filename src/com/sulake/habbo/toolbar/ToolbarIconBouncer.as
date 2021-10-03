package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2089:Number;
      
      private var var_559:Number = 0;
      
      private var var_2088:Number;
      
      private var var_560:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2089 = param1;
         var_2088 = param2;
      }
      
      public function update() : void
      {
         var_560 += var_2088;
         var_559 += var_560;
         if(var_559 > 0)
         {
            var_559 = 0;
            var_560 = var_2089 * -1 * var_560;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_560 = param1;
         var_559 = 0;
      }
      
      public function get location() : Number
      {
         return var_559;
      }
   }
}
