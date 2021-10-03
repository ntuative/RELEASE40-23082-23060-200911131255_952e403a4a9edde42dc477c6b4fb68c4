package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_593:String = "Rectangle";
      
      public static const const_59:String = "Boolean";
      
      public static const const_599:String = "Number";
      
      public static const const_84:String = "int";
      
      public static const const_244:String = "String";
      
      public static const const_668:String = "Point";
      
      public static const const_814:String = "Array";
      
      public static const const_1231:String = "uint";
      
      public static const const_463:String = "hex";
      
      public static const const_813:String = "Map";
       
      
      private var var_521:String;
      
      private var var_169:Object;
      
      private var var_2163:Boolean;
      
      private var _type:String;
      
      private var var_1811:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_521 = param1;
         var_169 = param2;
         _type = param3;
         var_1811 = param4;
         var_2163 = param3 == const_813 || param3 == const_814 || param3 == const_668 || param3 == const_593;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_463:
               return "0x" + uint(var_169).toString(16);
            case const_59:
               return Boolean(var_169) == true ? "true" : "false";
            case const_668:
               return "Point(" + Point(var_169).x + ", " + Point(var_169).y + ")";
            case const_593:
               return "Rectangle(" + Rectangle(var_169).x + ", " + Rectangle(var_169).y + ", " + Rectangle(var_169).width + ", " + Rectangle(var_169).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_813:
               _loc3_ = var_169 as Map;
               _loc1_ = "<var key=\"" + var_521 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_814:
               _loc4_ = var_169 as Array;
               _loc1_ = "<var key=\"" + var_521 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_668:
               _loc5_ = var_169 as Point;
               _loc1_ = "<var key=\"" + var_521 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_593:
               _loc6_ = var_169 as Rectangle;
               _loc1_ = "<var key=\"" + var_521 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_84 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_463:
               _loc1_ = "<var key=\"" + var_521 + "\" value=\"" + "0x" + uint(var_169).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_521 + "\" value=\"" + var_169 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_169;
      }
      
      public function get valid() : Boolean
      {
         return var_1811;
      }
      
      public function get key() : String
      {
         return var_521;
      }
   }
}
