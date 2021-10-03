package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1004:int = -1;
      
      private static const const_739:int = 20;
      
      private static const const_480:int = 9;
       
      
      private var var_565:Boolean = false;
      
      private var var_225:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_225 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_565 = true;
            var_225 = new Array();
            var_225.push(const_1004);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_565)
            {
               var_565 = false;
               var_225 = new Array();
               var_225.push(const_739);
               var_225.push(const_480 + param1);
               var_225.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
