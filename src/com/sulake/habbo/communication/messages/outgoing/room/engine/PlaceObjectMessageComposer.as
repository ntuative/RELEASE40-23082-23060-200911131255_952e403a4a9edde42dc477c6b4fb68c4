package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   
   public class PlaceObjectMessageComposer implements IMessageComposer
   {
       
      
      private var var_149:int;
      
      private var var_220:int = 0;
      
      private var _roomId:int;
      
      private var var_89:int = 0;
      
      private var _y:int = 0;
      
      private var var_1617:int;
      
      private var var_1728:String;
      
      private var _roomCategory:int;
      
      public function PlaceObjectMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         var_149 = param1;
         var_1617 = param2;
         var_1728 = param3;
         var_89 = param4;
         _y = param5;
         var_220 = param6;
         _roomId = param7;
         _roomCategory = param8;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         switch(var_1617)
         {
            case RoomObjectCategoryEnum.OBJECT_CATEGORY_FURNITURE:
               return [var_149 + " " + var_89 + " " + _y + " " + var_220];
            case RoomObjectCategoryEnum.const_29:
               return [var_149 + " " + var_1728];
            default:
               return [];
         }
      }
   }
}
