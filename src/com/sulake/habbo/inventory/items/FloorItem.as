package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_1286:String;
      
      protected var var_2135:Boolean;
      
      protected var var_2043:int;
      
      protected var _type:int;
      
      protected var var_2044:int;
      
      protected var var_2132:Boolean;
      
      protected var var_1810:int;
      
      protected var var_2133:Boolean;
      
      protected var _id:int;
      
      protected var var_2134:int;
      
      protected var var_1780:String;
      
      protected var var_2048:Boolean;
      
      protected var _category:int;
      
      protected var var_2042:int;
      
      protected var var_2136:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:int, param11:int, param12:int, param13:String, param14:int)
      {
         super();
         _id = param1;
         _type = param2;
         var_2134 = param3;
         _category = param4;
         var_2048 = param5;
         var_2133 = param6;
         var_2135 = param7;
         var_1286 = param8;
         var_2136 = param9;
         var_2043 = param10;
         var_2042 = param11;
         var_2044 = param12;
         var_1780 = param13;
         var_1810 = param14;
      }
      
      public function get locked() : Boolean
      {
         return var_2132;
      }
      
      public function get songId() : int
      {
         return var_1810;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2132 = param1;
      }
      
      public function get ref() : int
      {
         return var_2134;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get slotId() : String
      {
         return var_1780;
      }
      
      public function get expires() : int
      {
         return var_2136;
      }
      
      public function get creationYear() : int
      {
         return var_2044;
      }
      
      public function get creationDay() : int
      {
         return var_2043;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2133;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get groupable() : Boolean
      {
         return var_2048;
      }
      
      public function get creationMonth() : int
      {
         return var_2042;
      }
      
      public function get extras() : String
      {
         return var_1286;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2135;
      }
   }
}
