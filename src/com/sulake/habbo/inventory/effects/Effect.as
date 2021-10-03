package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1622:Date;
      
      private var var_1065:Boolean = false;
      
      private var _type:int;
      
      private var var_344:BitmapData;
      
      private var var_271:Boolean = false;
      
      private var var_1108:int;
      
      private var var_498:int = 1;
      
      private var var_888:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_344;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_498;
         if(var_498 < 0)
         {
            var_498 = 0;
         }
         var_888 = var_1108;
         var_271 = false;
         var_1065 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_888 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_271;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_344 = param1;
      }
      
      public function get duration() : int
      {
         return var_1108;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1065;
      }
      
      public function get effectsInInventory() : int
      {
         return var_498;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_344;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_271)
         {
            var_1622 = new Date();
         }
         var_271 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_498 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_271)
         {
            _loc1_ = var_888 - (new Date().valueOf() - var_1622.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_888;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1065 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1108 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
