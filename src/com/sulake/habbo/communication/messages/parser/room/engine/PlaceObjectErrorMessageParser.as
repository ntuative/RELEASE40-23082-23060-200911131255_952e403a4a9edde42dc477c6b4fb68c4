package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PlaceObjectErrorMessageParser implements IMessageParser
   {
       
      
      private var var_1056:int;
      
      public function PlaceObjectErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1056 = 0;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1056;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1056 = param1.readInteger();
         return true;
      }
   }
}
