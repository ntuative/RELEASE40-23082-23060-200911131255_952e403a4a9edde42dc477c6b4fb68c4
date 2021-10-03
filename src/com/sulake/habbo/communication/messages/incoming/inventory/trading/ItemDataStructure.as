package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2043:int;
      
      private var var_2041:int;
      
      private var var_1014:String;
      
      private var var_1718:int;
      
      private var var_2045:String;
      
      private var var_2047:int;
      
      private var var_2044:int;
      
      private var _category:int;
      
      private var var_2046:int;
      
      private var var_2042:int;
      
      private var var_2040:int;
      
      private var var_2048:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_1718 = param1;
         var_1014 = param2;
         var_2041 = param3;
         var_2040 = param4;
         _category = param5;
         var_2045 = param6;
         var_2047 = param7;
         var_2043 = param8;
         var_2042 = param9;
         var_2044 = param10;
         var_2048 = param11;
         var_2046 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2040;
      }
      
      public function get groupable() : Boolean
      {
         return var_2048;
      }
      
      public function get creationMonth() : int
      {
         return var_2042;
      }
      
      public function get roomItemID() : int
      {
         return var_2041;
      }
      
      public function get itemType() : String
      {
         return var_1014;
      }
      
      public function get itemID() : int
      {
         return var_1718;
      }
      
      public function get itemSpecificData() : String
      {
         return var_2045;
      }
      
      public function get songID() : int
      {
         return var_2046;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2047;
      }
      
      public function get creationYear() : int
      {
         return var_2044;
      }
      
      public function get creationDay() : int
      {
         return var_2043;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
