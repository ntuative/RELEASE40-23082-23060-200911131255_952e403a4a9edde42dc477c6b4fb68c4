package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_542:int = 2;
      
      public static const const_880:int = 6;
      
      public static const const_550:int = 1;
      
      public static const const_614:int = 3;
      
      public static const const_769:int = 4;
      
      public static const const_690:int = 5;
       
      
      private var var_1778:String;
      
      private var var_997:int;
      
      private var var_1555:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_997 = param2;
         var_1555 = param3;
         var_1778 = param4;
      }
      
      public function get time() : String
      {
         return var_1778;
      }
      
      public function get senderId() : int
      {
         return var_997;
      }
      
      public function get messageText() : String
      {
         return var_1555;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
