package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1540:int = 2;
      
      public static const const_309:int = 4;
      
      public static const const_1147:int = 1;
      
      public static const const_1116:int = 3;
       
      
      private var var_934:int = 0;
      
      private var var_751:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_934;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_934 = param1.readInteger();
         if(var_934 == 3)
         {
            var_751 = param1.readString();
         }
         else
         {
            var_751 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_934 = 0;
         var_751 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_751;
      }
   }
}
