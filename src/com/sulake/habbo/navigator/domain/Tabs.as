package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_568:int = 6;
      
      public static const const_208:int = 5;
      
      public static const const_570:int = 2;
      
      public static const const_324:int = 9;
      
      public static const const_247:int = 4;
      
      public static const const_253:int = 2;
      
      public static const const_528:int = 4;
      
      public static const const_189:int = 8;
      
      public static const const_578:int = 7;
      
      public static const const_255:int = 3;
      
      public static const const_322:int = 1;
      
      public static const const_187:int = 5;
      
      public static const const_371:int = 12;
      
      public static const const_280:int = 1;
      
      public static const const_451:int = 11;
      
      public static const const_680:int = 3;
      
      public static const const_1477:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_361:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_361 = new Array();
         var_361.push(new Tab(_navigator,const_322,const_371,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_361.push(new Tab(_navigator,const_253,const_280,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_361.push(new Tab(_navigator,const_247,const_451,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_704));
         var_361.push(new Tab(_navigator,const_255,const_208,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_430));
         var_361.push(new Tab(_navigator,const_187,const_189,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_692));
         setSelectedTab(const_322);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_361)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_361)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_361)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_247;
      }
      
      public function get tabs() : Array
      {
         return var_361;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
