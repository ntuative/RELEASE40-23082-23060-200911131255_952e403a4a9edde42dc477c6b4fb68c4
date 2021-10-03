package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_562:String;
      
      private var var_1604:int;
      
      private var var_1598:int;
      
      private var var_1597:int;
      
      private var var_1943:int;
      
      private var var_1600:int;
      
      private var var_1196:int;
      
      private var var_1944:int;
      
      private var var_1946:int;
      
      private var var_1602:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1601:int;
      
      private var var_1945:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get maxLevel() : int
      {
         return var_1944;
      }
      
      public function get level() : int
      {
         return var_1604;
      }
      
      public function get energy() : int
      {
         return var_1602;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1943;
      }
      
      public function flush() : Boolean
      {
         var_1196 = -1;
         return true;
      }
      
      public function get nutrition() : int
      {
         return var_1600;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1946;
      }
      
      public function get maxNutrition() : int
      {
         return var_1945;
      }
      
      public function get figure() : String
      {
         return var_562;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1598;
      }
      
      public function get petId() : int
      {
         return var_1196;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1196 = param1.readInteger();
         _name = param1.readString();
         var_1604 = param1.readInteger();
         var_1944 = param1.readInteger();
         var_1597 = param1.readInteger();
         var_1946 = param1.readInteger();
         var_1602 = param1.readInteger();
         var_1943 = param1.readInteger();
         var_1600 = param1.readInteger();
         var_1945 = param1.readInteger();
         var_562 = param1.readString();
         var_1598 = param1.readInteger();
         var_1601 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get experience() : int
      {
         return var_1597;
      }
      
      public function get ownerId() : int
      {
         return var_1601;
      }
   }
}
