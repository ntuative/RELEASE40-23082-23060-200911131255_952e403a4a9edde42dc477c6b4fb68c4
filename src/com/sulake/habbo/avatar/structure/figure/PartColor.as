package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var _id:int;
      
      private var var_1441:uint;
      
      private var var_982:uint;
      
      private var _index:int;
      
      private var var_2035:int;
      
      private var var_1459:Number;
      
      private var _b:uint;
      
      private var var_1460:Number;
      
      private var var_1442:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1461:Number;
      
      private var var_1589:Boolean = false;
      
      public function PartColor(param1:XML)
      {
         super();
         _id = parseInt(param1.@id);
         _index = parseInt(param1.@index);
         var_2035 = parseInt(param1.@club);
         var_1589 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         var_982 = parseInt(_loc2_,16);
         var_1441 = var_982 >> 16 & 255;
         var_1442 = var_982 >> 8 & 255;
         _b = var_982 >> 0 & 255;
         var_1461 = var_1441 / 255 * 1;
         var_1460 = var_1442 / 255 * 1;
         var_1459 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1461,var_1460,var_1459);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return var_982;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get blueMultiplier() : Number
      {
         return var_1459;
      }
      
      public function get r() : uint
      {
         return var_1441;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1589;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get greenMultiplier() : Number
      {
         return var_1460;
      }
      
      public function get g() : uint
      {
         return var_1442;
      }
      
      public function get redMultiplier() : Number
      {
         return var_1461;
      }
      
      public function get club() : int
      {
         return var_2035;
      }
   }
}
