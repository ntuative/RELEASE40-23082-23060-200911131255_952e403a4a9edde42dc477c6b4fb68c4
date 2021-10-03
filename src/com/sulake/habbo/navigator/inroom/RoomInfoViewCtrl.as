package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_666:IWindowContainer;
      
      private var var_979:ITextWindow;
      
      private var var_198:RoomSettingsCtrl;
      
      private var var_1207:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_470:Timer;
      
      private var var_1210:ITextWindow;
      
      private var var_329:IWindowContainer;
      
      private var var_1974:IWindowContainer;
      
      private var var_1973:ITextWindow;
      
      private var var_815:IWindowContainer;
      
      private var var_1438:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_597:ITextWindow;
      
      private var var_1437:IWindowContainer;
      
      private var var_1205:IWindowContainer;
      
      private var var_812:ITextWindow;
      
      private var var_980:ITextFieldWindow;
      
      private var var_291:IWindowContainer;
      
      private var var_814:ITextWindow;
      
      private var var_1435:IButtonWindow;
      
      private var var_978:ITextWindow;
      
      private var var_2182:int;
      
      private var var_1208:IContainerButtonWindow;
      
      private var var_813:IWindowContainer;
      
      private var var_1206:ITextWindow;
      
      private var var_1209:IContainerButtonWindow;
      
      private var var_1434:ITextWindow;
      
      private var var_1436:IButtonWindow;
      
      private var var_900:TagRenderer;
      
      private var var_1558:ITextWindow;
      
      private var var_330:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_665:ITextWindow;
      
      private var var_266:RoomThumbnailCtrl;
      
      private var var_1204:IContainerButtonWindow;
      
      private var var_1972:IWindowContainer;
      
      private var var_265:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_330 = new RoomEventViewCtrl(_navigator);
         var_198 = new RoomSettingsCtrl(_navigator,this,true);
         var_266 = new RoomThumbnailCtrl(_navigator);
         var_900 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_198);
         var_470 = new Timer(6000,1);
         var_470.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_198.active = true;
         this.var_330.active = false;
         this.var_266.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1438.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1436.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1437.visible = Util.hasVisibleChildren(var_1437);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_597.text = param1.roomName;
         var_597.height = NaN;
         _ownerName.text = param1.ownerName;
         var_812.text = param1.description;
         var_900.refreshTags(var_329,param1.tags);
         var_812.visible = false;
         if(param1.description != "")
         {
            var_812.height = NaN;
            var_812.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_329,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_329,"thumb_down",_loc3_,onThumbDown,0);
         var_1973.visible = _loc3_;
         var_814.visible = !_loc3_;
         var_1434.visible = !_loc3_;
         var_1434.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_329,"home",param2,null,0);
         _navigator.refreshButton(var_329,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_329,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_597.y,0);
         var_329.visible = true;
         var_329.height = Util.getLowestPoint(var_329);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_382,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1435.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1207.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1204.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1208.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1209.visible = _navigator.data.canEditRoomSettings && param1;
         var_1205.visible = Util.hasVisibleChildren(var_1205);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_470.reset();
         this.var_330.active = false;
         this.var_198.active = false;
         this.var_266.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_470.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_470.reset();
         this.var_330.active = false;
         this.var_198.active = false;
         this.var_266.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_382,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_291);
         var_291.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.method_7);
         refreshRoomButtons(_loc2_);
         this.var_198.refresh(var_291);
         this.var_266.refresh(var_291);
         Util.moveChildrenToColumn(var_291,["room_details","room_buttons"],0,2);
         var_291.height = Util.getLowestPoint(var_291);
         var_291.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_980.setSelection(0,var_980.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_265);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_330.refresh(var_265);
         if(Util.hasVisibleChildren(var_265) && !this.var_266.active)
         {
            Util.moveChildrenToColumn(var_265,["event_details","event_buttons"],0,2);
            var_265.height = Util.getLowestPoint(var_265);
            var_265.visible = true;
         }
         else
         {
            var_265.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_470.reset();
         this.var_330.active = true;
         this.var_198.active = false;
         this.var_266.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_470.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_979.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_979.height = NaN;
         var_1210.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1210.height = NaN;
         Util.moveChildrenToColumn(var_666,["public_space_name","public_space_desc"],var_979.y,0);
         var_666.visible = true;
         var_666.height = Math.max(86,Util.getLowestPoint(var_666));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_813.visible = true;
            var_980.text = this.getEmbedData();
         }
         else
         {
            var_813.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_470.reset();
         this.var_198.load(param1);
         this.var_198.active = true;
         this.var_330.active = false;
         this.var_266.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_470.reset();
         this.var_198.active = false;
         this.var_330.active = false;
         this.var_266.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_64,false);
         _window.setParamFlag(HabboWindowParam.const_1139,true);
         var_291 = IWindowContainer(find("room_info"));
         var_329 = IWindowContainer(find("room_details"));
         var_666 = IWindowContainer(find("public_space_details"));
         var_1972 = IWindowContainer(find("owner_name_cont"));
         var_1974 = IWindowContainer(find("rating_cont"));
         var_1205 = IWindowContainer(find("room_buttons"));
         var_597 = ITextWindow(find("room_name"));
         var_979 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_812 = ITextWindow(find("room_desc"));
         var_1210 = ITextWindow(find("public_space_desc"));
         var_978 = ITextWindow(find("owner_caption"));
         var_814 = ITextWindow(find("rating_caption"));
         var_1973 = ITextWindow(find("rate_caption"));
         var_1434 = ITextWindow(find("rating_txt"));
         var_265 = IWindowContainer(find("event_info"));
         var_815 = IWindowContainer(find("event_details"));
         var_1437 = IWindowContainer(find("event_buttons"));
         var_1558 = ITextWindow(find("event_name"));
         var_665 = ITextWindow(find("event_desc"));
         var_1207 = IContainerButtonWindow(find("add_favourite_button"));
         var_1204 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1208 = IContainerButtonWindow(find("make_home_button"));
         var_1209 = IContainerButtonWindow(find("unmake_home_button"));
         var_1435 = IButtonWindow(find("room_settings_button"));
         var_1438 = IButtonWindow(find("create_event_button"));
         var_1436 = IButtonWindow(find("edit_event_button"));
         var_813 = IWindowContainer(find("embed_info"));
         var_1206 = ITextWindow(find("embed_info_txt"));
         var_980 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1207,onAddFavouriteClick);
         Util.setProcDirectly(var_1204,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1435,onRoomSettingsClick);
         Util.setProcDirectly(var_1208,onMakeHomeClick);
         Util.setProcDirectly(var_1209,onUnmakeHomeClick);
         Util.setProcDirectly(var_1438,onEventSettingsClick);
         Util.setProcDirectly(var_1436,onEventSettingsClick);
         Util.setProcDirectly(var_980,onEmbedSrcClick);
         _navigator.refreshButton(var_1207,"favourite",true,null,0);
         _navigator.refreshButton(var_1204,"favourite",true,null,0);
         _navigator.refreshButton(var_1208,"home",true,null,0);
         _navigator.refreshButton(var_1209,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_291,onHover);
         Util.setProcDirectly(var_265,onHover);
         var_978.width = var_978.textWidth;
         Util.moveChildrenToRow(var_1972,["owner_caption","owner_name"],var_978.x,var_978.y,3);
         var_814.width = var_814.textWidth;
         Util.moveChildrenToRow(var_1974,["rating_caption","rating_txt"],var_814.x,var_814.y,3);
         var_1206.height = NaN;
         Util.moveChildrenToColumn(var_813,["embed_info_txt","embed_src_txt"],var_1206.y,2);
         var_813.height = Util.getLowestPoint(var_813) + 5;
         var_2182 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1558.text = param1.eventName;
         var_665.text = param1.eventDescription;
         var_900.refreshTags(var_815,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_665.visible = false;
         if(param1.eventDescription != "")
         {
            var_665.height = NaN;
            var_665.y = Util.getLowestPoint(var_815) + 2;
            var_665.visible = true;
         }
         var_815.visible = true;
         var_815.height = Util.getLowestPoint(var_815);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_890,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
