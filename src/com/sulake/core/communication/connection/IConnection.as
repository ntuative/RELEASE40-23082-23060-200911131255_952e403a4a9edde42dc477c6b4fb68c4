package com.sulake.core.communication.connection
{
   import com.sulake.core.communication.encryption.IEncryption;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import flash.events.IEventDispatcher;
   import flash.utils.ByteArray;
   
   public interface IConnection extends IEventDispatcher
   {
       
      
      function init(param1:String, param2:uint = 0) : Boolean;
      
      function registerMessageClasses(param1:IMessageConfiguration) : void;
      
      function addMessageEvent(param1:IMessageEvent) : void;
      
      function setEncryption(param1:IEncryption) : void;
      
      function sendRaw(param1:ByteArray, param2:Boolean = true) : Boolean;
      
      function send(param1:IMessageComposer, param2:int = -1) : Boolean;
      
      function get protocol() : IProtocol;
      
      function set protocol(param1:IProtocol) : void;
      
      function dispose() : void;
   }
}
