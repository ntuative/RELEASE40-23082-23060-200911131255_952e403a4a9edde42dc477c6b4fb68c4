package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_305:Timer;
      
      protected var var_862:String;
      
      protected var var_861:uint;
      
      protected var var_1032:Point;
      
      protected var var_235:IToolTipWindow;
      
      protected var var_1031:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1032 = new Point();
         var_1031 = new Point(20,20);
         var_861 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_305 != null)
         {
            var_305.stop();
            var_305.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_305 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1032);
            if(var_235 != null && true)
            {
               var_235.x = param1 + var_1031.x;
               var_235.y = param2 + var_1031.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_305 != null)
         {
            var_305.reset();
         }
         if(_window && true)
         {
            if(var_235 == null || false)
            {
               var_235 = _window.context.create("undefined::ToolTip",var_862,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_235.x = _loc2_.x + var_1032.x + var_1031.x;
            var_235.y = _loc2_.y + var_1032.y + var_1031.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_862 = IInteractiveWindow(param1).toolTipCaption;
               var_861 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_862 = param1.caption;
               var_861 = 500;
            }
            _mouse.x = var_121.mouseX;
            _mouse.y = var_121.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1032);
            if(var_862 != null && var_862 != "")
            {
               if(var_305 == null)
               {
                  var_305 = new Timer(var_861,1);
                  var_305.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_305.reset();
               var_305.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_235 != null && true)
         {
            var_235.destroy();
            var_235 = null;
         }
      }
   }
}
