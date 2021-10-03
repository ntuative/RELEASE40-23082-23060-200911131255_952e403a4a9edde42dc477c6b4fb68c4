package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_141:int = 1;
      
      public static const const_1269:int = 3;
      
      public static const const_381:int = 2;
       
      
      private var var_1953:int;
      
      private var var_1961:int;
      
      private var var_1958:int;
      
      private var var_1955:int;
      
      private var _state:int;
      
      private var var_364:int;
      
      private var var_1083:int;
      
      private var var_1573:int;
      
      private var var_877:int;
      
      private var _roomResources:String;
      
      private var var_1954:int;
      
      private var var_1960:int;
      
      private var var_1957:String;
      
      private var var_1575:String;
      
      private var var_1952:int = 0;
      
      private var var_1047:String;
      
      private var _message:String;
      
      private var var_1666:int;
      
      private var var_1956:String;
      
      private var var_1137:int;
      
      private var var_597:String;
      
      private var var_1959:String;
      
      private var var_1320:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_877 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1952 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1960;
      }
      
      public function set roomName(param1:String) : void
      {
         var_597 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1954 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_597;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1955 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1961;
      }
      
      public function get priority() : int
      {
         return var_1953 + var_1952;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1573 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1575;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1320) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1137;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1960 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1083;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1957 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1954;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1955;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1959 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1047 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1573;
      }
      
      public function set priority(param1:int) : void
      {
         var_1953 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1961 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1957;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1958 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1575 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1666 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1047;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1083 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1958;
      }
      
      public function set flatId(param1:int) : void
      {
         var_364 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1137 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1320 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1666;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1956 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1320;
      }
      
      public function get reportedUserId() : int
      {
         return var_877;
      }
      
      public function get flatId() : int
      {
         return var_364;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1959;
      }
      
      public function get reporterUserName() : String
      {
         return var_1956;
      }
   }
}
