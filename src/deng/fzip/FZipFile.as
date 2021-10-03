package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_633:int = 8;
      
      public static const const_1400:int = 10;
      
      public static const const_1100:int = 6;
      
      private static var var_1001:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1114:int = 0;
      
      public static const const_1499:int = 1;
      
      public static const const_1516:int = 2;
      
      public static const const_1466:int = 3;
      
      public static const const_1390:int = 4;
      
      public static const const_1417:int = 5;
      
      public static const const_1510:int = 9;
      
      public static const const_1380:int = 7;
       
      
      private var var_175:uint = 0;
      
      private var var_1000:uint = 0;
      
      private var var_677:Date;
      
      private var var_2054:int = -1;
      
      private var parseFunc:Function;
      
      private var var_477:Boolean = false;
      
      private var var_2188:int = -1;
      
      private var var_1241:uint = 0;
      
      private var var_2052:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_829:uint;
      
      private var var_33:ByteArray;
      
      private var var_678:uint;
      
      private var var_1472:Boolean = false;
      
      private var var_2189:int = -1;
      
      private var var_1471:String = "2.0";
      
      private var var_174:Boolean = false;
      
      private var var_2053:Boolean = false;
      
      private var var_341:String;
      
      private var var_554:uint = 0;
      
      private var var_1242:int = 0;
      
      private var var_400:String = "";
      
      private var var_679:int = 8;
      
      private var var_1470:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_341 = param1;
         _extraFields = new Dictionary();
         var_33 = new ByteArray();
         var_33.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_554;
      }
      
      public function set filename(param1:String) : void
      {
         var_400 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_174 && false)
         {
            var_33.position = 0;
            if(var_1001)
            {
               var_33.uncompress.apply(var_33,["deflate"]);
            }
            else
            {
               var_33.uncompress();
            }
            var_33.position = 0;
            var_174 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_400;
      }
      
      public function get date() : Date
      {
         return var_677;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1470)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_175 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_175)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1471;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_174)
         {
            uncompress();
         }
         var_33.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_33.readUTFBytes(var_33.bytesAvailable);
         }
         else
         {
            _loc3_ = var_33.readMultiByte(var_33.bytesAvailable,param2);
         }
         var_33.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_679 === const_633 && !var_1472)
         {
            if(var_1001)
            {
               param1.readBytes(var_33,0,var_175);
            }
            else
            {
               if(!var_477)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_33.writeByte(120);
               _loc2_ = uint(~var_2054 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_33.writeByte(_loc2_);
               param1.readBytes(var_33,2,var_175);
               var_33.position = var_33.length;
               var_33.writeUnsignedInt(var_829);
            }
            var_174 = true;
         }
         else
         {
            if(var_679 != const_1114)
            {
               throw new Error("Compression method " + var_679 + " is not supported.");
            }
            param1.readBytes(var_33,0,var_175);
            var_174 = false;
         }
         var_33.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_1000 + var_1241 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_33.length = 0;
         var_33.position = 0;
         var_174 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_33.writeUTFBytes(param1);
            }
            else
            {
               var_33.writeMultiByte(param1,param2);
            }
            var_678 = ChecksumUtil.CRC32(var_33);
            var_477 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_677 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1242 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1242 << 8 | 20);
         param1.writeShort(var_341 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_633);
         var _loc5_:Date = var_677 != null ? var_677 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_678);
         param1.writeUnsignedInt(var_175);
         param1.writeUnsignedInt(var_554);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_341 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_400);
         }
         else
         {
            _loc8_.writeMultiByte(var_400,var_341);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_477)
            {
               _loc16_ = var_174;
               if(_loc16_)
               {
                  uncompress();
               }
               var_829 = ChecksumUtil.Adler32(var_33,0,var_33.length);
               var_477 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_829);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_341 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_2052);
            }
            else
            {
               _loc8_.writeMultiByte(var_2052,var_341);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_175 > 0)
         {
            if(var_1001)
            {
               _loc13_ = 0;
               param1.writeBytes(var_33,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_33,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_175;
      }
      
      protected function compress() : void
      {
         if(!var_174)
         {
            if(false)
            {
               var_33.position = 0;
               var_554 = var_33.length;
               if(var_1001)
               {
                  var_33.compress.apply(var_33,["deflate"]);
                  var_175 = var_33.length;
               }
               else
               {
                  var_33.compress();
                  var_175 = -6;
               }
               var_33.position = 0;
               var_174 = true;
            }
            else
            {
               var_175 = 0;
               var_554 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_1000 + var_1241)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_341 == "utf-8")
         {
            var_400 = param1.readUTFBytes(var_1000);
         }
         else
         {
            var_400 = param1.readMultiByte(var_1000,var_341);
         }
         var _loc2_:uint = var_1241;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_400 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_829 = param1.readUnsignedInt();
               var_477 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1242 = _loc2_ >> 8;
         var_1471 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_679 = param1.readUnsignedShort();
         var_1472 = (_loc3_ & 1) !== 0;
         var_1470 = (_loc3_ & 8) !== 0;
         var_2053 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_341 = "utf-8";
         }
         if(var_679 === const_1100)
         {
            var_2189 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2188 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_679 === const_633)
         {
            var_2054 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_677 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_678 = param1.readUnsignedInt();
         var_175 = param1.readUnsignedInt();
         var_554 = param1.readUnsignedInt();
         var_1000 = param1.readUnsignedShort();
         var_1241 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_33,0,param1.length);
            var_678 = ChecksumUtil.CRC32(var_33);
            var_477 = false;
         }
         else
         {
            var_33.length = 0;
            var_33.position = 0;
            var_174 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_400 + "\n  date:" + var_677 + "\n  sizeCompressed:" + var_175 + "\n  sizeUncompressed:" + var_554 + "\n  versionHost:" + var_1242 + "\n  versionNumber:" + var_1471 + "\n  compressionMethod:" + var_679 + "\n  encrypted:" + var_1472 + "\n  hasDataDescriptor:" + var_1470 + "\n  hasCompressedPatchedData:" + var_2053 + "\n  filenameEncoding:" + var_341 + "\n  crc32:" + var_678.toString(16) + "\n  adler32:" + var_829.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_174)
         {
            uncompress();
         }
         return var_33;
      }
   }
}
