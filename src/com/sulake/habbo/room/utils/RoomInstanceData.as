package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_763:LegacyWallGeometry = null;
      
      private var var_524:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_525:TileHeightMap = null;
      
      private var var_1838:String = null;
      
      private var _roomId:int = 0;
      
      private var var_762:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_763 = new LegacyWallGeometry();
         var_762 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_525 != null)
         {
            var_525.dispose();
         }
         var_525 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1838 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_763;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_762;
      }
      
      public function dispose() : void
      {
         if(var_525 != null)
         {
            var_525.dispose();
            var_525 = null;
         }
         if(var_763 != null)
         {
            var_763.dispose();
            var_763 = null;
         }
         if(var_762 != null)
         {
            var_762.dispose();
            var_762 = null;
         }
         if(var_524 != null)
         {
            var_524.dispose();
            var_524 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_525;
      }
      
      public function get worldType() : String
      {
         return var_1838;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_524 != null)
         {
            var_524.dispose();
         }
         var_524 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_524;
      }
   }
}
