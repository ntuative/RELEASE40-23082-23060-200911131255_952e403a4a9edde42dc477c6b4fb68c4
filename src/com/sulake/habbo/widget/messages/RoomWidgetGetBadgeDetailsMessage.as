package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_600:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_876:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_600);
         var_876 = param1;
      }
      
      public function get groupId() : int
      {
         return var_876;
      }
   }
}
