package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1961:int;
      
      private var var_2017:String;
      
      private var var_1130:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_1961;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_2017;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1130 = param1.readInteger();
         this.var_2017 = param1.readString();
         this.var_1961 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1130;
      }
   }
}
