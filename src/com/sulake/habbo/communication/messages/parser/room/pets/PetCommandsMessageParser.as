package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_873:Array;
      
      private var var_1196:int;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1196 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_873 = new Array();
         while(_loc2_-- > 0)
         {
            var_873.push(param1.readInteger());
         }
         return true;
      }
      
      public function get enabledCommands() : Array
      {
         return var_873;
      }
      
      public function get petId() : int
      {
         return var_1196;
      }
      
      public function flush() : Boolean
      {
         var_1196 = -1;
         var_873 = null;
         return true;
      }
   }
}
