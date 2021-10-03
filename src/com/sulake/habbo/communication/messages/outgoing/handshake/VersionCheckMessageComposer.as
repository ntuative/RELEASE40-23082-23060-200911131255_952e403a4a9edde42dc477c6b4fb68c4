package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1546:String;
      
      private var var_1270:String;
      
      private var var_1545:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1545 = param1;
         var_1270 = param2;
         var_1546 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1545,var_1270,var_1546];
      }
      
      public function dispose() : void
      {
      }
   }
}
