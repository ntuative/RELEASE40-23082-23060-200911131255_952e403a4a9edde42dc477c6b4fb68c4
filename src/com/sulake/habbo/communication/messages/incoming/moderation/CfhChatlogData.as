package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_877:int;
      
      private var var_1827:int;
      
      private var var_1384:int;
      
      private var var_117:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1384 = param1.readInteger();
         var_1827 = param1.readInteger();
         var_877 = param1.readInteger();
         var_117 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1384);
      }
      
      public function get reportedUserId() : int
      {
         return var_877;
      }
      
      public function get callerUserId() : int
      {
         return var_1827;
      }
      
      public function get callId() : int
      {
         return var_1384;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_117;
      }
   }
}
