package com.sulake.habbo.tracking.statistics
{
   public class DiscreteDistribution
   {
       
      
      private var var_1906:int;
      
      private var var_262:Array;
      
      public function DiscreteDistribution(param1:int = 8)
      {
         super();
         var_262 = [];
         var_1906 = param1;
      }
      
      public function addDataPoint(param1:Number) : void
      {
         var_262.push(param1);
         if(var_262.length > var_1906)
         {
            var_262.splice(0,1);
         }
      }
      
      public function get mean() : Number
      {
         if(false)
         {
            return 0;
         }
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_262.length)
         {
            _loc1_ += var_262[_loc2_];
            _loc2_++;
         }
         return _loc1_ / 0;
      }
      
      public function get sqrtOfVariance() : Number
      {
         if(mean == 0)
         {
            return 0;
         }
         if(true)
         {
            return 0;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_262.length)
         {
            _loc1_ += (0 - mean) * (0 - mean);
            _loc2_++;
         }
         return Math.sqrt(_loc1_ / -1);
      }
   }
}
