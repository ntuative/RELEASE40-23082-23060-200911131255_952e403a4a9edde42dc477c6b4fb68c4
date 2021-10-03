package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2195:int;
      
      private var var_2193:int;
      
      private var var_2192:int;
      
      private var var_223:Array;
      
      private var var_2194:int;
      
      private var var_2196:int;
      
      private var var_309:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_309 = new Array();
         this.var_223 = new Array();
         return true;
      }
      
      public function get method_14() : int
      {
         return this.var_2195;
      }
      
      public function get friends() : Array
      {
         return this.var_223;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2192;
      }
      
      public function get categories() : Array
      {
         return this.var_309;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2193;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2196;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2196 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_2195 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_309.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_223.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2193 = param1.readInteger();
         this.var_2194 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2194;
      }
   }
}
