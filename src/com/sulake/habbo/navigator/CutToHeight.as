package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_169:String;
      
      private var var_389:int;
      
      private var var_184:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_169 = param1;
         var_184 = param2;
         var_389 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_184.text = var_169.substring(0,param1) + "...";
         return var_184.textHeight > var_389;
      }
   }
}
