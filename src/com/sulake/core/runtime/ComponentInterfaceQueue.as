package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1176:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_776:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1176 = param1;
         var_776 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_776;
      }
      
      public function get identifier() : IID
      {
         return var_1176;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1176 = null;
            while(false)
            {
               var_776.pop();
            }
            var_776 = null;
         }
      }
   }
}
