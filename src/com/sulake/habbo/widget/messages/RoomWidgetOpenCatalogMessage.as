package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_610:String = "RWOCM_CLUB_MAIN";
      
      public static const const_563:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2059:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_563);
         var_2059 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2059;
      }
   }
}
