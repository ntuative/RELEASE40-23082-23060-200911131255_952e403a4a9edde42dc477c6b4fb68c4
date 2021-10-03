package com.sulake.core.communication.messages
{
   import com.sulake.core.communication.protocol.IProtocolDecoder;
   import com.sulake.core.communication.util.Short;
   import flash.utils.ByteArray;
   
   public class MessageDataWrapper implements IMessageDataWrapper
   {
       
      
      private var var_724:IProtocolDecoder;
      
      private var _data:ByteArray;
      
      public function MessageDataWrapper(param1:ByteArray, param2:IProtocolDecoder)
      {
         super();
         _data = param1;
         var_724 = param2;
      }
      
      public function readShort() : Short
      {
         return var_724.readShort(_data);
      }
      
      public function readString() : String
      {
         return var_724.readString(_data);
      }
      
      public function readInteger() : int
      {
         return var_724.readInteger(_data);
      }
      
      public function readBoolean() : Boolean
      {
         return var_724.readBoolean(_data);
      }
      
      public function get bytesAvailable() : uint
      {
         return _data.bytesAvailable;
      }
   }
}
