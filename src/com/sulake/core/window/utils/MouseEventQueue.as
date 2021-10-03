package com.sulake.core.window.utils
{
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class MouseEventQueue extends GenericEventQueue
   {
       
      
      protected var var_1288:Point;
      
      public function MouseEventQueue(param1:IEventDispatcher)
      {
         super(param1);
         var_1288 = new Point();
         var_69.addEventListener(MouseEvent.CLICK,mouseEventListener,false);
         var_69.addEventListener(MouseEvent.DOUBLE_CLICK,mouseEventListener,false);
         var_69.addEventListener(MouseEvent.MOUSE_DOWN,mouseEventListener,false);
         var_69.addEventListener(MouseEvent.MOUSE_MOVE,mouseEventListener,false);
         var_69.addEventListener(MouseEvent.MOUSE_UP,mouseEventListener,false);
         var_69.addEventListener(MouseEvent.MOUSE_WHEEL,mouseEventListener,false);
      }
      
      public function get mousePosition() : Point
      {
         return var_1288;
      }
      
      private function mouseEventListener(param1:MouseEvent) : void
      {
         var_1288.x = param1.stageX;
         var_1288.y = param1.stageY;
         var_273.push(param1);
      }
      
      override public function dispose() : void
      {
         if(!_disposed)
         {
            var_69.removeEventListener(MouseEvent.CLICK,mouseEventListener,false);
            var_69.removeEventListener(MouseEvent.DOUBLE_CLICK,mouseEventListener,false);
            var_69.removeEventListener(MouseEvent.MOUSE_DOWN,mouseEventListener,false);
            var_69.removeEventListener(MouseEvent.MOUSE_MOVE,mouseEventListener,false);
            var_69.removeEventListener(MouseEvent.MOUSE_UP,mouseEventListener,false);
            var_69.removeEventListener(MouseEvent.MOUSE_WHEEL,mouseEventListener,false);
            super.dispose();
         }
      }
   }
}
