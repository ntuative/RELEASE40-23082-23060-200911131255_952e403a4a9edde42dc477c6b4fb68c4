package com.sulake.habbo.utils
{
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class HabboWebTools
   {
      
      public static const const_583:String = "advertisement";
       
      
      public function HabboWebTools()
      {
         super();
      }
      
      public static function openWebPage(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc2_:URLRequest = new URLRequest(param1);
         if(true)
         {
            navigateToURL(_loc2_,const_583);
         }
         else
         {
            _loc3_ = String(ExternalInterface.call("function() {return navigator.userAgent;}")).toLowerCase();
            if(_loc3_.indexOf("firefox") != -1 || _loc3_.indexOf("msie") != -1 && uint(_loc3_.substr(_loc3_.indexOf("msie") + 5,3)) >= 7)
            {
               ExternalInterface.call("window.open",_loc2_.url,const_583);
            }
            else
            {
               navigateToURL(_loc2_,const_583);
            }
         }
      }
   }
}
