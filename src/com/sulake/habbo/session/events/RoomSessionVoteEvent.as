package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_120:String = "RSPE_VOTE_RESULT";
      
      public static const const_107:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1117:int = 0;
      
      private var var_981:String = "";
      
      private var var_595:Array;
      
      private var var_919:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_919 = [];
         var_595 = [];
         super(param1,param2,param7,param8);
         var_981 = param3;
         var_919 = param4;
         var_595 = param5;
         if(var_595 == null)
         {
            var_595 = [];
         }
         var_1117 = param6;
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
