package com.sulake.habbo.room.object.visualization.pet
{
   import com.sulake.core.assets.AssetLibrary;
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.IAvatarDataContainer;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   public class PetVisualization extends RoomObjectSpriteVisualization
   {
       
      
      private var var_562:String;
      
      private var var_575:int = 0;
      
      private const const_1551:int = 1;
      
      private const const_1378:int = 0;
      
      private var _assetLibrary:AssetLibrary = null;
      
      private var _isAnimating:Boolean;
      
      private const const_1017:int = 3;
      
      private var var_917:int = 0;
      
      private var var_478:int = 0;
      
      private const const_1086:int = 3;
      
      private const const_1550:int = 2;
      
      private var var_733:PetVisualizationData = null;
      
      private var var_369:Map;
      
      private var var_734:Array;
      
      public function PetVisualization()
      {
         var_734 = new Array();
         super();
         var_369 = new Map();
         _assetLibrary = new AssetLibrary("pet visualization");
         _isAnimating = false;
      }
      
      override public function update(param1:IRoomGeometry = null) : void
      {
         var _loc10_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:Boolean = false;
         var _loc23_:* = null;
         var _loc24_:* = false;
         var _loc25_:* = null;
         var _loc26_:* = null;
         var _loc27_:* = null;
         var _loc28_:* = null;
         var _loc29_:int = 0;
         var _loc30_:* = null;
         var _loc31_:* = null;
         var _loc32_:int = 0;
         var _loc33_:* = null;
         var _loc34_:* = null;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:* = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:* = null;
         var _loc40_:* = null;
         var _loc41_:int = 0;
         var _loc42_:int = 0;
         var _loc43_:int = 0;
         var _loc44_:int = 0;
         var _loc45_:int = 0;
         var _loc46_:* = null;
         var _loc47_:* = null;
         var _loc48_:int = 0;
         var _loc49_:int = 0;
         var _loc50_:* = null;
         var _loc51_:* = null;
         var _loc52_:* = null;
         var _loc53_:* = null;
         var _loc54_:int = 0;
         var _loc55_:* = null;
         var _loc56_:int = 0;
         var _loc2_:IRoomObject = object;
         if(_loc2_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(var_733 == null)
         {
            return;
         }
         var _loc3_:IRoomObjectModel = _loc2_.getModel();
         var _loc4_:String = "avatar" + param1.scale.toString();
         var _loc5_:* = var_369.getValue(_loc4_) as IAvatarImage;
         var _loc6_:String = _loc3_.getString(RoomObjectVariableEnum.const_158);
         var _loc7_:Number = new Date().valueOf();
         var _loc9_:* = 0;
         var _loc11_:Number = _loc3_.getNumber(RoomObjectVariableEnum.const_839);
         if(_loc11_ > 0)
         {
            _loc16_ = getTimer() - _loc11_;
            if(_loc16_ < AvatarAction.const_915)
            {
               _loc9_ = uint(int(Math.sin(Number(_loc16_) / 0 * 0) * 255));
               _loc10_ = _loc3_.getNumber(RoomObjectVariableEnum.const_981);
               var_478 = const_1086;
            }
         }
         var _loc12_:Boolean = false;
         var _loc13_:String = _loc3_.getString(RoomObjectVariableEnum.const_265);
         switch(_loc13_)
         {
            case AvatarAction.const_966:
            case AvatarAction.const_868:
            case AvatarAction.const_795:
            case AvatarAction.const_821:
            case AvatarAction.const_811:
            case AvatarAction.const_899:
            case AvatarAction.const_834:
            case AvatarAction.const_406:
            case AvatarAction.const_469:
               _loc12_ = true;
         }
         var _loc14_:Boolean = var_274 != _loc2_.getUpdateID() || var_207 != param1.scale || var_183 != _loc3_.getUpdateID();
         var _loc15_:Boolean = _isAnimating || var_478 > 0 || _loc12_;
         if(_loc14_ || _loc15_)
         {
            _loc17_ = getTimer();
            --var_478;
            if(var_562 != _loc6_)
            {
               for each(_loc34_ in var_369.getKeys())
               {
                  var_369.remove(_loc34_);
               }
               _loc5_ = null;
            }
            if(_loc5_ == null)
            {
               _loc5_ = var_733.getAvatar(_loc6_,param1.scale);
               if(_loc5_ == null)
               {
                  return;
               }
               var_369.remove(_loc4_);
               var_369.add(_loc4_,_loc5_);
               var_562 = _loc6_;
            }
            _loc18_ = _loc2_.getDirection().x - (param1.direction.x + 135 - 22.5);
            _loc18_ = (_loc18_ % 360 + 360) % 360;
            _loc5_.setDirectionAngle(AvatarSetType.const_37,_loc18_);
            _loc19_ = _loc3_.getNumber(RoomObjectVariableEnum.const_274);
            if(isNaN(_loc19_))
            {
               _loc19_ = _loc18_;
            }
            else
            {
               _loc19_ -= param1.direction.x + 135 - 22.5;
            }
            _loc19_ = (_loc19_ % 360 + 360) % 360;
            _loc5_.setDirectionAngle(AvatarSetType.const_44,_loc19_);
            _loc5_.initActionAppends();
            _loc20_ = _loc3_.getString(RoomObjectVariableEnum.const_265);
            _loc21_ = _loc3_.getString(RoomObjectVariableEnum.const_621);
            _loc5_.appendAction(AvatarAction.const_634,_loc20_,_loc21_);
            _loc22_ = false;
            if(_loc20_ == "lay")
            {
               _loc35_ = Number(_loc21_);
               if(_loc35_ < 0)
               {
                  _loc22_ = true;
               }
            }
            _loc23_ = _loc3_.getString(RoomObjectVariableEnum.const_404);
            if(_loc23_ != null && _loc23_ != "")
            {
               _loc36_ = _loc3_.getNumber(RoomObjectVariableEnum.const_369);
               _loc37_ = 3;
               _loc38_ = _loc7_ - _loc36_;
               if(_loc38_ < _loc37_ * 1000)
               {
                  _loc5_.appendAction(AvatarAction.const_277,_loc23_);
               }
            }
            _loc24_ = _loc3_.getNumber(RoomObjectVariableEnum.const_433) > 0;
            if(_loc24_)
            {
               _loc5_.appendAction(AvatarAction.const_711);
            }
            _loc5_.endActionAppends();
            ++var_575;
            ++var_917;
            if(var_917 > 1)
            {
               _loc5_.updateAnimationByFrames(1);
               var_917 = 0;
            }
            _loc25_ = _loc5_.getImage(AvatarSetType.const_37);
            if(_loc25_ == null)
            {
               return;
            }
            _isAnimating = _loc5_.isAnimating();
            _loc26_ = _loc5_.avatarSpriteData;
            if(_loc26_ != null)
            {
            }
            _loc27_ = "avatar " + param1.scale;
            _loc28_ = _assetLibrary.getAssetByName(_loc27_) as BitmapDataAsset;
            if(_loc28_ == null)
            {
               _loc28_ = new BitmapDataAsset(_assetLibrary.getAssetTypeDeclarationByClass(BitmapDataAsset));
               _assetLibrary.setAsset(_loc27_,_loc28_);
            }
            if(_loc28_.content != null)
            {
               _loc39_ = _loc28_.content as BitmapData;
               if(_loc39_ != null && _loc39_ != _loc25_)
               {
                  _loc39_.dispose();
               }
            }
            _loc28_.setUnknownContent(_loc25_);
            _loc29_ = _loc5_.getSprites().length + const_1017;
            if(_loc29_ != spriteCount)
            {
               createSprites(_loc29_);
            }
            _loc31_ = _loc5_.getCanvasOffsets();
            if(_loc31_ == null || _loc31_.length < 3)
            {
               _loc31_ = new Array(0,0,0);
            }
            _loc30_ = getSprite(const_1378);
            if(_loc30_ != null)
            {
               _loc30_.asset = _loc28_;
               _loc30_.offsetX = -1 * param1.scale / 2 + _loc31_[0];
               _loc30_.offsetY = -_loc25_.height + param1.scale / 4 + _loc31_[1];
               if(!_loc22_)
               {
               }
            }
            _loc32_ = const_1017;
            for each(_loc33_ in _loc5_.getSprites())
            {
               _loc30_ = getSprite(_loc32_);
               if(_loc30_ != null)
               {
                  _loc40_ = _loc5_.getLayerData(_loc33_);
                  _loc41_ = 0;
                  _loc42_ = _loc33_.getDirectionOffsetX(_loc5_.getDirection());
                  _loc43_ = _loc33_.getDirectionOffsetY(_loc5_.getDirection());
                  _loc44_ = _loc33_.getDirectionOffsetZ(_loc5_.getDirection());
                  _loc45_ = 0;
                  if(_loc33_.hasDirections)
                  {
                     _loc45_ = _loc5_.getDirection();
                  }
                  if(_loc40_ != null)
                  {
                     _loc41_ = _loc40_.animationFrame;
                     _loc42_ += _loc40_.dx;
                     _loc43_ += _loc40_.dy;
                     _loc45_ += _loc40_.directionOffset;
                  }
                  if(param1.scale < 48)
                  {
                     _loc42_ /= 2;
                     _loc43_ /= 2;
                  }
                  if(_loc45_ < 0)
                  {
                     _loc45_ += 8;
                  }
                  if(_loc45_ > 7)
                  {
                     _loc45_ -= 8;
                  }
                  _loc46_ = _loc5_.getScale() + "_" + _loc33_.member + "_" + _loc45_ + "_" + _loc41_;
                  _loc47_ = _loc5_.getAsset(_loc46_);
                  if(_loc47_ != null)
                  {
                     _loc30_.asset = _loc47_;
                     _loc30_.offsetX = -1 * _loc47_.offset.x - param1.scale / 2 + _loc42_;
                     _loc30_.offsetY = -1 * _loc47_.offset.y + _loc43_;
                     _loc30_.relativeDepth = -0.01 - 0.1 * _loc32_ * _loc44_;
                     if(_loc33_.ink == 33)
                     {
                        _loc30_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc30_.blendMode = BlendMode.NORMAL;
                     }
                     _loc32_++;
                  }
               }
            }
            if(_loc20_ == "mv" || _loc20_ == "std")
            {
               _loc29_ = _loc5_.getSprites().length + const_1017;
               if(_loc29_ != spriteCount)
               {
                  createSprites(_loc29_);
               }
               _loc30_ = getSprite(const_1551);
               _loc28_ = null;
               _loc27_ = null;
               _loc48_ = 0;
               _loc49_ = 0;
               switch(param1.scale)
               {
                  case 32:
                     _loc27_ = "sh_std_sd_1_0_0";
                     _loc48_ = -8;
                     _loc49_ = -3;
                     break;
                  case 64:
                     _loc27_ = "h_std_sd_1_0_0";
                     _loc48_ = -17;
                     _loc49_ = -7;
               }
               if(_loc27_ != null)
               {
                  _loc28_ = _loc5_.getAsset(_loc27_);
               }
               if(_loc28_ != null)
               {
                  _loc30_.asset = _loc28_;
                  _loc30_.offsetX = _loc48_;
                  _loc30_.offsetY = _loc49_;
                  _loc30_.alpha = 50;
                  _loc30_.relativeDepth = 1;
               }
            }
            _loc30_ = getSprite(const_1550);
            if(_loc9_ > 0)
            {
               _loc28_ = null;
               _loc28_ = var_733.getAvatarRendererAsset("pet_experience_bubble_png") as BitmapDataAsset;
               if(_loc28_ != null)
               {
                  _loc50_ = _loc28_.content as BitmapData;
                  _loc51_ = new TextFormat();
                  _loc51_.font = "Volter";
                  _loc51_.color = 16777215;
                  _loc51_.size = 9;
                  _loc52_ = new TextField();
                  _loc52_.embedFonts = true;
                  _loc52_.width = 30;
                  _loc52_.height = 12;
                  _loc52_.background = true;
                  _loc52_.backgroundColor = 3871388928;
                  _loc52_.defaultTextFormat = _loc51_;
                  _loc52_.text = "+" + _loc10_;
                  _loc53_ = new Matrix();
                  _loc53_.translate(15,19);
                  _loc50_.draw(_loc52_,_loc53_);
                  _loc30_.asset = _loc28_;
                  _loc30_.offsetX = -20;
                  _loc30_.offsetY = -80;
                  _loc30_.alpha = _loc9_;
                  _loc30_.visible = true;
               }
            }
            else
            {
               _loc30_.visible = false;
            }
            var_274 = _loc2_.getUpdateID();
            var_183 = _loc3_.getUpdateID();
            var_207 = param1.scale;
            var_734.push(getTimer() - _loc17_);
            if(false)
            {
               _loc54_ = 0;
               _loc55_ = "[";
               for each(_loc56_ in var_734)
               {
                  _loc54_ += _loc56_;
                  _loc55_ += "," + _loc56_;
               }
               _loc55_ += "]";
               var_734 = new Array();
            }
         }
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         var_733 = param1 as PetVisualizationData;
         createSprites(4);
         return true;
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.dispose();
         if(var_369 != null)
         {
            _loc1_ = var_369.getKeys();
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = var_369.getValue(_loc2_) as IAvatarImage;
               _loc3_.dispose();
            }
         }
         var_369.dispose();
         if(_assetLibrary != null)
         {
            _assetLibrary.dispose();
            _assetLibrary = null;
         }
         var_733 = null;
      }
   }
}
