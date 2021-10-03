package com.sulake.habbo.communication.encryption
{
   public class PseudoRandom
   {
      
      private static const const_1076:int = 19979;
      
      private static const const_1075:int = 5;
       
      
      private var seed:int;
      
      private var modulus:int;
      
      public function PseudoRandom(param1:int, param2:int)
      {
         super();
         this.seed = param1;
         this.modulus = param2;
      }
      
      public function nextInt() : int
      {
         var _loc1_:int = Math.abs(const_1076 * seed + const_1075) % modulus;
         seed = _loc1_;
         return _loc1_;
      }
   }
}
