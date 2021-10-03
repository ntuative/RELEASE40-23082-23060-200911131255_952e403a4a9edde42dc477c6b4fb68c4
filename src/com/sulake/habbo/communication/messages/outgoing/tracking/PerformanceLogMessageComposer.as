package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_904:int = 0;
      
      private var var_1218:int = 0;
      
      private var var_1678:String = "";
      
      private var var_903:int = 0;
      
      private var var_1999:String = "";
      
      private var var_1998:int = 0;
      
      private var var_1342:String = "";
      
      private var var_1997:int = 0;
      
      private var var_1996:int = 0;
      
      private var var_1680:String = "";
      
      private var var_2000:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1997 = param1;
         var_1680 = param2;
         var_1342 = param3;
         var_1678 = param4;
         var_1999 = param5;
         if(param6)
         {
            var_1218 = 1;
         }
         else
         {
            var_1218 = 0;
         }
         var_1998 = param7;
         var_1996 = param8;
         var_903 = param9;
         var_2000 = param10;
         var_904 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1997,var_1680,var_1342,var_1678,var_1999,var_1218,var_1998,var_1996,var_903,var_2000,var_904];
      }
      
      public function dispose() : void
      {
      }
   }
}
