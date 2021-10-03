package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_952:Boolean;
      
      private var var_1228:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_952 = param1.readInteger() > 0;
         var_1228 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_952;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1228;
      }
      
      public function flush() : Boolean
      {
         var_952 = false;
         var_1228 = false;
         return true;
      }
   }
}
