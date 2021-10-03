package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1741:String;
      
      private var var_562:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_562 = param1;
         var_1741 = param2;
      }
      
      public function get race() : String
      {
         return var_1741;
      }
      
      public function get figure() : String
      {
         return var_562;
      }
   }
}
