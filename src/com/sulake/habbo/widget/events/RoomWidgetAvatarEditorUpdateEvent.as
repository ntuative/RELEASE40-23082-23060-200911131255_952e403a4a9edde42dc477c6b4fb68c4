package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_786:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_699:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1145:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_882:String = "RWAEUE_MODE_FULL";
      
      public static const const_354:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_2067:String;
      
      private var var_2068:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_2067 = param2;
         var_2068 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_2068;
      }
      
      public function get promoImageUrl() : String
      {
         return var_2067;
      }
   }
}
