package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1201:String = "";
      
      private var var_1200:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1200 = "";
         var_1201 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1201;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1200 = param1.readString();
         var_1201 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1200;
      }
   }
}
