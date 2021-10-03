package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_628:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_522:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_229:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1369:Point;
      
      private var var_1368:Rectangle;
      
      private var var_204:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1368 = param2;
         var_1369 = param3;
         var_204 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1368 != null)
         {
            return var_1368.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_204;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1369 != null)
         {
            return var_1369.clone();
         }
         return null;
      }
   }
}
