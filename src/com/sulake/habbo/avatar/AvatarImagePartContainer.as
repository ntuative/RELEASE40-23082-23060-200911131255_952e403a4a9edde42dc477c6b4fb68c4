package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1860:int;
      
      private var var_1859:String;
      
      private var var_1298:IActionDefinition;
      
      private var var_1857:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1861:String;
      
      private var var_1858:String;
      
      private var var_1588:Boolean;
      
      private var var_1856:ColorTransform;
      
      private var var_1855:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1859 = param1;
         var_1861 = param2;
         var_1860 = param3;
         _color = param4;
         _frames = param5;
         var_1298 = param6;
         var_1588 = param7;
         var_1855 = param8;
         var_1858 = param9;
         var_1857 = param10;
         var_1856 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1588;
      }
      
      public function get partType() : String
      {
         return var_1861;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1855;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1857;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1860;
      }
      
      public function get flippedPartType() : String
      {
         return var_1858;
      }
      
      public function get bodyPartId() : String
      {
         return var_1859;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1298;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1856;
      }
   }
}
