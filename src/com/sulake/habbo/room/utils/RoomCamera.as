package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_337:Number = 0.5;
      
      private static const const_762:int = 3;
      
      private static const const_1085:Number = 1;
       
      
      private var var_2077:Boolean = false;
      
      private var _targetCategory:int = -2;
      
      private var var_2075:Boolean = false;
      
      private var var_2076:Boolean = false;
      
      private var var_2078:Boolean = false;
      
      private var var_2079:int = -1;
      
      private var var_1005:int = 0;
      
      private var var_270:Vector3d = null;
      
      private var var_402:Vector3d = null;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2075;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2076;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_402 != null && var_270 != null)
         {
            ++var_1005;
            _loc2_ = Vector3d.dif(var_402,var_270);
            if(_loc2_.length <= const_337)
            {
               var_270 = var_402;
               var_402 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_337 * (const_762 + 1))
               {
                  _loc2_.mul(const_337);
               }
               else if(var_1005 <= const_762)
               {
                  _loc2_.mul(const_337);
               }
               else
               {
                  _loc2_.mul(const_1085);
               }
               var_270 = Vector3d.sum(var_270,_loc2_);
            }
         }
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2075 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2078 = param1;
      }
      
      public function get targetId() : int
      {
         return var_2079;
      }
      
      public function set targetCategory(param1:int) : void
      {
         _targetCategory = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_402 == null)
         {
            var_402 = new Vector3d();
         }
         var_402.assign(param1);
         var_1005 = 0;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2076 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_270 != null)
         {
            return;
         }
         var_270 = new Vector3d();
         var_270.assign(param1);
      }
      
      public function set targetId(param1:int) : void
      {
         var_2079 = param1;
      }
      
      public function dispose() : void
      {
         var_402 = null;
         var_270 = null;
      }
      
      public function get targetCategory() : int
      {
         return _targetCategory;
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2077;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2078;
      }
      
      public function get location() : IVector3d
      {
         return var_270;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2077 = param1;
      }
   }
}
