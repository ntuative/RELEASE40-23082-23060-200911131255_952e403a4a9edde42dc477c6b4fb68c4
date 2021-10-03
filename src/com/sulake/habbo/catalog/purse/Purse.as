package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1530:int = 0;
      
      private var var_1533:int = 0;
      
      private var var_1532:int = 0;
      
      private var var_1531:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1533;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1533 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1530 = param1;
      }
      
      public function get credits() : int
      {
         return var_1532;
      }
      
      public function get clubDays() : int
      {
         return var_1530;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1531 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1532 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1531;
      }
   }
}
