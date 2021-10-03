package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1604:int;
      
      private var var_1597:int;
      
      private var var_1603:int;
      
      private var _type:int;
      
      private var var_1196:int = -1;
      
      private var var_1606:int;
      
      private var var_1600:int;
      
      private var var_1599:int;
      
      private var var_1602:int;
      
      private var var_1741:int;
      
      private var var_1605:int;
      
      private var var_1743:int;
      
      private var _petRespect:int;
      
      private var var_1740:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1742:Boolean;
      
      private var var_1601:int;
      
      private var _name:String = "";
      
      public function InfoStandPetData()
      {
         super();
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
      
      public function get nutrition() : int
      {
         return var_1600;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1599;
      }
      
      public function get id() : int
      {
         return var_1196;
      }
      
      public function get nutritionMax() : int
      {
         return var_1603;
      }
      
      public function get ownerId() : int
      {
         return var_1601;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1196 = param1.id;
         _type = param1.petType;
         var_1741 = param1.petRace;
         _image = param1.image;
         var_1742 = param1.isOwnPet;
         var_1601 = param1.ownerId;
         _ownerName = param1.ownerName;
         var_1740 = param1.canOwnerBeKicked;
         var_1604 = param1.level;
         var_1606 = param1.levelMax;
         var_1597 = param1.experience;
         var_1599 = param1.experienceMax;
         var_1602 = param1.energy;
         var_1605 = param1.method_3;
         var_1600 = param1.nutrition;
         var_1603 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1743 = param1.roomIndex;
      }
      
      public function get roomIndex() : int
      {
         return var_1743;
      }
      
      public function get type() : int
      {
         return _type;
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
      
      public function get race() : int
      {
         return var_1741;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get experience() : int
      {
         return var_1597;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return var_1740;
      }
   }
}
