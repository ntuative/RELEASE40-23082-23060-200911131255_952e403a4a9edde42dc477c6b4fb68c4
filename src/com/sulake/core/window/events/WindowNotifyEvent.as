package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1148:String = "WN_CREATED";
      
      public static const const_875:String = "WN_DISABLE";
      
      public static const const_809:String = "WN_DEACTIVATED";
      
      public static const const_952:String = "WN_OPENED";
      
      public static const const_832:String = "WN_CLOSED";
      
      public static const const_895:String = "WN_DESTROY";
      
      public static const const_1419:String = "WN_ARRANGED";
      
      public static const const_410:String = "WN_PARENT_RESIZED";
      
      public static const const_846:String = "WN_ENABLE";
      
      public static const const_963:String = "WN_RELOCATE";
      
      public static const const_869:String = "WN_FOCUS";
      
      public static const const_931:String = "WN_PARENT_RELOCATED";
      
      public static const const_340:String = "WN_PARAM_UPDATED";
      
      public static const const_688:String = "WN_PARENT_ACTIVATED";
      
      public static const const_238:String = "WN_RESIZED";
      
      public static const const_897:String = "WN_CLOSE";
      
      public static const const_836:String = "WN_PARENT_REMOVED";
      
      public static const const_225:String = "WN_CHILD_RELOCATED";
      
      public static const const_545:String = "WN_ENABLED";
      
      public static const const_226:String = "WN_CHILD_RESIZED";
      
      public static const const_975:String = "WN_MINIMIZED";
      
      public static const const_521:String = "WN_DISABLED";
      
      public static const const_200:String = "WN_CHILD_ACTIVATED";
      
      public static const const_454:String = "WN_STATE_UPDATED";
      
      public static const const_683:String = "WN_UNSELECTED";
      
      public static const const_357:String = "WN_STYLE_UPDATED";
      
      public static const const_1447:String = "WN_UPDATE";
      
      public static const const_405:String = "WN_PARENT_ADDED";
      
      public static const const_651:String = "WN_RESIZE";
      
      public static const const_580:String = "WN_CHILD_REMOVED";
      
      public static const const_1424:String = "";
      
      public static const const_943:String = "WN_RESTORED";
      
      public static const const_315:String = "WN_SELECTED";
      
      public static const const_973:String = "WN_MINIMIZE";
      
      public static const const_970:String = "WN_FOCUSED";
      
      public static const const_1184:String = "WN_LOCK";
      
      public static const const_291:String = "WN_CHILD_ADDED";
      
      public static const const_922:String = "WN_UNFOCUSED";
      
      public static const const_464:String = "WN_RELOCATED";
      
      public static const const_945:String = "WN_DEACTIVATE";
      
      public static const const_1306:String = "WN_CRETAE";
      
      public static const const_824:String = "WN_RESTORE";
      
      public static const const_305:String = "WN_ACTVATED";
      
      public static const const_1275:String = "WN_LOCKED";
      
      public static const const_399:String = "WN_SELECT";
      
      public static const const_837:String = "WN_MAXIMIZE";
      
      public static const const_816:String = "WN_OPEN";
      
      public static const const_561:String = "WN_UNSELECT";
      
      public static const const_1513:String = "WN_ARRANGE";
      
      public static const const_1285:String = "WN_UNLOCKED";
      
      public static const const_1474:String = "WN_UPDATED";
      
      public static const const_916:String = "WN_ACTIVATE";
      
      public static const const_1298:String = "WN_UNLOCK";
      
      public static const const_771:String = "WN_MAXIMIZED";
      
      public static const const_776:String = "WN_DESTROYED";
      
      public static const const_971:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1504,cancelable);
      }
   }
}
