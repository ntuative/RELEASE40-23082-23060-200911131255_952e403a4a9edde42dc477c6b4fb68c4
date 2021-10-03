package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1649:Boolean = false;
      
      private var var_1646:Boolean = false;
      
      private var var_1612:String = "";
      
      private var _type:String = "";
      
      private var var_1648:Boolean = false;
      
      private var var_1538:Number = 0;
      
      private var var_1870:Number = 0;
      
      private var var_1868:Number = 0;
      
      private var var_1869:String = "";
      
      private var var_1535:Number = 0;
      
      private var var_1647:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1869 = param2;
         var_1612 = param3;
         var_1870 = param4;
         var_1868 = param5;
         var_1538 = param6;
         var_1535 = param7;
         var_1647 = param8;
         var_1646 = param9;
         var_1648 = param10;
         var_1649 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1647;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1649;
      }
      
      public function get localX() : Number
      {
         return var_1538;
      }
      
      public function get localY() : Number
      {
         return var_1535;
      }
      
      public function get canvasId() : String
      {
         return var_1869;
      }
      
      public function get altKey() : Boolean
      {
         return var_1646;
      }
      
      public function get spriteTag() : String
      {
         return var_1612;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1870;
      }
      
      public function get screenY() : Number
      {
         return var_1868;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1648;
      }
   }
}
