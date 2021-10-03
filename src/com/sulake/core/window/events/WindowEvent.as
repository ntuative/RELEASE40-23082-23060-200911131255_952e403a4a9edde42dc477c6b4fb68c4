package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_278:String = "WE_CHILD_RESIZED";
      
      public static const const_1340:String = "WE_CLOSE";
      
      public static const const_1149:String = "WE_DESTROY";
      
      public static const const_243:String = "WE_CHANGE";
      
      public static const const_1336:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1454:String = "WE_PARENT_RESIZE";
      
      public static const const_87:String = "WE_UPDATE";
      
      public static const const_1273:String = "WE_MAXIMIZE";
      
      public static const const_347:String = "WE_DESTROYED";
      
      public static const const_938:String = "WE_UNSELECT";
      
      public static const const_1289:String = "WE_MAXIMIZED";
      
      public static const const_1386:String = "WE_UNLOCKED";
      
      public static const const_408:String = "WE_CHILD_REMOVED";
      
      public static const const_190:String = "WE_OK";
      
      public static const const_46:String = "WE_RESIZED";
      
      public static const const_1257:String = "WE_ACTIVATE";
      
      public static const const_258:String = "WE_ENABLED";
      
      public static const const_471:String = "WE_CHILD_RELOCATED";
      
      public static const const_1332:String = "WE_CREATE";
      
      public static const const_588:String = "WE_SELECT";
      
      public static const const_157:String = "";
      
      public static const const_1541:String = "WE_LOCKED";
      
      public static const const_1433:String = "WE_PARENT_RELOCATE";
      
      public static const const_1409:String = "WE_CHILD_REMOVE";
      
      public static const const_1472:String = "WE_CHILD_RELOCATE";
      
      public static const const_1481:String = "WE_LOCK";
      
      public static const const_292:String = "WE_FOCUSED";
      
      public static const const_556:String = "WE_UNSELECTED";
      
      public static const const_888:String = "WE_DEACTIVATED";
      
      public static const const_1333:String = "WE_MINIMIZED";
      
      public static const const_1396:String = "WE_ARRANGED";
      
      public static const const_1379:String = "WE_UNLOCK";
      
      public static const const_1429:String = "WE_ATTACH";
      
      public static const const_1295:String = "WE_OPEN";
      
      public static const const_1131:String = "WE_RESTORE";
      
      public static const const_1494:String = "WE_PARENT_RELOCATED";
      
      public static const const_1255:String = "WE_RELOCATE";
      
      public static const const_1437:String = "WE_CHILD_RESIZE";
      
      public static const const_1509:String = "WE_ARRANGE";
      
      public static const const_1309:String = "WE_OPENED";
      
      public static const const_1155:String = "WE_CLOSED";
      
      public static const const_1440:String = "WE_DETACHED";
      
      public static const const_1527:String = "WE_UPDATED";
      
      public static const const_1183:String = "WE_UNFOCUSED";
      
      public static const const_366:String = "WE_RELOCATED";
      
      public static const const_1236:String = "WE_DEACTIVATE";
      
      public static const const_178:String = "WE_DISABLED";
      
      public static const const_585:String = "WE_CANCEL";
      
      public static const const_687:String = "WE_ENABLE";
      
      public static const const_1216:String = "WE_ACTIVATED";
      
      public static const const_1244:String = "WE_FOCUS";
      
      public static const const_1427:String = "WE_DETACH";
      
      public static const const_1292:String = "WE_RESTORED";
      
      public static const const_1176:String = "WE_UNFOCUS";
      
      public static const const_53:String = "WE_SELECTED";
      
      public static const const_1291:String = "WE_PARENT_RESIZED";
      
      public static const const_1326:String = "WE_CREATED";
      
      public static const const_1455:String = "WE_ATTACHED";
      
      public static const const_1226:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1504:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1289:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1504 = param3;
         var_1289 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1289;
      }
      
      public function get related() : IWindow
      {
         return var_1504;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1289 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
