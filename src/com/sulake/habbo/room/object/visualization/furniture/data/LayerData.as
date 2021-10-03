package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_452:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_489:int = 0;
      
      public static const const_812:int = 2;
      
      public static const const_818:int = 1;
      
      public static const const_531:Boolean = false;
      
      public static const const_618:String = "";
      
      public static const const_431:int = 0;
      
      public static const const_419:int = 0;
      
      public static const const_365:int = 0;
       
      
      private var var_1583:int = 0;
      
      private var var_1544:String = "";
      
      private var var_1295:int = 0;
      
      private var var_1582:int = 0;
      
      private var var_1581:Number = 0;
      
      private var var_1579:int = 255;
      
      private var var_1580:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1583;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1295 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1581;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_1582 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1583 = param1;
      }
      
      public function get tag() : String
      {
         return var_1544;
      }
      
      public function get alpha() : int
      {
         return var_1579;
      }
      
      public function get ink() : int
      {
         return var_1295;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1581 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_1582;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1580 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1580;
      }
      
      public function set tag(param1:String) : void
      {
         var_1544 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1579 = param1;
      }
   }
}
