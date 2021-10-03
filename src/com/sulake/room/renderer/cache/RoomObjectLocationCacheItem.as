package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1905:int = -1;
      
      private var var_1191:int = -1;
      
      private var var_652:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_652 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1905;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1905 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_652.assign(param1);
         var_652.x = Math.round(var_652.x);
         var_652.y = Math.round(var_652.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1191 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_652;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1191;
      }
   }
}
