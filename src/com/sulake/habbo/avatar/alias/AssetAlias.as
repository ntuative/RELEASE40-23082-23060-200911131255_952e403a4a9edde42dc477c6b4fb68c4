package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_866:Boolean;
      
      private var _name:String;
      
      private var var_1833:String;
      
      private var var_865:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1833 = String(param1.@link);
         var_865 = Boolean(parseInt(param1.@fliph));
         var_866 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_865;
      }
      
      public function get flipV() : Boolean
      {
         return var_866;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1833;
      }
   }
}
