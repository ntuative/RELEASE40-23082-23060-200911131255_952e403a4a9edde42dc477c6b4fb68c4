package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_428:int = 0;
      
      public static const const_101:int = 2;
      
      public static const const_148:int = 1;
      
      public static const const_502:Array = ["open","closed","password"];
       
      
      private var var_2008:int;
      
      private var var_2009:int;
      
      private var var_1690:Array;
      
      private var var_1686:Boolean;
      
      private var var_1046:String;
      
      private var var_1685:Boolean;
      
      private var var_1688:int;
      
      private var var_1691:int;
      
      private var var_1137:int;
      
      private var var_1687:Boolean;
      
      private var _roomId:int;
      
      private var var_1689:Boolean;
      
      private var _name:String;
      
      private var var_572:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1688;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1688 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_572;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1686;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1689;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2008 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1690 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1689 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_572 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2009;
      }
      
      public function get categoryId() : int
      {
         return var_1137;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1686 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1687 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1685 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2008;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1690;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1687;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1685;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1691 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1691;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1137 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1046 = param1;
      }
      
      public function get description() : String
      {
         return var_1046;
      }
   }
}
