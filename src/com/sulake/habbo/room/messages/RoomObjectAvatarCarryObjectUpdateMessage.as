package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1014:int;
      
      private var var_1266:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1014 = param1;
         var_1266 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1014;
      }
      
      public function get itemName() : String
      {
         return var_1266;
      }
   }
}
