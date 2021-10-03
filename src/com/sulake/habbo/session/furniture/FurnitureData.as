package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1458:String = "e";
      
      public static const const_1520:String = "i";
      
      public static const const_1418:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1916:int;
      
      private var var_1150:Array;
      
      private var var_1913:int;
      
      private var var_1912:int;
      
      private var var_1914:int;
      
      private var _name:String;
      
      private var var_1915:int;
      
      private var var_1046:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1916 = param4;
         var_1915 = param5;
         var_1913 = param6;
         var_1912 = param7;
         var_1914 = param8;
         var_1150 = param9;
         _title = param10;
         var_1046 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_1912;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1914;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1915;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1916;
      }
      
      public function get tileSizeX() : int
      {
         return var_1913;
      }
      
      public function get colours() : Array
      {
         return var_1150;
      }
      
      public function get description() : String
      {
         return var_1046;
      }
   }
}
