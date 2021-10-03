package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_645:String = "RWUAM_RESPECT_USER";
      
      public static const const_644:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_639:String = "RWUAM_START_TRADING";
      
      public static const const_663:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_575:String = "RWUAM_WHISPER_USER";
      
      public static const const_557:String = "RWUAM_IGNORE_USER";
      
      public static const const_684:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_623:String = "RWUAM_BAN_USER";
      
      public static const const_597:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_394:String = "RWUAM_KICK_USER";
      
      public static const const_718:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_572:String = " RWUAM_RESPECT_PET";
      
      public static const const_343:String = "RWUAM_KICK_BOT";
      
      public static const const_1319:String = "RWUAM_TRAIN_PET";
      
      public static const const_551:String = "RWUAM_PICKUP_PET";
      
      public static const const_709:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_616:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
