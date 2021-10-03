package com.sulake.room.object.visualization
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
       
      
      private var var_866:Boolean = false;
      
      private var var_1543:Boolean = false;
      
      private var var_1129:String = "normal";
      
      private var var_1109:String = "";
      
      private var var_1542:Boolean = false;
      
      private var _offset:Point;
      
      private var var_318:Boolean = true;
      
      private var var_1777:Boolean = true;
      
      private var var_951:Number = 0;
      
      private var _height:int = 0;
      
      private var _width:int = 0;
      
      private var var_1544:String = "";
      
      private var var_1579:uint = 255;
      
      private var _color:uint = 16777215;
      
      private var var_742:IAsset = null;
      
      private var var_865:Boolean = false;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
      }
      
      public function get flipV() : Boolean
      {
         return var_866;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1542;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_866 = param1;
      }
      
      public function get tag() : String
      {
         return var_1544;
      }
      
      public function dispose() : void
      {
         var_742 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1129 = param1;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1777 = param1;
      }
      
      public function get blendMode() : String
      {
         return var_1129;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_951 = param1;
      }
      
      public function set tag(param1:String) : void
      {
         var_1544 = param1;
      }
      
      public function set alpha(param1:uint) : void
      {
         if(param1 > 255)
         {
            param1 = 255;
         }
         var_1579 = param1;
      }
      
      public function get assetName() : String
      {
         return var_1109;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1777;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1543;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1109 = param1;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get relativeDepth() : Number
      {
         return var_951;
      }
      
      public function get alpha() : uint
      {
         return var_1579;
      }
      
      public function set asset(param1:IAsset) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 is BitmapDataAsset)
         {
            var_742 = param1;
            _width = 0;
            _height = 0;
            if(param1 != null)
            {
               _loc2_ = param1 as BitmapDataAsset;
               _loc3_ = _loc2_.content as BitmapData;
               if(_loc3_ != null)
               {
                  _width = _loc3_.width;
                  _height = _loc3_.height;
               }
            }
         }
         else if(param1 == null)
         {
            var_742 = null;
            _width = 0;
            _height = 0;
         }
      }
      
      public function set color(param1:uint) : void
      {
         param1 &= 16777215;
         _color = param1;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1543 = param1;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1542 = param1;
      }
      
      public function get asset() : IAsset
      {
         return var_742;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_318 = param1;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_865 = param1;
      }
      
      public function get visible() : Boolean
      {
         return var_318;
      }
      
      public function get flipH() : Boolean
      {
         return var_865;
      }
   }
}
