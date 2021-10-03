package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1347:String;
      
      private var var_858:String;
      
      private var var_1345:String;
      
      private var var_1346:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1346 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1347 = _loc5_[0];
         var_1345 = _loc5_[1];
         _name = param2;
         var_858 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1347;
      }
      
      public function get languageCode() : String
      {
         return var_1346;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_858;
      }
      
      public function get encoding() : String
      {
         return var_1345;
      }
      
      public function get id() : String
      {
         return var_1346 + "_" + var_1347 + "." + var_1345;
      }
   }
}
