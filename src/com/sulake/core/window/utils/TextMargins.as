package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_845:int;
      
      private var _right:int;
      
      private var var_847:int;
      
      private var var_846:int;
      
      private var var_182:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_847 = param1;
         var_846 = param2;
         _right = param3;
         var_845 = param4;
         var_182 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_845 = param1;
         var_182(this);
      }
      
      public function get left() : int
      {
         return var_847;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_847 == 0 && _right == 0 && var_846 == 0 && var_845 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_846 = param1;
         var_182(this);
      }
      
      public function get top() : int
      {
         return var_846;
      }
      
      public function set left(param1:int) : void
      {
         var_847 = param1;
         var_182(this);
      }
      
      public function get bottom() : int
      {
         return var_845;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_847,var_846,_right,var_845,param1);
      }
      
      public function dispose() : void
      {
         var_182 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_182(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
