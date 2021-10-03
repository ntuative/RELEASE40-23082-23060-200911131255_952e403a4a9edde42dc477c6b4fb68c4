package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_76:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_220:Vector3d = null;
      
      private var var_1674:int = 0;
      
      private var var_1993:String = null;
      
      private var _category:int = 0;
      
      private var var_1992:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1992 = param3;
         var_76 = new Vector3d();
         var_76.assign(param4);
         var_220 = new Vector3d();
         var_220.assign(param5);
         var_1674 = param6;
         var_1993 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_76;
      }
      
      public function get typeId() : int
      {
         return var_1674;
      }
      
      public function get dir() : Vector3d
      {
         return var_220;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1993;
      }
      
      public function get operation() : String
      {
         return var_1992;
      }
      
      public function dispose() : void
      {
         var_76 = null;
         var_220 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
