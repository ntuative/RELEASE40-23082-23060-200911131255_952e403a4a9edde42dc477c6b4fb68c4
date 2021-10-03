package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1374:int = 10;
       
      
      private var var_1443:NavigatorSettingsMessageParser;
      
      private var var_1216:int;
      
      private var var_1990:Boolean;
      
      private var var_1989:int;
      
      private var var_818:Dictionary;
      
      private var var_2186:int;
      
      private var var_1988:int;
      
      private var var_1987:int;
      
      private var var_309:Array;
      
      private var var_1986:int;
      
      private var var_1153:Array;
      
      private var var_546:PublicRoomShortData;
      
      private var var_393:RoomEventData;
      
      private var var_143:MsgWithRequestId;
      
      private var var_1896:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1985:Boolean;
      
      private var var_199:GuestRoomData;
      
      private var var_668:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_309 = new Array();
         var_818 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1989;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1985;
      }
      
      public function startLoading() : void
      {
         this.var_668 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1985 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_393 != null)
         {
            var_393.dispose();
         }
         var_393 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_143 != null && var_143 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_143 != null && var_143 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_143 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_199;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_546 = null;
         var_199 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_546 = param1.publicSpace;
            var_393 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_393 != null)
         {
            var_393.dispose();
            var_393 = null;
         }
         if(var_546 != null)
         {
            var_546.dispose();
            var_546 = null;
         }
         if(var_199 != null)
         {
            var_199.dispose();
            var_199 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_668 = false;
         if(var_1153 == null)
         {
            var_1153 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1443;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_668 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_309.length > param1)
         {
            return var_309[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2186 = param1.limit;
         this.var_1216 = param1.favouriteRoomIds.length;
         this.var_818 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_818[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_143 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_309;
      }
      
      public function get method_7() : PublicRoomShortData
      {
         return var_546;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1987 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1990;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_143 = param1;
         var_668 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_309.length)
         {
            if((var_309[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_199 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_668;
      }
      
      public function set categories(param1:Array) : void
      {
         var_309 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1988;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1986;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1443 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_143 == null)
         {
            return;
         }
         var_143.dispose();
         var_143 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_393;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_818[param1] = !!param2 ? "yes" : null;
         var_1216 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_143 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1153;
      }
      
      public function get avatarId() : int
      {
         return var_1987;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_143 != null && var_143 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1990 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1988 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1896 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_199 != null)
         {
            var_199.dispose();
         }
         var_199 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_309)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_199 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1443.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1216 >= var_2186;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1986 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1896;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_199 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1989 = param1;
      }
   }
}
