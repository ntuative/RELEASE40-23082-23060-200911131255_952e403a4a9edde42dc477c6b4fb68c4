package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_672:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_783:int = 0;
      
      public static const const_1196:Array = [2,3,4];
       
      
      private var var_86:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_672);
         var_86 = param1;
      }
      
      public function get style() : int
      {
         return var_86;
      }
   }
}
