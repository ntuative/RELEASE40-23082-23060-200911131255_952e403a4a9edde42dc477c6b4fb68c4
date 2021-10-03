package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1977:Class;
      
      private var var_1979:Class;
      
      private var var_1978:String;
      
      private var var_1214:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1978 = param1;
         var_1979 = param2;
         var_1977 = param3;
         if(rest == null)
         {
            var_1214 = new Array();
         }
         else
         {
            var_1214 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1977;
      }
      
      public function get assetClass() : Class
      {
         return var_1979;
      }
      
      public function get mimeType() : String
      {
         return var_1978;
      }
      
      public function get fileTypes() : Array
      {
         return var_1214;
      }
   }
}
