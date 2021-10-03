package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1362:String;
      
      private var var_1847:int;
      
      private var var_1850:int;
      
      private var var_1848:int;
      
      private var var_1849:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1847 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_1850 = param1.readInteger();
         var_1849 = param1.readString();
         var_1362 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1362;
      }
      
      public function get hour() : int
      {
         return var_1847;
      }
      
      public function get minute() : int
      {
         return var_1848;
      }
      
      public function get chatterName() : String
      {
         return var_1849;
      }
      
      public function get chatterId() : int
      {
         return var_1850;
      }
   }
}
