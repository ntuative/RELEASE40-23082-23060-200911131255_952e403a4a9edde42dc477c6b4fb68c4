package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1419:BigInteger;
      
      private var var_880:BigInteger;
      
      private var var_1911:BigInteger;
      
      private var var_1420:BigInteger;
      
      private var var_1909:BigInteger;
      
      private var var_1910:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1419 = param1;
         var_1911 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1909.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1420 = new BigInteger();
         var_1420.fromRadix(param1,param2);
         var_1909 = var_1420.modPow(var_880,var_1419);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1910.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_880 = new BigInteger();
         var_880.fromRadix(param1,param2);
         var_1910 = var_1911.modPow(var_880,var_1419);
         return true;
      }
   }
}
