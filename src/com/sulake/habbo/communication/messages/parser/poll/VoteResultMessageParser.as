package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1117:int;
      
      private var var_981:String;
      
      private var var_595:Array;
      
      private var var_919:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_595.slice();
      }
      
      public function flush() : Boolean
      {
         var_981 = "";
         var_919 = [];
         var_595 = [];
         var_1117 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1117;
      }
      
      public function get question() : String
      {
         return var_981;
      }
      
      public function get choices() : Array
      {
         return var_919.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_981 = param1.readString();
         var_919 = [];
         var_595 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_919.push(param1.readString());
            var_595.push(param1.readInteger());
            _loc3_++;
         }
         var_1117 = param1.readInteger();
         return true;
      }
   }
}
