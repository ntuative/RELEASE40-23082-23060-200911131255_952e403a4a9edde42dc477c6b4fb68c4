package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1598:int;
      
      private var var_1167:PetData;
      
      private var var_2036:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1598;
      }
      
      public function get petData() : PetData
      {
         return var_1167;
      }
      
      public function flush() : Boolean
      {
         var_1167 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2036;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1598 = param1.readInteger();
         var_2036 = param1.readInteger();
         var_1167 = new PetData(param1);
         return true;
      }
   }
}
