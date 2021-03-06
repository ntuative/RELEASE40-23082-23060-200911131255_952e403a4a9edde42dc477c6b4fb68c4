package com.sulake.habbo.room.events
{
   public class RoomEngineObjectEvent extends RoomEngineEvent
   {
      
      public static const const_245:String = "REOB_OBJECT_ADDED";
      
      public static const const_364:String = "REOE_ROOM_AD_FURNI_CLICK";
      
      public static const ROOM_OBJECT_WIDGET_REMOVE_DIMMER:String = "REOR_REMOVE_DIMMER";
      
      public static const const_117:String = "REOE_WIDGET_REQUEST_CREDITFURNI";
      
      public static const const_194:String = "REOB_OBJECT_PLACED";
      
      public static const const_104:String = "REOE_WIDGET_REQUEST_STICKIE";
      
      public static const const_349:String = "REOE_ROOM_AD_FURNI_DOUBLE_CLICK";
      
      public static const const_116:String = "REOE_WIDGET_REQUEST_DIMMER";
      
      public static const const_486:String = "REOE_OBJECT_REMOVED";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_PLACEHOLDER:String = "REOE_WIDGET_REQUEST_PLACEHOLDER";
      
      public static const const_121:String = "REOE_WIDGET_REQUEST_ECOTRONBOX";
      
      public static const const_412:String = "REOE_ROOM_AD_TOOLTIP_SHOW";
      
      public static const const_712:String = "REOE_OBJECT_SELECTED";
      
      public static const const_418:String = "REOE_OBJECT_DESELECTED";
      
      public static const const_363:String = "REOE_ROOM_AD_TOOLTIP_HIDE";
      
      public static const ROOM_OBJECT_WIDGET_REQUEST_PRESENT:String = "REOE_WIDGET_REQUEST_PRESENT";
      
      public static const const_627:String = "REOB_OBJECT_REQUEST_MOVE";
      
      public static const const_114:String = "REOE_WIDGET_REQUEST_TROPHY";
       
      
      private var _roomId:int;
      
      private var _roomCategory:int;
      
      private var var_149:int;
      
      private var _category:int;
      
      public function RoomEngineObjectEvent(param1:String, param2:int, param3:int, param4:int, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param2,param3,param6,param7);
         var_149 = param4;
         _category = param5;
      }
      
      public function get objectId() : int
      {
         return var_149;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
