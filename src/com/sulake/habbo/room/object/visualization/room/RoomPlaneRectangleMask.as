package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2014:Number = 0;
      
      private var var_1642:Number = 0;
      
      private var var_1643:Number = 0;
      
      private var var_2015:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1642 = param1;
         var_1643 = param2;
         var_2014 = param3;
         var_2015 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1642;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2014;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1643;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2015;
      }
   }
}
