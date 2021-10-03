package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_107:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function get data() : RoomSettingsData
      {
         return var_107;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_107 = new RoomSettingsData();
         var_107.roomId = param1.readInteger();
         var_107.name = param1.readString();
         var_107.description = param1.readString();
         var_107.doorMode = param1.readInteger();
         var_107.categoryId = param1.readInteger();
         var_107.maximumVisitors = param1.readInteger();
         var_107.maximumVisitorsLimit = param1.readInteger();
         var_107.showOwnerName = param1.readInteger() == 1 ? true : false;
         var_107.allowFurniMoving = param1.readInteger() == 1 ? true : false;
         var_107.allowTrading = param1.readInteger() == 1 ? true : false;
         var_107.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_107.tags.push(param1.readString());
            _loc3_++;
         }
         var_107.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_107.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         var_107.controllerCount = param1.readInteger();
         var_107.allowPets = param1.readInteger() == 1 ? true : false;
         return true;
      }
      
      public function flush() : Boolean
      {
         var_107 = null;
         return true;
      }
   }
}
