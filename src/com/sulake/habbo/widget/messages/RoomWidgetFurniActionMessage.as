package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_250:String = "RWFAM_MOVE";
      
      public static const const_548:String = "RWFUAM_ROTATE";
      
      public static const const_714:String = "RWFAM_PICKUP";
       
      
      private var var_2002:int = 0;
      
      private var var_2001:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_2002 = param2;
         var_2001 = param3;
      }
      
      public function get furniId() : int
      {
         return var_2002;
      }
      
      public function get furniCategory() : int
      {
         return var_2001;
      }
   }
}
