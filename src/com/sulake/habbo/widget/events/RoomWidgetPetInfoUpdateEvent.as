package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_143:String = "RWPIUE_PET_INFO";
       
      
      private var var_1604:int;
      
      private var var_1597:int;
      
      private var var_1603:int;
      
      private var var_1600:int;
      
      private var var_1599:int;
      
      private var var_1606:int;
      
      private var var_1602:int;
      
      private var var_1008:int;
      
      private var var_1605:int;
      
      private var var_1743:int;
      
      private var _id:int;
      
      private var _petRespect:int;
      
      private var var_1740:Boolean;
      
      private var var_2096:int;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1742:Boolean;
      
      private var _name:String;
      
      private var var_825:int;
      
      private var var_1601:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_143,param10,param11);
         var_1008 = param1;
         var_2096 = param2;
         _name = param3;
         _id = param4;
         _image = param5;
         var_1742 = param6;
         var_1601 = param7;
         _ownerName = param8;
         var_1743 = param9;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1606 = param1;
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1742;
      }
      
      public function get level() : int
      {
         return var_1604;
      }
      
      public function get energy() : int
      {
         return var_1602;
      }
      
      public function set level(param1:int) : void
      {
         var_1604 = param1;
      }
      
      public function get petRace() : int
      {
         return var_2096;
      }
      
      public function set energy(param1:int) : void
      {
         var_1602 = param1;
      }
      
      public function get nutrition() : int
      {
         return var_1600;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         var_825 = param1;
      }
      
      public function get experienceMax() : int
      {
         return var_1599;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get nutritionMax() : int
      {
         return var_1603;
      }
      
      public function get ownerId() : int
      {
         return var_1601;
      }
      
      public function set nutrition(param1:int) : void
      {
         var_1600 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1599 = param1;
      }
      
      public function get roomIndex() : int
      {
         return var_1743;
      }
      
      public function get method_3() : int
      {
         return var_1605;
      }
      
      public function get levelMax() : int
      {
         return var_1606;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get petRespectLeft() : int
      {
         return var_825;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         var_1740 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1603 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function set petRespect(param1:int) : void
      {
         _petRespect = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1597 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return var_1740;
      }
      
      public function get experience() : int
      {
         return var_1597;
      }
      
      public function set method_3(param1:int) : void
      {
         var_1605 = param1;
      }
      
      public function get petType() : int
      {
         return var_1008;
      }
   }
}
