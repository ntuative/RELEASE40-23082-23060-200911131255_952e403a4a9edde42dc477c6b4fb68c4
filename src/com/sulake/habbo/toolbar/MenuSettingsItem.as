package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1508:Array;
      
      private var var_1507:String;
      
      private var var_1510:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1507 = param1;
         var_1508 = param2;
         var_1510 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1507;
      }
      
      public function get yieldList() : Array
      {
         return var_1508;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1510;
      }
   }
}
