package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_713;
         param1["bitmap"] = const_702;
         param1["border"] = const_513;
         param1["border_notify"] = const_1311;
         param1["button"] = const_368;
         param1["button_thick"] = const_607;
         param1["button_icon"] = const_1166;
         param1["button_group_left"] = const_581;
         param1["button_group_center"] = const_507;
         param1["button_group_right"] = const_500;
         param1["canvas"] = const_615;
         param1["checkbox"] = const_518;
         param1["closebutton"] = const_878;
         param1["container"] = const_313;
         param1["container_button"] = const_566;
         param1["display_object_wrapper"] = const_494;
         param1["dropmenu"] = const_370;
         param1["dropmenu_item"] = const_395;
         param1["frame"] = const_287;
         param1["frame_notify"] = const_1101;
         param1["header"] = const_682;
         param1["icon"] = const_927;
         param1["itemgrid"] = const_770;
         param1["itemgrid_horizontal"] = const_392;
         param1["itemgrid_vertical"] = const_665;
         param1["itemlist"] = const_792;
         param1["itemlist_horizontal"] = const_304;
         param1["itemlist_vertical"] = const_297;
         param1["maximizebox"] = const_1112;
         param1["menu"] = const_1128;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_842;
         param1["minimizebox"] = const_1209;
         param1["notify"] = const_1144;
         param1["null"] = const_362;
         param1["password"] = const_670;
         param1["radiobutton"] = const_525;
         param1["region"] = const_360;
         param1["restorebox"] = const_1283;
         param1["scaler"] = const_851;
         param1["scaler_horizontal"] = const_1142;
         param1["scaler_vertical"] = const_1265;
         param1["scrollbar_horizontal"] = const_358;
         param1["scrollbar_vertical"] = const_635;
         param1["scrollbar_slider_button_up"] = const_936;
         param1["scrollbar_slider_button_down"] = const_852;
         param1["scrollbar_slider_button_left"] = const_902;
         param1["scrollbar_slider_button_right"] = const_820;
         param1["scrollbar_slider_bar_horizontal"] = const_789;
         param1["scrollbar_slider_bar_vertical"] = const_939;
         param1["scrollbar_slider_track_horizontal"] = const_840;
         param1["scrollbar_slider_track_vertical"] = const_917;
         param1["scrollable_itemlist"] = const_1313;
         param1["scrollable_itemlist_vertical"] = const_432;
         param1["scrollable_itemlist_horizontal"] = const_860;
         param1["selector"] = const_537;
         param1["selector_list"] = const_589;
         param1["submenu"] = const_842;
         param1["tab_button"] = const_509;
         param1["tab_container_button"] = const_979;
         param1["tab_context"] = const_361;
         param1["tab_content"] = const_871;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_620;
         param1["input"] = const_495;
         param1["toolbar"] = const_1286;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
