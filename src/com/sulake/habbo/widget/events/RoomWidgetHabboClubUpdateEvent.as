package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_186:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1891:Boolean = false;
      
      private var var_1893:int = 0;
      
      private var var_1892:int = 0;
      
      private var var_1894:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_186,param5,param6);
         var_1894 = param1;
         var_1892 = param2;
         var_1893 = param3;
         var_1891 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1893;
      }
      
      public function get periodsLeft() : int
      {
         return var_1892;
      }
      
      public function get daysLeft() : int
      {
         return var_1894;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1891;
      }
   }
}
