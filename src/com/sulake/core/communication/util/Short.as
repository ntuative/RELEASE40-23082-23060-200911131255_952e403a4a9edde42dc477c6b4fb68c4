package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_622:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_622 = new ByteArray();
         var_622.writeShort(param1);
         var_622.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_622.position = 0;
         if(false)
         {
            _loc1_ = var_622.readShort();
            var_622.position = 0;
         }
         return _loc1_;
      }
   }
}
