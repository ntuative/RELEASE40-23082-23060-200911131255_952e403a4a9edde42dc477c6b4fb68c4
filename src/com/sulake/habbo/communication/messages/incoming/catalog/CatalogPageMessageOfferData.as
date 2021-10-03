package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_830:Array;
      
      private var var_730:int;
      
      private var var_1111:String;
      
      private var var_1112:int;
      
      private var var_731:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         var_1112 = param1.readInteger();
         var_1111 = param1.readString();
         var_730 = param1.readInteger();
         var_731 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_830 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_830.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_830;
      }
      
      public function get priceInCredits() : int
      {
         return var_730;
      }
      
      public function get localizationId() : String
      {
         return var_1111;
      }
      
      public function get offerId() : int
      {
         return var_1112;
      }
      
      public function get priceInPixels() : int
      {
         return var_731;
      }
   }
}
