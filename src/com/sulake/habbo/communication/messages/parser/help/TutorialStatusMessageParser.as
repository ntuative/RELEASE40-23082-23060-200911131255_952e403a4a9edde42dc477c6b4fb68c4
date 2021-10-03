package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_985:Boolean;
      
      private var var_984:Boolean;
      
      private var var_983:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_985;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_984;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_983 = param1.readBoolean();
         var_984 = param1.readBoolean();
         var_985 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_983;
      }
      
      public function flush() : Boolean
      {
         var_983 = false;
         var_984 = false;
         var_985 = false;
         return true;
      }
   }
}
