package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_90:Number = 0;
      
      private var var_220:int = 0;
      
      private var var_1663:int = 0;
      
      private var var_1775:Number = 0;
      
      private var var_1771:Number = 0;
      
      private var var_1772:Number = 0;
      
      private var var_1773:Number = 0;
      
      private var var_1774:Boolean = false;
      
      private var var_89:Number = 0;
      
      private var _id:int = 0;
      
      private var var_205:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_205 = [];
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_90 = param4;
         var_1773 = param5;
         var_220 = param6;
         var_1663 = param7;
         var_1775 = param8;
         var_1771 = param9;
         var_1772 = param10;
         var_1774 = param11;
         var_205 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_90;
      }
      
      public function get dir() : int
      {
         return var_220;
      }
      
      public function get localZ() : Number
      {
         return var_1773;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1774;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1663;
      }
      
      public function get targetX() : Number
      {
         return var_1775;
      }
      
      public function get targetY() : Number
      {
         return var_1771;
      }
      
      public function get targetZ() : Number
      {
         return var_1772;
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get actions() : Array
      {
         return var_205.slice();
      }
   }
}
