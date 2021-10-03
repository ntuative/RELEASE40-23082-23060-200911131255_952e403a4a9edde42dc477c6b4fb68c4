package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1481:int;
      
      private var var_1482:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1481;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1481 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1481 = this.var_1481;
         _loc1_.var_1482 = this.var_1482;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1482 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1482;
      }
   }
}
