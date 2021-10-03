package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_597:String;
      
      private var var_1625:int;
      
      private var var_1449:Boolean;
      
      private var _roomId:int;
      
      private var var_1624:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1449 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_597 = param1.readString();
         var_1624 = param1.readInteger();
         var_1625 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1449;
      }
      
      public function get roomName() : String
      {
         return var_597;
      }
      
      public function get enterMinute() : int
      {
         return var_1625;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1624;
      }
   }
}
