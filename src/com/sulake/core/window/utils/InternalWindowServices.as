package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_121:DisplayObject;
      
      private var var_2174:uint;
      
      private var var_785:IWindowToolTipAgentService;
      
      private var var_788:IWindowMouseScalingService;
      
      private var var_354:IWindowContext;
      
      private var var_784:IWindowFocusManagerService;
      
      private var var_787:IWindowMouseListenerService;
      
      private var var_786:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2174 = 0;
         var_121 = param2;
         var_354 = param1;
         var_786 = new WindowMouseDragger(param2);
         var_788 = new WindowMouseScaler(param2);
         var_787 = new WindowMouseListener(param2);
         var_784 = new FocusManager(param2);
         var_785 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_788;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_784;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_785;
      }
      
      public function dispose() : void
      {
         if(var_786 != null)
         {
            var_786.dispose();
            var_786 = null;
         }
         if(var_788 != null)
         {
            var_788.dispose();
            var_788 = null;
         }
         if(var_787 != null)
         {
            var_787.dispose();
            var_787 = null;
         }
         if(var_784 != null)
         {
            var_784.dispose();
            var_784 = null;
         }
         if(var_785 != null)
         {
            var_785.dispose();
            var_785 = null;
         }
         var_354 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_787;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_786;
      }
   }
}
