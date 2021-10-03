package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1837:Boolean = false;
      
      private var var_1834:int = 0;
      
      private var var_1530:int = 0;
      
      private var var_1835:int = 0;
      
      private var var_1836:int = 0;
      
      private var var_1531:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1836 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1834;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1837;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1837 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1834 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1530 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1836;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1835 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1530;
      }
      
      public function get pixelBalance() : int
      {
         return var_1835;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1531 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1531;
      }
   }
}
