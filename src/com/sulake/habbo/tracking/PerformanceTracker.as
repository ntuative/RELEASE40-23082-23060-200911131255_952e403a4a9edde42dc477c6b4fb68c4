package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.tracking.statistics.DiscreteDistribution;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1090:int = 1000;
      
      private var var_1341:GarbageMonitor = null;
      
      private var var_1091:int = 0;
      
      private var var_1218:Boolean = false;
      
      private var var_1678:String = "";
      
      private var var_1342:String = "";
      
      private var var_362:Number = 0;
      
      private var var_1094:int = 10;
      
      private var var_2160:Array;
      
      private var var_575:int = 0;
      
      private var var_1093:int = 60;
      
      private var var_904:int = 0;
      
      private var var_903:int = 0;
      
      private var var_1999:String = "";
      
      private var var_1679:Boolean = true;
      
      private var var_1677:Number = 0.15;
      
      private var var_179:IHabboConfigurationManager = null;
      
      private var var_718:DiscreteDistribution = null;
      
      private var var_1680:String = "";
      
      private var var_1092:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2160 = [];
         super();
         var_1342 = Capabilities.version;
         var_1678 = Capabilities.os;
         var_1218 = Capabilities.isDebugger;
         var_1680 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1341 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1091 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1341.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1341.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_362;
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1093 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1342;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_903;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1090)
         {
            ++var_904;
            _loc3_ = true;
         }
         else
         {
            ++var_575;
            if(var_575 <= 1)
            {
               var_362 = param1;
            }
            else
            {
               _loc4_ = Number(var_575);
               var_362 = var_362 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1091 > var_1093 * 1000 && var_1092 < var_1094)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_362);
            _loc5_ = true;
            if(var_1679 && var_718 != null)
            {
               if(var_1092 > 0)
               {
                  var_718.addDataPoint(1000 / var_362);
                  Logger.log("**** Average frame rate square-root of variance undefined");
                  _loc6_ = 0 / 0;
                  if(_loc6_ < var_1677)
                  {
                     _loc5_ = false;
                  }
               }
            }
            var_1091 = getTimer();
            if(_loc5_ || _loc3_)
            {
               if(sendReport())
               {
                  ++var_1092;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1094 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1090 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1680,var_1342,var_1678,var_1999,var_1218,_loc4_,_loc3_,var_903,var_362,var_904);
            _connection.send(_loc1_);
            var_903 = 0;
            var_362 = 0;
            var_575 = 0;
            var_904 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_179 = param1;
         var_1093 = int(var_179.getKey("performancetest.interval","60"));
         var_1090 = int(var_179.getKey("performancetest.slowupdatelimit","1000"));
         var_1094 = int(var_179.getKey("performancetest.reportlimit","10"));
         var _loc2_:int = int(var_179.getKey("performancetest.distribution.samples","5"));
         var_718 = new DiscreteDistribution(_loc2_);
         var_1677 = Number(var_179.getKey("performancetest.distribution.deviancelimit.percent","10")) / 100;
         var_1679 = Boolean(int(var_179.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
