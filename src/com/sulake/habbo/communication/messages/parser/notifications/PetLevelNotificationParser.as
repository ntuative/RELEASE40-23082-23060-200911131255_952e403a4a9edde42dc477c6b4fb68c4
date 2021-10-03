package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_562:String;
      
      private var var_1604:int;
      
      private var var_1616:String;
      
      private var var_1008:int;
      
      private var var_1196:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1196;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1196 = param1.readInteger();
         var_1616 = param1.readString();
         var_1604 = param1.readInteger();
         var_562 = param1.readString();
         var_1008 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1616;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_562;
      }
      
      public function get petType() : int
      {
         return var_1008;
      }
      
      public function get level() : int
      {
         return var_1604;
      }
   }
}
