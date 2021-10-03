package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_903:String = "inventory_badges";
      
      public static const const_1118:String = "inventory_clothes";
      
      public static const const_1252:String = "inventory_furniture";
      
      public static const const_625:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_797:String = "inventory_effects";
       
      
      private var var_1795:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_625);
         var_1795 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1795;
      }
   }
}
