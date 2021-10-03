package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1050:int = 100;
      
      private static const const_1051:int = 200;
      
      private static const const_1052:int = 180;
      
      public static const const_870:int = 1;
      
      public static const const_426:int = 2;
      
      private static const const_1053:int = 250;
      
      private static const const_751:int = 5;
       
      
      private var var_532:BitmapData;
      
      private var var_283:Timer;
      
      private var var_23:IWindowContainer;
      
      private var var_641:BitmapData;
      
      private var var_284:Timer;
      
      private var var_77:IWindowContainer;
      
      private var var_1406:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_284 = new Timer(const_1053,1);
         var_283 = new Timer(const_1050,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_77 = param1;
         var_77.visible = false;
         _assets = param2;
         var_284.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_283.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_641 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_532 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_77.visible = false;
         var_283.reset();
         var_284.reset();
         if(var_23 != null)
         {
            var_23.removeChild(var_77);
         }
      }
      
      public function hideDelayed() : void
      {
         var_283.reset();
         var_284.reset();
         var_283.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_284 != null)
         {
            var_284.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_284.stop();
            var_284 = null;
         }
         if(var_283 != null)
         {
            var_283.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_283.stop();
            var_283 = null;
         }
         _assets = null;
         var_77 = null;
         var_23 = null;
         var_532 = null;
         var_641 = null;
      }
      
      public function showDelayed() : void
      {
         var_283.reset();
         var_284.reset();
         var_284.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_77 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_23 != null)
         {
            var_23.removeChild(var_77);
         }
         var_23 = param1;
         var_1406 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_77.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_77.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1052,param3.width),Math.min(const_1051,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_77.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_77 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_77.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_870:
               _loc2_.bitmap = var_641.clone();
               _loc2_.width = var_641.width;
               _loc2_.height = var_641.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_426:
               _loc2_.bitmap = var_532.clone();
               _loc2_.width = var_532.width;
               _loc2_.height = var_532.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_283.reset();
         var_284.reset();
         if(var_23 == null)
         {
            return;
         }
         var_77.visible = true;
         var_23.addChild(var_77);
         refreshArrow(var_1406);
         switch(var_1406)
         {
            case const_870:
               var_77.x = 0 - const_751;
               break;
            case const_426:
               var_77.x = var_23.width + const_751;
         }
         var_77.y = (0 - 0) / 2;
      }
   }
}
