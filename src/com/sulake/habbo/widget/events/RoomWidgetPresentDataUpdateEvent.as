package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_383:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_359:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_73:String = "RWPDUE_CONTENTS";
      
      public static const const_398:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_348:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_62:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_184:String;
      
      private var var_1796:BitmapData;
      
      private var var_149:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_149 = param2;
         var_184 = param3;
         _controller = param4;
         var_1796 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1796;
      }
      
      public function get text() : String
      {
         return var_184;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
