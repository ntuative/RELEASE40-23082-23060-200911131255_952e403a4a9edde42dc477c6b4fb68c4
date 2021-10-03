package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2033:String;
      
      private var var_751:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2033 = param1;
         var_751 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2033;
      }
      
      public function get parameter() : String
      {
         return var_751;
      }
   }
}
