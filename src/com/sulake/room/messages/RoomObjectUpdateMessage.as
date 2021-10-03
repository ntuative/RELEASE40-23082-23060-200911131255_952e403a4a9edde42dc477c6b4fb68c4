package com.sulake.room.messages
{
   import com.sulake.room.utils.IVector3d;
   
   public class RoomObjectUpdateMessage
   {
       
      
      protected var var_76:IVector3d;
      
      protected var var_220:IVector3d;
      
      public function RoomObjectUpdateMessage(param1:IVector3d, param2:IVector3d)
      {
         super();
         var_76 = param1;
         var_220 = param2;
      }
      
      public function get loc() : IVector3d
      {
         return var_76;
      }
      
      public function get dir() : IVector3d
      {
         return var_220;
      }
   }
}
