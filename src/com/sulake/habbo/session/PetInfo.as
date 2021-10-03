package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1604:int;
      
      private var var_1598:int;
      
      private var var_1597:int;
      
      private var var_1603:int;
      
      private var var_1600:int;
      
      private var var_1196:int;
      
      private var var_1606:int;
      
      private var var_1599:int;
      
      private var var_1602:int;
      
      private var var_1605:int;
      
      private var _ownerName:String;
      
      private var var_1601:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1606 = param1;
      }
      
      public function get level() : int
      {
         return var_1604;
      }
      
      public function get energy() : int
      {
         return var_1602;
      }
      
      public function set respect(param1:int) : void
      {
         var_1598 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         var_1602 = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1604 = param1;
      }
      
      public function get petId() : int
      {
         return var_1196;
      }
      
      public function get experienceMax() : int
      {
         return var_1599;
      }
      
      public function get nutritionMax() : int
      {
         return var_1603;
      }
      
      public function get ownerId() : int
      {
         return var_1601;
      }
      
      public function get nutrition() : int
      {
         return var_1600;
      }
      
      public function set petId(param1:int) : void
      {
         var_1196 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         var_1600 = param1;
      }
      
      public function get method_3() : int
      {
         return var_1605;
      }
      
      public function get levelMax() : int
      {
         return var_1606;
      }
      
      public function get respect() : int
      {
         return var_1598;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1599 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1597 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1603 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1601 = param1;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get experience() : int
      {
         return var_1597;
      }
      
      public function set method_3(param1:int) : void
      {
         var_1605 = param1;
      }
   }
}
