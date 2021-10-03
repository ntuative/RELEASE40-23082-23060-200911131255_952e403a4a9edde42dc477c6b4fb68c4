package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_1010:IID;
      
      private var var_403:uint;
      
      private var var_1254:IUnknown;
      
      private var var_1255:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1010 = param1;
         var_1255 = getQualifiedClassName(var_1010);
         var_1254 = param2;
         var_403 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1010;
      }
      
      public function get references() : uint
      {
         return var_403;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_403) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1254;
      }
      
      public function get iis() : String
      {
         return var_1255;
      }
      
      public function reserve() : uint
      {
         return ++var_403;
      }
      
      public function dispose() : void
      {
         var_1010 = null;
         var_1255 = null;
         var_1254 = null;
         var_403 = 0;
      }
   }
}
