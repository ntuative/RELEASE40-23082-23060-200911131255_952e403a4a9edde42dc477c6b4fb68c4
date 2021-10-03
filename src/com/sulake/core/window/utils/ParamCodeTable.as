package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_98;
         param1["bound_to_parent_rect"] = const_80;
         param1["child_window"] = const_805;
         param1["embedded_controller"] = const_294;
         param1["resize_to_accommodate_children"] = const_56;
         param1["input_event_processor"] = const_48;
         param1["internal_event_handling"] = const_516;
         param1["mouse_dragging_target"] = const_195;
         param1["mouse_dragging_trigger"] = const_311;
         param1["mouse_scaling_target"] = const_236;
         param1["mouse_scaling_trigger"] = const_461;
         param1["horizontal_mouse_scaling_trigger"] = const_212;
         param1["vertical_mouse_scaling_trigger"] = const_214;
         param1["observe_parent_input_events"] = const_949;
         param1["optimize_region_to_layout_size"] = const_396;
         param1["parent_window"] = const_932;
         param1["relative_horizontal_scale_center"] = const_153;
         param1["relative_horizontal_scale_fixed"] = const_123;
         param1["relative_horizontal_scale_move"] = const_275;
         param1["relative_horizontal_scale_strech"] = const_257;
         param1["relative_scale_center"] = const_782;
         param1["relative_scale_fixed"] = const_685;
         param1["relative_scale_move"] = const_833;
         param1["relative_scale_strech"] = const_765;
         param1["relative_vertical_scale_center"] = const_150;
         param1["relative_vertical_scale_fixed"] = const_102;
         param1["relative_vertical_scale_move"] = const_314;
         param1["relative_vertical_scale_strech"] = const_252;
         param1["on_resize_align_left"] = const_630;
         param1["on_resize_align_right"] = const_446;
         param1["on_resize_align_center"] = const_411;
         param1["on_resize_align_top"] = const_721;
         param1["on_resize_align_bottom"] = const_373;
         param1["on_resize_align_middle"] = const_437;
         param1["on_accommodate_align_left"] = const_772;
         param1["on_accommodate_align_right"] = const_342;
         param1["on_accommodate_align_center"] = const_515;
         param1["on_accommodate_align_top"] = const_960;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_559;
         param1["route_input_events_to_parent"] = const_444;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_921;
         param1["scalable_with_mouse"] = const_944;
         param1["reflect_horizontal_resize_to_parent"] = const_462;
         param1["reflect_vertical_resize_to_parent"] = const_380;
         param1["reflect_resize_to_parent"] = const_262;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
