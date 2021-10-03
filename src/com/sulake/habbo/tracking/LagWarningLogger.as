package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_778:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1219:Boolean = true;
      
      private var var_1092:int = 0;
      
      private var var_832:int = 0;
      
      private var var_1091:int = 0;
      
      private var var_833:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1094:int = 15;
      
      private var var_179:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1093:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1091 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1219)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_832,var_833);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1092;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_832 == 0 && var_833 == 0;
      }
      
      private function resetLog() : void
      {
         var_832 = 0;
         var_833 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1219)
         {
            return;
         }
         if(getTimer() - var_1091 > var_1093 * 1000 && var_1092 < var_1094)
         {
            var_1091 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_179 = param1;
         var_1093 = int(var_179.getKey("lagwarninglog.interval","60"));
         var_1094 = int(var_179.getKey("lagwarninglog.reportlimit","15"));
         var_1219 = Boolean(int(var_179.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_833 += 1;
            case const_778:
               var_832 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
