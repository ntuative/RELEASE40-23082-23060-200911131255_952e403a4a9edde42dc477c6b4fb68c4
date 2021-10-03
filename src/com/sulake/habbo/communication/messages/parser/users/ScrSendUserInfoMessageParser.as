package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2072:int;
      
      private var var_1201:String;
      
      private var var_2070:int;
      
      private var var_2071:int;
      
      private var var_2074:int;
      
      private var var_2073:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1201;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2073;
      }
      
      public function get responseType() : int
      {
         return var_2071;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2070;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1201 = param1.readString();
         var_2070 = param1.readInteger();
         var_2072 = param1.readInteger();
         var_2074 = param1.readInteger();
         var_2071 = param1.readInteger();
         var_2073 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2072;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2074;
      }
   }
}
