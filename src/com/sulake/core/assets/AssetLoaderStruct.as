package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_619:IAssetLoader;
      
      private var var_1109:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1109 = param1;
         var_619 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_619;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_619 != null)
            {
               if(true)
               {
                  var_619.dispose();
                  var_619 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1109;
      }
   }
}
