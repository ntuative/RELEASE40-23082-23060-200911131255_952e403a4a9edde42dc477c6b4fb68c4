package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_1897:int;
      
      private var var_1898:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_1897 = param1;
         var_1898 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_1897,var_1898];
      }
   }
}
