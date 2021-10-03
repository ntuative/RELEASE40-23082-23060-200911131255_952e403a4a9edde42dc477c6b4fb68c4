package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1464:int = 9;
      
      public static const const_1399:int = 4;
      
      public static const const_1384:int = 1;
      
      public static const const_1121:int = 10;
      
      public static const const_1408:int = 2;
      
      public static const const_1276:int = 7;
      
      public static const const_1194:int = 11;
      
      public static const const_1492:int = 3;
      
      public static const const_1253:int = 8;
      
      public static const const_1188:int = 5;
      
      public static const const_1543:int = 6;
      
      public static const const_1280:int = 12;
       
      
      private var var_1593:String;
      
      private var _roomId:int;
      
      private var var_1056:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1593;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1056 = param1.readInteger();
         var_1593 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1056;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
