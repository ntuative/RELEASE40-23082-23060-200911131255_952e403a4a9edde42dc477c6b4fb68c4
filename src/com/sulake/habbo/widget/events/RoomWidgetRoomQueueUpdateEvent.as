package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_375:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_298:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_756:int;
      
      private var var_271:Boolean;
      
      private var var_1591:Boolean;
      
      private var var_1431:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_756 = param2;
         var_1591 = param3;
         var_271 = param4;
         var_1431 = param5;
      }
      
      public function get position() : int
      {
         return var_756;
      }
      
      public function get isActive() : Boolean
      {
         return var_271;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1431;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1591;
      }
   }
}
