package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWPUE_VOTE_RESULT";
      
      public static const const_107:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1117:int;
      
      private var var_981:String;
      
      private var var_595:Array;
      
      private var var_919:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_981 = param2;
         var_919 = param3;
         var_595 = param4;
         if(var_595 == null)
         {
            var_595 = [];
         }
         var_1117 = param5;
      }
      
      public function get votes() : Array
      {
         return var_595.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1117;
      }
      
      public function get question() : String
      {
         return var_981;
      }
      
      public function get choices() : Array
      {
         return var_919.slice();
      }
   }
}
