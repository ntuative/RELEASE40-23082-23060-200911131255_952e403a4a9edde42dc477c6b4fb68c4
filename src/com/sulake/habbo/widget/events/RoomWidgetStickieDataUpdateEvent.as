package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_503:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_184:String;
      
      private var var_629:String;
      
      private var var_1373:String;
      
      private var var_149:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_149 = param2;
         var_1373 = param3;
         var_184 = param4;
         var_629 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1373;
      }
      
      public function get colorHex() : String
      {
         return var_629;
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
