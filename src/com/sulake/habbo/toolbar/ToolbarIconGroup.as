package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.events.IEventDispatcher;
   
   public class ToolbarIconGroup
   {
       
      
      private var var_276:Array;
      
      private var var_756:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_453:String;
      
      private var var_41:IWindowContainer;
      
      private var var_1562:int = 5;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_580:Array;
      
      private var var_1565:Number;
      
      private var var_385:ToolbarBarMenuAnimator;
      
      private var var_1054:Array;
      
      private var var_136:Number;
      
      private var var_1564:XML;
      
      private var var_1563:int;
      
      private var var_1052:Number;
      
      private var var_1053:Array;
      
      public function ToolbarIconGroup(param1:IHabboWindowManager, param2:IAssetLibrary, param3:int, param4:IEventDispatcher, param5:IWindowContainer, param6:ToolbarBarMenuAnimator, param7:Number)
      {
         var_276 = new Array();
         var_580 = new Array();
         var_1054 = new Array();
         var_1053 = new Array();
         super();
         _windowManager = param1;
         _assetLibrary = param2;
         var_41 = param5;
         _events = param4;
         var_385 = param6;
         var_136 = param7;
      }
      
      public function get size() : Number
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_276.length)
         {
            if(var_276[_loc2_].exists)
            {
               _loc1_ += var_1052;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function setIcon(param1:String, param2:Boolean) : void
      {
         var _loc3_:* = null;
         _loc3_ = getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIcon(param2);
            alignItems();
         }
      }
      
      public function acceptsIcon(param1:String) : Boolean
      {
         return var_1053.indexOf(param1) > -1;
      }
      
      public function get iconCount() : int
      {
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_276.length)
         {
            if(var_276[_loc2_].exists)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set windowBottomMargin(param1:int) : void
      {
         var_1563 = param1;
      }
      
      public function get iconSize() : Number
      {
         return var_1052;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            var_580.shift();
            _loc1_ = var_276.shift();
            _loc1_.dispose();
            _loc1_ = null;
         }
      }
      
      public function set orientation(param1:String) : void
      {
         var_453 = param1;
      }
      
      public function getIconByMenuId(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         while(_loc3_ < var_276.length)
         {
            _loc2_ = var_276[_loc3_];
            if(_loc2_ != null)
            {
               if(_loc2_.docksMenu(param1))
               {
                  return _loc2_;
               }
            }
            _loc3_++;
         }
         return null;
      }
      
      public function set iconSize(param1:Number) : void
      {
         var_1052 = param1;
      }
      
      public function setContent(param1:String, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         _loc3_ = getIconById(param1);
         if(_loc3_ != null)
         {
            _loc3_.setIconBitmapData(param2);
            alignItems();
         }
      }
      
      public function containsIcon(param1:String) : Boolean
      {
         return var_580.indexOf(param1) > -1;
      }
      
      public function get toolbarUsableWidth() : Number
      {
         return var_136;
      }
      
      private function alignItems() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = 0;
         var _loc4_:int = 0;
         while(_loc4_ < var_1054.length)
         {
            _loc2_ = var_580.indexOf(var_1054[_loc4_]);
            if(_loc2_ > -1)
            {
               _loc1_ = var_276[_loc2_];
               if(_loc1_.exists)
               {
                  _loc1_.changePosition(var_756 + _loc3_);
                  _loc3_ += var_1052;
               }
            }
            _loc4_++;
         }
      }
      
      public function get windowMargin() : int
      {
         return var_1562;
      }
      
      public function get windowBottomMargin() : int
      {
         return var_1563;
      }
      
      private function createIconObject(param1:String) : ToolbarIcon
      {
         var _loc2_:* = null;
         _loc2_ = getIconById(param1);
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = new ToolbarIcon(this,_windowManager,_assetLibrary,param1,_events,var_385);
         var_41.addChild(_loc2_.window);
         var_580.push(param1);
         var_276.push(_loc2_);
         return _loc2_;
      }
      
      public function addContentIndexFromXmlList(param1:XML) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc8_:* = null;
         var _loc9_:int = 0;
         if(param1 == null)
         {
            return false;
         }
         var_1564 = param1;
         _loc4_ = param1.elements("icon");
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length())
         {
            _loc8_ = _loc4_[_loc7_];
            _loc2_ = "null";
            if(_loc2_ != null)
            {
               if(!containsIcon(_loc2_))
               {
                  _loc6_ = createIconObject(_loc2_);
                  if(_loc6_ == null)
                  {
                     return false;
                  }
                  _loc6_.defineFromXML(_loc8_);
                  var_1054.push(_loc2_);
                  _loc5_ = _loc8_.elements("dock");
                  if(_loc5_.length() > 0)
                  {
                     _loc9_ = 0;
                     while(_loc9_ < _loc5_.length())
                     {
                        _loc3_ = "null";
                        var_1053.push(_loc3_);
                        _loc6_.dockMenu(_loc3_,getMenuYieldList(_loc3_),_loc5_[_loc9_].@locktoicon == "true");
                        _loc9_++;
                     }
                  }
                  else
                  {
                     var_1053.push(_loc2_);
                     if(_loc8_.elements("nodock").length() == 0)
                     {
                        _loc6_.dockMenu(_loc2_);
                     }
                  }
               }
            }
            _loc7_++;
         }
         return true;
      }
      
      public function removeContent(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = var_580.indexOf(param1);
         if(_loc2_ > -1)
         {
            _loc3_ = getIconById(param1);
            if(_loc3_ != null)
            {
               _loc3_.setIcon(false);
            }
         }
      }
      
      public function get orientation() : String
      {
         return var_453;
      }
      
      public function set position(param1:Number) : void
      {
         var_756 = param1;
         alignItems();
      }
      
      public function getIconById(param1:String) : ToolbarIcon
      {
         if(!containsIcon(param1))
         {
            return null;
         }
         return var_276[var_580.indexOf(param1)];
      }
      
      public function set defaultIconSize(param1:Number) : void
      {
         var_1565 = param1;
      }
      
      public function get defaultIconSize() : Number
      {
         return var_1565;
      }
      
      public function set windowMargin(param1:int) : void
      {
         var_1562 = param1;
      }
      
      public function getMenuYieldList(param1:String) : Array
      {
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc2_:Array = new Array();
         var _loc3_:XMLList = var_1564.elements("menu");
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_.length())
         {
            if(HabboToolbarIconEnum[_loc3_[_loc5_].@id] == param1)
            {
               _loc4_ = _loc3_[_loc5_].elements("yield");
               _loc6_ = 0;
               while(_loc6_ < _loc4_.length())
               {
                  _loc2_.push(HabboToolbarIconEnum[_loc4_[_loc6_].@id]);
                  _loc6_++;
               }
            }
            _loc5_++;
         }
         return _loc2_;
      }
   }
}
