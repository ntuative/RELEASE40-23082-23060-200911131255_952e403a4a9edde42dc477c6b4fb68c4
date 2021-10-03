package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1877:XML;
      
      private var var_1405:ITextWindow;
      
      private var var_1404:ITextWindow;
      
      private var var_1876:XML;
      
      private var var_774:IWindowContainer;
      
      private var var_2172:ITextWindow;
      
      private var var_1874:String = "";
      
      private var var_2229:IButtonWindow;
      
      private var var_1875:XML;
      
      private var var_1403:ITextWindow;
      
      private var var_1873:XML;
      
      private var var_775:IButtonWindow;
      
      private var var_176:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_300:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1876) as IWindowContainer;
               break;
            case Offer.const_453:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1873) as IWindowContainer;
               break;
            case Offer.const_386:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1877) as IWindowContainer;
               break;
            case Offer.const_488:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1875) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_774 != null)
            {
               _window.removeChild(var_774);
               var_774.dispose();
            }
            var_774 = _loc2_;
            _window.addChild(_loc2_);
            var_774.x = 0;
            var_774.y = 0;
         }
         var_1403 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1404 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1405 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2172 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_775 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_775 != null)
         {
            var_775.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_775.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_176 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_176,page,var_1874);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1876 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1873 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1877 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1875 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_830,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1874 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_176 = param1.offer;
         attachStub(var_176.priceType);
         if(var_1403 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_176.priceInCredits));
            var_1403.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1404 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_176.priceInPixels));
            var_1404.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1405 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_176.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_176.priceInPixels));
            var_1405.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_775 != null)
         {
            var_775.enable();
         }
      }
   }
}
