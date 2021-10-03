package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1810:int;
      
      private var var_1829:int = 0;
      
      private var var_1830:String;
      
      private var var_1831:int;
      
      private var var_1828:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1810 = param1;
         var_1831 = param2;
         var_1828 = param3;
         var_1830 = param4;
      }
      
      public function get length() : int
      {
         return var_1831;
      }
      
      public function get name() : String
      {
         return var_1828;
      }
      
      public function get creator() : String
      {
         return var_1830;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1829;
      }
      
      public function get id() : int
      {
         return var_1810;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1829 = param1;
      }
   }
}
