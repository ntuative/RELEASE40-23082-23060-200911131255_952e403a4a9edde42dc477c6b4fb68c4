package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_117:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1695:int;
      
      private var var_364:int;
      
      private var var_672:RoomData;
      
      private var var_1601:int;
      
      private var _ownerName:String;
      
      private var var_1863:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_364 = param1.readInteger();
         var_1695 = param1.readInteger();
         var_1863 = param1.readBoolean();
         var_1601 = param1.readInteger();
         _ownerName = param1.readString();
         var_117 = new RoomData(param1);
         var_672 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1695;
      }
      
      public function get event() : RoomData
      {
         return var_672;
      }
      
      public function get room() : RoomData
      {
         return var_117;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_117 != null)
         {
            var_117.dispose();
            var_117 = null;
         }
         if(var_672 != null)
         {
            var_672.dispose();
            var_672 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_364;
      }
      
      public function get ownerId() : int
      {
         return var_1601;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1863;
      }
   }
}
