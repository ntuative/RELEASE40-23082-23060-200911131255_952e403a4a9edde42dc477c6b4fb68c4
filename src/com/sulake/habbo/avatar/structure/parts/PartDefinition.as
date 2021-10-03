package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1487:int = -1;
      
      private var var_1261:Boolean;
      
      private var var_1262:String;
      
      private var var_2106:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2106 = String(param1["set-type"]);
         var_1262 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1261 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1487 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1262;
      }
      
      public function get staticId() : int
      {
         return var_1487;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1487 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1261;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1261 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1262 = param1;
      }
      
      public function get setType() : String
      {
         return var_2106;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
