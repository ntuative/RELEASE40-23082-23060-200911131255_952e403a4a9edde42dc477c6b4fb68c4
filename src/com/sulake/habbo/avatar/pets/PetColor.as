package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var var_1441:uint;
      
      private var var_982:uint;
      
      private var var_1984:int;
      
      private var var_1459:Number;
      
      private var _b:uint;
      
      private var var_1460:Number;
      
      private var var_1442:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1461:Number;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
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
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         var_1984 = param1;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return var_982;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return var_1984;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get g() : uint
      {
         return var_1442;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get r() : uint
      {
         return var_1441;
      }
   }
}
