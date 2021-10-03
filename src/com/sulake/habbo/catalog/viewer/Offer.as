package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_905:String = "price_type_none";
      
      public static const const_391:String = "pricing_model_multi";
      
      public static const const_300:String = "price_type_credits";
      
      public static const const_386:String = "price_type_credits_and_pixels";
      
      public static const const_470:String = "pricing_model_bundle";
      
      public static const const_385:String = "pricing_model_single";
      
      public static const const_488:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1271:String = "pricing_model_unknown";
      
      public static const const_453:String = "price_type_pixels";
       
      
      private var var_730:int;
      
      private var var_1112:int;
      
      private var var_731:int;
      
      private var var_368:String;
      
      private var var_512:String;
      
      private var var_1724:int;
      
      private var var_650:ICatalogPage;
      
      private var var_1111:String;
      
      private var var_608:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         var_1112 = param1.offerId;
         var_1111 = param1.localizationId;
         var_730 = param1.priceInCredits;
         var_731 = param1.priceInPixels;
         var_650 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_368;
      }
      
      public function get page() : ICatalogPage
      {
         return var_650;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_608;
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
      
      public function dispose() : void
      {
         var_1112 = 0;
         var_1111 = "";
         var_730 = 0;
         var_731 = 0;
         var_608.dispose();
      }
      
      public function get priceType() : String
      {
         return var_512;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1724;
      }
      
      public function get priceInCredits() : int
      {
         return var_730;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_368 = const_385;
            }
            else
            {
               var_368 = const_391;
            }
         }
         else if(param1.length > 1)
         {
            var_368 = const_470;
         }
         else
         {
            var_368 = const_1271;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_368)
         {
            case const_385:
               var_608 = new SingleProductContainer(this,param1);
               break;
            case const_391:
               var_608 = new MultiProductContainer(this,param1);
               break;
            case const_470:
               var_608 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_368);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_730 > 0 && var_731 > 0)
         {
            var_512 = const_386;
         }
         else if(var_730 > 0)
         {
            var_512 = const_300;
         }
         else if(var_731 > 0)
         {
            var_512 = const_453;
         }
         else
         {
            var_512 = const_905;
         }
      }
   }
}
