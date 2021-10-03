package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_205:String = "RWUIUE_PEER";
      
      public static const const_197:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1181:String = "BOT";
      
      public static const const_909:int = 2;
      
      public static const const_1177:int = 0;
      
      public static const const_843:int = 3;
       
      
      private var var_1156:String = "";
      
      private var var_2026:Boolean = false;
      
      private var var_1799:int = 0;
      
      private var var_2006:int = 0;
      
      private var var_2021:Boolean = false;
      
      private var var_1157:String = "";
      
      private var var_2027:Boolean = false;
      
      private var _respectLeft:int = 0;
      
      private var var_2025:Boolean = true;
      
      private var var_876:int = 0;
      
      private var var_2023:Boolean = false;
      
      private var var_1121:Boolean = false;
      
      private var var_2028:Boolean = false;
      
      private var var_2005:int = 0;
      
      private var var_2022:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_268:Array;
      
      private var var_1119:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1798:int = 0;
      
      private var var_2024:Boolean = false;
      
      private var var_2029:int = 0;
      
      private var var_2007:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_268 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2006;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2006 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2026;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2025;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2025 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2027 = param1;
      }
      
      public function get motto() : String
      {
         return var_1156;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2023 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1121;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1156 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2024;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2007;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1121 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2022;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2005 = param1;
      }
      
      public function get badges() : Array
      {
         return var_268;
      }
      
      public function get amIController() : Boolean
      {
         return var_2021;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2021 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2024 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2029 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2007 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1157 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2027;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2023;
      }
      
      public function get carryItem() : int
      {
         return var_2005;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1119;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1119 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         _respectLeft = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2029;
      }
      
      public function get realName() : String
      {
         return var_1157;
      }
      
      public function set webID(param1:int) : void
      {
         var_1798 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_268 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2028 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2022 = param1;
      }
      
      public function get respectLeft() : int
      {
         return _respectLeft;
      }
      
      public function get webID() : int
      {
         return var_1798;
      }
      
      public function set groupId(param1:int) : void
      {
         var_876 = param1;
      }
      
      public function get xp() : int
      {
         return var_1799;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2026 = param1;
      }
      
      public function get groupId() : int
      {
         return var_876;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2028;
      }
      
      public function set xp(param1:int) : void
      {
         var_1799 = param1;
      }
   }
}
