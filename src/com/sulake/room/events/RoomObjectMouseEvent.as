package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1435:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1467:String = "ROE_MOUSE_ENTER";
      
      public static const const_339:String = "ROE_MOUSE_MOVE";
      
      public static const const_1528:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_211:String = "ROE_MOUSE_CLICK";
      
      public static const const_438:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1648:Boolean;
      
      private var var_1649:Boolean;
      
      private var var_1646:Boolean;
      
      private var var_1647:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1646 = param4;
         var_1647 = param5;
         var_1648 = param6;
         var_1649 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1649;
      }
      
      public function get altKey() : Boolean
      {
         return var_1646;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1647;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1648;
      }
   }
}
