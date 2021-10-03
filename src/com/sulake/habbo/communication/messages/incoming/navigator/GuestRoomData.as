package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1695:int;
      
      private var var_1696:String;
      
      private var var_1698:int;
      
      private var var_1697:int;
      
      private var var_672:Boolean;
      
      private var var_1686:Boolean;
      
      private var var_364:int;
      
      private var var_1046:String;
      
      private var var_1691:int;
      
      private var var_1137:int;
      
      private var _ownerName:String;
      
      private var var_597:String;
      
      private var var_1694:int;
      
      private var var_1693:RoomThumbnailData;
      
      private var var_1689:Boolean;
      
      private var var_572:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_572 = new Array();
         super();
         var_364 = param1.readInteger();
         var_672 = param1.readBoolean();
         var_597 = param1.readString();
         _ownerName = param1.readString();
         var_1691 = param1.readInteger();
         var_1695 = param1.readInteger();
         var_1694 = param1.readInteger();
         var_1046 = param1.readString();
         var_1698 = param1.readInteger();
         var_1689 = param1.readBoolean();
         var_1697 = param1.readInteger();
         var_1137 = param1.readInteger();
         var_1696 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_572.push(_loc4_);
            _loc3_++;
         }
         var_1693 = new RoomThumbnailData(param1);
         var_1686 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1694;
      }
      
      public function get roomName() : String
      {
         return var_597;
      }
      
      public function get userCount() : int
      {
         return var_1695;
      }
      
      public function get score() : int
      {
         return var_1697;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1696;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1689;
      }
      
      public function get tags() : Array
      {
         return var_572;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1686;
      }
      
      public function get event() : Boolean
      {
         return var_672;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1137;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1698;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1693;
      }
      
      public function get doorMode() : int
      {
         return var_1691;
      }
      
      public function get flatId() : int
      {
         return var_364;
      }
      
      public function get description() : String
      {
         return var_1046;
      }
   }
}
