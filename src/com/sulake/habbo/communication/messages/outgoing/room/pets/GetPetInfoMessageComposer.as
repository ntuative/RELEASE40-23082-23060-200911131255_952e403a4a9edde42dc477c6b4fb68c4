package com.sulake.habbo.communication.messages.outgoing.room.pets
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class GetPetInfoMessageComposer implements IMessageComposer
   {
       
      
      private var var_1196:int;
      
      public function GetPetInfoMessageComposer(param1:int)
      {
         super();
         var_1196 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1196];
      }
      
      public function dispose() : void
      {
      }
   }
}
