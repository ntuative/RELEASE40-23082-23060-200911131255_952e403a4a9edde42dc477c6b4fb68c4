package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1961:int;
      
      private var var_2017:String;
      
      private var var_1955:int;
      
      private var _disposed:Boolean;
      
      private var var_2016:int;
      
      private var var_2011:String;
      
      private var var_1130:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_2011 = param1.readString();
         var_1961 = param1.readInteger();
         var_1955 = param1.readInteger();
         var_2017 = param1.readString();
         var_2016 = param1.readInteger();
         var_1130 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_2016;
      }
      
      public function get worldId() : int
      {
         return var_1955;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_2011;
      }
      
      public function get unitPort() : int
      {
         return var_1961;
      }
      
      public function get castLibs() : String
      {
         return var_2017;
      }
      
      public function get nodeId() : int
      {
         return var_1130;
      }
   }
}
