package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1558:String;
      
      private var var_364:int;
      
      private var var_1556:String;
      
      private var var_1557:String;
      
      private var var_1560:int;
      
      private var var_1559:String;
      
      private var var_1561:int;
      
      private var var_572:Array;
      
      private var var_969:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_572 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_969 = false;
            return;
         }
         this.var_969 = true;
         var_1560 = int(_loc2_);
         var_1556 = param1.readString();
         var_364 = int(param1.readString());
         var_1561 = param1.readInteger();
         var_1558 = param1.readString();
         var_1557 = param1.readString();
         var_1559 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_572.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1561;
      }
      
      public function get eventName() : String
      {
         return var_1558;
      }
      
      public function get eventDescription() : String
      {
         return var_1557;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1556;
      }
      
      public function get tags() : Array
      {
         return var_572;
      }
      
      public function get creationTime() : String
      {
         return var_1559;
      }
      
      public function get exists() : Boolean
      {
         return var_969;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1560;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_572 = null;
      }
      
      public function get flatId() : int
      {
         return var_364;
      }
   }
}
