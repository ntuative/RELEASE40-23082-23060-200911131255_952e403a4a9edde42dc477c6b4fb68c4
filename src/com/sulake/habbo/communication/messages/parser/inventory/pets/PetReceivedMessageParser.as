package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1009:PetData;
      
      private var var_1480:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1480 = param1.readBoolean();
         var_1009 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1480 + ", " + var_1009.id + ", " + var_1009.name + ", " + pet.figure + ", " + var_1009.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1480;
      }
      
      public function get pet() : PetData
      {
         return var_1009;
      }
   }
}
