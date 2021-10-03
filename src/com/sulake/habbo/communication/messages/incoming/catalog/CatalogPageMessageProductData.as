package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_286:String = "e";
      
      public static const const_127:String = "i";
      
      public static const const_160:String = "s";
       
      
      private var var_995:String;
      
      private var var_1236:String;
      
      private var var_1235:int;
      
      private var var_2092:int;
      
      private var var_994:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1236 = param1.readString();
         var_2092 = param1.readInteger();
         var_995 = param1.readString();
         var_994 = param1.readInteger();
         var_1235 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_994;
      }
      
      public function get productType() : String
      {
         return var_1236;
      }
      
      public function get expiration() : int
      {
         return var_1235;
      }
      
      public function get furniClassId() : int
      {
         return var_2092;
      }
      
      public function get extraParam() : String
      {
         return var_995;
      }
   }
}
