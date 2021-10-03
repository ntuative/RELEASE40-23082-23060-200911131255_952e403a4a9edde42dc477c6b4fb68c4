package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_1506:Number = 1;
      
      private var var_204:Number = 1;
      
      private var var_1838:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1838 = param1;
         var_204 = param2;
         var_1506 = param3;
      }
      
      public function get scale() : Number
      {
         return var_204;
      }
      
      public function get heightScale() : Number
      {
         return var_1506;
      }
   }
}
