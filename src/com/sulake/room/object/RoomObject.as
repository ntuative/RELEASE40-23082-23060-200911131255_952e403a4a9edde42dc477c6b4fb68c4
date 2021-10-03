package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1240:int = 0;
       
      
      private var var_76:Vector3d;
      
      private var _updateID:uint;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_91:RoomObjectModel;
      
      private var var_398:IRoomObjectEventHandler;
      
      private var var_1469:Vector3d;
      
      private var var_2051:int = 0;
      
      private var _id:int;
      
      private var var_1468:Vector3d;
      
      private var var_220:Vector3d;
      
      private var var_476:Array;
      
      public function RoomObject(param1:int, param2:uint)
      {
         super();
         _id = param1;
         var_76 = new Vector3d();
         var_220 = new Vector3d();
         var_1469 = new Vector3d();
         var_1468 = new Vector3d();
         var_476 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_476[_loc3_] = 0;
            _loc3_--;
         }
         var_91 = new RoomObjectModel();
         _visualization = null;
         var_398 = null;
         _updateID = 0;
         var_2051 = var_1240++;
      }
      
      public function getInstanceId() : int
      {
         return var_2051;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : uint
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_76 = null;
         var_220 = null;
         if(var_91 != null)
         {
            var_91.dispose();
            var_91 = null;
         }
         var_476 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1469.assign(var_76);
         return var_1469;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_76.x != param1.x || var_76.y != param1.y || var_76.z != param1.z)
         {
            var_76.x = param1.x;
            var_76.y = param1.y;
            var_76.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_220.x != param1.x || var_220.y != param1.y || var_220.z != param1.z)
         {
            var_220.x = (param1.x % 360 + 360) % 360;
            var_220.y = (param1.y % 360 + 360) % 360;
            var_220.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_398;
      }
      
      public function getDirection() : IVector3d
      {
         var_1468.assign(var_220);
         return var_1468;
      }
      
      public function setState(param1:int, param2:uint) : Boolean
      {
         if(param2 < var_476.length)
         {
            if(var_476[param2] != param1)
            {
               var_476[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_398)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_398;
         if(_loc2_ != null)
         {
            var_398 = null;
            _loc2_.object = null;
         }
         var_398 = param1;
         if(var_398 != null)
         {
            var_398.object = this;
         }
      }
      
      public function getState(param1:uint) : int
      {
         if(param1 < var_476.length)
         {
            return var_476[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return var_91;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return var_91;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
