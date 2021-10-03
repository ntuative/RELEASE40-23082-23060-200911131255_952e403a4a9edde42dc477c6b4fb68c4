package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1091:int = 1;
      
      private static const const_1004:int = 3;
      
      private static const const_1092:int = 2;
      
      private static const const_1093:int = 15;
       
      
      private var var_839:int;
      
      private var var_225:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_225 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1092)
         {
            var_225 = new Array();
            var_225.push(const_1091);
            var_839 = const_1093;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_839 > 0)
         {
            --var_839;
         }
         if(var_839 == 0)
         {
            if(false)
            {
               super.setAnimation(var_225.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
