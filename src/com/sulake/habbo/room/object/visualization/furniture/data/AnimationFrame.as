package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_558:int = -1;
      
      public static const const_826:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1842:int = -1;
      
      private var var_89:int = 0;
      
      private var var_1162:int = 1;
      
      private var var_765:int = 1;
      
      private var var_1841:Boolean = false;
      
      private var var_1843:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_1841 = param5;
         if(param4 < 0)
         {
            param4 = const_558;
         }
         var_765 = param4;
         var_1162 = param4;
         if(param6 >= 0)
         {
            var_1842 = param6;
            var_1843 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_765 > 0 && param1 > var_765)
         {
            param1 = var_765;
         }
         var_1162 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_765;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1843;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_765 < 0)
         {
            return const_558;
         }
         return var_1162;
      }
      
      public function get activeSequence() : int
      {
         return var_1842;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1841;
      }
      
      public function get x() : int
      {
         return var_89;
      }
   }
}
