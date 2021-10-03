package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_810:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_508:int = 2;
      
      public static const const_774:int = 1;
       
      
      private var var_2103:String;
      
      private var _disposed:Boolean;
      
      private var var_1695:int;
      
      private var var_2104:Boolean;
      
      private var var_750:String;
      
      private var var_842:PublicRoomData;
      
      private var _index:int;
      
      private var var_2102:String;
      
      private var _type:int;
      
      private var var_1544:String;
      
      private var var_843:GuestRoomData;
      
      private var var_2100:String;
      
      private var var_2101:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_2103 = param2.readString();
         var_2100 = param2.readString();
         var_2104 = param2.readInteger() == 1;
         var_2102 = param2.readString();
         var_750 = param2.readString();
         var_1695 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_774)
         {
            var_1544 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_842 = new PublicRoomData(param2);
         }
         else if(_type == const_508)
         {
            var_843 = new GuestRoomData(param2);
         }
         else if(_type == const_810)
         {
            var_2101 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1544;
      }
      
      public function get userCount() : int
      {
         return var_1695;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2104;
      }
      
      public function get picText() : String
      {
         return var_2102;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_774)
         {
            return 0;
         }
         if(this.type == const_508)
         {
            return this.var_843.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_842.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2100;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_843 != null)
         {
            this.var_843.dispose();
            this.var_843 = null;
         }
         if(this.var_842 != null)
         {
            this.var_842.dispose();
            this.var_842 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_2103;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_843;
      }
      
      public function get picRef() : String
      {
         return var_750;
      }
      
      public function get flatCategoryId() : int
      {
         return var_2101;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_842;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
