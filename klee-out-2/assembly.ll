; ModuleID = 'lz4frame.bc'
source_filename = "lib/lz4frame.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LZ4F_preferences_t = type { %struct.LZ4F_frameInfo_t, i32, i32, i32, [3 x i32] }
%struct.LZ4F_frameInfo_t = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.LZ4F_cctx_s = type { %struct.LZ4F_preferences_t, i32, i32, %struct.LZ4F_CDict_s*, i64, i64, i8*, i8*, i64, i64, %struct.XXH32_state_s, i8*, i16, i16 }
%struct.XXH32_state_s = type { i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.LZ4F_CDict_s = type { i8*, %union.LZ4_stream_u*, %union.LZ4_streamHC_u* }
%union.LZ4_stream_u = type { [2052 x i64] }
%union.LZ4_streamHC_u = type { [32775 x i64] }
%struct.LZ4F_compressOptions_t = type { i32, [3 x i32] }
%struct.LZ4F_dctx_s = type { %struct.LZ4F_frameInfo_t, i32, i32, i64, i64, i64, i8*, i64, i64, i8*, i8*, i64, i8*, i64, i64, %struct.XXH32_state_s, %struct.XXH32_state_s, [19 x i8] }
%struct.LZ4F_decompressOptions_t = type { i32, [3 x i32] }

@LZ4F_getErrorName.codeError = internal global i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"Unspecified error code\00", align 1
@LZ4F_errorStrings = internal global [21 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)], align 16, !dbg !287
@LZ4F_getBlockSize.blockSizes = internal constant [4 x i64] [i64 65536, i64 262144, i64 1048576, i64 4194304], align 16, !dbg !271
@.str.1 = private unnamed_addr constant [11 x i8] c"OK_NoError\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ERROR_GENERIC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ERROR_maxBlockSize_invalid\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ERROR_blockMode_invalid\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"ERROR_contentChecksumFlag_invalid\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ERROR_compressionLevel_invalid\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"ERROR_headerVersion_wrong\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"ERROR_blockChecksum_invalid\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ERROR_reservedFlag_set\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"ERROR_allocation_failed\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"ERROR_srcSize_tooLarge\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"ERROR_dstMaxSize_tooSmall\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"ERROR_frameHeader_incomplete\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"ERROR_frameType_unknown\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"ERROR_frameSize_wrong\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"ERROR_srcPtr_wrong\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ERROR_decompressionFailed\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"ERROR_headerChecksum_invalid\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"ERROR_contentChecksum_invalid\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"ERROR_frameDecoding_alreadyStarted\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"ERROR_maxCode\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.23 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.24 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @LZ4F_isError(i64 %code) #0 !dbg !303 {
entry:
  %code.addr = alloca i64, align 8
  store i64 %code, i64* %code.addr, align 8
  %0 = load i64, i64* %code.addr, align 8, !dbg !306
  %cmp = icmp ugt i64 %0, -20, !dbg !307
  %conv = zext i1 %cmp to i32, !dbg !307
  ret i32 %conv, !dbg !308
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define i8* @LZ4F_getErrorName(i64 %code) #0 !dbg !2 {
entry:
  %retval = alloca i8*, align 8
  %code.addr = alloca i64, align 8
  store i64 %code, i64* %code.addr, align 8
  %0 = load i64, i64* %code.addr, align 8, !dbg !309
  %call = call i32 @LZ4F_isError(i64 %0), !dbg !311
  %tobool = icmp ne i32 %call, 0, !dbg !311
  br i1 %tobool, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %code.addr, align 8, !dbg !313
  %conv = trunc i64 %1 to i32, !dbg !314
  %sub = sub nsw i32 0, %conv, !dbg !315
  %idxprom = sext i32 %sub to i64, !dbg !316
  %arrayidx = getelementptr inbounds [21 x i8*], [21 x i8*]* @LZ4F_errorStrings, i64 0, i64 %idxprom, !dbg !316
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !316
  store i8* %2, i8** %retval, align 8, !dbg !317
  br label %return, !dbg !317

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @LZ4F_getErrorName.codeError, align 8, !dbg !318
  store i8* %3, i8** %retval, align 8, !dbg !319
  br label %return, !dbg !319

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, align 8, !dbg !320
  ret i8* %4, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @LZ4F_getErrorCode(i64 %functionResult) #0 !dbg !321 {
entry:
  %retval = alloca i32, align 4
  %functionResult.addr = alloca i64, align 8
  store i64 %functionResult, i64* %functionResult.addr, align 8
  %0 = load i64, i64* %functionResult.addr, align 8, !dbg !324
  %call = call i32 @LZ4F_isError(i64 %0), !dbg !326
  %tobool = icmp ne i32 %call, 0, !dbg !326
  br i1 %tobool, label %if.end, label %if.then, !dbg !327

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !328
  br label %return, !dbg !328

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %functionResult.addr, align 8, !dbg !329
  %sub = sub nsw i64 0, %1, !dbg !330
  %conv = trunc i64 %sub to i32, !dbg !331
  store i32 %conv, i32* %retval, align 4, !dbg !332
  br label %return, !dbg !332

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !333
  ret i32 %2, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @LZ4F_getVersion() #0 !dbg !334 {
entry:
  ret i32 100, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @LZ4F_compressionLevel_max() #0 !dbg !338 {
entry:
  ret i32 12, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_getBlockSize(i32 %blockSizeID) #0 !dbg !273 {
entry:
  %retval = alloca i64, align 8
  %blockSizeID.addr = alloca i32, align 4
  store i32 %blockSizeID, i32* %blockSizeID.addr, align 4
  %0 = load i32, i32* %blockSizeID.addr, align 4, !dbg !342
  %cmp = icmp eq i32 %0, 0, !dbg !344
  br i1 %cmp, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  store i32 4, i32* %blockSizeID.addr, align 4, !dbg !346
  br label %if.end, !dbg !347

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %blockSizeID.addr, align 4, !dbg !348
  %cmp1 = icmp ult i32 %1, 4, !dbg !350
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !351

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %blockSizeID.addr, align 4, !dbg !352
  %cmp2 = icmp ugt i32 %2, 7, !dbg !353
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !354

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %call = call i64 @err0r(i32 2), !dbg !355
  store i64 %call, i64* %retval, align 8, !dbg !356
  br label %return, !dbg !356

if.end4:                                          ; preds = %lor.lhs.false
  %3 = load i32, i32* %blockSizeID.addr, align 4, !dbg !357
  %sub = sub i32 %3, 4, !dbg !357
  store i32 %sub, i32* %blockSizeID.addr, align 4, !dbg !357
  %4 = load i32, i32* %blockSizeID.addr, align 4, !dbg !358
  %idxprom = zext i32 %4 to i64, !dbg !359
  %arrayidx = getelementptr inbounds [4 x i64], [4 x i64]* @LZ4F_getBlockSize.blockSizes, i64 0, i64 %idxprom, !dbg !359
  %5 = load i64, i64* %arrayidx, align 8, !dbg !359
  store i64 %5, i64* %retval, align 8, !dbg !360
  br label %return, !dbg !360

return:                                           ; preds = %if.end4, %if.then3
  %6 = load i64, i64* %retval, align 8, !dbg !361
  ret i64 %6, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @err0r(i32 %code) #0 !dbg !362 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4, !dbg !365
  %conv = zext i32 %0 to i64, !dbg !366
  %sub = sub nsw i64 0, %conv, !dbg !367
  ret i64 %sub, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressFrameBound(i64 %srcSize, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !369 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  %prefs = alloca %struct.LZ4F_preferences_t, align 8
  %headerSize = alloca i64, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  store i64 19, i64* %headerSize, align 8, !dbg !374
  %0 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !375
  %cmp = icmp ne %struct.LZ4F_preferences_t* %0, null, !dbg !377
  br i1 %cmp, label %if.then, label %if.else, !dbg !378

if.then:                                          ; preds = %entry
  %1 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !379
  %2 = bitcast %struct.LZ4F_preferences_t* %prefs to i8*, !dbg !380
  %3 = bitcast %struct.LZ4F_preferences_t* %1 to i8*, !dbg !380
  %4 = call i8* @memcpy(i8* %2, i8* %3, i64 56), !dbg !380
  br label %if.end, !dbg !381

if.else:                                          ; preds = %entry
  %5 = bitcast %struct.LZ4F_preferences_t* %prefs to i8*, !dbg !382
  %6 = call i8* @memset(i8* %5, i32 0, i64 56), !dbg !382
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 2, !dbg !383
  store i32 1, i32* %autoFlush, align 4, !dbg !384
  %7 = load i64, i64* %srcSize.addr, align 8, !dbg !385
  %call = call i64 @LZ4F_compressBound_internal(i64 %7, %struct.LZ4F_preferences_t* %prefs, i64 0), !dbg !386
  %add = add i64 19, %call, !dbg !387
  ret i64 %add, !dbg !388
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_compressBound_internal(i64 %srcSize, %struct.LZ4F_preferences_t* %preferencesPtr, i64 %alreadyBuffered) #0 !dbg !389 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  %alreadyBuffered.addr = alloca i64, align 8
  %prefsNull = alloca %struct.LZ4F_preferences_t, align 8
  %prefsPtr = alloca %struct.LZ4F_preferences_t*, align 8
  %flush = alloca i32, align 4
  %blockID = alloca i32, align 4
  %blockSize = alloca i64, align 8
  %maxBuffered = alloca i64, align 8
  %bufferedSize = alloca i64, align 8
  %maxSrcSize = alloca i64, align 8
  %nbFullBlocks = alloca i32, align 4
  %partialBlockSize = alloca i64, align 8
  %lastBlockSize = alloca i64, align 8
  %nbBlocks = alloca i32, align 4
  %blockCRCSize = alloca i64, align 8
  %frameEnd = alloca i64, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  store i64 %alreadyBuffered, i64* %alreadyBuffered.addr, align 8
  %0 = bitcast %struct.LZ4F_preferences_t* %prefsNull to i8*, !dbg !392
  %1 = call i8* @memset(i8* %0, i32 0, i64 56), !dbg !392
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefsNull, i32 0, i32 0, !dbg !393
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 2, !dbg !394
  store i32 1, i32* %contentChecksumFlag, align 8, !dbg !395
  %2 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !396
  %cmp = icmp eq %struct.LZ4F_preferences_t* %2, null, !dbg !398
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !399

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !399

cond.false:                                       ; preds = %entry
  %3 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !400
  br label %cond.end, !dbg !399

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.LZ4F_preferences_t* [ %prefsNull, %cond.true ], [ %3, %cond.false ], !dbg !399
  store %struct.LZ4F_preferences_t* %cond, %struct.LZ4F_preferences_t** %prefsPtr, align 8, !dbg !401
  %4 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %prefsPtr, align 8, !dbg !402
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %4, i32 0, i32 2, !dbg !403
  %5 = load i32, i32* %autoFlush, align 4, !dbg !403
  %6 = load i64, i64* %srcSize.addr, align 8, !dbg !404
  %cmp1 = icmp eq i64 %6, 0, !dbg !405
  %conv = zext i1 %cmp1 to i32, !dbg !405
  %or = or i32 %5, %conv, !dbg !406
  store i32 %or, i32* %flush, align 4, !dbg !407
  %7 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %prefsPtr, align 8, !dbg !408
  %frameInfo2 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %7, i32 0, i32 0, !dbg !409
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo2, i32 0, i32 0, !dbg !410
  %8 = load i32, i32* %blockSizeID, align 8, !dbg !410
  store i32 %8, i32* %blockID, align 4, !dbg !411
  %9 = load i32, i32* %blockID, align 4, !dbg !412
  %call = call i64 @LZ4F_getBlockSize(i32 %9), !dbg !413
  store i64 %call, i64* %blockSize, align 8, !dbg !414
  %10 = load i64, i64* %blockSize, align 8, !dbg !415
  %sub = sub i64 %10, 1, !dbg !416
  store i64 %sub, i64* %maxBuffered, align 8, !dbg !417
  %11 = load i64, i64* %alreadyBuffered.addr, align 8, !dbg !418
  %12 = load i64, i64* %maxBuffered, align 8, !dbg !418
  %cmp3 = icmp ult i64 %11, %12, !dbg !418
  br i1 %cmp3, label %cond.true5, label %cond.false6, !dbg !418

cond.true5:                                       ; preds = %cond.end
  %13 = load i64, i64* %alreadyBuffered.addr, align 8, !dbg !418
  br label %cond.end7, !dbg !418

cond.false6:                                      ; preds = %cond.end
  %14 = load i64, i64* %maxBuffered, align 8, !dbg !418
  br label %cond.end7, !dbg !418

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi i64 [ %13, %cond.true5 ], [ %14, %cond.false6 ], !dbg !418
  store i64 %cond8, i64* %bufferedSize, align 8, !dbg !419
  %15 = load i64, i64* %srcSize.addr, align 8, !dbg !420
  %16 = load i64, i64* %bufferedSize, align 8, !dbg !421
  %add = add i64 %15, %16, !dbg !422
  store i64 %add, i64* %maxSrcSize, align 8, !dbg !423
  %17 = load i64, i64* %maxSrcSize, align 8, !dbg !424
  %18 = load i64, i64* %blockSize, align 8, !dbg !425
  call void @klee_div_zero_check(i64 %18), !dbg !426
  %div = udiv i64 %17, %18, !dbg !426, !klee.check.div !427
  %conv9 = trunc i64 %div to i32, !dbg !428
  store i32 %conv9, i32* %nbFullBlocks, align 4, !dbg !429
  %19 = load i64, i64* %maxSrcSize, align 8, !dbg !430
  %20 = load i64, i64* %blockSize, align 8, !dbg !431
  %sub10 = sub i64 %20, 1, !dbg !432
  %and = and i64 %19, %sub10, !dbg !433
  store i64 %and, i64* %partialBlockSize, align 8, !dbg !434
  %21 = load i32, i32* %flush, align 4, !dbg !435
  %tobool = icmp ne i32 %21, 0, !dbg !435
  br i1 %tobool, label %cond.true11, label %cond.false12, !dbg !435

cond.true11:                                      ; preds = %cond.end7
  %22 = load i64, i64* %partialBlockSize, align 8, !dbg !436
  br label %cond.end13, !dbg !435

cond.false12:                                     ; preds = %cond.end7
  br label %cond.end13, !dbg !435

cond.end13:                                       ; preds = %cond.false12, %cond.true11
  %cond14 = phi i64 [ %22, %cond.true11 ], [ 0, %cond.false12 ], !dbg !435
  store i64 %cond14, i64* %lastBlockSize, align 8, !dbg !437
  %23 = load i32, i32* %nbFullBlocks, align 4, !dbg !438
  %24 = load i64, i64* %lastBlockSize, align 8, !dbg !439
  %cmp15 = icmp ugt i64 %24, 0, !dbg !440
  %conv16 = zext i1 %cmp15 to i32, !dbg !440
  %add17 = add i32 %23, %conv16, !dbg !441
  store i32 %add17, i32* %nbBlocks, align 4, !dbg !442
  %25 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %prefsPtr, align 8, !dbg !443
  %frameInfo18 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %25, i32 0, i32 0, !dbg !444
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo18, i32 0, i32 6, !dbg !445
  %26 = load i32, i32* %blockChecksumFlag, align 4, !dbg !445
  %conv19 = zext i32 %26 to i64, !dbg !443
  %mul = mul i64 4, %conv19, !dbg !446
  store i64 %mul, i64* %blockCRCSize, align 8, !dbg !447
  %27 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %prefsPtr, align 8, !dbg !448
  %frameInfo20 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %27, i32 0, i32 0, !dbg !449
  %contentChecksumFlag21 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo20, i32 0, i32 2, !dbg !450
  %28 = load i32, i32* %contentChecksumFlag21, align 8, !dbg !450
  %conv22 = zext i32 %28 to i64, !dbg !448
  %mul23 = mul i64 %conv22, 4, !dbg !451
  %add24 = add i64 4, %mul23, !dbg !452
  store i64 %add24, i64* %frameEnd, align 8, !dbg !453
  %29 = load i64, i64* %blockCRCSize, align 8, !dbg !454
  %add25 = add i64 4, %29, !dbg !455
  %30 = load i32, i32* %nbBlocks, align 4, !dbg !456
  %conv26 = zext i32 %30 to i64, !dbg !456
  %mul27 = mul i64 %add25, %conv26, !dbg !457
  %31 = load i64, i64* %blockSize, align 8, !dbg !458
  %32 = load i32, i32* %nbFullBlocks, align 4, !dbg !459
  %conv28 = zext i32 %32 to i64, !dbg !459
  %mul29 = mul i64 %31, %conv28, !dbg !460
  %add30 = add i64 %mul27, %mul29, !dbg !461
  %33 = load i64, i64* %lastBlockSize, align 8, !dbg !462
  %add31 = add i64 %add30, %33, !dbg !463
  %34 = load i64, i64* %frameEnd, align 8, !dbg !464
  %add32 = add i64 %add31, %34, !dbg !465
  ret i64 %add32, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressFrame_usingCDict(%struct.LZ4F_cctx_s* %cctx, i8* %dstBuffer, i64 %dstCapacity, i8* %srcBuffer, i64 %srcSize, %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !467 {
entry:
  %retval = alloca i64, align 8
  %cctx.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  %prefs = alloca %struct.LZ4F_preferences_t, align 8
  %options = alloca %struct.LZ4F_compressOptions_t, align 4
  %dstStart = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %dstEnd = alloca i8*, align 8
  %headerSize = alloca i64, align 8
  %cSize = alloca i64, align 8
  %tailSize = alloca i64, align 8
  store %struct.LZ4F_cctx_s* %cctx, %struct.LZ4F_cctx_s** %cctx.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  %0 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !472
  store i8* %0, i8** %dstStart, align 8, !dbg !473
  %1 = load i8*, i8** %dstStart, align 8, !dbg !474
  store i8* %1, i8** %dstPtr, align 8, !dbg !475
  %2 = load i8*, i8** %dstStart, align 8, !dbg !476
  %3 = load i64, i64* %dstCapacity.addr, align 8, !dbg !477
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !478
  store i8* %add.ptr, i8** %dstEnd, align 8, !dbg !479
  %4 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !480
  %cmp = icmp ne %struct.LZ4F_preferences_t* %4, null, !dbg !482
  br i1 %cmp, label %if.then, label %if.else, !dbg !483

if.then:                                          ; preds = %entry
  %5 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !484
  %6 = bitcast %struct.LZ4F_preferences_t* %prefs to i8*, !dbg !485
  %7 = bitcast %struct.LZ4F_preferences_t* %5 to i8*, !dbg !485
  %8 = call i8* @memcpy(i8* %6, i8* %7, i64 56), !dbg !485
  br label %if.end, !dbg !486

if.else:                                          ; preds = %entry
  %9 = bitcast %struct.LZ4F_preferences_t* %prefs to i8*, !dbg !487
  %10 = call i8* @memset(i8* %9, i32 0, i64 56), !dbg !487
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !488
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 4, !dbg !490
  %11 = load i64, i64* %contentSize, align 8, !dbg !490
  %cmp1 = icmp ne i64 %11, 0, !dbg !491
  br i1 %cmp1, label %if.then2, label %if.end5, !dbg !492

if.then2:                                         ; preds = %if.end
  %12 = load i64, i64* %srcSize.addr, align 8, !dbg !493
  %frameInfo3 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !494
  %contentSize4 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo3, i32 0, i32 4, !dbg !495
  store i64 %12, i64* %contentSize4, align 8, !dbg !496
  br label %if.end5, !dbg !497

if.end5:                                          ; preds = %if.then2, %if.end
  %frameInfo6 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !498
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo6, i32 0, i32 0, !dbg !499
  %13 = load i32, i32* %blockSizeID, align 8, !dbg !499
  %14 = load i64, i64* %srcSize.addr, align 8, !dbg !500
  %call = call i32 @LZ4F_optimalBSID(i32 %13, i64 %14), !dbg !501
  %frameInfo7 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !502
  %blockSizeID8 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo7, i32 0, i32 0, !dbg !503
  store i32 %call, i32* %blockSizeID8, align 8, !dbg !504
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 2, !dbg !505
  store i32 1, i32* %autoFlush, align 4, !dbg !506
  %15 = load i64, i64* %srcSize.addr, align 8, !dbg !507
  %frameInfo9 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !509
  %blockSizeID10 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo9, i32 0, i32 0, !dbg !510
  %16 = load i32, i32* %blockSizeID10, align 8, !dbg !510
  %call11 = call i64 @LZ4F_getBlockSize(i32 %16), !dbg !511
  %cmp12 = icmp ule i64 %15, %call11, !dbg !512
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !513

if.then13:                                        ; preds = %if.end5
  %frameInfo14 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !514
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo14, i32 0, i32 1, !dbg !515
  store i32 1, i32* %blockMode, align 4, !dbg !516
  br label %if.end15, !dbg !517

if.end15:                                         ; preds = %if.then13, %if.end5
  %17 = bitcast %struct.LZ4F_compressOptions_t* %options to i8*, !dbg !518
  %18 = call i8* @memset(i8* %17, i32 0, i64 16), !dbg !518
  %stableSrc = getelementptr inbounds %struct.LZ4F_compressOptions_t, %struct.LZ4F_compressOptions_t* %options, i32 0, i32 0, !dbg !519
  store i32 1, i32* %stableSrc, align 4, !dbg !520
  %19 = load i64, i64* %dstCapacity.addr, align 8, !dbg !521
  %20 = load i64, i64* %srcSize.addr, align 8, !dbg !523
  %call16 = call i64 @LZ4F_compressFrameBound(i64 %20, %struct.LZ4F_preferences_t* %prefs), !dbg !524
  %cmp17 = icmp ult i64 %19, %call16, !dbg !525
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !526

if.then18:                                        ; preds = %if.end15
  %call19 = call i64 @err0r(i32 11), !dbg !527
  store i64 %call19, i64* %retval, align 8, !dbg !528
  br label %return, !dbg !528

if.end20:                                         ; preds = %if.end15
  %21 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctx.addr, align 8, !dbg !529
  %22 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !531
  %23 = load i64, i64* %dstCapacity.addr, align 8, !dbg !532
  %24 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !533
  %call21 = call i64 @LZ4F_compressBegin_usingCDict(%struct.LZ4F_cctx_s* %21, i8* %22, i64 %23, %struct.LZ4F_CDict_s* %24, %struct.LZ4F_preferences_t* %prefs), !dbg !534
  store i64 %call21, i64* %headerSize, align 8, !dbg !535
  %25 = load i64, i64* %headerSize, align 8, !dbg !536
  %call22 = call i32 @LZ4F_isError(i64 %25), !dbg !538
  %tobool = icmp ne i32 %call22, 0, !dbg !538
  br i1 %tobool, label %if.then23, label %if.end24, !dbg !539

if.then23:                                        ; preds = %if.end20
  %26 = load i64, i64* %headerSize, align 8, !dbg !540
  store i64 %26, i64* %retval, align 8, !dbg !541
  br label %return, !dbg !541

if.end24:                                         ; preds = %if.end20
  %27 = load i64, i64* %headerSize, align 8, !dbg !542
  %28 = load i8*, i8** %dstPtr, align 8, !dbg !543
  %add.ptr25 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !543
  store i8* %add.ptr25, i8** %dstPtr, align 8, !dbg !543
  %29 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctx.addr, align 8, !dbg !544
  %30 = load i8*, i8** %dstPtr, align 8, !dbg !546
  %31 = load i8*, i8** %dstEnd, align 8, !dbg !547
  %32 = load i8*, i8** %dstPtr, align 8, !dbg !548
  %sub.ptr.lhs.cast = ptrtoint i8* %31 to i64, !dbg !549
  %sub.ptr.rhs.cast = ptrtoint i8* %32 to i64, !dbg !549
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !549
  %33 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !550
  %34 = load i64, i64* %srcSize.addr, align 8, !dbg !551
  %call26 = call i64 @LZ4F_compressUpdate(%struct.LZ4F_cctx_s* %29, i8* %30, i64 %sub.ptr.sub, i8* %33, i64 %34, %struct.LZ4F_compressOptions_t* %options), !dbg !552
  store i64 %call26, i64* %cSize, align 8, !dbg !553
  %35 = load i64, i64* %cSize, align 8, !dbg !554
  %call27 = call i32 @LZ4F_isError(i64 %35), !dbg !556
  %tobool28 = icmp ne i32 %call27, 0, !dbg !556
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !557

if.then29:                                        ; preds = %if.end24
  %36 = load i64, i64* %cSize, align 8, !dbg !558
  store i64 %36, i64* %retval, align 8, !dbg !559
  br label %return, !dbg !559

if.end30:                                         ; preds = %if.end24
  %37 = load i64, i64* %cSize, align 8, !dbg !560
  %38 = load i8*, i8** %dstPtr, align 8, !dbg !561
  %add.ptr31 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !561
  store i8* %add.ptr31, i8** %dstPtr, align 8, !dbg !561
  %39 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctx.addr, align 8, !dbg !562
  %40 = load i8*, i8** %dstPtr, align 8, !dbg !564
  %41 = load i8*, i8** %dstEnd, align 8, !dbg !565
  %42 = load i8*, i8** %dstPtr, align 8, !dbg !566
  %sub.ptr.lhs.cast32 = ptrtoint i8* %41 to i64, !dbg !567
  %sub.ptr.rhs.cast33 = ptrtoint i8* %42 to i64, !dbg !567
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33, !dbg !567
  %call35 = call i64 @LZ4F_compressEnd(%struct.LZ4F_cctx_s* %39, i8* %40, i64 %sub.ptr.sub34, %struct.LZ4F_compressOptions_t* %options), !dbg !568
  store i64 %call35, i64* %tailSize, align 8, !dbg !569
  %43 = load i64, i64* %tailSize, align 8, !dbg !570
  %call36 = call i32 @LZ4F_isError(i64 %43), !dbg !572
  %tobool37 = icmp ne i32 %call36, 0, !dbg !572
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !573

if.then38:                                        ; preds = %if.end30
  %44 = load i64, i64* %tailSize, align 8, !dbg !574
  store i64 %44, i64* %retval, align 8, !dbg !575
  br label %return, !dbg !575

if.end39:                                         ; preds = %if.end30
  %45 = load i64, i64* %tailSize, align 8, !dbg !576
  %46 = load i8*, i8** %dstPtr, align 8, !dbg !577
  %add.ptr40 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !577
  store i8* %add.ptr40, i8** %dstPtr, align 8, !dbg !577
  %47 = load i8*, i8** %dstPtr, align 8, !dbg !578
  %48 = load i8*, i8** %dstStart, align 8, !dbg !579
  %sub.ptr.lhs.cast41 = ptrtoint i8* %47 to i64, !dbg !580
  %sub.ptr.rhs.cast42 = ptrtoint i8* %48 to i64, !dbg !580
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42, !dbg !580
  store i64 %sub.ptr.sub43, i64* %retval, align 8, !dbg !581
  br label %return, !dbg !581

return:                                           ; preds = %if.end39, %if.then38, %if.then29, %if.then23, %if.then18
  %49 = load i64, i64* %retval, align 8, !dbg !582
  ret i64 %49, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_optimalBSID(i32 %requestedBSID, i64 %srcSize) #0 !dbg !583 {
entry:
  %retval = alloca i32, align 4
  %requestedBSID.addr = alloca i32, align 4
  %srcSize.addr = alloca i64, align 8
  %proposedBSID = alloca i32, align 4
  %maxBlockSize = alloca i64, align 8
  store i32 %requestedBSID, i32* %requestedBSID.addr, align 4
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store i32 4, i32* %proposedBSID, align 4, !dbg !587
  store i64 65536, i64* %maxBlockSize, align 8, !dbg !588
  br label %while.cond, !dbg !589

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %requestedBSID.addr, align 4, !dbg !590
  %1 = load i32, i32* %proposedBSID, align 4, !dbg !591
  %cmp = icmp ugt i32 %0, %1, !dbg !592
  br i1 %cmp, label %while.body, label %while.end, !dbg !589

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %srcSize.addr, align 8, !dbg !593
  %3 = load i64, i64* %maxBlockSize, align 8, !dbg !596
  %cmp1 = icmp ule i64 %2, %3, !dbg !597
  br i1 %cmp1, label %if.then, label %if.end, !dbg !598

if.then:                                          ; preds = %while.body
  %4 = load i32, i32* %proposedBSID, align 4, !dbg !599
  store i32 %4, i32* %retval, align 4, !dbg !600
  br label %return, !dbg !600

if.end:                                           ; preds = %while.body
  %5 = load i32, i32* %proposedBSID, align 4, !dbg !601
  %add = add nsw i32 %5, 1, !dbg !602
  store i32 %add, i32* %proposedBSID, align 4, !dbg !603
  %6 = load i64, i64* %maxBlockSize, align 8, !dbg !604
  %shl = shl i64 %6, 2, !dbg !604
  store i64 %shl, i64* %maxBlockSize, align 8, !dbg !604
  br label %while.cond, !dbg !589, !llvm.loop !605

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %requestedBSID.addr, align 4, !dbg !607
  store i32 %7, i32* %retval, align 4, !dbg !608
  br label %return, !dbg !608

return:                                           ; preds = %while.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !609
  ret i32 %8, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressBegin_usingCDict(%struct.LZ4F_cctx_s* %cctxPtr, i8* %dstBuffer, i64 %dstCapacity, %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !610 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  %prefNull = alloca %struct.LZ4F_preferences_t, align 8
  %dstStart = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %headerStart = alloca i8*, align 8
  %ctxTypeID = alloca i16, align 2
  %requiredBuffSize = alloca i64, align 8
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  %0 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !613
  store i8* %0, i8** %dstStart, align 8, !dbg !614
  %1 = load i8*, i8** %dstStart, align 8, !dbg !615
  store i8* %1, i8** %dstPtr, align 8, !dbg !616
  %2 = load i64, i64* %dstCapacity.addr, align 8, !dbg !617
  %cmp = icmp ult i64 %2, 19, !dbg !619
  br i1 %cmp, label %if.then, label %if.end, !dbg !620

if.then:                                          ; preds = %entry
  %call = call i64 @err0r(i32 11), !dbg !621
  store i64 %call, i64* %retval, align 8, !dbg !622
  br label %return, !dbg !622

if.end:                                           ; preds = %entry
  %3 = bitcast %struct.LZ4F_preferences_t* %prefNull to i8*, !dbg !623
  %4 = call i8* @memset(i8* %3, i32 0, i64 56), !dbg !623
  %5 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !624
  %cmp1 = icmp eq %struct.LZ4F_preferences_t* %5, null, !dbg !626
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !627

if.then2:                                         ; preds = %if.end
  store %struct.LZ4F_preferences_t* %prefNull, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !628
  br label %if.end3, !dbg !629

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !630
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %6, i32 0, i32 0, !dbg !631
  %7 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !632
  %8 = bitcast %struct.LZ4F_preferences_t* %prefs to i8*, !dbg !633
  %9 = bitcast %struct.LZ4F_preferences_t* %7 to i8*, !dbg !633
  %10 = call i8* @memcpy(i8* %8, i8* %9, i64 56), !dbg !633
  %11 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !634
  %prefs4 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %11, i32 0, i32 0, !dbg !636
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs4, i32 0, i32 1, !dbg !637
  %12 = load i32, i32* %compressionLevel, align 8, !dbg !637
  %cmp5 = icmp slt i32 %12, 3, !dbg !638
  %13 = zext i1 %cmp5 to i64, !dbg !639
  %cond = select i1 %cmp5, i32 1, i32 2, !dbg !639
  %conv = trunc i32 %cond to i16, !dbg !639
  store i16 %conv, i16* %ctxTypeID, align 2, !dbg !640
  %14 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !641
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %14, i32 0, i32 12, !dbg !643
  %15 = load i16, i16* %lz4CtxAlloc, align 8, !dbg !643
  %conv6 = zext i16 %15 to i32, !dbg !641
  %16 = load i16, i16* %ctxTypeID, align 2, !dbg !644
  %conv7 = zext i16 %16 to i32, !dbg !644
  %cmp8 = icmp slt i32 %conv6, %conv7, !dbg !645
  br i1 %cmp8, label %if.then10, label %if.else28, !dbg !646

if.then10:                                        ; preds = %if.end3
  %17 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !647
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %17, i32 0, i32 11, !dbg !647
  %18 = load i8*, i8** %lz4CtxPtr, align 8, !dbg !647
  call void @free(i8* %18) #7, !dbg !647
  %19 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !649
  %prefs11 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %19, i32 0, i32 0, !dbg !651
  %compressionLevel12 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs11, i32 0, i32 1, !dbg !652
  %20 = load i32, i32* %compressionLevel12, align 8, !dbg !652
  %cmp13 = icmp slt i32 %20, 3, !dbg !653
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !654

if.then15:                                        ; preds = %if.then10
  %call16 = call %union.LZ4_stream_u* @LZ4_createStream(), !dbg !655
  %21 = bitcast %union.LZ4_stream_u* %call16 to i8*, !dbg !657
  %22 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !658
  %lz4CtxPtr17 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %22, i32 0, i32 11, !dbg !659
  store i8* %21, i8** %lz4CtxPtr17, align 8, !dbg !660
  br label %if.end20, !dbg !661

if.else:                                          ; preds = %if.then10
  %call18 = call %union.LZ4_streamHC_u* @LZ4_createStreamHC(), !dbg !662
  %23 = bitcast %union.LZ4_streamHC_u* %call18 to i8*, !dbg !664
  %24 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !665
  %lz4CtxPtr19 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %24, i32 0, i32 11, !dbg !666
  store i8* %23, i8** %lz4CtxPtr19, align 8, !dbg !667
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then15
  %25 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !668
  %lz4CtxPtr21 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %25, i32 0, i32 11, !dbg !670
  %26 = load i8*, i8** %lz4CtxPtr21, align 8, !dbg !670
  %cmp22 = icmp eq i8* %26, null, !dbg !671
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !672

if.then24:                                        ; preds = %if.end20
  %call25 = call i64 @err0r(i32 9), !dbg !673
  store i64 %call25, i64* %retval, align 8, !dbg !674
  br label %return, !dbg !674

if.end26:                                         ; preds = %if.end20
  %27 = load i16, i16* %ctxTypeID, align 2, !dbg !675
  %28 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !676
  %lz4CtxAlloc27 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %28, i32 0, i32 12, !dbg !677
  store i16 %27, i16* %lz4CtxAlloc27, align 8, !dbg !678
  %29 = load i16, i16* %ctxTypeID, align 2, !dbg !679
  %30 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !680
  %lz4CtxState = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %30, i32 0, i32 13, !dbg !681
  store i16 %29, i16* %lz4CtxState, align 2, !dbg !682
  br label %if.end48, !dbg !683

if.else28:                                        ; preds = %if.end3
  %31 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !684
  %lz4CtxState29 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %31, i32 0, i32 13, !dbg !686
  %32 = load i16, i16* %lz4CtxState29, align 2, !dbg !686
  %conv30 = zext i16 %32 to i32, !dbg !684
  %33 = load i16, i16* %ctxTypeID, align 2, !dbg !687
  %conv31 = zext i16 %33 to i32, !dbg !687
  %cmp32 = icmp ne i32 %conv30, %conv31, !dbg !688
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !689

if.then34:                                        ; preds = %if.else28
  %34 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !690
  %prefs35 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %34, i32 0, i32 0, !dbg !693
  %compressionLevel36 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs35, i32 0, i32 1, !dbg !694
  %35 = load i32, i32* %compressionLevel36, align 8, !dbg !694
  %cmp37 = icmp slt i32 %35, 3, !dbg !695
  br i1 %cmp37, label %if.then39, label %if.else41, !dbg !696

if.then39:                                        ; preds = %if.then34
  %36 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !697
  %lz4CtxPtr40 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %36, i32 0, i32 11, !dbg !699
  %37 = load i8*, i8** %lz4CtxPtr40, align 8, !dbg !699
  %38 = bitcast i8* %37 to %union.LZ4_stream_u*, !dbg !700
  call void @LZ4_resetStream(%union.LZ4_stream_u* %38), !dbg !701
  br label %if.end45, !dbg !702

if.else41:                                        ; preds = %if.then34
  %39 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !703
  %lz4CtxPtr42 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %39, i32 0, i32 11, !dbg !705
  %40 = load i8*, i8** %lz4CtxPtr42, align 8, !dbg !705
  %41 = bitcast i8* %40 to %union.LZ4_streamHC_u*, !dbg !706
  %42 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !707
  %prefs43 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %42, i32 0, i32 0, !dbg !708
  %compressionLevel44 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs43, i32 0, i32 1, !dbg !709
  %43 = load i32, i32* %compressionLevel44, align 8, !dbg !709
  call void @LZ4_resetStreamHC(%union.LZ4_streamHC_u* %41, i32 %43), !dbg !710
  br label %if.end45

if.end45:                                         ; preds = %if.else41, %if.then39
  %44 = load i16, i16* %ctxTypeID, align 2, !dbg !711
  %45 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !712
  %lz4CtxState46 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %45, i32 0, i32 13, !dbg !713
  store i16 %44, i16* %lz4CtxState46, align 2, !dbg !714
  br label %if.end47, !dbg !715

if.end47:                                         ; preds = %if.end45, %if.else28
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end26
  %46 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !716
  %prefs49 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %46, i32 0, i32 0, !dbg !718
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs49, i32 0, i32 0, !dbg !719
  %blockSizeID = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 0, !dbg !720
  %47 = load i32, i32* %blockSizeID, align 8, !dbg !720
  %cmp50 = icmp eq i32 %47, 0, !dbg !721
  br i1 %cmp50, label %if.then52, label %if.end56, !dbg !722

if.then52:                                        ; preds = %if.end48
  %48 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !723
  %prefs53 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %48, i32 0, i32 0, !dbg !724
  %frameInfo54 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs53, i32 0, i32 0, !dbg !725
  %blockSizeID55 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo54, i32 0, i32 0, !dbg !726
  store i32 4, i32* %blockSizeID55, align 8, !dbg !727
  br label %if.end56, !dbg !723

if.end56:                                         ; preds = %if.then52, %if.end48
  %49 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !728
  %prefs57 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %49, i32 0, i32 0, !dbg !729
  %frameInfo58 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs57, i32 0, i32 0, !dbg !730
  %blockSizeID59 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo58, i32 0, i32 0, !dbg !731
  %50 = load i32, i32* %blockSizeID59, align 8, !dbg !731
  %call60 = call i64 @LZ4F_getBlockSize(i32 %50), !dbg !732
  %51 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !733
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %51, i32 0, i32 4, !dbg !734
  store i64 %call60, i64* %maxBlockSize, align 8, !dbg !735
  %52 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !736
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %52, i32 0, i32 2, !dbg !738
  %53 = load i32, i32* %autoFlush, align 4, !dbg !738
  %tobool = icmp ne i32 %53, 0, !dbg !736
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !736

cond.true:                                        ; preds = %if.end56
  %54 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !739
  %prefs61 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %54, i32 0, i32 0, !dbg !740
  %frameInfo62 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs61, i32 0, i32 0, !dbg !741
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo62, i32 0, i32 1, !dbg !742
  %55 = load i32, i32* %blockMode, align 4, !dbg !742
  %cmp63 = icmp eq i32 %55, 0, !dbg !743
  %conv64 = zext i1 %cmp63 to i32, !dbg !743
  %mul = mul nsw i32 %conv64, 64, !dbg !744
  %mul65 = mul nsw i32 %mul, 1024, !dbg !745
  %conv66 = sext i32 %mul65 to i64, !dbg !746
  br label %cond.end, !dbg !736

cond.false:                                       ; preds = %if.end56
  %56 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !747
  %maxBlockSize67 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %56, i32 0, i32 4, !dbg !748
  %57 = load i64, i64* %maxBlockSize67, align 8, !dbg !748
  %58 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !749
  %prefs68 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %58, i32 0, i32 0, !dbg !750
  %frameInfo69 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs68, i32 0, i32 0, !dbg !751
  %blockMode70 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo69, i32 0, i32 1, !dbg !752
  %59 = load i32, i32* %blockMode70, align 4, !dbg !752
  %cmp71 = icmp eq i32 %59, 0, !dbg !753
  %conv72 = zext i1 %cmp71 to i32, !dbg !753
  %mul73 = mul nsw i32 %conv72, 128, !dbg !754
  %mul74 = mul nsw i32 %mul73, 1024, !dbg !755
  %conv75 = sext i32 %mul74 to i64, !dbg !756
  %add = add i64 %57, %conv75, !dbg !757
  br label %cond.end, !dbg !736

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond76 = phi i64 [ %conv66, %cond.true ], [ %add, %cond.false ], !dbg !736
  store i64 %cond76, i64* %requiredBuffSize, align 8, !dbg !758
  %60 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !759
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %60, i32 0, i32 5, !dbg !761
  %61 = load i64, i64* %maxBufferSize, align 8, !dbg !761
  %62 = load i64, i64* %requiredBuffSize, align 8, !dbg !762
  %cmp77 = icmp ult i64 %61, %62, !dbg !763
  br i1 %cmp77, label %if.then79, label %if.end90, !dbg !764

if.then79:                                        ; preds = %cond.end
  %63 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !765
  %maxBufferSize80 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %63, i32 0, i32 5, !dbg !767
  store i64 0, i64* %maxBufferSize80, align 8, !dbg !768
  %64 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !769
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %64, i32 0, i32 6, !dbg !769
  %65 = load i8*, i8** %tmpBuff, align 8, !dbg !769
  call void @free(i8* %65) #7, !dbg !769
  %66 = load i64, i64* %requiredBuffSize, align 8, !dbg !770
  %call81 = call noalias i8* @calloc(i64 1, i64 %66) #7, !dbg !770
  %67 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !771
  %tmpBuff82 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %67, i32 0, i32 6, !dbg !772
  store i8* %call81, i8** %tmpBuff82, align 8, !dbg !773
  %68 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !774
  %tmpBuff83 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %68, i32 0, i32 6, !dbg !776
  %69 = load i8*, i8** %tmpBuff83, align 8, !dbg !776
  %cmp84 = icmp eq i8* %69, null, !dbg !777
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !778

if.then86:                                        ; preds = %if.then79
  %call87 = call i64 @err0r(i32 9), !dbg !779
  store i64 %call87, i64* %retval, align 8, !dbg !780
  br label %return, !dbg !780

if.end88:                                         ; preds = %if.then79
  %70 = load i64, i64* %requiredBuffSize, align 8, !dbg !781
  %71 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !782
  %maxBufferSize89 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %71, i32 0, i32 5, !dbg !783
  store i64 %70, i64* %maxBufferSize89, align 8, !dbg !784
  br label %if.end90, !dbg !785

if.end90:                                         ; preds = %if.end88, %cond.end
  %72 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !786
  %tmpBuff91 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %72, i32 0, i32 6, !dbg !787
  %73 = load i8*, i8** %tmpBuff91, align 8, !dbg !787
  %74 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !788
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %74, i32 0, i32 7, !dbg !789
  store i8* %73, i8** %tmpIn, align 8, !dbg !790
  %75 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !791
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %75, i32 0, i32 8, !dbg !792
  store i64 0, i64* %tmpInSize, align 8, !dbg !793
  %76 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !794
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %76, i32 0, i32 10, !dbg !795
  %call92 = call i32 @XXH32_reset(%struct.XXH32_state_s* %xxh, i32 0), !dbg !796
  %77 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !797
  %78 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !798
  %cdict93 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %78, i32 0, i32 3, !dbg !799
  store %struct.LZ4F_CDict_s* %77, %struct.LZ4F_CDict_s** %cdict93, align 8, !dbg !800
  %79 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !801
  %prefs94 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %79, i32 0, i32 0, !dbg !803
  %frameInfo95 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs94, i32 0, i32 0, !dbg !804
  %blockMode96 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo95, i32 0, i32 1, !dbg !805
  %80 = load i32, i32* %blockMode96, align 4, !dbg !805
  %cmp97 = icmp eq i32 %80, 0, !dbg !806
  br i1 %cmp97, label %if.then99, label %if.end103, !dbg !807

if.then99:                                        ; preds = %if.end90
  %81 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !808
  %lz4CtxPtr100 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %81, i32 0, i32 11, !dbg !810
  %82 = load i8*, i8** %lz4CtxPtr100, align 8, !dbg !810
  %83 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !811
  %84 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !812
  %prefs101 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %84, i32 0, i32 0, !dbg !813
  %compressionLevel102 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs101, i32 0, i32 1, !dbg !814
  %85 = load i32, i32* %compressionLevel102, align 8, !dbg !814
  call void @LZ4F_initStream(i8* %82, %struct.LZ4F_CDict_s* %83, i32 %85, i32 0), !dbg !815
  br label %if.end103, !dbg !816

if.end103:                                        ; preds = %if.then99, %if.end90
  %86 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !817
  %compressionLevel104 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %86, i32 0, i32 1, !dbg !819
  %87 = load i32, i32* %compressionLevel104, align 8, !dbg !819
  %cmp105 = icmp sge i32 %87, 3, !dbg !820
  br i1 %cmp105, label %if.then107, label %if.end109, !dbg !821

if.then107:                                       ; preds = %if.end103
  %88 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !822
  %lz4CtxPtr108 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %88, i32 0, i32 11, !dbg !824
  %89 = load i8*, i8** %lz4CtxPtr108, align 8, !dbg !824
  %90 = bitcast i8* %89 to %union.LZ4_streamHC_u*, !dbg !825
  %91 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !826
  %favorDecSpeed = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %91, i32 0, i32 3, !dbg !827
  %92 = load i32, i32* %favorDecSpeed, align 8, !dbg !827
  call void @LZ4_favorDecompressionSpeed(%union.LZ4_streamHC_u* %90, i32 %92), !dbg !828
  br label %if.end109, !dbg !829

if.end109:                                        ; preds = %if.then107, %if.end103
  %93 = load i8*, i8** %dstPtr, align 8, !dbg !830
  call void @LZ4F_writeLE32(i8* %93, i32 407708164), !dbg !831
  %94 = load i8*, i8** %dstPtr, align 8, !dbg !832
  %add.ptr = getelementptr inbounds i8, i8* %94, i64 4, !dbg !832
  store i8* %add.ptr, i8** %dstPtr, align 8, !dbg !832
  %95 = load i8*, i8** %dstPtr, align 8, !dbg !833
  store i8* %95, i8** %headerStart, align 8, !dbg !834
  %96 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !835
  %prefs110 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %96, i32 0, i32 0, !dbg !836
  %frameInfo111 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs110, i32 0, i32 0, !dbg !837
  %blockMode112 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo111, i32 0, i32 1, !dbg !838
  %97 = load i32, i32* %blockMode112, align 4, !dbg !838
  %and = and i32 %97, 1, !dbg !839
  %shl = shl i32 %and, 5, !dbg !840
  %add113 = add i32 64, %shl, !dbg !841
  %98 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !842
  %prefs114 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %98, i32 0, i32 0, !dbg !843
  %frameInfo115 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs114, i32 0, i32 0, !dbg !844
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo115, i32 0, i32 6, !dbg !845
  %99 = load i32, i32* %blockChecksumFlag, align 4, !dbg !845
  %and116 = and i32 %99, 1, !dbg !846
  %shl117 = shl i32 %and116, 4, !dbg !847
  %add118 = add i32 %add113, %shl117, !dbg !848
  %100 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !849
  %prefs119 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %100, i32 0, i32 0, !dbg !850
  %frameInfo120 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs119, i32 0, i32 0, !dbg !851
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo120, i32 0, i32 4, !dbg !852
  %101 = load i64, i64* %contentSize, align 8, !dbg !852
  %cmp121 = icmp ugt i64 %101, 0, !dbg !853
  %conv122 = zext i1 %cmp121 to i32, !dbg !853
  %shl123 = shl i32 %conv122, 3, !dbg !854
  %add124 = add i32 %add118, %shl123, !dbg !855
  %102 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !856
  %prefs125 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %102, i32 0, i32 0, !dbg !857
  %frameInfo126 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs125, i32 0, i32 0, !dbg !858
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo126, i32 0, i32 2, !dbg !859
  %103 = load i32, i32* %contentChecksumFlag, align 8, !dbg !859
  %and127 = and i32 %103, 1, !dbg !860
  %shl128 = shl i32 %and127, 2, !dbg !861
  %add129 = add i32 %add124, %shl128, !dbg !862
  %104 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !863
  %prefs130 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %104, i32 0, i32 0, !dbg !864
  %frameInfo131 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs130, i32 0, i32 0, !dbg !865
  %dictID = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo131, i32 0, i32 5, !dbg !866
  %105 = load i32, i32* %dictID, align 8, !dbg !866
  %cmp132 = icmp ugt i32 %105, 0, !dbg !867
  %conv133 = zext i1 %cmp132 to i32, !dbg !867
  %add134 = add i32 %add129, %conv133, !dbg !868
  %conv135 = trunc i32 %add134 to i8, !dbg !869
  %106 = load i8*, i8** %dstPtr, align 8, !dbg !870
  %incdec.ptr = getelementptr inbounds i8, i8* %106, i32 1, !dbg !870
  store i8* %incdec.ptr, i8** %dstPtr, align 8, !dbg !870
  store i8 %conv135, i8* %106, align 1, !dbg !871
  %107 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !872
  %prefs136 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %107, i32 0, i32 0, !dbg !873
  %frameInfo137 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs136, i32 0, i32 0, !dbg !874
  %blockSizeID138 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo137, i32 0, i32 0, !dbg !875
  %108 = load i32, i32* %blockSizeID138, align 8, !dbg !875
  %and139 = and i32 %108, 7, !dbg !876
  %shl140 = shl i32 %and139, 4, !dbg !877
  %conv141 = trunc i32 %shl140 to i8, !dbg !878
  %109 = load i8*, i8** %dstPtr, align 8, !dbg !879
  %incdec.ptr142 = getelementptr inbounds i8, i8* %109, i32 1, !dbg !879
  store i8* %incdec.ptr142, i8** %dstPtr, align 8, !dbg !879
  store i8 %conv141, i8* %109, align 1, !dbg !880
  %110 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !881
  %prefs143 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %110, i32 0, i32 0, !dbg !883
  %frameInfo144 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs143, i32 0, i32 0, !dbg !884
  %contentSize145 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo144, i32 0, i32 4, !dbg !885
  %111 = load i64, i64* %contentSize145, align 8, !dbg !885
  %tobool146 = icmp ne i64 %111, 0, !dbg !881
  br i1 %tobool146, label %if.then147, label %if.end152, !dbg !886

if.then147:                                       ; preds = %if.end109
  %112 = load i8*, i8** %dstPtr, align 8, !dbg !887
  %113 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !889
  %prefs148 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %113, i32 0, i32 0, !dbg !890
  %frameInfo149 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs148, i32 0, i32 0, !dbg !891
  %contentSize150 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo149, i32 0, i32 4, !dbg !892
  %114 = load i64, i64* %contentSize150, align 8, !dbg !892
  call void @LZ4F_writeLE64(i8* %112, i64 %114), !dbg !893
  %115 = load i8*, i8** %dstPtr, align 8, !dbg !894
  %add.ptr151 = getelementptr inbounds i8, i8* %115, i64 8, !dbg !894
  store i8* %add.ptr151, i8** %dstPtr, align 8, !dbg !894
  %116 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !895
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %116, i32 0, i32 9, !dbg !896
  store i64 0, i64* %totalInSize, align 8, !dbg !897
  br label %if.end152, !dbg !898

if.end152:                                        ; preds = %if.then147, %if.end109
  %117 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !899
  %prefs153 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %117, i32 0, i32 0, !dbg !901
  %frameInfo154 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs153, i32 0, i32 0, !dbg !902
  %dictID155 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo154, i32 0, i32 5, !dbg !903
  %118 = load i32, i32* %dictID155, align 8, !dbg !903
  %tobool156 = icmp ne i32 %118, 0, !dbg !899
  br i1 %tobool156, label %if.then157, label %if.end162, !dbg !904

if.then157:                                       ; preds = %if.end152
  %119 = load i8*, i8** %dstPtr, align 8, !dbg !905
  %120 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !907
  %prefs158 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %120, i32 0, i32 0, !dbg !908
  %frameInfo159 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs158, i32 0, i32 0, !dbg !909
  %dictID160 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo159, i32 0, i32 5, !dbg !910
  %121 = load i32, i32* %dictID160, align 8, !dbg !910
  call void @LZ4F_writeLE32(i8* %119, i32 %121), !dbg !911
  %122 = load i8*, i8** %dstPtr, align 8, !dbg !912
  %add.ptr161 = getelementptr inbounds i8, i8* %122, i64 4, !dbg !912
  store i8* %add.ptr161, i8** %dstPtr, align 8, !dbg !912
  br label %if.end162, !dbg !913

if.end162:                                        ; preds = %if.then157, %if.end152
  %123 = load i8*, i8** %headerStart, align 8, !dbg !914
  %124 = load i8*, i8** %dstPtr, align 8, !dbg !915
  %125 = load i8*, i8** %headerStart, align 8, !dbg !916
  %sub.ptr.lhs.cast = ptrtoint i8* %124 to i64, !dbg !917
  %sub.ptr.rhs.cast = ptrtoint i8* %125 to i64, !dbg !917
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !917
  %call163 = call zeroext i8 @LZ4F_headerChecksum(i8* %123, i64 %sub.ptr.sub), !dbg !918
  %126 = load i8*, i8** %dstPtr, align 8, !dbg !919
  store i8 %call163, i8* %126, align 1, !dbg !920
  %127 = load i8*, i8** %dstPtr, align 8, !dbg !921
  %incdec.ptr164 = getelementptr inbounds i8, i8* %127, i32 1, !dbg !921
  store i8* %incdec.ptr164, i8** %dstPtr, align 8, !dbg !921
  %128 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !922
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %128, i32 0, i32 2, !dbg !923
  store i32 1, i32* %cStage, align 4, !dbg !924
  %129 = load i8*, i8** %dstPtr, align 8, !dbg !925
  %130 = load i8*, i8** %dstStart, align 8, !dbg !926
  %sub.ptr.lhs.cast165 = ptrtoint i8* %129 to i64, !dbg !927
  %sub.ptr.rhs.cast166 = ptrtoint i8* %130 to i64, !dbg !927
  %sub.ptr.sub167 = sub i64 %sub.ptr.lhs.cast165, %sub.ptr.rhs.cast166, !dbg !927
  store i64 %sub.ptr.sub167, i64* %retval, align 8, !dbg !928
  br label %return, !dbg !928

return:                                           ; preds = %if.end162, %if.then86, %if.then24, %if.then
  %131 = load i64, i64* %retval, align 8, !dbg !929
  ret i64 %131, !dbg !929
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressUpdate(%struct.LZ4F_cctx_s* %cctxPtr, i8* %dstBuffer, i64 %dstCapacity, i8* %srcBuffer, i64 %srcSize, %struct.LZ4F_compressOptions_t* %compressOptionsPtr) #0 !dbg !930 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca %struct.LZ4F_compressOptions_t*, align 8
  %cOptionsNull = alloca %struct.LZ4F_compressOptions_t, align 4
  %blockSize = alloca i64, align 8
  %srcPtr = alloca i8*, align 8
  %srcEnd = alloca i8*, align 8
  %dstStart = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %lastBlockCompressed = alloca i32, align 4
  %compress = alloca i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, align 8
  %sizeToCopy = alloca i64, align 8
  %realDictSize = alloca i32, align 4
  %realDictSize101 = alloca i32, align 4
  %sizeToCopy110 = alloca i64, align 8
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_compressOptions_t* %compressOptionsPtr, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8
  %0 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !940
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %0, i32 0, i32 4, !dbg !941
  %1 = load i64, i64* %maxBlockSize, align 8, !dbg !941
  store i64 %1, i64* %blockSize, align 8, !dbg !942
  %2 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !943
  store i8* %2, i8** %srcPtr, align 8, !dbg !944
  %3 = load i8*, i8** %srcPtr, align 8, !dbg !945
  %4 = load i64, i64* %srcSize.addr, align 8, !dbg !946
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !947
  store i8* %add.ptr, i8** %srcEnd, align 8, !dbg !948
  %5 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !949
  store i8* %5, i8** %dstStart, align 8, !dbg !950
  %6 = load i8*, i8** %dstStart, align 8, !dbg !951
  store i8* %6, i8** %dstPtr, align 8, !dbg !952
  store i32 0, i32* %lastBlockCompressed, align 4, !dbg !953
  %7 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !954
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %7, i32 0, i32 0, !dbg !955
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !956
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 1, !dbg !957
  %8 = load i32, i32* %blockMode, align 4, !dbg !957
  %9 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !958
  %prefs1 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %9, i32 0, i32 0, !dbg !959
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs1, i32 0, i32 1, !dbg !960
  %10 = load i32, i32* %compressionLevel, align 8, !dbg !960
  %call = call i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_selectCompression(i32 %8, i32 %10), !dbg !961
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %call, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !962
  %11 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !963
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %11, i32 0, i32 2, !dbg !965
  %12 = load i32, i32* %cStage, align 4, !dbg !965
  %cmp = icmp ne i32 %12, 1, !dbg !966
  br i1 %cmp, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %entry
  %call2 = call i64 @err0r(i32 1), !dbg !968
  store i64 %call2, i64* %retval, align 8, !dbg !969
  br label %return, !dbg !969

if.end:                                           ; preds = %entry
  %13 = load i64, i64* %dstCapacity.addr, align 8, !dbg !970
  %14 = load i64, i64* %srcSize.addr, align 8, !dbg !972
  %15 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !973
  %prefs3 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %15, i32 0, i32 0, !dbg !974
  %16 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !975
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %16, i32 0, i32 8, !dbg !976
  %17 = load i64, i64* %tmpInSize, align 8, !dbg !976
  %call4 = call i64 @LZ4F_compressBound_internal(i64 %14, %struct.LZ4F_preferences_t* %prefs3, i64 %17), !dbg !977
  %cmp5 = icmp ult i64 %13, %call4, !dbg !978
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !979

if.then6:                                         ; preds = %if.end
  %call7 = call i64 @err0r(i32 11), !dbg !980
  store i64 %call7, i64* %retval, align 8, !dbg !981
  br label %return, !dbg !981

if.end8:                                          ; preds = %if.end
  %18 = bitcast %struct.LZ4F_compressOptions_t* %cOptionsNull to i8*, !dbg !982
  %19 = call i8* @memset(i8* %18, i32 0, i64 16), !dbg !982
  %20 = load %struct.LZ4F_compressOptions_t*, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8, !dbg !983
  %cmp9 = icmp eq %struct.LZ4F_compressOptions_t* %20, null, !dbg !985
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !986

if.then10:                                        ; preds = %if.end8
  store %struct.LZ4F_compressOptions_t* %cOptionsNull, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8, !dbg !987
  br label %if.end11, !dbg !988

if.end11:                                         ; preds = %if.then10, %if.end8
  %21 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !989
  %tmpInSize12 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %21, i32 0, i32 8, !dbg !991
  %22 = load i64, i64* %tmpInSize12, align 8, !dbg !991
  %cmp13 = icmp ugt i64 %22, 0, !dbg !992
  br i1 %cmp13, label %if.then14, label %if.end42, !dbg !993

if.then14:                                        ; preds = %if.end11
  %23 = load i64, i64* %blockSize, align 8, !dbg !994
  %24 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !996
  %tmpInSize15 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %24, i32 0, i32 8, !dbg !997
  %25 = load i64, i64* %tmpInSize15, align 8, !dbg !997
  %sub = sub i64 %23, %25, !dbg !998
  store i64 %sub, i64* %sizeToCopy, align 8, !dbg !999
  %26 = load i64, i64* %sizeToCopy, align 8, !dbg !1000
  %27 = load i64, i64* %srcSize.addr, align 8, !dbg !1002
  %cmp16 = icmp ugt i64 %26, %27, !dbg !1003
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !1004

if.then17:                                        ; preds = %if.then14
  %28 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1005
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %28, i32 0, i32 7, !dbg !1007
  %29 = load i8*, i8** %tmpIn, align 8, !dbg !1007
  %30 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1008
  %tmpInSize18 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %30, i32 0, i32 8, !dbg !1009
  %31 = load i64, i64* %tmpInSize18, align 8, !dbg !1009
  %add.ptr19 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !1010
  %32 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1011
  %33 = load i64, i64* %srcSize.addr, align 8, !dbg !1012
  %34 = call i8* @memcpy(i8* %add.ptr19, i8* %32, i64 %33), !dbg !1013
  %35 = load i8*, i8** %srcEnd, align 8, !dbg !1014
  store i8* %35, i8** %srcPtr, align 8, !dbg !1015
  %36 = load i64, i64* %srcSize.addr, align 8, !dbg !1016
  %37 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1017
  %tmpInSize20 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %37, i32 0, i32 8, !dbg !1018
  %38 = load i64, i64* %tmpInSize20, align 8, !dbg !1019
  %add = add i64 %38, %36, !dbg !1019
  store i64 %add, i64* %tmpInSize20, align 8, !dbg !1019
  br label %if.end41, !dbg !1020

if.else:                                          ; preds = %if.then14
  store i32 1, i32* %lastBlockCompressed, align 4, !dbg !1021
  %39 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1023
  %tmpIn21 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %39, i32 0, i32 7, !dbg !1024
  %40 = load i8*, i8** %tmpIn21, align 8, !dbg !1024
  %41 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1025
  %tmpInSize22 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %41, i32 0, i32 8, !dbg !1026
  %42 = load i64, i64* %tmpInSize22, align 8, !dbg !1026
  %add.ptr23 = getelementptr inbounds i8, i8* %40, i64 %42, !dbg !1027
  %43 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1028
  %44 = load i64, i64* %sizeToCopy, align 8, !dbg !1029
  %45 = call i8* @memcpy(i8* %add.ptr23, i8* %43, i64 %44), !dbg !1030
  %46 = load i64, i64* %sizeToCopy, align 8, !dbg !1031
  %47 = load i8*, i8** %srcPtr, align 8, !dbg !1032
  %add.ptr24 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !1032
  store i8* %add.ptr24, i8** %srcPtr, align 8, !dbg !1032
  %48 = load i8*, i8** %dstPtr, align 8, !dbg !1033
  %49 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1034
  %tmpIn25 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %49, i32 0, i32 7, !dbg !1035
  %50 = load i8*, i8** %tmpIn25, align 8, !dbg !1035
  %51 = load i64, i64* %blockSize, align 8, !dbg !1036
  %52 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !1037
  %53 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1038
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %53, i32 0, i32 11, !dbg !1039
  %54 = load i8*, i8** %lz4CtxPtr, align 8, !dbg !1039
  %55 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1040
  %prefs26 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %55, i32 0, i32 0, !dbg !1041
  %compressionLevel27 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs26, i32 0, i32 1, !dbg !1042
  %56 = load i32, i32* %compressionLevel27, align 8, !dbg !1042
  %57 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1043
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %57, i32 0, i32 3, !dbg !1044
  %58 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1044
  %59 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1045
  %prefs28 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %59, i32 0, i32 0, !dbg !1046
  %frameInfo29 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs28, i32 0, i32 0, !dbg !1047
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo29, i32 0, i32 6, !dbg !1048
  %60 = load i32, i32* %blockChecksumFlag, align 4, !dbg !1048
  %call30 = call i64 @LZ4F_makeBlock(i8* %48, i8* %50, i64 %51, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %52, i8* %54, i32 %56, %struct.LZ4F_CDict_s* %58, i32 %60), !dbg !1049
  %61 = load i8*, i8** %dstPtr, align 8, !dbg !1050
  %add.ptr31 = getelementptr inbounds i8, i8* %61, i64 %call30, !dbg !1050
  store i8* %add.ptr31, i8** %dstPtr, align 8, !dbg !1050
  %62 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1051
  %prefs32 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %62, i32 0, i32 0, !dbg !1053
  %frameInfo33 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs32, i32 0, i32 0, !dbg !1054
  %blockMode34 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo33, i32 0, i32 1, !dbg !1055
  %63 = load i32, i32* %blockMode34, align 4, !dbg !1055
  %cmp35 = icmp eq i32 %63, 0, !dbg !1056
  br i1 %cmp35, label %if.then36, label %if.end39, !dbg !1057

if.then36:                                        ; preds = %if.else
  %64 = load i64, i64* %blockSize, align 8, !dbg !1058
  %65 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1059
  %tmpIn37 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %65, i32 0, i32 7, !dbg !1060
  %66 = load i8*, i8** %tmpIn37, align 8, !dbg !1061
  %add.ptr38 = getelementptr inbounds i8, i8* %66, i64 %64, !dbg !1061
  store i8* %add.ptr38, i8** %tmpIn37, align 8, !dbg !1061
  br label %if.end39, !dbg !1059

if.end39:                                         ; preds = %if.then36, %if.else
  %67 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1062
  %tmpInSize40 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %67, i32 0, i32 8, !dbg !1063
  store i64 0, i64* %tmpInSize40, align 8, !dbg !1064
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %if.then17
  br label %if.end42, !dbg !1065

if.end42:                                         ; preds = %if.end41, %if.end11
  br label %while.cond, !dbg !1066

while.cond:                                       ; preds = %while.body, %if.end42
  %68 = load i8*, i8** %srcEnd, align 8, !dbg !1067
  %69 = load i8*, i8** %srcPtr, align 8, !dbg !1068
  %sub.ptr.lhs.cast = ptrtoint i8* %68 to i64, !dbg !1069
  %sub.ptr.rhs.cast = ptrtoint i8* %69 to i64, !dbg !1069
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1069
  %70 = load i64, i64* %blockSize, align 8, !dbg !1070
  %cmp43 = icmp uge i64 %sub.ptr.sub, %70, !dbg !1071
  br i1 %cmp43, label %while.body, label %while.end, !dbg !1066

while.body:                                       ; preds = %while.cond
  store i32 2, i32* %lastBlockCompressed, align 4, !dbg !1072
  %71 = load i8*, i8** %dstPtr, align 8, !dbg !1074
  %72 = load i8*, i8** %srcPtr, align 8, !dbg !1075
  %73 = load i64, i64* %blockSize, align 8, !dbg !1076
  %74 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !1077
  %75 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1078
  %lz4CtxPtr44 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %75, i32 0, i32 11, !dbg !1079
  %76 = load i8*, i8** %lz4CtxPtr44, align 8, !dbg !1079
  %77 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1080
  %prefs45 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %77, i32 0, i32 0, !dbg !1081
  %compressionLevel46 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs45, i32 0, i32 1, !dbg !1082
  %78 = load i32, i32* %compressionLevel46, align 8, !dbg !1082
  %79 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1083
  %cdict47 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %79, i32 0, i32 3, !dbg !1084
  %80 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict47, align 8, !dbg !1084
  %81 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1085
  %prefs48 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %81, i32 0, i32 0, !dbg !1086
  %frameInfo49 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs48, i32 0, i32 0, !dbg !1087
  %blockChecksumFlag50 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo49, i32 0, i32 6, !dbg !1088
  %82 = load i32, i32* %blockChecksumFlag50, align 4, !dbg !1088
  %call51 = call i64 @LZ4F_makeBlock(i8* %71, i8* %72, i64 %73, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %74, i8* %76, i32 %78, %struct.LZ4F_CDict_s* %80, i32 %82), !dbg !1089
  %83 = load i8*, i8** %dstPtr, align 8, !dbg !1090
  %add.ptr52 = getelementptr inbounds i8, i8* %83, i64 %call51, !dbg !1090
  store i8* %add.ptr52, i8** %dstPtr, align 8, !dbg !1090
  %84 = load i64, i64* %blockSize, align 8, !dbg !1091
  %85 = load i8*, i8** %srcPtr, align 8, !dbg !1092
  %add.ptr53 = getelementptr inbounds i8, i8* %85, i64 %84, !dbg !1092
  store i8* %add.ptr53, i8** %srcPtr, align 8, !dbg !1092
  br label %while.cond, !dbg !1066, !llvm.loop !1093

while.end:                                        ; preds = %while.cond
  %86 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1095
  %prefs54 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %86, i32 0, i32 0, !dbg !1097
  %autoFlush = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs54, i32 0, i32 2, !dbg !1098
  %87 = load i32, i32* %autoFlush, align 4, !dbg !1098
  %tobool = icmp ne i32 %87, 0, !dbg !1099
  br i1 %tobool, label %land.lhs.true, label %if.end69, !dbg !1100

land.lhs.true:                                    ; preds = %while.end
  %88 = load i8*, i8** %srcPtr, align 8, !dbg !1101
  %89 = load i8*, i8** %srcEnd, align 8, !dbg !1102
  %cmp55 = icmp ult i8* %88, %89, !dbg !1103
  br i1 %cmp55, label %if.then56, label %if.end69, !dbg !1104

if.then56:                                        ; preds = %land.lhs.true
  store i32 2, i32* %lastBlockCompressed, align 4, !dbg !1105
  %90 = load i8*, i8** %dstPtr, align 8, !dbg !1107
  %91 = load i8*, i8** %srcPtr, align 8, !dbg !1108
  %92 = load i8*, i8** %srcEnd, align 8, !dbg !1109
  %93 = load i8*, i8** %srcPtr, align 8, !dbg !1110
  %sub.ptr.lhs.cast57 = ptrtoint i8* %92 to i64, !dbg !1111
  %sub.ptr.rhs.cast58 = ptrtoint i8* %93 to i64, !dbg !1111
  %sub.ptr.sub59 = sub i64 %sub.ptr.lhs.cast57, %sub.ptr.rhs.cast58, !dbg !1111
  %94 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !1112
  %95 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1113
  %lz4CtxPtr60 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %95, i32 0, i32 11, !dbg !1114
  %96 = load i8*, i8** %lz4CtxPtr60, align 8, !dbg !1114
  %97 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1115
  %prefs61 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %97, i32 0, i32 0, !dbg !1116
  %compressionLevel62 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs61, i32 0, i32 1, !dbg !1117
  %98 = load i32, i32* %compressionLevel62, align 8, !dbg !1117
  %99 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1118
  %cdict63 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %99, i32 0, i32 3, !dbg !1119
  %100 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict63, align 8, !dbg !1119
  %101 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1120
  %prefs64 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %101, i32 0, i32 0, !dbg !1121
  %frameInfo65 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs64, i32 0, i32 0, !dbg !1122
  %blockChecksumFlag66 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo65, i32 0, i32 6, !dbg !1123
  %102 = load i32, i32* %blockChecksumFlag66, align 4, !dbg !1123
  %call67 = call i64 @LZ4F_makeBlock(i8* %90, i8* %91, i64 %sub.ptr.sub59, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %94, i8* %96, i32 %98, %struct.LZ4F_CDict_s* %100, i32 %102), !dbg !1124
  %103 = load i8*, i8** %dstPtr, align 8, !dbg !1125
  %add.ptr68 = getelementptr inbounds i8, i8* %103, i64 %call67, !dbg !1125
  store i8* %add.ptr68, i8** %dstPtr, align 8, !dbg !1125
  %104 = load i8*, i8** %srcEnd, align 8, !dbg !1126
  store i8* %104, i8** %srcPtr, align 8, !dbg !1127
  br label %if.end69, !dbg !1128

if.end69:                                         ; preds = %if.then56, %land.lhs.true, %while.end
  %105 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1129
  %prefs70 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %105, i32 0, i32 0, !dbg !1131
  %frameInfo71 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs70, i32 0, i32 0, !dbg !1132
  %blockMode72 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo71, i32 0, i32 1, !dbg !1133
  %106 = load i32, i32* %blockMode72, align 4, !dbg !1133
  %cmp73 = icmp eq i32 %106, 0, !dbg !1134
  br i1 %cmp73, label %land.lhs.true74, label %if.end90, !dbg !1135

land.lhs.true74:                                  ; preds = %if.end69
  %107 = load i32, i32* %lastBlockCompressed, align 4, !dbg !1136
  %cmp75 = icmp eq i32 %107, 2, !dbg !1137
  br i1 %cmp75, label %if.then76, label %if.end90, !dbg !1138

if.then76:                                        ; preds = %land.lhs.true74
  %108 = load %struct.LZ4F_compressOptions_t*, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8, !dbg !1139
  %stableSrc = getelementptr inbounds %struct.LZ4F_compressOptions_t, %struct.LZ4F_compressOptions_t* %108, i32 0, i32 0, !dbg !1142
  %109 = load i32, i32* %stableSrc, align 4, !dbg !1142
  %tobool77 = icmp ne i32 %109, 0, !dbg !1139
  br i1 %tobool77, label %if.then78, label %if.else80, !dbg !1143

if.then78:                                        ; preds = %if.then76
  %110 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1144
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %110, i32 0, i32 6, !dbg !1146
  %111 = load i8*, i8** %tmpBuff, align 8, !dbg !1146
  %112 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1147
  %tmpIn79 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %112, i32 0, i32 7, !dbg !1148
  store i8* %111, i8** %tmpIn79, align 8, !dbg !1149
  br label %if.end89, !dbg !1150

if.else80:                                        ; preds = %if.then76
  %113 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1151
  %call81 = call i32 @LZ4F_localSaveDict(%struct.LZ4F_cctx_s* %113), !dbg !1153
  store i32 %call81, i32* %realDictSize, align 4, !dbg !1154
  %114 = load i32, i32* %realDictSize, align 4, !dbg !1155
  %cmp82 = icmp eq i32 %114, 0, !dbg !1157
  br i1 %cmp82, label %if.then83, label %if.end85, !dbg !1158

if.then83:                                        ; preds = %if.else80
  %call84 = call i64 @err0r(i32 1), !dbg !1159
  store i64 %call84, i64* %retval, align 8, !dbg !1160
  br label %return, !dbg !1160

if.end85:                                         ; preds = %if.else80
  %115 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1161
  %tmpBuff86 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %115, i32 0, i32 6, !dbg !1162
  %116 = load i8*, i8** %tmpBuff86, align 8, !dbg !1162
  %117 = load i32, i32* %realDictSize, align 4, !dbg !1163
  %idx.ext = sext i32 %117 to i64, !dbg !1164
  %add.ptr87 = getelementptr inbounds i8, i8* %116, i64 %idx.ext, !dbg !1164
  %118 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1165
  %tmpIn88 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %118, i32 0, i32 7, !dbg !1166
  store i8* %add.ptr87, i8** %tmpIn88, align 8, !dbg !1167
  br label %if.end89

if.end89:                                         ; preds = %if.end85, %if.then78
  br label %if.end90, !dbg !1168

if.end90:                                         ; preds = %if.end89, %land.lhs.true74, %if.end69
  %119 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1169
  %tmpIn91 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %119, i32 0, i32 7, !dbg !1171
  %120 = load i8*, i8** %tmpIn91, align 8, !dbg !1171
  %121 = load i64, i64* %blockSize, align 8, !dbg !1172
  %add.ptr92 = getelementptr inbounds i8, i8* %120, i64 %121, !dbg !1173
  %122 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1174
  %tmpBuff93 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %122, i32 0, i32 6, !dbg !1175
  %123 = load i8*, i8** %tmpBuff93, align 8, !dbg !1175
  %124 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1176
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %124, i32 0, i32 5, !dbg !1177
  %125 = load i64, i64* %maxBufferSize, align 8, !dbg !1177
  %add.ptr94 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !1178
  %cmp95 = icmp ugt i8* %add.ptr92, %add.ptr94, !dbg !1179
  br i1 %cmp95, label %land.lhs.true96, label %if.end107, !dbg !1180

land.lhs.true96:                                  ; preds = %if.end90
  %126 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1181
  %prefs97 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %126, i32 0, i32 0, !dbg !1182
  %autoFlush98 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs97, i32 0, i32 2, !dbg !1183
  %127 = load i32, i32* %autoFlush98, align 4, !dbg !1183
  %tobool99 = icmp ne i32 %127, 0, !dbg !1184
  br i1 %tobool99, label %if.end107, label %if.then100, !dbg !1185

if.then100:                                       ; preds = %land.lhs.true96
  %128 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1186
  %call102 = call i32 @LZ4F_localSaveDict(%struct.LZ4F_cctx_s* %128), !dbg !1188
  store i32 %call102, i32* %realDictSize101, align 4, !dbg !1189
  %129 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1190
  %tmpBuff103 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %129, i32 0, i32 6, !dbg !1191
  %130 = load i8*, i8** %tmpBuff103, align 8, !dbg !1191
  %131 = load i32, i32* %realDictSize101, align 4, !dbg !1192
  %idx.ext104 = sext i32 %131 to i64, !dbg !1193
  %add.ptr105 = getelementptr inbounds i8, i8* %130, i64 %idx.ext104, !dbg !1193
  %132 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1194
  %tmpIn106 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %132, i32 0, i32 7, !dbg !1195
  store i8* %add.ptr105, i8** %tmpIn106, align 8, !dbg !1196
  br label %if.end107, !dbg !1197

if.end107:                                        ; preds = %if.then100, %land.lhs.true96, %if.end90
  %133 = load i8*, i8** %srcPtr, align 8, !dbg !1198
  %134 = load i8*, i8** %srcEnd, align 8, !dbg !1200
  %cmp108 = icmp ult i8* %133, %134, !dbg !1201
  br i1 %cmp108, label %if.then109, label %if.end116, !dbg !1202

if.then109:                                       ; preds = %if.end107
  %135 = load i8*, i8** %srcEnd, align 8, !dbg !1203
  %136 = load i8*, i8** %srcPtr, align 8, !dbg !1205
  %sub.ptr.lhs.cast111 = ptrtoint i8* %135 to i64, !dbg !1206
  %sub.ptr.rhs.cast112 = ptrtoint i8* %136 to i64, !dbg !1206
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112, !dbg !1206
  store i64 %sub.ptr.sub113, i64* %sizeToCopy110, align 8, !dbg !1207
  %137 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1208
  %tmpIn114 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %137, i32 0, i32 7, !dbg !1209
  %138 = load i8*, i8** %tmpIn114, align 8, !dbg !1209
  %139 = load i8*, i8** %srcPtr, align 8, !dbg !1210
  %140 = load i64, i64* %sizeToCopy110, align 8, !dbg !1211
  %141 = call i8* @memcpy(i8* %138, i8* %139, i64 %140), !dbg !1212
  %142 = load i64, i64* %sizeToCopy110, align 8, !dbg !1213
  %143 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1214
  %tmpInSize115 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %143, i32 0, i32 8, !dbg !1215
  store i64 %142, i64* %tmpInSize115, align 8, !dbg !1216
  br label %if.end116, !dbg !1217

if.end116:                                        ; preds = %if.then109, %if.end107
  %144 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1218
  %prefs117 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %144, i32 0, i32 0, !dbg !1220
  %frameInfo118 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs117, i32 0, i32 0, !dbg !1221
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo118, i32 0, i32 2, !dbg !1222
  %145 = load i32, i32* %contentChecksumFlag, align 8, !dbg !1222
  %cmp119 = icmp eq i32 %145, 1, !dbg !1223
  br i1 %cmp119, label %if.then120, label %if.end122, !dbg !1224

if.then120:                                       ; preds = %if.end116
  %146 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1225
  %xxh = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %146, i32 0, i32 10, !dbg !1226
  %147 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1227
  %148 = load i64, i64* %srcSize.addr, align 8, !dbg !1228
  %call121 = call i32 @XXH32_update(%struct.XXH32_state_s* %xxh, i8* %147, i64 %148), !dbg !1229
  br label %if.end122, !dbg !1230

if.end122:                                        ; preds = %if.then120, %if.end116
  %149 = load i64, i64* %srcSize.addr, align 8, !dbg !1231
  %150 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1232
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %150, i32 0, i32 9, !dbg !1233
  %151 = load i64, i64* %totalInSize, align 8, !dbg !1234
  %add123 = add i64 %151, %149, !dbg !1234
  store i64 %add123, i64* %totalInSize, align 8, !dbg !1234
  %152 = load i8*, i8** %dstPtr, align 8, !dbg !1235
  %153 = load i8*, i8** %dstStart, align 8, !dbg !1236
  %sub.ptr.lhs.cast124 = ptrtoint i8* %152 to i64, !dbg !1237
  %sub.ptr.rhs.cast125 = ptrtoint i8* %153 to i64, !dbg !1237
  %sub.ptr.sub126 = sub i64 %sub.ptr.lhs.cast124, %sub.ptr.rhs.cast125, !dbg !1237
  store i64 %sub.ptr.sub126, i64* %retval, align 8, !dbg !1238
  br label %return, !dbg !1238

return:                                           ; preds = %if.end122, %if.then83, %if.then6, %if.then
  %154 = load i64, i64* %retval, align 8, !dbg !1239
  ret i64 %154, !dbg !1239
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressEnd(%struct.LZ4F_cctx_s* %cctxPtr, i8* %dstBuffer, i64 %dstCapacity, %struct.LZ4F_compressOptions_t* %compressOptionsPtr) #0 !dbg !1240 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca %struct.LZ4F_compressOptions_t*, align 8
  %dstStart = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %flushSize = alloca i64, align 8
  %xxh = alloca i32, align 4
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store %struct.LZ4F_compressOptions_t* %compressOptionsPtr, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8
  %0 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !1243
  store i8* %0, i8** %dstStart, align 8, !dbg !1244
  %1 = load i8*, i8** %dstStart, align 8, !dbg !1245
  store i8* %1, i8** %dstPtr, align 8, !dbg !1246
  %2 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1247
  %3 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !1248
  %4 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1249
  %5 = load %struct.LZ4F_compressOptions_t*, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8, !dbg !1250
  %call = call i64 @LZ4F_flush(%struct.LZ4F_cctx_s* %2, i8* %3, i64 %4, %struct.LZ4F_compressOptions_t* %5), !dbg !1251
  store i64 %call, i64* %flushSize, align 8, !dbg !1252
  %6 = load i64, i64* %flushSize, align 8, !dbg !1253
  %call1 = call i32 @LZ4F_isError(i64 %6), !dbg !1255
  %tobool = icmp ne i32 %call1, 0, !dbg !1255
  br i1 %tobool, label %if.then, label %if.end, !dbg !1256

if.then:                                          ; preds = %entry
  %7 = load i64, i64* %flushSize, align 8, !dbg !1257
  store i64 %7, i64* %retval, align 8, !dbg !1258
  br label %return, !dbg !1258

if.end:                                           ; preds = %entry
  %8 = load i64, i64* %flushSize, align 8, !dbg !1259
  %9 = load i8*, i8** %dstPtr, align 8, !dbg !1260
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %8, !dbg !1260
  store i8* %add.ptr, i8** %dstPtr, align 8, !dbg !1260
  %10 = load i64, i64* %flushSize, align 8, !dbg !1261
  %11 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1262
  %sub = sub i64 %11, %10, !dbg !1262
  store i64 %sub, i64* %dstCapacity.addr, align 8, !dbg !1262
  %12 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1263
  %cmp = icmp ult i64 %12, 4, !dbg !1265
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !1266

if.then2:                                         ; preds = %if.end
  %call3 = call i64 @err0r(i32 11), !dbg !1267
  store i64 %call3, i64* %retval, align 8, !dbg !1268
  br label %return, !dbg !1268

if.end4:                                          ; preds = %if.end
  %13 = load i8*, i8** %dstPtr, align 8, !dbg !1269
  call void @LZ4F_writeLE32(i8* %13, i32 0), !dbg !1270
  %14 = load i8*, i8** %dstPtr, align 8, !dbg !1271
  %add.ptr5 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !1271
  store i8* %add.ptr5, i8** %dstPtr, align 8, !dbg !1271
  %15 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1272
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %15, i32 0, i32 0, !dbg !1274
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !1275
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 2, !dbg !1276
  %16 = load i32, i32* %contentChecksumFlag, align 8, !dbg !1276
  %cmp6 = icmp eq i32 %16, 1, !dbg !1277
  br i1 %cmp6, label %if.then7, label %if.end15, !dbg !1278

if.then7:                                         ; preds = %if.end4
  %17 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1279
  %xxh8 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %17, i32 0, i32 10, !dbg !1281
  %call9 = call i32 @XXH32_digest(%struct.XXH32_state_s* %xxh8), !dbg !1282
  store i32 %call9, i32* %xxh, align 4, !dbg !1283
  %18 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1284
  %cmp10 = icmp ult i64 %18, 8, !dbg !1286
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !1287

if.then11:                                        ; preds = %if.then7
  %call12 = call i64 @err0r(i32 11), !dbg !1288
  store i64 %call12, i64* %retval, align 8, !dbg !1289
  br label %return, !dbg !1289

if.end13:                                         ; preds = %if.then7
  %19 = load i8*, i8** %dstPtr, align 8, !dbg !1290
  %20 = load i32, i32* %xxh, align 4, !dbg !1291
  call void @LZ4F_writeLE32(i8* %19, i32 %20), !dbg !1292
  %21 = load i8*, i8** %dstPtr, align 8, !dbg !1293
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 4, !dbg !1293
  store i8* %add.ptr14, i8** %dstPtr, align 8, !dbg !1293
  br label %if.end15, !dbg !1294

if.end15:                                         ; preds = %if.end13, %if.end4
  %22 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1295
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %22, i32 0, i32 2, !dbg !1296
  store i32 0, i32* %cStage, align 4, !dbg !1297
  %23 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1298
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %23, i32 0, i32 5, !dbg !1299
  store i64 0, i64* %maxBufferSize, align 8, !dbg !1300
  %24 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1301
  %prefs16 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %24, i32 0, i32 0, !dbg !1303
  %frameInfo17 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs16, i32 0, i32 0, !dbg !1304
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo17, i32 0, i32 4, !dbg !1305
  %25 = load i64, i64* %contentSize, align 8, !dbg !1305
  %tobool18 = icmp ne i64 %25, 0, !dbg !1301
  br i1 %tobool18, label %if.then19, label %if.end27, !dbg !1306

if.then19:                                        ; preds = %if.end15
  %26 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1307
  %prefs20 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %26, i32 0, i32 0, !dbg !1310
  %frameInfo21 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs20, i32 0, i32 0, !dbg !1311
  %contentSize22 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo21, i32 0, i32 4, !dbg !1312
  %27 = load i64, i64* %contentSize22, align 8, !dbg !1312
  %28 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1313
  %totalInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %28, i32 0, i32 9, !dbg !1314
  %29 = load i64, i64* %totalInSize, align 8, !dbg !1314
  %cmp23 = icmp ne i64 %27, %29, !dbg !1315
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1316

if.then24:                                        ; preds = %if.then19
  %call25 = call i64 @err0r(i32 14), !dbg !1317
  store i64 %call25, i64* %retval, align 8, !dbg !1318
  br label %return, !dbg !1318

if.end26:                                         ; preds = %if.then19
  br label %if.end27, !dbg !1319

if.end27:                                         ; preds = %if.end26, %if.end15
  %30 = load i8*, i8** %dstPtr, align 8, !dbg !1320
  %31 = load i8*, i8** %dstStart, align 8, !dbg !1321
  %sub.ptr.lhs.cast = ptrtoint i8* %30 to i64, !dbg !1322
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64, !dbg !1322
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1322
  store i64 %sub.ptr.sub, i64* %retval, align 8, !dbg !1323
  br label %return, !dbg !1323

return:                                           ; preds = %if.end27, %if.then24, %if.then11, %if.then2, %if.then
  %32 = load i64, i64* %retval, align 8, !dbg !1324
  ret i64 %32, !dbg !1324
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressFrame(i8* %dstBuffer, i64 %dstCapacity, i8* %srcBuffer, i64 %srcSize, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !1325 {
entry:
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  %result = alloca i64, align 8
  %cctx = alloca %struct.LZ4F_cctx_s, align 8
  %lz4ctx = alloca %union.LZ4_stream_u, align 8
  %cctxPtr = alloca %struct.LZ4F_cctx_s*, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  store %struct.LZ4F_cctx_s* %cctx, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1328
  %0 = bitcast %struct.LZ4F_cctx_s* %cctx to i8*, !dbg !1329
  %1 = call i8* @memset(i8* %0, i32 0, i64 184), !dbg !1329
  %version = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %cctx, i32 0, i32 1, !dbg !1330
  store i32 100, i32* %version, align 8, !dbg !1331
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %cctx, i32 0, i32 5, !dbg !1332
  store i64 5242880, i64* %maxBufferSize, align 8, !dbg !1333
  %2 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1334
  %cmp = icmp eq %struct.LZ4F_preferences_t* %2, null, !dbg !1336
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1337

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1338
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %3, i32 0, i32 1, !dbg !1339
  %4 = load i32, i32* %compressionLevel, align 8, !dbg !1339
  %cmp1 = icmp slt i32 %4, 3, !dbg !1340
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1341

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @LZ4_resetStream(%union.LZ4_stream_u* %lz4ctx), !dbg !1342
  %5 = bitcast %union.LZ4_stream_u* %lz4ctx to i8*, !dbg !1344
  %6 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1345
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %6, i32 0, i32 11, !dbg !1346
  store i8* %5, i8** %lz4CtxPtr, align 8, !dbg !1347
  %7 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1348
  %lz4CtxAlloc = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %7, i32 0, i32 12, !dbg !1349
  store i16 1, i16* %lz4CtxAlloc, align 8, !dbg !1350
  %8 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1351
  %lz4CtxState = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %8, i32 0, i32 13, !dbg !1352
  store i16 1, i16* %lz4CtxState, align 2, !dbg !1353
  br label %if.end, !dbg !1354

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %9 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1355
  %10 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !1356
  %11 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1357
  %12 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1358
  %13 = load i64, i64* %srcSize.addr, align 8, !dbg !1359
  %14 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1360
  %call = call i64 @LZ4F_compressFrame_usingCDict(%struct.LZ4F_cctx_s* %9, i8* %10, i64 %11, i8* %12, i64 %13, %struct.LZ4F_CDict_s* null, %struct.LZ4F_preferences_t* %14), !dbg !1361
  store i64 %call, i64* %result, align 8, !dbg !1362
  %15 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1363
  %cmp2 = icmp ne %struct.LZ4F_preferences_t* %15, null, !dbg !1365
  br i1 %cmp2, label %land.lhs.true, label %if.end7, !dbg !1366

land.lhs.true:                                    ; preds = %if.end
  %16 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1367
  %compressionLevel3 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %16, i32 0, i32 1, !dbg !1368
  %17 = load i32, i32* %compressionLevel3, align 8, !dbg !1368
  %cmp4 = icmp sge i32 %17, 3, !dbg !1369
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !1370

if.then5:                                         ; preds = %land.lhs.true
  %18 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1371
  %lz4CtxPtr6 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %18, i32 0, i32 11, !dbg !1371
  %19 = load i8*, i8** %lz4CtxPtr6, align 8, !dbg !1371
  call void @free(i8* %19) #7, !dbg !1371
  br label %if.end7, !dbg !1373

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  %20 = load i64, i64* %result, align 8, !dbg !1374
  ret i64 %20, !dbg !1375
}

declare void @LZ4_resetStream(%union.LZ4_stream_u*) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define %struct.LZ4F_CDict_s* @LZ4F_createCDict(i8* %dictBuffer, i64 %dictSize) #0 !dbg !1376 {
entry:
  %retval = alloca %struct.LZ4F_CDict_s*, align 8
  %dictBuffer.addr = alloca i8*, align 8
  %dictSize.addr = alloca i64, align 8
  %dictStart = alloca i8*, align 8
  %cdict = alloca %struct.LZ4F_CDict_s*, align 8
  store i8* %dictBuffer, i8** %dictBuffer.addr, align 8
  store i64 %dictSize, i64* %dictSize.addr, align 8
  %0 = load i8*, i8** %dictBuffer.addr, align 8, !dbg !1379
  store i8* %0, i8** %dictStart, align 8, !dbg !1380
  %call = call noalias i8* @malloc(i64 24) #7, !dbg !1381
  %1 = bitcast i8* %call to %struct.LZ4F_CDict_s*, !dbg !1382
  store %struct.LZ4F_CDict_s* %1, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1383
  %2 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1384
  %tobool = icmp ne %struct.LZ4F_CDict_s* %2, null, !dbg !1384
  br i1 %tobool, label %if.end, label %if.then, !dbg !1386

if.then:                                          ; preds = %entry
  store %struct.LZ4F_CDict_s* null, %struct.LZ4F_CDict_s** %retval, align 8, !dbg !1387
  br label %return, !dbg !1387

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %dictSize.addr, align 8, !dbg !1388
  %cmp = icmp ugt i64 %3, 65536, !dbg !1390
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1391

if.then1:                                         ; preds = %if.end
  %4 = load i64, i64* %dictSize.addr, align 8, !dbg !1392
  %sub = sub i64 %4, 65536, !dbg !1394
  %5 = load i8*, i8** %dictStart, align 8, !dbg !1395
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %sub, !dbg !1395
  store i8* %add.ptr, i8** %dictStart, align 8, !dbg !1395
  store i64 65536, i64* %dictSize.addr, align 8, !dbg !1396
  br label %if.end2, !dbg !1397

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load i64, i64* %dictSize.addr, align 8, !dbg !1398
  %call3 = call noalias i8* @malloc(i64 %6) #7, !dbg !1398
  %7 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1399
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %7, i32 0, i32 0, !dbg !1400
  store i8* %call3, i8** %dictContent, align 8, !dbg !1401
  %call4 = call %union.LZ4_stream_u* @LZ4_createStream(), !dbg !1402
  %8 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1403
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %8, i32 0, i32 1, !dbg !1404
  store %union.LZ4_stream_u* %call4, %union.LZ4_stream_u** %fastCtx, align 8, !dbg !1405
  %call5 = call %union.LZ4_streamHC_u* @LZ4_createStreamHC(), !dbg !1406
  %9 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1407
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %9, i32 0, i32 2, !dbg !1408
  store %union.LZ4_streamHC_u* %call5, %union.LZ4_streamHC_u** %HCCtx, align 8, !dbg !1409
  %10 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1410
  %dictContent6 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %10, i32 0, i32 0, !dbg !1412
  %11 = load i8*, i8** %dictContent6, align 8, !dbg !1412
  %tobool7 = icmp ne i8* %11, null, !dbg !1410
  br i1 %tobool7, label %lor.lhs.false, label %if.then13, !dbg !1413

lor.lhs.false:                                    ; preds = %if.end2
  %12 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1414
  %fastCtx8 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %12, i32 0, i32 1, !dbg !1415
  %13 = load %union.LZ4_stream_u*, %union.LZ4_stream_u** %fastCtx8, align 8, !dbg !1415
  %tobool9 = icmp ne %union.LZ4_stream_u* %13, null, !dbg !1414
  br i1 %tobool9, label %lor.lhs.false10, label %if.then13, !dbg !1416

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %14 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1417
  %HCCtx11 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %14, i32 0, i32 2, !dbg !1418
  %15 = load %union.LZ4_streamHC_u*, %union.LZ4_streamHC_u** %HCCtx11, align 8, !dbg !1418
  %tobool12 = icmp ne %union.LZ4_streamHC_u* %15, null, !dbg !1417
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1419

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end2
  %16 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1420
  call void @LZ4F_freeCDict(%struct.LZ4F_CDict_s* %16), !dbg !1422
  store %struct.LZ4F_CDict_s* null, %struct.LZ4F_CDict_s** %retval, align 8, !dbg !1423
  br label %return, !dbg !1423

if.end14:                                         ; preds = %lor.lhs.false10
  %17 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1424
  %dictContent15 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %17, i32 0, i32 0, !dbg !1425
  %18 = load i8*, i8** %dictContent15, align 8, !dbg !1425
  %19 = load i8*, i8** %dictStart, align 8, !dbg !1426
  %20 = load i64, i64* %dictSize.addr, align 8, !dbg !1427
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !1428
  %22 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1429
  %fastCtx16 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %22, i32 0, i32 1, !dbg !1430
  %23 = load %union.LZ4_stream_u*, %union.LZ4_stream_u** %fastCtx16, align 8, !dbg !1430
  %24 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1431
  %dictContent17 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %24, i32 0, i32 0, !dbg !1432
  %25 = load i8*, i8** %dictContent17, align 8, !dbg !1432
  %26 = load i64, i64* %dictSize.addr, align 8, !dbg !1433
  %conv = trunc i64 %26 to i32, !dbg !1434
  %call18 = call i32 @LZ4_loadDict(%union.LZ4_stream_u* %23, i8* %25, i32 %conv), !dbg !1435
  %27 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1436
  %HCCtx19 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %27, i32 0, i32 2, !dbg !1437
  %28 = load %union.LZ4_streamHC_u*, %union.LZ4_streamHC_u** %HCCtx19, align 8, !dbg !1437
  call void @LZ4_setCompressionLevel(%union.LZ4_streamHC_u* %28, i32 9), !dbg !1438
  %29 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1439
  %HCCtx20 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %29, i32 0, i32 2, !dbg !1440
  %30 = load %union.LZ4_streamHC_u*, %union.LZ4_streamHC_u** %HCCtx20, align 8, !dbg !1440
  %31 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1441
  %dictContent21 = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %31, i32 0, i32 0, !dbg !1442
  %32 = load i8*, i8** %dictContent21, align 8, !dbg !1442
  %33 = load i64, i64* %dictSize.addr, align 8, !dbg !1443
  %conv22 = trunc i64 %33 to i32, !dbg !1444
  %call23 = call i32 @LZ4_loadDictHC(%union.LZ4_streamHC_u* %30, i8* %32, i32 %conv22), !dbg !1445
  %34 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1446
  store %struct.LZ4F_CDict_s* %34, %struct.LZ4F_CDict_s** %retval, align 8, !dbg !1447
  br label %return, !dbg !1447

return:                                           ; preds = %if.end14, %if.then13, %if.then
  %35 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %retval, align 8, !dbg !1448
  ret %struct.LZ4F_CDict_s* %35, !dbg !1448
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #4

declare %union.LZ4_stream_u* @LZ4_createStream() #3

declare %union.LZ4_streamHC_u* @LZ4_createStreamHC() #3

; Function Attrs: noinline nounwind optnone uwtable
define void @LZ4F_freeCDict(%struct.LZ4F_CDict_s* %cdict) #0 !dbg !1449 {
entry:
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  %0 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1452
  %cmp = icmp eq %struct.LZ4F_CDict_s* %0, null, !dbg !1454
  br i1 %cmp, label %if.then, label %if.end, !dbg !1455

if.then:                                          ; preds = %entry
  br label %return, !dbg !1456

if.end:                                           ; preds = %entry
  %1 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1457
  %dictContent = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %1, i32 0, i32 0, !dbg !1457
  %2 = load i8*, i8** %dictContent, align 8, !dbg !1457
  call void @free(i8* %2) #7, !dbg !1457
  %3 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1458
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %3, i32 0, i32 1, !dbg !1459
  %4 = load %union.LZ4_stream_u*, %union.LZ4_stream_u** %fastCtx, align 8, !dbg !1459
  %call = call i32 @LZ4_freeStream(%union.LZ4_stream_u* %4), !dbg !1460
  %5 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1461
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %5, i32 0, i32 2, !dbg !1462
  %6 = load %union.LZ4_streamHC_u*, %union.LZ4_streamHC_u** %HCCtx, align 8, !dbg !1462
  %call1 = call i32 @LZ4_freeStreamHC(%union.LZ4_streamHC_u* %6), !dbg !1463
  %7 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1464
  %8 = bitcast %struct.LZ4F_CDict_s* %7 to i8*, !dbg !1464
  call void @free(i8* %8) #7, !dbg !1464
  br label %return, !dbg !1465

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1465
}

declare i32 @LZ4_loadDict(%union.LZ4_stream_u*, i8*, i32) #3

declare void @LZ4_setCompressionLevel(%union.LZ4_streamHC_u*, i32) #3

declare i32 @LZ4_loadDictHC(%union.LZ4_streamHC_u*, i8*, i32) #3

declare i32 @LZ4_freeStream(%union.LZ4_stream_u*) #3

declare i32 @LZ4_freeStreamHC(%union.LZ4_streamHC_u*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_createCompressionContext(%struct.LZ4F_cctx_s** %LZ4F_compressionContextPtr, i32 %version) #0 !dbg !1466 {
entry:
  %retval = alloca i64, align 8
  %LZ4F_compressionContextPtr.addr = alloca %struct.LZ4F_cctx_s**, align 8
  %version.addr = alloca i32, align 4
  %cctxPtr = alloca %struct.LZ4F_cctx_s*, align 8
  store %struct.LZ4F_cctx_s** %LZ4F_compressionContextPtr, %struct.LZ4F_cctx_s*** %LZ4F_compressionContextPtr.addr, align 8
  store i32 %version, i32* %version.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 184) #7, !dbg !1470
  %0 = bitcast i8* %call to %struct.LZ4F_cctx_s*, !dbg !1471
  store %struct.LZ4F_cctx_s* %0, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1472
  %1 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1473
  %cmp = icmp eq %struct.LZ4F_cctx_s* %1, null, !dbg !1475
  br i1 %cmp, label %if.then, label %if.end, !dbg !1476

if.then:                                          ; preds = %entry
  %call1 = call i64 @err0r(i32 9), !dbg !1477
  store i64 %call1, i64* %retval, align 8, !dbg !1478
  br label %return, !dbg !1478

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %version.addr, align 4, !dbg !1479
  %3 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1480
  %version2 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %3, i32 0, i32 1, !dbg !1481
  store i32 %2, i32* %version2, align 8, !dbg !1482
  %4 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1483
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %4, i32 0, i32 2, !dbg !1484
  store i32 0, i32* %cStage, align 4, !dbg !1485
  %5 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1486
  %6 = load %struct.LZ4F_cctx_s**, %struct.LZ4F_cctx_s*** %LZ4F_compressionContextPtr.addr, align 8, !dbg !1487
  store %struct.LZ4F_cctx_s* %5, %struct.LZ4F_cctx_s** %6, align 8, !dbg !1488
  store i64 0, i64* %retval, align 8, !dbg !1489
  br label %return, !dbg !1489

return:                                           ; preds = %if.end, %if.then
  %7 = load i64, i64* %retval, align 8, !dbg !1490
  ret i64 %7, !dbg !1490
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_freeCompressionContext(%struct.LZ4F_cctx_s* %LZ4F_compressionContext) #0 !dbg !1491 {
entry:
  %LZ4F_compressionContext.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %cctxPtr = alloca %struct.LZ4F_cctx_s*, align 8
  store %struct.LZ4F_cctx_s* %LZ4F_compressionContext, %struct.LZ4F_cctx_s** %LZ4F_compressionContext.addr, align 8
  %0 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %LZ4F_compressionContext.addr, align 8, !dbg !1494
  store %struct.LZ4F_cctx_s* %0, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1495
  %1 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1496
  %cmp = icmp ne %struct.LZ4F_cctx_s* %1, null, !dbg !1498
  br i1 %cmp, label %if.then, label %if.end, !dbg !1499

if.then:                                          ; preds = %entry
  %2 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1500
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %2, i32 0, i32 11, !dbg !1500
  %3 = load i8*, i8** %lz4CtxPtr, align 8, !dbg !1500
  call void @free(i8* %3) #7, !dbg !1500
  %4 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr, align 8, !dbg !1502
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %4, i32 0, i32 6, !dbg !1502
  %5 = load i8*, i8** %tmpBuff, align 8, !dbg !1502
  call void @free(i8* %5) #7, !dbg !1502
  %6 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %LZ4F_compressionContext.addr, align 8, !dbg !1503
  %7 = bitcast %struct.LZ4F_cctx_s* %6 to i8*, !dbg !1503
  call void @free(i8* %7) #7, !dbg !1503
  br label %if.end, !dbg !1504

if.end:                                           ; preds = %if.then, %entry
  ret i64 0, !dbg !1505
}

declare void @LZ4_resetStreamHC(%union.LZ4_streamHC_u*, i32) #3

declare i32 @XXH32_reset(%struct.XXH32_state_s*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4F_initStream(i8* %ctx, %struct.LZ4F_CDict_s* %cdict, i32 %level, i32 %blockMode) #0 !dbg !1506 {
entry:
  %ctx.addr = alloca i8*, align 8
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %level.addr = alloca i32, align 4
  %blockMode.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %blockMode, i32* %blockMode.addr, align 4
  %0 = load i32, i32* %level.addr, align 4, !dbg !1509
  %cmp = icmp slt i32 %0, 3, !dbg !1511
  br i1 %cmp, label %if.then, label %if.else, !dbg !1512

if.then:                                          ; preds = %entry
  %1 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1513
  %cmp1 = icmp ne %struct.LZ4F_CDict_s* %1, null, !dbg !1516
  br i1 %cmp1, label %if.then3, label %lor.lhs.false, !dbg !1517

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %blockMode.addr, align 4, !dbg !1518
  %cmp2 = icmp eq i32 %2, 0, !dbg !1519
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1520

if.then3:                                         ; preds = %lor.lhs.false, %if.then
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !1521
  %4 = bitcast i8* %3 to %union.LZ4_stream_u*, !dbg !1523
  call void @LZ4_resetStream_fast(%union.LZ4_stream_u* %4), !dbg !1524
  br label %if.end, !dbg !1525

if.end:                                           ; preds = %if.then3, %lor.lhs.false
  %5 = load i8*, i8** %ctx.addr, align 8, !dbg !1526
  %6 = bitcast i8* %5 to %union.LZ4_stream_u*, !dbg !1527
  %7 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1528
  %tobool = icmp ne %struct.LZ4F_CDict_s* %7, null, !dbg !1528
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !1528

cond.true:                                        ; preds = %if.end
  %8 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1529
  %fastCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %8, i32 0, i32 1, !dbg !1530
  %9 = load %union.LZ4_stream_u*, %union.LZ4_stream_u** %fastCtx, align 8, !dbg !1530
  br label %cond.end, !dbg !1528

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.LZ4_stream_u* [ %9, %cond.true ], [ null, %cond.false ], !dbg !1528
  call void @LZ4_attach_dictionary(%union.LZ4_stream_u* %6, %union.LZ4_stream_u* %cond), !dbg !1531
  br label %if.end9, !dbg !1532

if.else:                                          ; preds = %entry
  %10 = load i8*, i8** %ctx.addr, align 8, !dbg !1533
  %11 = bitcast i8* %10 to %union.LZ4_streamHC_u*, !dbg !1535
  %12 = load i32, i32* %level.addr, align 4, !dbg !1536
  call void @LZ4_resetStreamHC_fast(%union.LZ4_streamHC_u* %11, i32 %12), !dbg !1537
  %13 = load i8*, i8** %ctx.addr, align 8, !dbg !1538
  %14 = bitcast i8* %13 to %union.LZ4_streamHC_u*, !dbg !1539
  %15 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1540
  %tobool4 = icmp ne %struct.LZ4F_CDict_s* %15, null, !dbg !1540
  br i1 %tobool4, label %cond.true5, label %cond.false6, !dbg !1540

cond.true5:                                       ; preds = %if.else
  %16 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1541
  %HCCtx = getelementptr inbounds %struct.LZ4F_CDict_s, %struct.LZ4F_CDict_s* %16, i32 0, i32 2, !dbg !1542
  %17 = load %union.LZ4_streamHC_u*, %union.LZ4_streamHC_u** %HCCtx, align 8, !dbg !1542
  br label %cond.end7, !dbg !1540

cond.false6:                                      ; preds = %if.else
  br label %cond.end7, !dbg !1540

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi %union.LZ4_streamHC_u* [ %17, %cond.true5 ], [ null, %cond.false6 ], !dbg !1540
  call void @LZ4_attach_HC_dictionary(%union.LZ4_streamHC_u* %14, %union.LZ4_streamHC_u* %cond8), !dbg !1543
  br label %if.end9

if.end9:                                          ; preds = %cond.end7, %cond.end
  ret void, !dbg !1544
}

declare void @LZ4_favorDecompressionSpeed(%union.LZ4_streamHC_u*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4F_writeLE32(i8* %dst, i32 %value32) #0 !dbg !1545 {
entry:
  %dst.addr = alloca i8*, align 8
  %value32.addr = alloca i32, align 4
  %dstPtr = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %value32, i32* %value32.addr, align 4
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !1548
  store i8* %0, i8** %dstPtr, align 8, !dbg !1549
  %1 = load i32, i32* %value32.addr, align 4, !dbg !1550
  %conv = trunc i32 %1 to i8, !dbg !1551
  %2 = load i8*, i8** %dstPtr, align 8, !dbg !1552
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1552
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1553
  %3 = load i32, i32* %value32.addr, align 4, !dbg !1554
  %shr = lshr i32 %3, 8, !dbg !1555
  %conv1 = trunc i32 %shr to i8, !dbg !1556
  %4 = load i8*, i8** %dstPtr, align 8, !dbg !1557
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1557
  store i8 %conv1, i8* %arrayidx2, align 1, !dbg !1558
  %5 = load i32, i32* %value32.addr, align 4, !dbg !1559
  %shr3 = lshr i32 %5, 16, !dbg !1560
  %conv4 = trunc i32 %shr3 to i8, !dbg !1561
  %6 = load i8*, i8** %dstPtr, align 8, !dbg !1562
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1562
  store i8 %conv4, i8* %arrayidx5, align 1, !dbg !1563
  %7 = load i32, i32* %value32.addr, align 4, !dbg !1564
  %shr6 = lshr i32 %7, 24, !dbg !1565
  %conv7 = trunc i32 %shr6 to i8, !dbg !1566
  %8 = load i8*, i8** %dstPtr, align 8, !dbg !1567
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !1567
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !1568
  ret void, !dbg !1569
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4F_writeLE64(i8* %dst, i64 %value64) #0 !dbg !1570 {
entry:
  %dst.addr = alloca i8*, align 8
  %value64.addr = alloca i64, align 8
  %dstPtr = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i64 %value64, i64* %value64.addr, align 8
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !1573
  store i8* %0, i8** %dstPtr, align 8, !dbg !1574
  %1 = load i64, i64* %value64.addr, align 8, !dbg !1575
  %conv = trunc i64 %1 to i8, !dbg !1576
  %2 = load i8*, i8** %dstPtr, align 8, !dbg !1577
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0, !dbg !1577
  store i8 %conv, i8* %arrayidx, align 1, !dbg !1578
  %3 = load i64, i64* %value64.addr, align 8, !dbg !1579
  %shr = lshr i64 %3, 8, !dbg !1580
  %conv1 = trunc i64 %shr to i8, !dbg !1581
  %4 = load i8*, i8** %dstPtr, align 8, !dbg !1582
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1582
  store i8 %conv1, i8* %arrayidx2, align 1, !dbg !1583
  %5 = load i64, i64* %value64.addr, align 8, !dbg !1584
  %shr3 = lshr i64 %5, 16, !dbg !1585
  %conv4 = trunc i64 %shr3 to i8, !dbg !1586
  %6 = load i8*, i8** %dstPtr, align 8, !dbg !1587
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1587
  store i8 %conv4, i8* %arrayidx5, align 1, !dbg !1588
  %7 = load i64, i64* %value64.addr, align 8, !dbg !1589
  %shr6 = lshr i64 %7, 24, !dbg !1590
  %conv7 = trunc i64 %shr6 to i8, !dbg !1591
  %8 = load i8*, i8** %dstPtr, align 8, !dbg !1592
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 3, !dbg !1592
  store i8 %conv7, i8* %arrayidx8, align 1, !dbg !1593
  %9 = load i64, i64* %value64.addr, align 8, !dbg !1594
  %shr9 = lshr i64 %9, 32, !dbg !1595
  %conv10 = trunc i64 %shr9 to i8, !dbg !1596
  %10 = load i8*, i8** %dstPtr, align 8, !dbg !1597
  %arrayidx11 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1597
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !1598
  %11 = load i64, i64* %value64.addr, align 8, !dbg !1599
  %shr12 = lshr i64 %11, 40, !dbg !1600
  %conv13 = trunc i64 %shr12 to i8, !dbg !1601
  %12 = load i8*, i8** %dstPtr, align 8, !dbg !1602
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 5, !dbg !1602
  store i8 %conv13, i8* %arrayidx14, align 1, !dbg !1603
  %13 = load i64, i64* %value64.addr, align 8, !dbg !1604
  %shr15 = lshr i64 %13, 48, !dbg !1605
  %conv16 = trunc i64 %shr15 to i8, !dbg !1606
  %14 = load i8*, i8** %dstPtr, align 8, !dbg !1607
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 6, !dbg !1607
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !1608
  %15 = load i64, i64* %value64.addr, align 8, !dbg !1609
  %shr18 = lshr i64 %15, 56, !dbg !1610
  %conv19 = trunc i64 %shr18 to i8, !dbg !1611
  %16 = load i8*, i8** %dstPtr, align 8, !dbg !1612
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 7, !dbg !1612
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !1613
  ret void, !dbg !1614
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @LZ4F_headerChecksum(i8* %header, i64 %length) #0 !dbg !1615 {
entry:
  %header.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %xxh = alloca i32, align 4
  store i8* %header, i8** %header.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i8*, i8** %header.addr, align 8, !dbg !1618
  %1 = load i64, i64* %length.addr, align 8, !dbg !1619
  %call = call i32 @XXH32(i8* %0, i64 %1, i32 0), !dbg !1620
  store i32 %call, i32* %xxh, align 4, !dbg !1621
  %2 = load i32, i32* %xxh, align 4, !dbg !1622
  %shr = lshr i32 %2, 8, !dbg !1623
  %conv = trunc i32 %shr to i8, !dbg !1624
  ret i8 %conv, !dbg !1625
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressBegin(%struct.LZ4F_cctx_s* %cctxPtr, i8* %dstBuffer, i64 %dstCapacity, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !1626 {
entry:
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  %0 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1629
  %1 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !1630
  %2 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1631
  %3 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1632
  %call = call i64 @LZ4F_compressBegin_usingCDict(%struct.LZ4F_cctx_s* %0, i8* %1, i64 %2, %struct.LZ4F_CDict_s* null, %struct.LZ4F_preferences_t* %3), !dbg !1633
  ret i64 %call, !dbg !1634
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_compressBound(i64 %srcSize, %struct.LZ4F_preferences_t* %preferencesPtr) #0 !dbg !1635 {
entry:
  %srcSize.addr = alloca i64, align 8
  %preferencesPtr.addr = alloca %struct.LZ4F_preferences_t*, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store %struct.LZ4F_preferences_t* %preferencesPtr, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8
  %0 = load i64, i64* %srcSize.addr, align 8, !dbg !1636
  %1 = load %struct.LZ4F_preferences_t*, %struct.LZ4F_preferences_t** %preferencesPtr.addr, align 8, !dbg !1637
  %call = call i64 @LZ4F_compressBound_internal(i64 %0, %struct.LZ4F_preferences_t* %1, i64 -1), !dbg !1638
  ret i64 %call, !dbg !1639
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_selectCompression(i32 %blockMode, i32 %level) #0 !dbg !1640 {
entry:
  %retval = alloca i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, align 8
  %blockMode.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  store i32 %blockMode, i32* %blockMode.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4, !dbg !1647
  %cmp = icmp slt i32 %0, 3, !dbg !1649
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1650

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %blockMode.addr, align 4, !dbg !1651
  %cmp1 = icmp eq i32 %1, 1, !dbg !1654
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !1655

if.then2:                                         ; preds = %if.then
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_compressBlock, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %retval, align 8, !dbg !1656
  br label %return, !dbg !1656

if.end:                                           ; preds = %if.then
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_compressBlock_continue, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %retval, align 8, !dbg !1657
  br label %return, !dbg !1657

if.end3:                                          ; preds = %entry
  %2 = load i32, i32* %blockMode.addr, align 4, !dbg !1658
  %cmp4 = icmp eq i32 %2, 1, !dbg !1660
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1661

if.then5:                                         ; preds = %if.end3
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_compressBlockHC, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %retval, align 8, !dbg !1662
  br label %return, !dbg !1662

if.end6:                                          ; preds = %if.end3
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_compressBlockHC_continue, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %retval, align 8, !dbg !1663
  br label %return, !dbg !1663

return:                                           ; preds = %if.end6, %if.then5, %if.end, %if.then2
  %3 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %retval, align 8, !dbg !1664
  ret i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %3, !dbg !1664
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_makeBlock(i8* %dst, i8* %src, i64 %srcSize, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %compress, i8* %lz4ctx, i32 %level, %struct.LZ4F_CDict_s* %cdict, i32 %crcFlag) #0 !dbg !1665 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %compress.addr = alloca i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, align 8
  %lz4ctx.addr = alloca i8*, align 8
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %crcFlag.addr = alloca i32, align 4
  %cSizePtr = alloca i8*, align 8
  %cSize = alloca i32, align 4
  %crc32 = alloca i32, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %compress, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress.addr, align 8
  store i8* %lz4ctx, i8** %lz4ctx.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  store i32 %crcFlag, i32* %crcFlag.addr, align 4
  %0 = load i8*, i8** %dst.addr, align 8, !dbg !1668
  store i8* %0, i8** %cSizePtr, align 8, !dbg !1669
  %1 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress.addr, align 8, !dbg !1670
  %2 = load i8*, i8** %lz4ctx.addr, align 8, !dbg !1671
  %3 = load i8*, i8** %src.addr, align 8, !dbg !1672
  %4 = load i8*, i8** %cSizePtr, align 8, !dbg !1673
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 4, !dbg !1674
  %5 = load i64, i64* %srcSize.addr, align 8, !dbg !1675
  %conv = trunc i64 %5 to i32, !dbg !1676
  %6 = load i64, i64* %srcSize.addr, align 8, !dbg !1677
  %sub = sub i64 %6, 1, !dbg !1678
  %conv1 = trunc i64 %sub to i32, !dbg !1679
  %7 = load i32, i32* %level.addr, align 4, !dbg !1680
  %8 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !1681
  %call = call i32 %1(i8* %2, i8* %3, i8* %add.ptr, i32 %conv, i32 %conv1, i32 %7, %struct.LZ4F_CDict_s* %8), !dbg !1670
  store i32 %call, i32* %cSize, align 4, !dbg !1682
  %9 = load i32, i32* %cSize, align 4, !dbg !1683
  %cmp = icmp eq i32 %9, 0, !dbg !1685
  br i1 %cmp, label %if.then, label %if.else, !dbg !1686

if.then:                                          ; preds = %entry
  %10 = load i64, i64* %srcSize.addr, align 8, !dbg !1687
  %conv3 = trunc i64 %10 to i32, !dbg !1689
  store i32 %conv3, i32* %cSize, align 4, !dbg !1690
  %11 = load i8*, i8** %cSizePtr, align 8, !dbg !1691
  %12 = load i32, i32* %cSize, align 4, !dbg !1692
  %or = or i32 %12, -2147483648, !dbg !1693
  call void @LZ4F_writeLE32(i8* %11, i32 %or), !dbg !1694
  %13 = load i8*, i8** %cSizePtr, align 8, !dbg !1695
  %add.ptr4 = getelementptr inbounds i8, i8* %13, i64 4, !dbg !1696
  %14 = load i8*, i8** %src.addr, align 8, !dbg !1697
  %15 = load i64, i64* %srcSize.addr, align 8, !dbg !1698
  %16 = call i8* @memcpy(i8* %add.ptr4, i8* %14, i64 %15), !dbg !1699
  br label %if.end, !dbg !1700

if.else:                                          ; preds = %entry
  %17 = load i8*, i8** %cSizePtr, align 8, !dbg !1701
  %18 = load i32, i32* %cSize, align 4, !dbg !1703
  call void @LZ4F_writeLE32(i8* %17, i32 %18), !dbg !1704
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %crcFlag.addr, align 4, !dbg !1705
  %tobool = icmp ne i32 %19, 0, !dbg !1705
  br i1 %tobool, label %if.then5, label %if.end11, !dbg !1707

if.then5:                                         ; preds = %if.end
  %20 = load i8*, i8** %cSizePtr, align 8, !dbg !1708
  %add.ptr6 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1710
  %21 = load i32, i32* %cSize, align 4, !dbg !1711
  %conv7 = zext i32 %21 to i64, !dbg !1711
  %call8 = call i32 @XXH32(i8* %add.ptr6, i64 %conv7, i32 0), !dbg !1712
  store i32 %call8, i32* %crc32, align 4, !dbg !1713
  %22 = load i8*, i8** %cSizePtr, align 8, !dbg !1714
  %add.ptr9 = getelementptr inbounds i8, i8* %22, i64 4, !dbg !1715
  %23 = load i32, i32* %cSize, align 4, !dbg !1716
  %idx.ext = zext i32 %23 to i64, !dbg !1717
  %add.ptr10 = getelementptr inbounds i8, i8* %add.ptr9, i64 %idx.ext, !dbg !1717
  %24 = load i32, i32* %crc32, align 4, !dbg !1718
  call void @LZ4F_writeLE32(i8* %add.ptr10, i32 %24), !dbg !1719
  br label %if.end11, !dbg !1720

if.end11:                                         ; preds = %if.then5, %if.end
  %25 = load i32, i32* %cSize, align 4, !dbg !1721
  %conv12 = zext i32 %25 to i64, !dbg !1721
  %add = add i64 4, %conv12, !dbg !1722
  %26 = load i32, i32* %crcFlag.addr, align 4, !dbg !1723
  %conv13 = zext i32 %26 to i64, !dbg !1724
  %mul = mul i64 %conv13, 4, !dbg !1725
  %add14 = add i64 %add, %mul, !dbg !1726
  ret i64 %add14, !dbg !1727
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_localSaveDict(%struct.LZ4F_cctx_s* %cctxPtr) #0 !dbg !1728 {
entry:
  %retval = alloca i32, align 4
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  %0 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1731
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %0, i32 0, i32 0, !dbg !1733
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 1, !dbg !1734
  %1 = load i32, i32* %compressionLevel, align 8, !dbg !1734
  %cmp = icmp slt i32 %1, 3, !dbg !1735
  br i1 %cmp, label %if.then, label %if.end, !dbg !1736

if.then:                                          ; preds = %entry
  %2 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1737
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %2, i32 0, i32 11, !dbg !1738
  %3 = load i8*, i8** %lz4CtxPtr, align 8, !dbg !1738
  %4 = bitcast i8* %3 to %union.LZ4_stream_u*, !dbg !1739
  %5 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1740
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %5, i32 0, i32 6, !dbg !1741
  %6 = load i8*, i8** %tmpBuff, align 8, !dbg !1741
  %call = call i32 @LZ4_saveDict(%union.LZ4_stream_u* %4, i8* %6, i32 65536), !dbg !1742
  store i32 %call, i32* %retval, align 4, !dbg !1743
  br label %return, !dbg !1743

if.end:                                           ; preds = %entry
  %7 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1744
  %lz4CtxPtr1 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %7, i32 0, i32 11, !dbg !1745
  %8 = load i8*, i8** %lz4CtxPtr1, align 8, !dbg !1745
  %9 = bitcast i8* %8 to %union.LZ4_streamHC_u*, !dbg !1746
  %10 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1747
  %tmpBuff2 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %10, i32 0, i32 6, !dbg !1748
  %11 = load i8*, i8** %tmpBuff2, align 8, !dbg !1748
  %call3 = call i32 @LZ4_saveDictHC(%union.LZ4_streamHC_u* %9, i8* %11, i32 65536), !dbg !1749
  store i32 %call3, i32* %retval, align 4, !dbg !1750
  br label %return, !dbg !1750

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !1751
  ret i32 %12, !dbg !1751
}

declare i32 @XXH32_update(%struct.XXH32_state_s*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_flush(%struct.LZ4F_cctx_s* %cctxPtr, i8* %dstBuffer, i64 %dstCapacity, %struct.LZ4F_compressOptions_t* %compressOptionsPtr) #0 !dbg !1752 {
entry:
  %retval = alloca i64, align 8
  %cctxPtr.addr = alloca %struct.LZ4F_cctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstCapacity.addr = alloca i64, align 8
  %compressOptionsPtr.addr = alloca %struct.LZ4F_compressOptions_t*, align 8
  %dstStart = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %compress = alloca i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, align 8
  %realDictSize = alloca i32, align 4
  store %struct.LZ4F_cctx_s* %cctxPtr, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64 %dstCapacity, i64* %dstCapacity.addr, align 8
  store %struct.LZ4F_compressOptions_t* %compressOptionsPtr, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8
  %0 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !1753
  store i8* %0, i8** %dstStart, align 8, !dbg !1754
  %1 = load i8*, i8** %dstStart, align 8, !dbg !1755
  store i8* %1, i8** %dstPtr, align 8, !dbg !1756
  %2 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1757
  %tmpInSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %2, i32 0, i32 8, !dbg !1759
  %3 = load i64, i64* %tmpInSize, align 8, !dbg !1759
  %cmp = icmp eq i64 %3, 0, !dbg !1760
  br i1 %cmp, label %if.then, label %if.end, !dbg !1761

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !1762
  br label %return, !dbg !1762

if.end:                                           ; preds = %entry
  %4 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1763
  %cStage = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %4, i32 0, i32 2, !dbg !1765
  %5 = load i32, i32* %cStage, align 4, !dbg !1765
  %cmp1 = icmp ne i32 %5, 1, !dbg !1766
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1767

if.then2:                                         ; preds = %if.end
  %call = call i64 @err0r(i32 1), !dbg !1768
  store i64 %call, i64* %retval, align 8, !dbg !1769
  br label %return, !dbg !1769

if.end3:                                          ; preds = %if.end
  %6 = load i64, i64* %dstCapacity.addr, align 8, !dbg !1770
  %7 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1772
  %tmpInSize4 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %7, i32 0, i32 8, !dbg !1773
  %8 = load i64, i64* %tmpInSize4, align 8, !dbg !1773
  %add = add i64 %8, 4, !dbg !1774
  %add5 = add i64 %add, 4, !dbg !1775
  %cmp6 = icmp ult i64 %6, %add5, !dbg !1776
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1777

if.then7:                                         ; preds = %if.end3
  %call8 = call i64 @err0r(i32 11), !dbg !1778
  store i64 %call8, i64* %retval, align 8, !dbg !1779
  br label %return, !dbg !1779

if.end9:                                          ; preds = %if.end3
  %9 = load %struct.LZ4F_compressOptions_t*, %struct.LZ4F_compressOptions_t** %compressOptionsPtr.addr, align 8, !dbg !1780
  %10 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1781
  %prefs = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %10, i32 0, i32 0, !dbg !1782
  %frameInfo = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs, i32 0, i32 0, !dbg !1783
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 1, !dbg !1784
  %11 = load i32, i32* %blockMode, align 4, !dbg !1784
  %12 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1785
  %prefs10 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %12, i32 0, i32 0, !dbg !1786
  %compressionLevel = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs10, i32 0, i32 1, !dbg !1787
  %13 = load i32, i32* %compressionLevel, align 8, !dbg !1787
  %call11 = call i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* @LZ4F_selectCompression(i32 %11, i32 %13), !dbg !1788
  store i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %call11, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !1789
  %14 = load i8*, i8** %dstPtr, align 8, !dbg !1790
  %15 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1791
  %tmpIn = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %15, i32 0, i32 7, !dbg !1792
  %16 = load i8*, i8** %tmpIn, align 8, !dbg !1792
  %17 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1793
  %tmpInSize12 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %17, i32 0, i32 8, !dbg !1794
  %18 = load i64, i64* %tmpInSize12, align 8, !dbg !1794
  %19 = load i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)*, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)** %compress, align 8, !dbg !1795
  %20 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1796
  %lz4CtxPtr = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %20, i32 0, i32 11, !dbg !1797
  %21 = load i8*, i8** %lz4CtxPtr, align 8, !dbg !1797
  %22 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1798
  %prefs13 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %22, i32 0, i32 0, !dbg !1799
  %compressionLevel14 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs13, i32 0, i32 1, !dbg !1800
  %23 = load i32, i32* %compressionLevel14, align 8, !dbg !1800
  %24 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1801
  %cdict = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %24, i32 0, i32 3, !dbg !1802
  %25 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict, align 8, !dbg !1802
  %26 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1803
  %prefs15 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %26, i32 0, i32 0, !dbg !1804
  %frameInfo16 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs15, i32 0, i32 0, !dbg !1805
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo16, i32 0, i32 6, !dbg !1806
  %27 = load i32, i32* %blockChecksumFlag, align 4, !dbg !1806
  %call17 = call i64 @LZ4F_makeBlock(i8* %14, i8* %16, i64 %18, i32 (i8*, i8*, i8*, i32, i32, i32, %struct.LZ4F_CDict_s*)* %19, i8* %21, i32 %23, %struct.LZ4F_CDict_s* %25, i32 %27), !dbg !1807
  %28 = load i8*, i8** %dstPtr, align 8, !dbg !1808
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %call17, !dbg !1808
  store i8* %add.ptr, i8** %dstPtr, align 8, !dbg !1808
  %29 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1809
  %prefs18 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %29, i32 0, i32 0, !dbg !1811
  %frameInfo19 = getelementptr inbounds %struct.LZ4F_preferences_t, %struct.LZ4F_preferences_t* %prefs18, i32 0, i32 0, !dbg !1812
  %blockMode20 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo19, i32 0, i32 1, !dbg !1813
  %30 = load i32, i32* %blockMode20, align 4, !dbg !1813
  %cmp21 = icmp eq i32 %30, 0, !dbg !1814
  br i1 %cmp21, label %if.then22, label %if.end26, !dbg !1815

if.then22:                                        ; preds = %if.end9
  %31 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1816
  %tmpInSize23 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %31, i32 0, i32 8, !dbg !1817
  %32 = load i64, i64* %tmpInSize23, align 8, !dbg !1817
  %33 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1818
  %tmpIn24 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %33, i32 0, i32 7, !dbg !1819
  %34 = load i8*, i8** %tmpIn24, align 8, !dbg !1820
  %add.ptr25 = getelementptr inbounds i8, i8* %34, i64 %32, !dbg !1820
  store i8* %add.ptr25, i8** %tmpIn24, align 8, !dbg !1820
  br label %if.end26, !dbg !1818

if.end26:                                         ; preds = %if.then22, %if.end9
  %35 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1821
  %tmpInSize27 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %35, i32 0, i32 8, !dbg !1822
  store i64 0, i64* %tmpInSize27, align 8, !dbg !1823
  %36 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1824
  %tmpIn28 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %36, i32 0, i32 7, !dbg !1826
  %37 = load i8*, i8** %tmpIn28, align 8, !dbg !1826
  %38 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1827
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %38, i32 0, i32 4, !dbg !1828
  %39 = load i64, i64* %maxBlockSize, align 8, !dbg !1828
  %add.ptr29 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !1829
  %40 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1830
  %tmpBuff = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %40, i32 0, i32 6, !dbg !1831
  %41 = load i8*, i8** %tmpBuff, align 8, !dbg !1831
  %42 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1832
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %42, i32 0, i32 5, !dbg !1833
  %43 = load i64, i64* %maxBufferSize, align 8, !dbg !1833
  %add.ptr30 = getelementptr inbounds i8, i8* %41, i64 %43, !dbg !1834
  %cmp31 = icmp ugt i8* %add.ptr29, %add.ptr30, !dbg !1835
  br i1 %cmp31, label %if.then32, label %if.end37, !dbg !1836

if.then32:                                        ; preds = %if.end26
  %44 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1837
  %call33 = call i32 @LZ4F_localSaveDict(%struct.LZ4F_cctx_s* %44), !dbg !1839
  store i32 %call33, i32* %realDictSize, align 4, !dbg !1840
  %45 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1841
  %tmpBuff34 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %45, i32 0, i32 6, !dbg !1842
  %46 = load i8*, i8** %tmpBuff34, align 8, !dbg !1842
  %47 = load i32, i32* %realDictSize, align 4, !dbg !1843
  %idx.ext = sext i32 %47 to i64, !dbg !1844
  %add.ptr35 = getelementptr inbounds i8, i8* %46, i64 %idx.ext, !dbg !1844
  %48 = load %struct.LZ4F_cctx_s*, %struct.LZ4F_cctx_s** %cctxPtr.addr, align 8, !dbg !1845
  %tmpIn36 = getelementptr inbounds %struct.LZ4F_cctx_s, %struct.LZ4F_cctx_s* %48, i32 0, i32 7, !dbg !1846
  store i8* %add.ptr35, i8** %tmpIn36, align 8, !dbg !1847
  br label %if.end37, !dbg !1848

if.end37:                                         ; preds = %if.then32, %if.end26
  %49 = load i8*, i8** %dstPtr, align 8, !dbg !1849
  %50 = load i8*, i8** %dstStart, align 8, !dbg !1850
  %sub.ptr.lhs.cast = ptrtoint i8* %49 to i64, !dbg !1851
  %sub.ptr.rhs.cast = ptrtoint i8* %50 to i64, !dbg !1851
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1851
  store i64 %sub.ptr.sub, i64* %retval, align 8, !dbg !1852
  br label %return, !dbg !1852

return:                                           ; preds = %if.end37, %if.then7, %if.then2, %if.then
  %51 = load i64, i64* %retval, align 8, !dbg !1853
  ret i64 %51, !dbg !1853
}

declare i32 @XXH32_digest(%struct.XXH32_state_s*) #3

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_createDecompressionContext(%struct.LZ4F_dctx_s** %LZ4F_decompressionContextPtr, i32 %versionNumber) #0 !dbg !1854 {
entry:
  %retval = alloca i64, align 8
  %LZ4F_decompressionContextPtr.addr = alloca %struct.LZ4F_dctx_s**, align 8
  %versionNumber.addr = alloca i32, align 4
  %dctx = alloca %struct.LZ4F_dctx_s*, align 8
  store %struct.LZ4F_dctx_s** %LZ4F_decompressionContextPtr, %struct.LZ4F_dctx_s*** %LZ4F_decompressionContextPtr.addr, align 8
  store i32 %versionNumber, i32* %versionNumber.addr, align 4
  %call = call noalias i8* @calloc(i64 1, i64 256) #7, !dbg !1858
  %0 = bitcast i8* %call to %struct.LZ4F_dctx_s*, !dbg !1859
  store %struct.LZ4F_dctx_s* %0, %struct.LZ4F_dctx_s** %dctx, align 8, !dbg !1860
  %1 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx, align 8, !dbg !1861
  %cmp = icmp eq %struct.LZ4F_dctx_s* %1, null, !dbg !1863
  br i1 %cmp, label %if.then, label %if.end, !dbg !1864

if.then:                                          ; preds = %entry
  %call1 = call i64 @err0r(i32 1), !dbg !1865
  store i64 %call1, i64* %retval, align 8, !dbg !1866
  br label %return, !dbg !1866

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %versionNumber.addr, align 4, !dbg !1867
  %3 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx, align 8, !dbg !1868
  %version = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %3, i32 0, i32 1, !dbg !1869
  store i32 %2, i32* %version, align 8, !dbg !1870
  %4 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx, align 8, !dbg !1871
  %5 = load %struct.LZ4F_dctx_s**, %struct.LZ4F_dctx_s*** %LZ4F_decompressionContextPtr.addr, align 8, !dbg !1872
  store %struct.LZ4F_dctx_s* %4, %struct.LZ4F_dctx_s** %5, align 8, !dbg !1873
  store i64 0, i64* %retval, align 8, !dbg !1874
  br label %return, !dbg !1874

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, i64* %retval, align 8, !dbg !1875
  ret i64 %6, !dbg !1875
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_freeDecompressionContext(%struct.LZ4F_dctx_s* %dctx) #0 !dbg !1876 {
entry:
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %result = alloca i64, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store i64 0, i64* %result, align 8, !dbg !1879
  %0 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1880
  %cmp = icmp ne %struct.LZ4F_dctx_s* %0, null, !dbg !1882
  br i1 %cmp, label %if.then, label %if.end, !dbg !1883

if.then:                                          ; preds = %entry
  %1 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1884
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %1, i32 0, i32 2, !dbg !1886
  %2 = load i32, i32* %dStage, align 4, !dbg !1886
  %conv = zext i32 %2 to i64, !dbg !1887
  store i64 %conv, i64* %result, align 8, !dbg !1888
  %3 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1889
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %3, i32 0, i32 6, !dbg !1889
  %4 = load i8*, i8** %tmpIn, align 8, !dbg !1889
  call void @free(i8* %4) #7, !dbg !1889
  %5 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1890
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %5, i32 0, i32 9, !dbg !1890
  %6 = load i8*, i8** %tmpOutBuffer, align 8, !dbg !1890
  call void @free(i8* %6) #7, !dbg !1890
  %7 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1891
  %8 = bitcast %struct.LZ4F_dctx_s* %7 to i8*, !dbg !1891
  call void @free(i8* %8) #7, !dbg !1891
  br label %if.end, !dbg !1892

if.end:                                           ; preds = %if.then, %entry
  %9 = load i64, i64* %result, align 8, !dbg !1893
  ret i64 %9, !dbg !1894
}

; Function Attrs: noinline nounwind optnone uwtable
define void @LZ4F_resetDecompressionContext(%struct.LZ4F_dctx_s* %dctx) #0 !dbg !1895 {
entry:
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  %0 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1898
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %0, i32 0, i32 2, !dbg !1899
  store i32 0, i32* %dStage, align 4, !dbg !1900
  %1 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1901
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %1, i32 0, i32 10, !dbg !1902
  store i8* null, i8** %dict, align 8, !dbg !1903
  %2 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1904
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %2, i32 0, i32 11, !dbg !1905
  store i64 0, i64* %dictSize, align 8, !dbg !1906
  ret void, !dbg !1907
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_getFrameInfo(%struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_frameInfo_t* %frameInfoPtr, i8* %srcBuffer, i64* %srcSizePtr) #0 !dbg !1908 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %frameInfoPtr.addr = alloca %struct.LZ4F_frameInfo_t*, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSizePtr.addr = alloca i64*, align 8
  %o = alloca i64, align 8
  %i = alloca i64, align 8
  %decodeResult = alloca i64, align 8
  %hSize = alloca i64, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store %struct.LZ4F_frameInfo_t* %frameInfoPtr, %struct.LZ4F_frameInfo_t** %frameInfoPtr.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64* %srcSizePtr, i64** %srcSizePtr.addr, align 8
  %0 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1913
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %0, i32 0, i32 2, !dbg !1915
  %1 = load i32, i32* %dStage, align 4, !dbg !1915
  %cmp = icmp ugt i32 %1, 1, !dbg !1916
  br i1 %cmp, label %if.then, label %if.else, !dbg !1917

if.then:                                          ; preds = %entry
  store i64 0, i64* %o, align 8, !dbg !1918
  store i64 0, i64* %i, align 8, !dbg !1920
  %2 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1921
  store i64 0, i64* %2, align 8, !dbg !1922
  %3 = load %struct.LZ4F_frameInfo_t*, %struct.LZ4F_frameInfo_t** %frameInfoPtr.addr, align 8, !dbg !1923
  %4 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1924
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %4, i32 0, i32 0, !dbg !1925
  %5 = bitcast %struct.LZ4F_frameInfo_t* %3 to i8*, !dbg !1925
  %6 = bitcast %struct.LZ4F_frameInfo_t* %frameInfo to i8*, !dbg !1925
  %7 = call i8* @memcpy(i8* %5, i8* %6, i64 32), !dbg !1925
  %8 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1926
  %call = call i64 @LZ4F_decompress(%struct.LZ4F_dctx_s* %8, i8* null, i64* %o, i8* null, i64* %i, %struct.LZ4F_decompressOptions_t* null), !dbg !1927
  store i64 %call, i64* %retval, align 8, !dbg !1928
  br label %return, !dbg !1928

if.else:                                          ; preds = %entry
  %9 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1929
  %dStage1 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %9, i32 0, i32 2, !dbg !1932
  %10 = load i32, i32* %dStage1, align 4, !dbg !1932
  %cmp2 = icmp eq i32 %10, 1, !dbg !1933
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !1934

if.then3:                                         ; preds = %if.else
  %11 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1935
  store i64 0, i64* %11, align 8, !dbg !1937
  %call4 = call i64 @err0r(i32 19), !dbg !1938
  store i64 %call4, i64* %retval, align 8, !dbg !1939
  br label %return, !dbg !1939

if.else5:                                         ; preds = %if.else
  %12 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1940
  %13 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1942
  %14 = load i64, i64* %13, align 8, !dbg !1943
  %call6 = call i64 @LZ4F_headerSize(i8* %12, i64 %14), !dbg !1944
  store i64 %call6, i64* %hSize, align 8, !dbg !1945
  %15 = load i64, i64* %hSize, align 8, !dbg !1946
  %call7 = call i32 @LZ4F_isError(i64 %15), !dbg !1948
  %tobool = icmp ne i32 %call7, 0, !dbg !1948
  br i1 %tobool, label %if.then8, label %if.end, !dbg !1949

if.then8:                                         ; preds = %if.else5
  %16 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1950
  store i64 0, i64* %16, align 8, !dbg !1952
  %17 = load i64, i64* %hSize, align 8, !dbg !1953
  store i64 %17, i64* %retval, align 8, !dbg !1954
  br label %return, !dbg !1954

if.end:                                           ; preds = %if.else5
  %18 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1955
  %19 = load i64, i64* %18, align 8, !dbg !1957
  %20 = load i64, i64* %hSize, align 8, !dbg !1958
  %cmp9 = icmp ult i64 %19, %20, !dbg !1959
  br i1 %cmp9, label %if.then10, label %if.end12, !dbg !1960

if.then10:                                        ; preds = %if.end
  %21 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1961
  store i64 0, i64* %21, align 8, !dbg !1963
  %call11 = call i64 @err0r(i32 12), !dbg !1964
  store i64 %call11, i64* %retval, align 8, !dbg !1965
  br label %return, !dbg !1965

if.end12:                                         ; preds = %if.end
  %22 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1966
  %23 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !1967
  %24 = load i64, i64* %hSize, align 8, !dbg !1968
  %call13 = call i64 @LZ4F_decodeHeader(%struct.LZ4F_dctx_s* %22, i8* %23, i64 %24), !dbg !1969
  store i64 %call13, i64* %decodeResult, align 8, !dbg !1970
  %25 = load i64, i64* %decodeResult, align 8, !dbg !1971
  %call14 = call i32 @LZ4F_isError(i64 %25), !dbg !1973
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1973
  br i1 %tobool15, label %if.then16, label %if.else17, !dbg !1974

if.then16:                                        ; preds = %if.end12
  %26 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1975
  store i64 0, i64* %26, align 8, !dbg !1977
  br label %if.end18, !dbg !1978

if.else17:                                        ; preds = %if.end12
  %27 = load i64, i64* %decodeResult, align 8, !dbg !1979
  %28 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !1981
  store i64 %27, i64* %28, align 8, !dbg !1982
  store i64 4, i64* %decodeResult, align 8, !dbg !1983
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  %29 = load %struct.LZ4F_frameInfo_t*, %struct.LZ4F_frameInfo_t** %frameInfoPtr.addr, align 8, !dbg !1984
  %30 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !1985
  %frameInfo19 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %30, i32 0, i32 0, !dbg !1986
  %31 = bitcast %struct.LZ4F_frameInfo_t* %29 to i8*, !dbg !1986
  %32 = bitcast %struct.LZ4F_frameInfo_t* %frameInfo19 to i8*, !dbg !1986
  %33 = call i8* @memcpy(i8* %31, i8* %32, i64 32), !dbg !1986
  %34 = load i64, i64* %decodeResult, align 8, !dbg !1987
  store i64 %34, i64* %retval, align 8, !dbg !1988
  br label %return, !dbg !1988

return:                                           ; preds = %if.end18, %if.then10, %if.then8, %if.then3, %if.then
  %35 = load i64, i64* %retval, align 8, !dbg !1989
  ret i64 %35, !dbg !1989
}

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_decompress(%struct.LZ4F_dctx_s* %dctx, i8* %dstBuffer, i64* %dstSizePtr, i8* %srcBuffer, i64* %srcSizePtr, %struct.LZ4F_decompressOptions_t* %decompressOptionsPtr) #0 !dbg !1990 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstSizePtr.addr = alloca i64*, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSizePtr.addr = alloca i64*, align 8
  %decompressOptionsPtr.addr = alloca %struct.LZ4F_decompressOptions_t*, align 8
  %optionsNull = alloca %struct.LZ4F_decompressOptions_t, align 4
  %srcStart = alloca i8*, align 8
  %srcEnd = alloca i8*, align 8
  %srcPtr = alloca i8*, align 8
  %dstStart = alloca i8*, align 8
  %dstEnd = alloca i8*, align 8
  %dstPtr = alloca i8*, align 8
  %selectedIn = alloca i8*, align 8
  %doAnotherStage = alloca i32, align 4
  %nextSrcSizeHint = alloca i64, align 8
  %hSize = alloca i64, align 8
  %sizeToCopy = alloca i64, align 8
  %hSize46 = alloca i64, align 8
  %bufferNeeded = alloca i64, align 8
  %remainingInput = alloca i64, align 8
  %wantedData = alloca i64, align 8
  %sizeToCopy114 = alloca i64, align 8
  %nextCBlockSize = alloca i64, align 8
  %crcSize = alloca i64, align 8
  %minBuffSize = alloca i64, align 8
  %sizeToCopy193 = alloca i64, align 8
  %crcSrc = alloca i8*, align 8
  %stillToCopy = alloca i64, align 8
  %sizeToCopy266 = alloca i64, align 8
  %readCRC = alloca i32, align 4
  %calcCRC = alloca i32, align 4
  %wantedData318 = alloca i64, align 8
  %inputLeft = alloca i64, align 8
  %sizeToCopy325 = alloca i64, align 8
  %readBlockCrc = alloca i32, align 4
  %calcBlockCrc = alloca i32, align 4
  %dict = alloca i8*, align 8
  %dictSize = alloca i64, align 8
  %decodedSize = alloca i32, align 4
  %reservedDictSpace = alloca i64, align 8
  %dict465 = alloca i8*, align 8
  %dictSize467 = alloca i64, align 8
  %decodedSize469 = alloca i32, align 4
  %sizeToCopy512 = alloca i64, align 8
  %remainingInput577 = alloca i64, align 8
  %wantedData581 = alloca i64, align 8
  %sizeToCopy584 = alloca i64, align 8
  %readCRC606 = alloca i32, align 4
  %resultCRC = alloca i32, align 4
  %sizeToCopy633 = alloca i64, align 8
  %SFrameSize = alloca i64, align 8
  %skipSize = alloca i64, align 8
  %preserveSize = alloca i64, align 8
  %copySize = alloca i64, align 8
  %oldDictEnd = alloca i8*, align 8
  %oldDictEnd758 = alloca i8*, align 8
  %newDictSize = alloca i64, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64* %dstSizePtr, i64** %dstSizePtr.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64* %srcSizePtr, i64** %srcSizePtr.addr, align 8
  store %struct.LZ4F_decompressOptions_t* %decompressOptionsPtr, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8
  %0 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !2000
  store i8* %0, i8** %srcStart, align 8, !dbg !2001
  %1 = load i8*, i8** %srcStart, align 8, !dbg !2002
  %2 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !2003
  %3 = load i64, i64* %2, align 8, !dbg !2004
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %3, !dbg !2005
  store i8* %add.ptr, i8** %srcEnd, align 8, !dbg !2006
  %4 = load i8*, i8** %srcStart, align 8, !dbg !2007
  store i8* %4, i8** %srcPtr, align 8, !dbg !2008
  %5 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !2009
  store i8* %5, i8** %dstStart, align 8, !dbg !2010
  %6 = load i8*, i8** %dstStart, align 8, !dbg !2011
  %7 = load i64*, i64** %dstSizePtr.addr, align 8, !dbg !2012
  %8 = load i64, i64* %7, align 8, !dbg !2013
  %add.ptr1 = getelementptr inbounds i8, i8* %6, i64 %8, !dbg !2014
  store i8* %add.ptr1, i8** %dstEnd, align 8, !dbg !2015
  %9 = load i8*, i8** %dstStart, align 8, !dbg !2016
  store i8* %9, i8** %dstPtr, align 8, !dbg !2017
  store i8* null, i8** %selectedIn, align 8, !dbg !2018
  store i32 1, i32* %doAnotherStage, align 4, !dbg !2019
  store i64 1, i64* %nextSrcSizeHint, align 8, !dbg !2020
  %10 = bitcast %struct.LZ4F_decompressOptions_t* %optionsNull to i8*, !dbg !2021
  %11 = call i8* @memset(i8* %10, i32 0, i64 16), !dbg !2021
  %12 = load %struct.LZ4F_decompressOptions_t*, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8, !dbg !2022
  %cmp = icmp eq %struct.LZ4F_decompressOptions_t* %12, null, !dbg !2024
  br i1 %cmp, label %if.then, label %if.end, !dbg !2025

if.then:                                          ; preds = %entry
  store %struct.LZ4F_decompressOptions_t* %optionsNull, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8, !dbg !2026
  br label %if.end, !dbg !2027

if.end:                                           ; preds = %if.then, %entry
  %13 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !2028
  store i64 0, i64* %13, align 8, !dbg !2029
  %14 = load i64*, i64** %dstSizePtr.addr, align 8, !dbg !2030
  store i64 0, i64* %14, align 8, !dbg !2031
  br label %while.cond, !dbg !2032

while.cond:                                       ; preds = %sw.epilog, %if.end
  %15 = load i32, i32* %doAnotherStage, align 4, !dbg !2033
  %tobool = icmp ne i32 %15, 0, !dbg !2032
  br i1 %tobool, label %while.body, label %while.end, !dbg !2032

while.body:                                       ; preds = %while.cond
  %16 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2034
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %16, i32 0, i32 2, !dbg !2036
  %17 = load i32, i32* %dStage, align 4, !dbg !2036
  switch i32 %17, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb20
    i32 2, label %sw.bb55
    i32 3, label %sw.bb93
    i32 4, label %sw.bb108
    i32 5, label %sw.bb174
    i32 6, label %sw.bb252
    i32 7, label %sw.bb303
    i32 8, label %sw.bb317
    i32 9, label %sw.bb511
    i32 10, label %sw.bb550
    i32 11, label %sw.bb576
    i32 12, label %sw.bb615
    i32 13, label %sw.bb632
    i32 14, label %sw.bb678
  ], !dbg !2037

sw.bb:                                            ; preds = %while.body
  %18 = load i8*, i8** %srcEnd, align 8, !dbg !2038
  %19 = load i8*, i8** %srcPtr, align 8, !dbg !2041
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64, !dbg !2042
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64, !dbg !2042
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2042
  %cmp2 = icmp uge i64 %sub.ptr.sub, 19, !dbg !2043
  br i1 %cmp2, label %if.then3, label %if.end12, !dbg !2044

if.then3:                                         ; preds = %sw.bb
  %20 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2045
  %21 = load i8*, i8** %srcPtr, align 8, !dbg !2047
  %22 = load i8*, i8** %srcEnd, align 8, !dbg !2048
  %23 = load i8*, i8** %srcPtr, align 8, !dbg !2049
  %sub.ptr.lhs.cast4 = ptrtoint i8* %22 to i64, !dbg !2050
  %sub.ptr.rhs.cast5 = ptrtoint i8* %23 to i64, !dbg !2050
  %sub.ptr.sub6 = sub i64 %sub.ptr.lhs.cast4, %sub.ptr.rhs.cast5, !dbg !2050
  %call = call i64 @LZ4F_decodeHeader(%struct.LZ4F_dctx_s* %20, i8* %21, i64 %sub.ptr.sub6), !dbg !2051
  store i64 %call, i64* %hSize, align 8, !dbg !2052
  %24 = load i64, i64* %hSize, align 8, !dbg !2053
  %call7 = call i32 @LZ4F_isError(i64 %24), !dbg !2055
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2055
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2056

if.then9:                                         ; preds = %if.then3
  %25 = load i64, i64* %hSize, align 8, !dbg !2057
  store i64 %25, i64* %retval, align 8, !dbg !2058
  br label %return, !dbg !2058

if.end10:                                         ; preds = %if.then3
  %26 = load i64, i64* %hSize, align 8, !dbg !2059
  %27 = load i8*, i8** %srcPtr, align 8, !dbg !2060
  %add.ptr11 = getelementptr inbounds i8, i8* %27, i64 %26, !dbg !2060
  store i8* %add.ptr11, i8** %srcPtr, align 8, !dbg !2060
  br label %sw.epilog, !dbg !2061

if.end12:                                         ; preds = %sw.bb
  %28 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2062
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %28, i32 0, i32 7, !dbg !2063
  store i64 0, i64* %tmpInSize, align 8, !dbg !2064
  %29 = load i8*, i8** %srcEnd, align 8, !dbg !2065
  %30 = load i8*, i8** %srcPtr, align 8, !dbg !2067
  %sub.ptr.lhs.cast13 = ptrtoint i8* %29 to i64, !dbg !2068
  %sub.ptr.rhs.cast14 = ptrtoint i8* %30 to i64, !dbg !2068
  %sub.ptr.sub15 = sub i64 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14, !dbg !2068
  %cmp16 = icmp eq i64 %sub.ptr.sub15, 0, !dbg !2069
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2070

if.then17:                                        ; preds = %if.end12
  store i64 7, i64* %retval, align 8, !dbg !2071
  br label %return, !dbg !2071

if.end18:                                         ; preds = %if.end12
  %31 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2072
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %31, i32 0, i32 8, !dbg !2073
  store i64 7, i64* %tmpInTarget, align 8, !dbg !2074
  %32 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2075
  %dStage19 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %32, i32 0, i32 2, !dbg !2076
  store i32 1, i32* %dStage19, align 4, !dbg !2077
  br label %sw.bb20, !dbg !2075

sw.bb20:                                          ; preds = %while.body, %if.end18
  %33 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2078
  %tmpInTarget21 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %33, i32 0, i32 8, !dbg !2078
  %34 = load i64, i64* %tmpInTarget21, align 8, !dbg !2078
  %35 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2078
  %tmpInSize22 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %35, i32 0, i32 7, !dbg !2078
  %36 = load i64, i64* %tmpInSize22, align 8, !dbg !2078
  %sub = sub i64 %34, %36, !dbg !2078
  %37 = load i8*, i8** %srcEnd, align 8, !dbg !2078
  %38 = load i8*, i8** %srcPtr, align 8, !dbg !2078
  %sub.ptr.lhs.cast23 = ptrtoint i8* %37 to i64, !dbg !2078
  %sub.ptr.rhs.cast24 = ptrtoint i8* %38 to i64, !dbg !2078
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24, !dbg !2078
  %cmp26 = icmp ult i64 %sub, %sub.ptr.sub25, !dbg !2078
  br i1 %cmp26, label %cond.true, label %cond.false, !dbg !2078

cond.true:                                        ; preds = %sw.bb20
  %39 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2078
  %tmpInTarget27 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %39, i32 0, i32 8, !dbg !2078
  %40 = load i64, i64* %tmpInTarget27, align 8, !dbg !2078
  %41 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2078
  %tmpInSize28 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %41, i32 0, i32 7, !dbg !2078
  %42 = load i64, i64* %tmpInSize28, align 8, !dbg !2078
  %sub29 = sub i64 %40, %42, !dbg !2078
  br label %cond.end, !dbg !2078

cond.false:                                       ; preds = %sw.bb20
  %43 = load i8*, i8** %srcEnd, align 8, !dbg !2078
  %44 = load i8*, i8** %srcPtr, align 8, !dbg !2078
  %sub.ptr.lhs.cast30 = ptrtoint i8* %43 to i64, !dbg !2078
  %sub.ptr.rhs.cast31 = ptrtoint i8* %44 to i64, !dbg !2078
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31, !dbg !2078
  br label %cond.end, !dbg !2078

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub29, %cond.true ], [ %sub.ptr.sub32, %cond.false ], !dbg !2078
  store i64 %cond, i64* %sizeToCopy, align 8, !dbg !2080
  %45 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2081
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %45, i32 0, i32 17, !dbg !2082
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %header, i32 0, i32 0, !dbg !2081
  %46 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2083
  %tmpInSize33 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %46, i32 0, i32 7, !dbg !2084
  %47 = load i64, i64* %tmpInSize33, align 8, !dbg !2084
  %add.ptr34 = getelementptr inbounds i8, i8* %arraydecay, i64 %47, !dbg !2085
  %48 = load i8*, i8** %srcPtr, align 8, !dbg !2086
  %49 = load i64, i64* %sizeToCopy, align 8, !dbg !2087
  %50 = call i8* @memcpy(i8* %add.ptr34, i8* %48, i64 %49), !dbg !2088
  %51 = load i64, i64* %sizeToCopy, align 8, !dbg !2089
  %52 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2090
  %tmpInSize35 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %52, i32 0, i32 7, !dbg !2091
  %53 = load i64, i64* %tmpInSize35, align 8, !dbg !2092
  %add = add i64 %53, %51, !dbg !2092
  store i64 %add, i64* %tmpInSize35, align 8, !dbg !2092
  %54 = load i64, i64* %sizeToCopy, align 8, !dbg !2093
  %55 = load i8*, i8** %srcPtr, align 8, !dbg !2094
  %add.ptr36 = getelementptr inbounds i8, i8* %55, i64 %54, !dbg !2094
  store i8* %add.ptr36, i8** %srcPtr, align 8, !dbg !2094
  %56 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2095
  %tmpInSize37 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %56, i32 0, i32 7, !dbg !2097
  %57 = load i64, i64* %tmpInSize37, align 8, !dbg !2097
  %58 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2098
  %tmpInTarget38 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %58, i32 0, i32 8, !dbg !2099
  %59 = load i64, i64* %tmpInTarget38, align 8, !dbg !2099
  %cmp39 = icmp ult i64 %57, %59, !dbg !2100
  br i1 %cmp39, label %if.then40, label %if.end45, !dbg !2101

if.then40:                                        ; preds = %cond.end
  %60 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2102
  %tmpInTarget41 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %60, i32 0, i32 8, !dbg !2104
  %61 = load i64, i64* %tmpInTarget41, align 8, !dbg !2104
  %62 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2105
  %tmpInSize42 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %62, i32 0, i32 7, !dbg !2106
  %63 = load i64, i64* %tmpInSize42, align 8, !dbg !2106
  %sub43 = sub i64 %61, %63, !dbg !2107
  %add44 = add i64 %sub43, 4, !dbg !2108
  store i64 %add44, i64* %nextSrcSizeHint, align 8, !dbg !2109
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2110
  br label %sw.epilog, !dbg !2111

if.end45:                                         ; preds = %cond.end
  %64 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2112
  %65 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2114
  %header47 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %65, i32 0, i32 17, !dbg !2115
  %arraydecay48 = getelementptr inbounds [19 x i8], [19 x i8]* %header47, i32 0, i32 0, !dbg !2114
  %66 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2116
  %tmpInTarget49 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %66, i32 0, i32 8, !dbg !2117
  %67 = load i64, i64* %tmpInTarget49, align 8, !dbg !2117
  %call50 = call i64 @LZ4F_decodeHeader(%struct.LZ4F_dctx_s* %64, i8* %arraydecay48, i64 %67), !dbg !2118
  store i64 %call50, i64* %hSize46, align 8, !dbg !2119
  %68 = load i64, i64* %hSize46, align 8, !dbg !2120
  %call51 = call i32 @LZ4F_isError(i64 %68), !dbg !2122
  %tobool52 = icmp ne i32 %call51, 0, !dbg !2122
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !2123

if.then53:                                        ; preds = %if.end45
  %69 = load i64, i64* %hSize46, align 8, !dbg !2124
  store i64 %69, i64* %retval, align 8, !dbg !2125
  br label %return, !dbg !2125

if.end54:                                         ; preds = %if.end45
  br label %sw.epilog, !dbg !2126

sw.bb55:                                          ; preds = %while.body
  %70 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2127
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %70, i32 0, i32 0, !dbg !2129
  %contentChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo, i32 0, i32 2, !dbg !2130
  %71 = load i32, i32* %contentChecksumFlag, align 8, !dbg !2130
  %tobool56 = icmp ne i32 %71, 0, !dbg !2127
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !2131

if.then57:                                        ; preds = %sw.bb55
  %72 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2132
  %xxh = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %72, i32 0, i32 15, !dbg !2133
  %call58 = call i32 @XXH32_reset(%struct.XXH32_state_s* %xxh, i32 0), !dbg !2134
  br label %if.end59, !dbg !2135

if.end59:                                         ; preds = %if.then57, %sw.bb55
  %73 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2136
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %73, i32 0, i32 4, !dbg !2138
  %74 = load i64, i64* %maxBlockSize, align 8, !dbg !2138
  %75 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2139
  %frameInfo60 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %75, i32 0, i32 0, !dbg !2140
  %blockMode = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo60, i32 0, i32 1, !dbg !2141
  %76 = load i32, i32* %blockMode, align 4, !dbg !2141
  %cmp61 = icmp eq i32 %76, 0, !dbg !2142
  %conv = zext i1 %cmp61 to i32, !dbg !2142
  %mul = mul nsw i32 %conv, 128, !dbg !2143
  %mul62 = mul nsw i32 %mul, 1024, !dbg !2144
  %conv63 = sext i32 %mul62 to i64, !dbg !2145
  %add64 = add i64 %74, %conv63, !dbg !2146
  store i64 %add64, i64* %bufferNeeded, align 8, !dbg !2147
  %77 = load i64, i64* %bufferNeeded, align 8, !dbg !2148
  %78 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2150
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %78, i32 0, i32 5, !dbg !2151
  %79 = load i64, i64* %maxBufferSize, align 8, !dbg !2151
  %cmp65 = icmp ugt i64 %77, %79, !dbg !2152
  br i1 %cmp65, label %if.then67, label %if.end88, !dbg !2153

if.then67:                                        ; preds = %if.end59
  %80 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2154
  %maxBufferSize68 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %80, i32 0, i32 5, !dbg !2156
  store i64 0, i64* %maxBufferSize68, align 8, !dbg !2157
  %81 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2158
  %tmpIn = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %81, i32 0, i32 6, !dbg !2158
  %82 = load i8*, i8** %tmpIn, align 8, !dbg !2158
  call void @free(i8* %82) #7, !dbg !2158
  %83 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2159
  %maxBlockSize69 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %83, i32 0, i32 4, !dbg !2159
  %84 = load i64, i64* %maxBlockSize69, align 8, !dbg !2159
  %add70 = add i64 %84, 4, !dbg !2159
  %call71 = call noalias i8* @malloc(i64 %add70) #7, !dbg !2159
  %85 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2160
  %tmpIn72 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %85, i32 0, i32 6, !dbg !2161
  store i8* %call71, i8** %tmpIn72, align 8, !dbg !2162
  %86 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2163
  %tmpIn73 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %86, i32 0, i32 6, !dbg !2165
  %87 = load i8*, i8** %tmpIn73, align 8, !dbg !2165
  %cmp74 = icmp eq i8* %87, null, !dbg !2166
  br i1 %cmp74, label %if.then76, label %if.end78, !dbg !2167

if.then76:                                        ; preds = %if.then67
  %call77 = call i64 @err0r(i32 9), !dbg !2168
  store i64 %call77, i64* %retval, align 8, !dbg !2169
  br label %return, !dbg !2169

if.end78:                                         ; preds = %if.then67
  %88 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2170
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %88, i32 0, i32 9, !dbg !2170
  %89 = load i8*, i8** %tmpOutBuffer, align 8, !dbg !2170
  call void @free(i8* %89) #7, !dbg !2170
  %90 = load i64, i64* %bufferNeeded, align 8, !dbg !2171
  %call79 = call noalias i8* @malloc(i64 %90) #7, !dbg !2171
  %91 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2172
  %tmpOutBuffer80 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %91, i32 0, i32 9, !dbg !2173
  store i8* %call79, i8** %tmpOutBuffer80, align 8, !dbg !2174
  %92 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2175
  %tmpOutBuffer81 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %92, i32 0, i32 9, !dbg !2177
  %93 = load i8*, i8** %tmpOutBuffer81, align 8, !dbg !2177
  %cmp82 = icmp eq i8* %93, null, !dbg !2178
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !2179

if.then84:                                        ; preds = %if.end78
  %call85 = call i64 @err0r(i32 9), !dbg !2180
  store i64 %call85, i64* %retval, align 8, !dbg !2181
  br label %return, !dbg !2181

if.end86:                                         ; preds = %if.end78
  %94 = load i64, i64* %bufferNeeded, align 8, !dbg !2182
  %95 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2183
  %maxBufferSize87 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %95, i32 0, i32 5, !dbg !2184
  store i64 %94, i64* %maxBufferSize87, align 8, !dbg !2185
  br label %if.end88, !dbg !2186

if.end88:                                         ; preds = %if.end86, %if.end59
  %96 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2187
  %tmpInSize89 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %96, i32 0, i32 7, !dbg !2188
  store i64 0, i64* %tmpInSize89, align 8, !dbg !2189
  %97 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2190
  %tmpInTarget90 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %97, i32 0, i32 8, !dbg !2191
  store i64 0, i64* %tmpInTarget90, align 8, !dbg !2192
  %98 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2193
  %tmpOutBuffer91 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %98, i32 0, i32 9, !dbg !2194
  %99 = load i8*, i8** %tmpOutBuffer91, align 8, !dbg !2194
  %100 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2195
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %100, i32 0, i32 12, !dbg !2196
  store i8* %99, i8** %tmpOut, align 8, !dbg !2197
  %101 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2198
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %101, i32 0, i32 14, !dbg !2199
  store i64 0, i64* %tmpOutStart, align 8, !dbg !2200
  %102 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2201
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %102, i32 0, i32 13, !dbg !2202
  store i64 0, i64* %tmpOutSize, align 8, !dbg !2203
  %103 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2204
  %dStage92 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %103, i32 0, i32 2, !dbg !2205
  store i32 3, i32* %dStage92, align 4, !dbg !2206
  br label %sw.bb93, !dbg !2204

sw.bb93:                                          ; preds = %while.body, %if.end88
  %104 = load i8*, i8** %srcEnd, align 8, !dbg !2207
  %105 = load i8*, i8** %srcPtr, align 8, !dbg !2209
  %sub.ptr.lhs.cast94 = ptrtoint i8* %104 to i64, !dbg !2210
  %sub.ptr.rhs.cast95 = ptrtoint i8* %105 to i64, !dbg !2210
  %sub.ptr.sub96 = sub i64 %sub.ptr.lhs.cast94, %sub.ptr.rhs.cast95, !dbg !2210
  %cmp97 = icmp uge i64 %sub.ptr.sub96, 4, !dbg !2211
  br i1 %cmp97, label %if.then99, label %if.else, !dbg !2212

if.then99:                                        ; preds = %sw.bb93
  %106 = load i8*, i8** %srcPtr, align 8, !dbg !2213
  store i8* %106, i8** %selectedIn, align 8, !dbg !2215
  %107 = load i8*, i8** %srcPtr, align 8, !dbg !2216
  %add.ptr100 = getelementptr inbounds i8, i8* %107, i64 4, !dbg !2216
  store i8* %add.ptr100, i8** %srcPtr, align 8, !dbg !2216
  br label %if.end103, !dbg !2217

if.else:                                          ; preds = %sw.bb93
  %108 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2218
  %tmpInSize101 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %108, i32 0, i32 7, !dbg !2220
  store i64 0, i64* %tmpInSize101, align 8, !dbg !2221
  %109 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2222
  %dStage102 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %109, i32 0, i32 2, !dbg !2223
  store i32 4, i32* %dStage102, align 4, !dbg !2224
  br label %if.end103

if.end103:                                        ; preds = %if.else, %if.then99
  %110 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2225
  %dStage104 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %110, i32 0, i32 2, !dbg !2227
  %111 = load i32, i32* %dStage104, align 4, !dbg !2227
  %cmp105 = icmp eq i32 %111, 4, !dbg !2228
  br i1 %cmp105, label %if.then107, label %if.end135, !dbg !2229

if.then107:                                       ; preds = %if.end103
  br label %sw.bb108, !dbg !2229

sw.bb108:                                         ; preds = %while.body, %if.then107
  %112 = load i8*, i8** %srcEnd, align 8, !dbg !2230
  %113 = load i8*, i8** %srcPtr, align 8, !dbg !2232
  %sub.ptr.lhs.cast109 = ptrtoint i8* %112 to i64, !dbg !2233
  %sub.ptr.rhs.cast110 = ptrtoint i8* %113 to i64, !dbg !2233
  %sub.ptr.sub111 = sub i64 %sub.ptr.lhs.cast109, %sub.ptr.rhs.cast110, !dbg !2233
  store i64 %sub.ptr.sub111, i64* %remainingInput, align 8, !dbg !2234
  %114 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2235
  %tmpInSize112 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %114, i32 0, i32 7, !dbg !2236
  %115 = load i64, i64* %tmpInSize112, align 8, !dbg !2236
  %sub113 = sub i64 4, %115, !dbg !2237
  store i64 %sub113, i64* %wantedData, align 8, !dbg !2238
  %116 = load i64, i64* %wantedData, align 8, !dbg !2239
  %117 = load i64, i64* %remainingInput, align 8, !dbg !2239
  %cmp115 = icmp ult i64 %116, %117, !dbg !2239
  br i1 %cmp115, label %cond.true117, label %cond.false118, !dbg !2239

cond.true117:                                     ; preds = %sw.bb108
  %118 = load i64, i64* %wantedData, align 8, !dbg !2239
  br label %cond.end119, !dbg !2239

cond.false118:                                    ; preds = %sw.bb108
  %119 = load i64, i64* %remainingInput, align 8, !dbg !2239
  br label %cond.end119, !dbg !2239

cond.end119:                                      ; preds = %cond.false118, %cond.true117
  %cond120 = phi i64 [ %118, %cond.true117 ], [ %119, %cond.false118 ], !dbg !2239
  store i64 %cond120, i64* %sizeToCopy114, align 8, !dbg !2240
  %120 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2241
  %tmpIn121 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %120, i32 0, i32 6, !dbg !2242
  %121 = load i8*, i8** %tmpIn121, align 8, !dbg !2242
  %122 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2243
  %tmpInSize122 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %122, i32 0, i32 7, !dbg !2244
  %123 = load i64, i64* %tmpInSize122, align 8, !dbg !2244
  %add.ptr123 = getelementptr inbounds i8, i8* %121, i64 %123, !dbg !2245
  %124 = load i8*, i8** %srcPtr, align 8, !dbg !2246
  %125 = load i64, i64* %sizeToCopy114, align 8, !dbg !2247
  %126 = call i8* @memcpy(i8* %add.ptr123, i8* %124, i64 %125), !dbg !2248
  %127 = load i64, i64* %sizeToCopy114, align 8, !dbg !2249
  %128 = load i8*, i8** %srcPtr, align 8, !dbg !2250
  %add.ptr124 = getelementptr inbounds i8, i8* %128, i64 %127, !dbg !2250
  store i8* %add.ptr124, i8** %srcPtr, align 8, !dbg !2250
  %129 = load i64, i64* %sizeToCopy114, align 8, !dbg !2251
  %130 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2252
  %tmpInSize125 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %130, i32 0, i32 7, !dbg !2253
  %131 = load i64, i64* %tmpInSize125, align 8, !dbg !2254
  %add126 = add i64 %131, %129, !dbg !2254
  store i64 %add126, i64* %tmpInSize125, align 8, !dbg !2254
  %132 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2255
  %tmpInSize127 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %132, i32 0, i32 7, !dbg !2257
  %133 = load i64, i64* %tmpInSize127, align 8, !dbg !2257
  %cmp128 = icmp ult i64 %133, 4, !dbg !2258
  br i1 %cmp128, label %if.then130, label %if.end133, !dbg !2259

if.then130:                                       ; preds = %cond.end119
  %134 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2260
  %tmpInSize131 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %134, i32 0, i32 7, !dbg !2262
  %135 = load i64, i64* %tmpInSize131, align 8, !dbg !2262
  %sub132 = sub i64 4, %135, !dbg !2263
  store i64 %sub132, i64* %nextSrcSizeHint, align 8, !dbg !2264
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2265
  br label %sw.epilog, !dbg !2266

if.end133:                                        ; preds = %cond.end119
  %136 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2267
  %tmpIn134 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %136, i32 0, i32 6, !dbg !2268
  %137 = load i8*, i8** %tmpIn134, align 8, !dbg !2268
  store i8* %137, i8** %selectedIn, align 8, !dbg !2269
  br label %if.end135, !dbg !2270

if.end135:                                        ; preds = %if.end133, %if.end103
  %138 = load i8*, i8** %selectedIn, align 8, !dbg !2271
  %call136 = call i32 @LZ4F_readLE32(i8* %138), !dbg !2273
  %and = and i32 %call136, 2147483647, !dbg !2274
  %conv137 = zext i32 %and to i64, !dbg !2273
  store i64 %conv137, i64* %nextCBlockSize, align 8, !dbg !2275
  %139 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2276
  %frameInfo138 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %139, i32 0, i32 0, !dbg !2277
  %blockChecksumFlag = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo138, i32 0, i32 6, !dbg !2278
  %140 = load i32, i32* %blockChecksumFlag, align 4, !dbg !2278
  %conv139 = zext i32 %140 to i64, !dbg !2276
  %mul140 = mul i64 %conv139, 4, !dbg !2279
  store i64 %mul140, i64* %crcSize, align 8, !dbg !2280
  %141 = load i64, i64* %nextCBlockSize, align 8, !dbg !2281
  %cmp141 = icmp eq i64 %141, 0, !dbg !2283
  br i1 %cmp141, label %if.then143, label %if.end145, !dbg !2284

if.then143:                                       ; preds = %if.end135
  %142 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2285
  %dStage144 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %142, i32 0, i32 2, !dbg !2287
  store i32 10, i32* %dStage144, align 4, !dbg !2288
  br label %sw.epilog, !dbg !2289

if.end145:                                        ; preds = %if.end135
  %143 = load i64, i64* %nextCBlockSize, align 8, !dbg !2290
  %144 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2292
  %maxBlockSize146 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %144, i32 0, i32 4, !dbg !2293
  %145 = load i64, i64* %maxBlockSize146, align 8, !dbg !2293
  %cmp147 = icmp ugt i64 %143, %145, !dbg !2294
  br i1 %cmp147, label %if.then149, label %if.end151, !dbg !2295

if.then149:                                       ; preds = %if.end145
  %call150 = call i64 @err0r(i32 2), !dbg !2296
  store i64 %call150, i64* %retval, align 8, !dbg !2297
  br label %return, !dbg !2297

if.end151:                                        ; preds = %if.end145
  %146 = load i8*, i8** %selectedIn, align 8, !dbg !2298
  %call152 = call i32 @LZ4F_readLE32(i8* %146), !dbg !2300
  %and153 = and i32 %call152, -2147483648, !dbg !2301
  %tobool154 = icmp ne i32 %and153, 0, !dbg !2301
  br i1 %tobool154, label %if.then155, label %if.end164, !dbg !2302

if.then155:                                       ; preds = %if.end151
  %147 = load i64, i64* %nextCBlockSize, align 8, !dbg !2303
  %148 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2305
  %tmpInTarget156 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %148, i32 0, i32 8, !dbg !2306
  store i64 %147, i64* %tmpInTarget156, align 8, !dbg !2307
  %149 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2308
  %frameInfo157 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %149, i32 0, i32 0, !dbg !2310
  %blockChecksumFlag158 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo157, i32 0, i32 6, !dbg !2311
  %150 = load i32, i32* %blockChecksumFlag158, align 4, !dbg !2311
  %tobool159 = icmp ne i32 %150, 0, !dbg !2308
  br i1 %tobool159, label %if.then160, label %if.end162, !dbg !2312

if.then160:                                       ; preds = %if.then155
  %151 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2313
  %blockChecksum = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %151, i32 0, i32 16, !dbg !2315
  %call161 = call i32 @XXH32_reset(%struct.XXH32_state_s* %blockChecksum, i32 0), !dbg !2316
  br label %if.end162, !dbg !2317

if.end162:                                        ; preds = %if.then160, %if.then155
  %152 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2318
  %dStage163 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %152, i32 0, i32 2, !dbg !2319
  store i32 5, i32* %dStage163, align 4, !dbg !2320
  br label %sw.epilog, !dbg !2321

if.end164:                                        ; preds = %if.end151
  %153 = load i64, i64* %nextCBlockSize, align 8, !dbg !2322
  %154 = load i64, i64* %crcSize, align 8, !dbg !2323
  %add165 = add i64 %153, %154, !dbg !2324
  %155 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2325
  %tmpInTarget166 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %155, i32 0, i32 8, !dbg !2326
  store i64 %add165, i64* %tmpInTarget166, align 8, !dbg !2327
  %156 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2328
  %dStage167 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %156, i32 0, i32 2, !dbg !2329
  store i32 7, i32* %dStage167, align 4, !dbg !2330
  %157 = load i8*, i8** %dstPtr, align 8, !dbg !2331
  %158 = load i8*, i8** %dstEnd, align 8, !dbg !2333
  %cmp168 = icmp eq i8* %157, %158, !dbg !2334
  br i1 %cmp168, label %if.then170, label %if.end173, !dbg !2335

if.then170:                                       ; preds = %if.end164
  %159 = load i64, i64* %nextCBlockSize, align 8, !dbg !2336
  %add171 = add i64 4, %159, !dbg !2338
  %160 = load i64, i64* %crcSize, align 8, !dbg !2339
  %add172 = add i64 %add171, %160, !dbg !2340
  store i64 %add172, i64* %nextSrcSizeHint, align 8, !dbg !2341
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2342
  br label %if.end173, !dbg !2343

if.end173:                                        ; preds = %if.then170, %if.end164
  br label %sw.epilog, !dbg !2344

sw.bb174:                                         ; preds = %while.body
  %161 = load i8*, i8** %srcEnd, align 8, !dbg !2345
  %162 = load i8*, i8** %srcPtr, align 8, !dbg !2345
  %sub.ptr.lhs.cast175 = ptrtoint i8* %161 to i64, !dbg !2345
  %sub.ptr.rhs.cast176 = ptrtoint i8* %162 to i64, !dbg !2345
  %sub.ptr.sub177 = sub i64 %sub.ptr.lhs.cast175, %sub.ptr.rhs.cast176, !dbg !2345
  %163 = load i8*, i8** %dstEnd, align 8, !dbg !2345
  %164 = load i8*, i8** %dstPtr, align 8, !dbg !2345
  %sub.ptr.lhs.cast178 = ptrtoint i8* %163 to i64, !dbg !2345
  %sub.ptr.rhs.cast179 = ptrtoint i8* %164 to i64, !dbg !2345
  %sub.ptr.sub180 = sub i64 %sub.ptr.lhs.cast178, %sub.ptr.rhs.cast179, !dbg !2345
  %cmp181 = icmp ult i64 %sub.ptr.sub177, %sub.ptr.sub180, !dbg !2345
  br i1 %cmp181, label %cond.true183, label %cond.false187, !dbg !2345

cond.true183:                                     ; preds = %sw.bb174
  %165 = load i8*, i8** %srcEnd, align 8, !dbg !2345
  %166 = load i8*, i8** %srcPtr, align 8, !dbg !2345
  %sub.ptr.lhs.cast184 = ptrtoint i8* %165 to i64, !dbg !2345
  %sub.ptr.rhs.cast185 = ptrtoint i8* %166 to i64, !dbg !2345
  %sub.ptr.sub186 = sub i64 %sub.ptr.lhs.cast184, %sub.ptr.rhs.cast185, !dbg !2345
  br label %cond.end191, !dbg !2345

cond.false187:                                    ; preds = %sw.bb174
  %167 = load i8*, i8** %dstEnd, align 8, !dbg !2345
  %168 = load i8*, i8** %dstPtr, align 8, !dbg !2345
  %sub.ptr.lhs.cast188 = ptrtoint i8* %167 to i64, !dbg !2345
  %sub.ptr.rhs.cast189 = ptrtoint i8* %168 to i64, !dbg !2345
  %sub.ptr.sub190 = sub i64 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189, !dbg !2345
  br label %cond.end191, !dbg !2345

cond.end191:                                      ; preds = %cond.false187, %cond.true183
  %cond192 = phi i64 [ %sub.ptr.sub186, %cond.true183 ], [ %sub.ptr.sub190, %cond.false187 ], !dbg !2345
  store i64 %cond192, i64* %minBuffSize, align 8, !dbg !2347
  %169 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2348
  %tmpInTarget194 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %169, i32 0, i32 8, !dbg !2348
  %170 = load i64, i64* %tmpInTarget194, align 8, !dbg !2348
  %171 = load i64, i64* %minBuffSize, align 8, !dbg !2348
  %cmp195 = icmp ult i64 %170, %171, !dbg !2348
  br i1 %cmp195, label %cond.true197, label %cond.false199, !dbg !2348

cond.true197:                                     ; preds = %cond.end191
  %172 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2348
  %tmpInTarget198 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %172, i32 0, i32 8, !dbg !2348
  %173 = load i64, i64* %tmpInTarget198, align 8, !dbg !2348
  br label %cond.end200, !dbg !2348

cond.false199:                                    ; preds = %cond.end191
  %174 = load i64, i64* %minBuffSize, align 8, !dbg !2348
  br label %cond.end200, !dbg !2348

cond.end200:                                      ; preds = %cond.false199, %cond.true197
  %cond201 = phi i64 [ %173, %cond.true197 ], [ %174, %cond.false199 ], !dbg !2348
  store i64 %cond201, i64* %sizeToCopy193, align 8, !dbg !2349
  %175 = load i8*, i8** %dstPtr, align 8, !dbg !2350
  %176 = load i8*, i8** %srcPtr, align 8, !dbg !2351
  %177 = load i64, i64* %sizeToCopy193, align 8, !dbg !2352
  %178 = call i8* @memcpy(i8* %175, i8* %176, i64 %177), !dbg !2353
  %179 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2354
  %frameInfo202 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %179, i32 0, i32 0, !dbg !2356
  %blockChecksumFlag203 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo202, i32 0, i32 6, !dbg !2357
  %180 = load i32, i32* %blockChecksumFlag203, align 4, !dbg !2357
  %tobool204 = icmp ne i32 %180, 0, !dbg !2354
  br i1 %tobool204, label %if.then205, label %if.end208, !dbg !2358

if.then205:                                       ; preds = %cond.end200
  %181 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2359
  %blockChecksum206 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %181, i32 0, i32 16, !dbg !2361
  %182 = load i8*, i8** %srcPtr, align 8, !dbg !2362
  %183 = load i64, i64* %sizeToCopy193, align 8, !dbg !2363
  %call207 = call i32 @XXH32_update(%struct.XXH32_state_s* %blockChecksum206, i8* %182, i64 %183), !dbg !2364
  br label %if.end208, !dbg !2365

if.end208:                                        ; preds = %if.then205, %cond.end200
  %184 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2366
  %frameInfo209 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %184, i32 0, i32 0, !dbg !2368
  %contentChecksumFlag210 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo209, i32 0, i32 2, !dbg !2369
  %185 = load i32, i32* %contentChecksumFlag210, align 8, !dbg !2369
  %tobool211 = icmp ne i32 %185, 0, !dbg !2366
  br i1 %tobool211, label %if.then212, label %if.end215, !dbg !2370

if.then212:                                       ; preds = %if.end208
  %186 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2371
  %xxh213 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %186, i32 0, i32 15, !dbg !2372
  %187 = load i8*, i8** %srcPtr, align 8, !dbg !2373
  %188 = load i64, i64* %sizeToCopy193, align 8, !dbg !2374
  %call214 = call i32 @XXH32_update(%struct.XXH32_state_s* %xxh213, i8* %187, i64 %188), !dbg !2375
  br label %if.end215, !dbg !2376

if.end215:                                        ; preds = %if.then212, %if.end208
  %189 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2377
  %frameInfo216 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %189, i32 0, i32 0, !dbg !2379
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo216, i32 0, i32 4, !dbg !2380
  %190 = load i64, i64* %contentSize, align 8, !dbg !2380
  %tobool217 = icmp ne i64 %190, 0, !dbg !2377
  br i1 %tobool217, label %if.then218, label %if.end220, !dbg !2381

if.then218:                                       ; preds = %if.end215
  %191 = load i64, i64* %sizeToCopy193, align 8, !dbg !2382
  %192 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2383
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %192, i32 0, i32 3, !dbg !2384
  %193 = load i64, i64* %frameRemainingSize, align 8, !dbg !2385
  %sub219 = sub i64 %193, %191, !dbg !2385
  store i64 %sub219, i64* %frameRemainingSize, align 8, !dbg !2385
  br label %if.end220, !dbg !2383

if.end220:                                        ; preds = %if.then218, %if.end215
  %194 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2386
  %frameInfo221 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %194, i32 0, i32 0, !dbg !2388
  %blockMode222 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo221, i32 0, i32 1, !dbg !2389
  %195 = load i32, i32* %blockMode222, align 4, !dbg !2389
  %cmp223 = icmp eq i32 %195, 0, !dbg !2390
  br i1 %cmp223, label %if.then225, label %if.end226, !dbg !2391

if.then225:                                       ; preds = %if.end220
  %196 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2392
  %197 = load i8*, i8** %dstPtr, align 8, !dbg !2393
  %198 = load i64, i64* %sizeToCopy193, align 8, !dbg !2394
  %199 = load i8*, i8** %dstStart, align 8, !dbg !2395
  call void @LZ4F_updateDict(%struct.LZ4F_dctx_s* %196, i8* %197, i64 %198, i8* %199, i32 0), !dbg !2396
  br label %if.end226, !dbg !2396

if.end226:                                        ; preds = %if.then225, %if.end220
  %200 = load i64, i64* %sizeToCopy193, align 8, !dbg !2397
  %201 = load i8*, i8** %srcPtr, align 8, !dbg !2398
  %add.ptr227 = getelementptr inbounds i8, i8* %201, i64 %200, !dbg !2398
  store i8* %add.ptr227, i8** %srcPtr, align 8, !dbg !2398
  %202 = load i64, i64* %sizeToCopy193, align 8, !dbg !2399
  %203 = load i8*, i8** %dstPtr, align 8, !dbg !2400
  %add.ptr228 = getelementptr inbounds i8, i8* %203, i64 %202, !dbg !2400
  store i8* %add.ptr228, i8** %dstPtr, align 8, !dbg !2400
  %204 = load i64, i64* %sizeToCopy193, align 8, !dbg !2401
  %205 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2403
  %tmpInTarget229 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %205, i32 0, i32 8, !dbg !2404
  %206 = load i64, i64* %tmpInTarget229, align 8, !dbg !2404
  %cmp230 = icmp eq i64 %204, %206, !dbg !2405
  br i1 %cmp230, label %if.then232, label %if.end242, !dbg !2406

if.then232:                                       ; preds = %if.end226
  %207 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2407
  %frameInfo233 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %207, i32 0, i32 0, !dbg !2410
  %blockChecksumFlag234 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo233, i32 0, i32 6, !dbg !2411
  %208 = load i32, i32* %blockChecksumFlag234, align 4, !dbg !2411
  %tobool235 = icmp ne i32 %208, 0, !dbg !2407
  br i1 %tobool235, label %if.then236, label %if.else239, !dbg !2412

if.then236:                                       ; preds = %if.then232
  %209 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2413
  %tmpInSize237 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %209, i32 0, i32 7, !dbg !2415
  store i64 0, i64* %tmpInSize237, align 8, !dbg !2416
  %210 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2417
  %dStage238 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %210, i32 0, i32 2, !dbg !2418
  store i32 6, i32* %dStage238, align 4, !dbg !2419
  br label %if.end241, !dbg !2420

if.else239:                                       ; preds = %if.then232
  %211 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2421
  %dStage240 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %211, i32 0, i32 2, !dbg !2422
  store i32 3, i32* %dStage240, align 4, !dbg !2423
  br label %if.end241

if.end241:                                        ; preds = %if.else239, %if.then236
  br label %sw.epilog, !dbg !2424

if.end242:                                        ; preds = %if.end226
  %212 = load i64, i64* %sizeToCopy193, align 8, !dbg !2425
  %213 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2426
  %tmpInTarget243 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %213, i32 0, i32 8, !dbg !2427
  %214 = load i64, i64* %tmpInTarget243, align 8, !dbg !2428
  %sub244 = sub i64 %214, %212, !dbg !2428
  store i64 %sub244, i64* %tmpInTarget243, align 8, !dbg !2428
  %215 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2429
  %tmpInTarget245 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %215, i32 0, i32 8, !dbg !2430
  %216 = load i64, i64* %tmpInTarget245, align 8, !dbg !2430
  %217 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2431
  %frameInfo246 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %217, i32 0, i32 0, !dbg !2432
  %blockChecksumFlag247 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo246, i32 0, i32 6, !dbg !2433
  %218 = load i32, i32* %blockChecksumFlag247, align 4, !dbg !2433
  %mul248 = mul i32 %218, 4, !dbg !2434
  %conv249 = zext i32 %mul248 to i64, !dbg !2435
  %add250 = add i64 %216, %conv249, !dbg !2436
  %add251 = add i64 %add250, 4, !dbg !2437
  store i64 %add251, i64* %nextSrcSizeHint, align 8, !dbg !2438
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2439
  br label %sw.epilog, !dbg !2440

sw.bb252:                                         ; preds = %while.body
  %219 = load i8*, i8** %srcEnd, align 8, !dbg !2441
  %220 = load i8*, i8** %srcPtr, align 8, !dbg !2444
  %sub.ptr.lhs.cast253 = ptrtoint i8* %219 to i64, !dbg !2445
  %sub.ptr.rhs.cast254 = ptrtoint i8* %220 to i64, !dbg !2445
  %sub.ptr.sub255 = sub i64 %sub.ptr.lhs.cast253, %sub.ptr.rhs.cast254, !dbg !2445
  %cmp256 = icmp sge i64 %sub.ptr.sub255, 4, !dbg !2446
  br i1 %cmp256, label %land.lhs.true, label %if.else263, !dbg !2447

land.lhs.true:                                    ; preds = %sw.bb252
  %221 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2448
  %tmpInSize258 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %221, i32 0, i32 7, !dbg !2449
  %222 = load i64, i64* %tmpInSize258, align 8, !dbg !2449
  %cmp259 = icmp eq i64 %222, 0, !dbg !2450
  br i1 %cmp259, label %if.then261, label %if.else263, !dbg !2451

if.then261:                                       ; preds = %land.lhs.true
  %223 = load i8*, i8** %srcPtr, align 8, !dbg !2452
  store i8* %223, i8** %crcSrc, align 8, !dbg !2454
  %224 = load i8*, i8** %srcPtr, align 8, !dbg !2455
  %add.ptr262 = getelementptr inbounds i8, i8* %224, i64 4, !dbg !2455
  store i8* %add.ptr262, i8** %srcPtr, align 8, !dbg !2455
  br label %if.end293, !dbg !2456

if.else263:                                       ; preds = %land.lhs.true, %sw.bb252
  %225 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2457
  %tmpInSize264 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %225, i32 0, i32 7, !dbg !2459
  %226 = load i64, i64* %tmpInSize264, align 8, !dbg !2459
  %sub265 = sub i64 4, %226, !dbg !2460
  store i64 %sub265, i64* %stillToCopy, align 8, !dbg !2461
  %227 = load i64, i64* %stillToCopy, align 8, !dbg !2462
  %228 = load i8*, i8** %srcEnd, align 8, !dbg !2462
  %229 = load i8*, i8** %srcPtr, align 8, !dbg !2462
  %sub.ptr.lhs.cast267 = ptrtoint i8* %228 to i64, !dbg !2462
  %sub.ptr.rhs.cast268 = ptrtoint i8* %229 to i64, !dbg !2462
  %sub.ptr.sub269 = sub i64 %sub.ptr.lhs.cast267, %sub.ptr.rhs.cast268, !dbg !2462
  %cmp270 = icmp ult i64 %227, %sub.ptr.sub269, !dbg !2462
  br i1 %cmp270, label %cond.true272, label %cond.false273, !dbg !2462

cond.true272:                                     ; preds = %if.else263
  %230 = load i64, i64* %stillToCopy, align 8, !dbg !2462
  br label %cond.end277, !dbg !2462

cond.false273:                                    ; preds = %if.else263
  %231 = load i8*, i8** %srcEnd, align 8, !dbg !2462
  %232 = load i8*, i8** %srcPtr, align 8, !dbg !2462
  %sub.ptr.lhs.cast274 = ptrtoint i8* %231 to i64, !dbg !2462
  %sub.ptr.rhs.cast275 = ptrtoint i8* %232 to i64, !dbg !2462
  %sub.ptr.sub276 = sub i64 %sub.ptr.lhs.cast274, %sub.ptr.rhs.cast275, !dbg !2462
  br label %cond.end277, !dbg !2462

cond.end277:                                      ; preds = %cond.false273, %cond.true272
  %cond278 = phi i64 [ %230, %cond.true272 ], [ %sub.ptr.sub276, %cond.false273 ], !dbg !2462
  store i64 %cond278, i64* %sizeToCopy266, align 8, !dbg !2463
  %233 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2464
  %header279 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %233, i32 0, i32 17, !dbg !2465
  %arraydecay280 = getelementptr inbounds [19 x i8], [19 x i8]* %header279, i32 0, i32 0, !dbg !2464
  %234 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2466
  %tmpInSize281 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %234, i32 0, i32 7, !dbg !2467
  %235 = load i64, i64* %tmpInSize281, align 8, !dbg !2467
  %add.ptr282 = getelementptr inbounds i8, i8* %arraydecay280, i64 %235, !dbg !2468
  %236 = load i8*, i8** %srcPtr, align 8, !dbg !2469
  %237 = load i64, i64* %sizeToCopy266, align 8, !dbg !2470
  %238 = call i8* @memcpy(i8* %add.ptr282, i8* %236, i64 %237), !dbg !2471
  %239 = load i64, i64* %sizeToCopy266, align 8, !dbg !2472
  %240 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2473
  %tmpInSize283 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %240, i32 0, i32 7, !dbg !2474
  %241 = load i64, i64* %tmpInSize283, align 8, !dbg !2475
  %add284 = add i64 %241, %239, !dbg !2475
  store i64 %add284, i64* %tmpInSize283, align 8, !dbg !2475
  %242 = load i64, i64* %sizeToCopy266, align 8, !dbg !2476
  %243 = load i8*, i8** %srcPtr, align 8, !dbg !2477
  %add.ptr285 = getelementptr inbounds i8, i8* %243, i64 %242, !dbg !2477
  store i8* %add.ptr285, i8** %srcPtr, align 8, !dbg !2477
  %244 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2478
  %tmpInSize286 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %244, i32 0, i32 7, !dbg !2480
  %245 = load i64, i64* %tmpInSize286, align 8, !dbg !2480
  %cmp287 = icmp ult i64 %245, 4, !dbg !2481
  br i1 %cmp287, label %if.then289, label %if.end290, !dbg !2482

if.then289:                                       ; preds = %cond.end277
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2483
  br label %sw.epilog, !dbg !2485

if.end290:                                        ; preds = %cond.end277
  %246 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2486
  %header291 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %246, i32 0, i32 17, !dbg !2487
  %arraydecay292 = getelementptr inbounds [19 x i8], [19 x i8]* %header291, i32 0, i32 0, !dbg !2486
  store i8* %arraydecay292, i8** %crcSrc, align 8, !dbg !2488
  br label %if.end293

if.end293:                                        ; preds = %if.end290, %if.then261
  %247 = load i8*, i8** %crcSrc, align 8, !dbg !2489
  %call294 = call i32 @LZ4F_readLE32(i8* %247), !dbg !2491
  store i32 %call294, i32* %readCRC, align 4, !dbg !2492
  %248 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2493
  %blockChecksum295 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %248, i32 0, i32 16, !dbg !2494
  %call296 = call i32 @XXH32_digest(%struct.XXH32_state_s* %blockChecksum295), !dbg !2495
  store i32 %call296, i32* %calcCRC, align 4, !dbg !2496
  %249 = load i32, i32* %readCRC, align 4, !dbg !2497
  %250 = load i32, i32* %calcCRC, align 4, !dbg !2499
  %cmp297 = icmp ne i32 %249, %250, !dbg !2500
  br i1 %cmp297, label %if.then299, label %if.end301, !dbg !2501

if.then299:                                       ; preds = %if.end293
  %call300 = call i64 @err0r(i32 7), !dbg !2502
  store i64 %call300, i64* %retval, align 8, !dbg !2503
  br label %return, !dbg !2503

if.end301:                                        ; preds = %if.end293
  %251 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2504
  %dStage302 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %251, i32 0, i32 2, !dbg !2505
  store i32 3, i32* %dStage302, align 4, !dbg !2506
  br label %sw.epilog, !dbg !2507

sw.bb303:                                         ; preds = %while.body
  %252 = load i8*, i8** %srcEnd, align 8, !dbg !2508
  %253 = load i8*, i8** %srcPtr, align 8, !dbg !2510
  %sub.ptr.lhs.cast304 = ptrtoint i8* %252 to i64, !dbg !2511
  %sub.ptr.rhs.cast305 = ptrtoint i8* %253 to i64, !dbg !2511
  %sub.ptr.sub306 = sub i64 %sub.ptr.lhs.cast304, %sub.ptr.rhs.cast305, !dbg !2511
  %254 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2512
  %tmpInTarget307 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %254, i32 0, i32 8, !dbg !2513
  %255 = load i64, i64* %tmpInTarget307, align 8, !dbg !2513
  %cmp308 = icmp ult i64 %sub.ptr.sub306, %255, !dbg !2514
  br i1 %cmp308, label %if.then310, label %if.end313, !dbg !2515

if.then310:                                       ; preds = %sw.bb303
  %256 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2516
  %tmpInSize311 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %256, i32 0, i32 7, !dbg !2518
  store i64 0, i64* %tmpInSize311, align 8, !dbg !2519
  %257 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2520
  %dStage312 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %257, i32 0, i32 2, !dbg !2521
  store i32 8, i32* %dStage312, align 4, !dbg !2522
  br label %sw.epilog, !dbg !2523

if.end313:                                        ; preds = %sw.bb303
  %258 = load i8*, i8** %srcPtr, align 8, !dbg !2524
  store i8* %258, i8** %selectedIn, align 8, !dbg !2525
  %259 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2526
  %tmpInTarget314 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %259, i32 0, i32 8, !dbg !2527
  %260 = load i64, i64* %tmpInTarget314, align 8, !dbg !2527
  %261 = load i8*, i8** %srcPtr, align 8, !dbg !2528
  %add.ptr315 = getelementptr inbounds i8, i8* %261, i64 %260, !dbg !2528
  store i8* %add.ptr315, i8** %srcPtr, align 8, !dbg !2528
  br i1 false, label %if.then316, label %if.end354, !dbg !2529

if.then316:                                       ; preds = %if.end313
  br label %sw.bb317, !dbg !2529

sw.bb317:                                         ; preds = %while.body, %if.then316
  %262 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2530
  %tmpInTarget319 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %262, i32 0, i32 8, !dbg !2533
  %263 = load i64, i64* %tmpInTarget319, align 8, !dbg !2533
  %264 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2534
  %tmpInSize320 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %264, i32 0, i32 7, !dbg !2535
  %265 = load i64, i64* %tmpInSize320, align 8, !dbg !2535
  %sub321 = sub i64 %263, %265, !dbg !2536
  store i64 %sub321, i64* %wantedData318, align 8, !dbg !2537
  %266 = load i8*, i8** %srcEnd, align 8, !dbg !2538
  %267 = load i8*, i8** %srcPtr, align 8, !dbg !2539
  %sub.ptr.lhs.cast322 = ptrtoint i8* %266 to i64, !dbg !2540
  %sub.ptr.rhs.cast323 = ptrtoint i8* %267 to i64, !dbg !2540
  %sub.ptr.sub324 = sub i64 %sub.ptr.lhs.cast322, %sub.ptr.rhs.cast323, !dbg !2540
  store i64 %sub.ptr.sub324, i64* %inputLeft, align 8, !dbg !2541
  %268 = load i64, i64* %wantedData318, align 8, !dbg !2542
  %269 = load i64, i64* %inputLeft, align 8, !dbg !2542
  %cmp326 = icmp ult i64 %268, %269, !dbg !2542
  br i1 %cmp326, label %cond.true328, label %cond.false329, !dbg !2542

cond.true328:                                     ; preds = %sw.bb317
  %270 = load i64, i64* %wantedData318, align 8, !dbg !2542
  br label %cond.end330, !dbg !2542

cond.false329:                                    ; preds = %sw.bb317
  %271 = load i64, i64* %inputLeft, align 8, !dbg !2542
  br label %cond.end330, !dbg !2542

cond.end330:                                      ; preds = %cond.false329, %cond.true328
  %cond331 = phi i64 [ %270, %cond.true328 ], [ %271, %cond.false329 ], !dbg !2542
  store i64 %cond331, i64* %sizeToCopy325, align 8, !dbg !2543
  %272 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2544
  %tmpIn332 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %272, i32 0, i32 6, !dbg !2545
  %273 = load i8*, i8** %tmpIn332, align 8, !dbg !2545
  %274 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2546
  %tmpInSize333 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %274, i32 0, i32 7, !dbg !2547
  %275 = load i64, i64* %tmpInSize333, align 8, !dbg !2547
  %add.ptr334 = getelementptr inbounds i8, i8* %273, i64 %275, !dbg !2548
  %276 = load i8*, i8** %srcPtr, align 8, !dbg !2549
  %277 = load i64, i64* %sizeToCopy325, align 8, !dbg !2550
  %278 = call i8* @memcpy(i8* %add.ptr334, i8* %276, i64 %277), !dbg !2551
  %279 = load i64, i64* %sizeToCopy325, align 8, !dbg !2552
  %280 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2553
  %tmpInSize335 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %280, i32 0, i32 7, !dbg !2554
  %281 = load i64, i64* %tmpInSize335, align 8, !dbg !2555
  %add336 = add i64 %281, %279, !dbg !2555
  store i64 %add336, i64* %tmpInSize335, align 8, !dbg !2555
  %282 = load i64, i64* %sizeToCopy325, align 8, !dbg !2556
  %283 = load i8*, i8** %srcPtr, align 8, !dbg !2557
  %add.ptr337 = getelementptr inbounds i8, i8* %283, i64 %282, !dbg !2557
  store i8* %add.ptr337, i8** %srcPtr, align 8, !dbg !2557
  %284 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2558
  %tmpInSize338 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %284, i32 0, i32 7, !dbg !2560
  %285 = load i64, i64* %tmpInSize338, align 8, !dbg !2560
  %286 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2561
  %tmpInTarget339 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %286, i32 0, i32 8, !dbg !2562
  %287 = load i64, i64* %tmpInTarget339, align 8, !dbg !2562
  %cmp340 = icmp ult i64 %285, %287, !dbg !2563
  br i1 %cmp340, label %if.then342, label %if.end352, !dbg !2564

if.then342:                                       ; preds = %cond.end330
  %288 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2565
  %tmpInTarget343 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %288, i32 0, i32 8, !dbg !2567
  %289 = load i64, i64* %tmpInTarget343, align 8, !dbg !2567
  %290 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2568
  %tmpInSize344 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %290, i32 0, i32 7, !dbg !2569
  %291 = load i64, i64* %tmpInSize344, align 8, !dbg !2569
  %sub345 = sub i64 %289, %291, !dbg !2570
  %292 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2571
  %frameInfo346 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %292, i32 0, i32 0, !dbg !2572
  %blockChecksumFlag347 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo346, i32 0, i32 6, !dbg !2573
  %293 = load i32, i32* %blockChecksumFlag347, align 4, !dbg !2573
  %mul348 = mul i32 %293, 4, !dbg !2574
  %conv349 = zext i32 %mul348 to i64, !dbg !2571
  %add350 = add i64 %sub345, %conv349, !dbg !2575
  %add351 = add i64 %add350, 4, !dbg !2576
  store i64 %add351, i64* %nextSrcSizeHint, align 8, !dbg !2577
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2578
  br label %sw.epilog, !dbg !2579

if.end352:                                        ; preds = %cond.end330
  %294 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2580
  %tmpIn353 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %294, i32 0, i32 6, !dbg !2581
  %295 = load i8*, i8** %tmpIn353, align 8, !dbg !2581
  store i8* %295, i8** %selectedIn, align 8, !dbg !2582
  br label %if.end354, !dbg !2583

if.end354:                                        ; preds = %if.end352, %if.end313
  %296 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2584
  %frameInfo355 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %296, i32 0, i32 0, !dbg !2586
  %blockChecksumFlag356 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo355, i32 0, i32 6, !dbg !2587
  %297 = load i32, i32* %blockChecksumFlag356, align 4, !dbg !2587
  %tobool357 = icmp ne i32 %297, 0, !dbg !2584
  br i1 %tobool357, label %if.then358, label %if.end371, !dbg !2588

if.then358:                                       ; preds = %if.end354
  %298 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2589
  %tmpInTarget359 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %298, i32 0, i32 8, !dbg !2591
  %299 = load i64, i64* %tmpInTarget359, align 8, !dbg !2592
  %sub360 = sub i64 %299, 4, !dbg !2592
  store i64 %sub360, i64* %tmpInTarget359, align 8, !dbg !2592
  %300 = load i8*, i8** %selectedIn, align 8, !dbg !2593
  %301 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2595
  %tmpInTarget361 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %301, i32 0, i32 8, !dbg !2596
  %302 = load i64, i64* %tmpInTarget361, align 8, !dbg !2596
  %add.ptr362 = getelementptr inbounds i8, i8* %300, i64 %302, !dbg !2597
  %call363 = call i32 @LZ4F_readLE32(i8* %add.ptr362), !dbg !2598
  store i32 %call363, i32* %readBlockCrc, align 4, !dbg !2599
  %303 = load i8*, i8** %selectedIn, align 8, !dbg !2600
  %304 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2601
  %tmpInTarget364 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %304, i32 0, i32 8, !dbg !2602
  %305 = load i64, i64* %tmpInTarget364, align 8, !dbg !2602
  %call365 = call i32 @XXH32(i8* %303, i64 %305, i32 0), !dbg !2603
  store i32 %call365, i32* %calcBlockCrc, align 4, !dbg !2604
  %306 = load i32, i32* %readBlockCrc, align 4, !dbg !2605
  %307 = load i32, i32* %calcBlockCrc, align 4, !dbg !2607
  %cmp366 = icmp ne i32 %306, %307, !dbg !2608
  br i1 %cmp366, label %if.then368, label %if.end370, !dbg !2609

if.then368:                                       ; preds = %if.then358
  %call369 = call i64 @err0r(i32 7), !dbg !2610
  store i64 %call369, i64* %retval, align 8, !dbg !2611
  br label %return, !dbg !2611

if.end370:                                        ; preds = %if.then358
  br label %if.end371, !dbg !2612

if.end371:                                        ; preds = %if.end370, %if.end354
  %308 = load i8*, i8** %dstEnd, align 8, !dbg !2613
  %309 = load i8*, i8** %dstPtr, align 8, !dbg !2615
  %sub.ptr.lhs.cast372 = ptrtoint i8* %308 to i64, !dbg !2616
  %sub.ptr.rhs.cast373 = ptrtoint i8* %309 to i64, !dbg !2616
  %sub.ptr.sub374 = sub i64 %sub.ptr.lhs.cast372, %sub.ptr.rhs.cast373, !dbg !2616
  %310 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2617
  %maxBlockSize375 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %310, i32 0, i32 4, !dbg !2618
  %311 = load i64, i64* %maxBlockSize375, align 8, !dbg !2618
  %cmp376 = icmp uge i64 %sub.ptr.sub374, %311, !dbg !2619
  br i1 %cmp376, label %if.then378, label %if.end425, !dbg !2620

if.then378:                                       ; preds = %if.end371
  %312 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2621
  %dict379 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %312, i32 0, i32 10, !dbg !2623
  %313 = load i8*, i8** %dict379, align 8, !dbg !2623
  store i8* %313, i8** %dict, align 8, !dbg !2624
  %314 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2625
  %dictSize380 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %314, i32 0, i32 11, !dbg !2626
  %315 = load i64, i64* %dictSize380, align 8, !dbg !2626
  store i64 %315, i64* %dictSize, align 8, !dbg !2627
  %316 = load i8*, i8** %dict, align 8, !dbg !2628
  %tobool381 = icmp ne i8* %316, null, !dbg !2628
  br i1 %tobool381, label %land.lhs.true382, label %if.end388, !dbg !2630

land.lhs.true382:                                 ; preds = %if.then378
  %317 = load i64, i64* %dictSize, align 8, !dbg !2631
  %cmp383 = icmp ugt i64 %317, 1073741824, !dbg !2632
  br i1 %cmp383, label %if.then385, label %if.end388, !dbg !2633

if.then385:                                       ; preds = %land.lhs.true382
  %318 = load i64, i64* %dictSize, align 8, !dbg !2634
  %sub386 = sub i64 %318, 65536, !dbg !2636
  %319 = load i8*, i8** %dict, align 8, !dbg !2637
  %add.ptr387 = getelementptr inbounds i8, i8* %319, i64 %sub386, !dbg !2637
  store i8* %add.ptr387, i8** %dict, align 8, !dbg !2637
  store i64 65536, i64* %dictSize, align 8, !dbg !2638
  br label %if.end388, !dbg !2639

if.end388:                                        ; preds = %if.then385, %land.lhs.true382, %if.then378
  %320 = load i8*, i8** %selectedIn, align 8, !dbg !2640
  %321 = load i8*, i8** %dstPtr, align 8, !dbg !2641
  %322 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2642
  %tmpInTarget389 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %322, i32 0, i32 8, !dbg !2643
  %323 = load i64, i64* %tmpInTarget389, align 8, !dbg !2643
  %conv390 = trunc i64 %323 to i32, !dbg !2644
  %324 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2645
  %maxBlockSize391 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %324, i32 0, i32 4, !dbg !2646
  %325 = load i64, i64* %maxBlockSize391, align 8, !dbg !2646
  %conv392 = trunc i64 %325 to i32, !dbg !2647
  %326 = load i8*, i8** %dict, align 8, !dbg !2648
  %327 = load i64, i64* %dictSize, align 8, !dbg !2649
  %conv393 = trunc i64 %327 to i32, !dbg !2650
  %call394 = call i32 @LZ4_decompress_safe_usingDict(i8* %320, i8* %321, i32 %conv390, i32 %conv392, i8* %326, i32 %conv393), !dbg !2651
  store i32 %call394, i32* %decodedSize, align 4, !dbg !2652
  %328 = load i32, i32* %decodedSize, align 4, !dbg !2653
  %cmp395 = icmp slt i32 %328, 0, !dbg !2655
  br i1 %cmp395, label %if.then397, label %if.end399, !dbg !2656

if.then397:                                       ; preds = %if.end388
  %call398 = call i64 @err0r(i32 1), !dbg !2657
  store i64 %call398, i64* %retval, align 8, !dbg !2658
  br label %return, !dbg !2658

if.end399:                                        ; preds = %if.end388
  %329 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2659
  %frameInfo400 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %329, i32 0, i32 0, !dbg !2661
  %contentChecksumFlag401 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo400, i32 0, i32 2, !dbg !2662
  %330 = load i32, i32* %contentChecksumFlag401, align 8, !dbg !2662
  %tobool402 = icmp ne i32 %330, 0, !dbg !2659
  br i1 %tobool402, label %if.then403, label %if.end407, !dbg !2663

if.then403:                                       ; preds = %if.end399
  %331 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2664
  %xxh404 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %331, i32 0, i32 15, !dbg !2665
  %332 = load i8*, i8** %dstPtr, align 8, !dbg !2666
  %333 = load i32, i32* %decodedSize, align 4, !dbg !2667
  %conv405 = sext i32 %333 to i64, !dbg !2667
  %call406 = call i32 @XXH32_update(%struct.XXH32_state_s* %xxh404, i8* %332, i64 %conv405), !dbg !2668
  br label %if.end407, !dbg !2668

if.end407:                                        ; preds = %if.then403, %if.end399
  %334 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2669
  %frameInfo408 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %334, i32 0, i32 0, !dbg !2671
  %contentSize409 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo408, i32 0, i32 4, !dbg !2672
  %335 = load i64, i64* %contentSize409, align 8, !dbg !2672
  %tobool410 = icmp ne i64 %335, 0, !dbg !2669
  br i1 %tobool410, label %if.then411, label %if.end415, !dbg !2673

if.then411:                                       ; preds = %if.end407
  %336 = load i32, i32* %decodedSize, align 4, !dbg !2674
  %conv412 = sext i32 %336 to i64, !dbg !2674
  %337 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2675
  %frameRemainingSize413 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %337, i32 0, i32 3, !dbg !2676
  %338 = load i64, i64* %frameRemainingSize413, align 8, !dbg !2677
  %sub414 = sub i64 %338, %conv412, !dbg !2677
  store i64 %sub414, i64* %frameRemainingSize413, align 8, !dbg !2677
  br label %if.end415, !dbg !2675

if.end415:                                        ; preds = %if.then411, %if.end407
  %339 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2678
  %frameInfo416 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %339, i32 0, i32 0, !dbg !2680
  %blockMode417 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo416, i32 0, i32 1, !dbg !2681
  %340 = load i32, i32* %blockMode417, align 4, !dbg !2681
  %cmp418 = icmp eq i32 %340, 0, !dbg !2682
  br i1 %cmp418, label %if.then420, label %if.end422, !dbg !2683

if.then420:                                       ; preds = %if.end415
  %341 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2684
  %342 = load i8*, i8** %dstPtr, align 8, !dbg !2685
  %343 = load i32, i32* %decodedSize, align 4, !dbg !2686
  %conv421 = sext i32 %343 to i64, !dbg !2686
  %344 = load i8*, i8** %dstStart, align 8, !dbg !2687
  call void @LZ4F_updateDict(%struct.LZ4F_dctx_s* %341, i8* %342, i64 %conv421, i8* %344, i32 0), !dbg !2688
  br label %if.end422, !dbg !2688

if.end422:                                        ; preds = %if.then420, %if.end415
  %345 = load i32, i32* %decodedSize, align 4, !dbg !2689
  %346 = load i8*, i8** %dstPtr, align 8, !dbg !2690
  %idx.ext = sext i32 %345 to i64, !dbg !2690
  %add.ptr423 = getelementptr inbounds i8, i8* %346, i64 %idx.ext, !dbg !2690
  store i8* %add.ptr423, i8** %dstPtr, align 8, !dbg !2690
  %347 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2691
  %dStage424 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %347, i32 0, i32 2, !dbg !2692
  store i32 3, i32* %dStage424, align 4, !dbg !2693
  br label %sw.epilog, !dbg !2694

if.end425:                                        ; preds = %if.end371
  %348 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2695
  %frameInfo426 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %348, i32 0, i32 0, !dbg !2697
  %blockMode427 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo426, i32 0, i32 1, !dbg !2698
  %349 = load i32, i32* %blockMode427, align 4, !dbg !2698
  %cmp428 = icmp eq i32 %349, 0, !dbg !2699
  br i1 %cmp428, label %if.then430, label %if.end464, !dbg !2700

if.then430:                                       ; preds = %if.end425
  %350 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2701
  %dict431 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %350, i32 0, i32 10, !dbg !2704
  %351 = load i8*, i8** %dict431, align 8, !dbg !2704
  %352 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2705
  %tmpOutBuffer432 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %352, i32 0, i32 9, !dbg !2706
  %353 = load i8*, i8** %tmpOutBuffer432, align 8, !dbg !2706
  %cmp433 = icmp eq i8* %351, %353, !dbg !2707
  br i1 %cmp433, label %if.then435, label %if.else451, !dbg !2708

if.then435:                                       ; preds = %if.then430
  %354 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2709
  %dictSize436 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %354, i32 0, i32 11, !dbg !2712
  %355 = load i64, i64* %dictSize436, align 8, !dbg !2712
  %cmp437 = icmp ugt i64 %355, 131072, !dbg !2713
  br i1 %cmp437, label %if.then439, label %if.end446, !dbg !2714

if.then439:                                       ; preds = %if.then435
  %356 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2715
  %tmpOutBuffer440 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %356, i32 0, i32 9, !dbg !2717
  %357 = load i8*, i8** %tmpOutBuffer440, align 8, !dbg !2717
  %358 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2718
  %dict441 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %358, i32 0, i32 10, !dbg !2719
  %359 = load i8*, i8** %dict441, align 8, !dbg !2719
  %360 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2720
  %dictSize442 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %360, i32 0, i32 11, !dbg !2721
  %361 = load i64, i64* %dictSize442, align 8, !dbg !2721
  %add.ptr443 = getelementptr inbounds i8, i8* %359, i64 %361, !dbg !2722
  %add.ptr444 = getelementptr inbounds i8, i8* %add.ptr443, i64 -65536, !dbg !2723
  %362 = call i8* @memcpy(i8* %357, i8* %add.ptr444, i64 65536), !dbg !2724
  %363 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2725
  %dictSize445 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %363, i32 0, i32 11, !dbg !2726
  store i64 65536, i64* %dictSize445, align 8, !dbg !2727
  br label %if.end446, !dbg !2728

if.end446:                                        ; preds = %if.then439, %if.then435
  %364 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2729
  %tmpOutBuffer447 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %364, i32 0, i32 9, !dbg !2730
  %365 = load i8*, i8** %tmpOutBuffer447, align 8, !dbg !2730
  %366 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2731
  %dictSize448 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %366, i32 0, i32 11, !dbg !2732
  %367 = load i64, i64* %dictSize448, align 8, !dbg !2732
  %add.ptr449 = getelementptr inbounds i8, i8* %365, i64 %367, !dbg !2733
  %368 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2734
  %tmpOut450 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %368, i32 0, i32 12, !dbg !2735
  store i8* %add.ptr449, i8** %tmpOut450, align 8, !dbg !2736
  br label %if.end463, !dbg !2737

if.else451:                                       ; preds = %if.then430
  %369 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2738
  %dictSize452 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %369, i32 0, i32 11, !dbg !2738
  %370 = load i64, i64* %dictSize452, align 8, !dbg !2738
  %cmp453 = icmp ult i64 %370, 65536, !dbg !2738
  br i1 %cmp453, label %cond.true455, label %cond.false457, !dbg !2738

cond.true455:                                     ; preds = %if.else451
  %371 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2738
  %dictSize456 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %371, i32 0, i32 11, !dbg !2738
  %372 = load i64, i64* %dictSize456, align 8, !dbg !2738
  br label %cond.end458, !dbg !2738

cond.false457:                                    ; preds = %if.else451
  br label %cond.end458, !dbg !2738

cond.end458:                                      ; preds = %cond.false457, %cond.true455
  %cond459 = phi i64 [ %372, %cond.true455 ], [ 65536, %cond.false457 ], !dbg !2738
  store i64 %cond459, i64* %reservedDictSpace, align 8, !dbg !2740
  %373 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2741
  %tmpOutBuffer460 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %373, i32 0, i32 9, !dbg !2742
  %374 = load i8*, i8** %tmpOutBuffer460, align 8, !dbg !2742
  %375 = load i64, i64* %reservedDictSpace, align 8, !dbg !2743
  %add.ptr461 = getelementptr inbounds i8, i8* %374, i64 %375, !dbg !2744
  %376 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2745
  %tmpOut462 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %376, i32 0, i32 12, !dbg !2746
  store i8* %add.ptr461, i8** %tmpOut462, align 8, !dbg !2747
  br label %if.end463

if.end463:                                        ; preds = %cond.end458, %if.end446
  br label %if.end464, !dbg !2748

if.end464:                                        ; preds = %if.end463, %if.end425
  %377 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2749
  %dict466 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %377, i32 0, i32 10, !dbg !2751
  %378 = load i8*, i8** %dict466, align 8, !dbg !2751
  store i8* %378, i8** %dict465, align 8, !dbg !2752
  %379 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2753
  %dictSize468 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %379, i32 0, i32 11, !dbg !2754
  %380 = load i64, i64* %dictSize468, align 8, !dbg !2754
  store i64 %380, i64* %dictSize467, align 8, !dbg !2755
  %381 = load i8*, i8** %dict465, align 8, !dbg !2756
  %tobool470 = icmp ne i8* %381, null, !dbg !2756
  br i1 %tobool470, label %land.lhs.true471, label %if.end477, !dbg !2758

land.lhs.true471:                                 ; preds = %if.end464
  %382 = load i64, i64* %dictSize467, align 8, !dbg !2759
  %cmp472 = icmp ugt i64 %382, 1073741824, !dbg !2760
  br i1 %cmp472, label %if.then474, label %if.end477, !dbg !2761

if.then474:                                       ; preds = %land.lhs.true471
  %383 = load i64, i64* %dictSize467, align 8, !dbg !2762
  %sub475 = sub i64 %383, 65536, !dbg !2764
  %384 = load i8*, i8** %dict465, align 8, !dbg !2765
  %add.ptr476 = getelementptr inbounds i8, i8* %384, i64 %sub475, !dbg !2765
  store i8* %add.ptr476, i8** %dict465, align 8, !dbg !2765
  store i64 65536, i64* %dictSize467, align 8, !dbg !2766
  br label %if.end477, !dbg !2767

if.end477:                                        ; preds = %if.then474, %land.lhs.true471, %if.end464
  %385 = load i8*, i8** %selectedIn, align 8, !dbg !2768
  %386 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2769
  %tmpOut478 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %386, i32 0, i32 12, !dbg !2770
  %387 = load i8*, i8** %tmpOut478, align 8, !dbg !2770
  %388 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2771
  %tmpInTarget479 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %388, i32 0, i32 8, !dbg !2772
  %389 = load i64, i64* %tmpInTarget479, align 8, !dbg !2772
  %conv480 = trunc i64 %389 to i32, !dbg !2773
  %390 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2774
  %maxBlockSize481 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %390, i32 0, i32 4, !dbg !2775
  %391 = load i64, i64* %maxBlockSize481, align 8, !dbg !2775
  %conv482 = trunc i64 %391 to i32, !dbg !2776
  %392 = load i8*, i8** %dict465, align 8, !dbg !2777
  %393 = load i64, i64* %dictSize467, align 8, !dbg !2778
  %conv483 = trunc i64 %393 to i32, !dbg !2779
  %call484 = call i32 @LZ4_decompress_safe_usingDict(i8* %385, i8* %387, i32 %conv480, i32 %conv482, i8* %392, i32 %conv483), !dbg !2780
  store i32 %call484, i32* %decodedSize469, align 4, !dbg !2781
  %394 = load i32, i32* %decodedSize469, align 4, !dbg !2782
  %cmp485 = icmp slt i32 %394, 0, !dbg !2784
  br i1 %cmp485, label %if.then487, label %if.end489, !dbg !2785

if.then487:                                       ; preds = %if.end477
  %call488 = call i64 @err0r(i32 16), !dbg !2786
  store i64 %call488, i64* %retval, align 8, !dbg !2787
  br label %return, !dbg !2787

if.end489:                                        ; preds = %if.end477
  %395 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2788
  %frameInfo490 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %395, i32 0, i32 0, !dbg !2790
  %contentChecksumFlag491 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo490, i32 0, i32 2, !dbg !2791
  %396 = load i32, i32* %contentChecksumFlag491, align 8, !dbg !2791
  %tobool492 = icmp ne i32 %396, 0, !dbg !2788
  br i1 %tobool492, label %if.then493, label %if.end498, !dbg !2792

if.then493:                                       ; preds = %if.end489
  %397 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2793
  %xxh494 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %397, i32 0, i32 15, !dbg !2794
  %398 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2795
  %tmpOut495 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %398, i32 0, i32 12, !dbg !2796
  %399 = load i8*, i8** %tmpOut495, align 8, !dbg !2796
  %400 = load i32, i32* %decodedSize469, align 4, !dbg !2797
  %conv496 = sext i32 %400 to i64, !dbg !2797
  %call497 = call i32 @XXH32_update(%struct.XXH32_state_s* %xxh494, i8* %399, i64 %conv496), !dbg !2798
  br label %if.end498, !dbg !2798

if.end498:                                        ; preds = %if.then493, %if.end489
  %401 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2799
  %frameInfo499 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %401, i32 0, i32 0, !dbg !2801
  %contentSize500 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo499, i32 0, i32 4, !dbg !2802
  %402 = load i64, i64* %contentSize500, align 8, !dbg !2802
  %tobool501 = icmp ne i64 %402, 0, !dbg !2799
  br i1 %tobool501, label %if.then502, label %if.end506, !dbg !2803

if.then502:                                       ; preds = %if.end498
  %403 = load i32, i32* %decodedSize469, align 4, !dbg !2804
  %conv503 = sext i32 %403 to i64, !dbg !2804
  %404 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2805
  %frameRemainingSize504 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %404, i32 0, i32 3, !dbg !2806
  %405 = load i64, i64* %frameRemainingSize504, align 8, !dbg !2807
  %sub505 = sub i64 %405, %conv503, !dbg !2807
  store i64 %sub505, i64* %frameRemainingSize504, align 8, !dbg !2807
  br label %if.end506, !dbg !2805

if.end506:                                        ; preds = %if.then502, %if.end498
  %406 = load i32, i32* %decodedSize469, align 4, !dbg !2808
  %conv507 = sext i32 %406 to i64, !dbg !2808
  %407 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2809
  %tmpOutSize508 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %407, i32 0, i32 13, !dbg !2810
  store i64 %conv507, i64* %tmpOutSize508, align 8, !dbg !2811
  %408 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2812
  %tmpOutStart509 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %408, i32 0, i32 14, !dbg !2813
  store i64 0, i64* %tmpOutStart509, align 8, !dbg !2814
  %409 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2815
  %dStage510 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %409, i32 0, i32 2, !dbg !2816
  store i32 9, i32* %dStage510, align 4, !dbg !2817
  br label %sw.bb511, !dbg !2818

sw.bb511:                                         ; preds = %while.body, %if.end506
  %410 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2819
  %tmpOutSize513 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %410, i32 0, i32 13, !dbg !2819
  %411 = load i64, i64* %tmpOutSize513, align 8, !dbg !2819
  %412 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2819
  %tmpOutStart514 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %412, i32 0, i32 14, !dbg !2819
  %413 = load i64, i64* %tmpOutStart514, align 8, !dbg !2819
  %sub515 = sub i64 %411, %413, !dbg !2819
  %414 = load i8*, i8** %dstEnd, align 8, !dbg !2819
  %415 = load i8*, i8** %dstPtr, align 8, !dbg !2819
  %sub.ptr.lhs.cast516 = ptrtoint i8* %414 to i64, !dbg !2819
  %sub.ptr.rhs.cast517 = ptrtoint i8* %415 to i64, !dbg !2819
  %sub.ptr.sub518 = sub i64 %sub.ptr.lhs.cast516, %sub.ptr.rhs.cast517, !dbg !2819
  %cmp519 = icmp ult i64 %sub515, %sub.ptr.sub518, !dbg !2819
  br i1 %cmp519, label %cond.true521, label %cond.false525, !dbg !2819

cond.true521:                                     ; preds = %sw.bb511
  %416 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2819
  %tmpOutSize522 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %416, i32 0, i32 13, !dbg !2819
  %417 = load i64, i64* %tmpOutSize522, align 8, !dbg !2819
  %418 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2819
  %tmpOutStart523 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %418, i32 0, i32 14, !dbg !2819
  %419 = load i64, i64* %tmpOutStart523, align 8, !dbg !2819
  %sub524 = sub i64 %417, %419, !dbg !2819
  br label %cond.end529, !dbg !2819

cond.false525:                                    ; preds = %sw.bb511
  %420 = load i8*, i8** %dstEnd, align 8, !dbg !2819
  %421 = load i8*, i8** %dstPtr, align 8, !dbg !2819
  %sub.ptr.lhs.cast526 = ptrtoint i8* %420 to i64, !dbg !2819
  %sub.ptr.rhs.cast527 = ptrtoint i8* %421 to i64, !dbg !2819
  %sub.ptr.sub528 = sub i64 %sub.ptr.lhs.cast526, %sub.ptr.rhs.cast527, !dbg !2819
  br label %cond.end529, !dbg !2819

cond.end529:                                      ; preds = %cond.false525, %cond.true521
  %cond530 = phi i64 [ %sub524, %cond.true521 ], [ %sub.ptr.sub528, %cond.false525 ], !dbg !2819
  store i64 %cond530, i64* %sizeToCopy512, align 8, !dbg !2821
  %422 = load i8*, i8** %dstPtr, align 8, !dbg !2822
  %423 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2823
  %tmpOut531 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %423, i32 0, i32 12, !dbg !2824
  %424 = load i8*, i8** %tmpOut531, align 8, !dbg !2824
  %425 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2825
  %tmpOutStart532 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %425, i32 0, i32 14, !dbg !2826
  %426 = load i64, i64* %tmpOutStart532, align 8, !dbg !2826
  %add.ptr533 = getelementptr inbounds i8, i8* %424, i64 %426, !dbg !2827
  %427 = load i64, i64* %sizeToCopy512, align 8, !dbg !2828
  %428 = call i8* @memcpy(i8* %422, i8* %add.ptr533, i64 %427), !dbg !2829
  %429 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2830
  %frameInfo534 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %429, i32 0, i32 0, !dbg !2832
  %blockMode535 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo534, i32 0, i32 1, !dbg !2833
  %430 = load i32, i32* %blockMode535, align 4, !dbg !2833
  %cmp536 = icmp eq i32 %430, 0, !dbg !2834
  br i1 %cmp536, label %if.then538, label %if.end539, !dbg !2835

if.then538:                                       ; preds = %cond.end529
  %431 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2836
  %432 = load i8*, i8** %dstPtr, align 8, !dbg !2837
  %433 = load i64, i64* %sizeToCopy512, align 8, !dbg !2838
  %434 = load i8*, i8** %dstStart, align 8, !dbg !2839
  call void @LZ4F_updateDict(%struct.LZ4F_dctx_s* %431, i8* %432, i64 %433, i8* %434, i32 1), !dbg !2840
  br label %if.end539, !dbg !2840

if.end539:                                        ; preds = %if.then538, %cond.end529
  %435 = load i64, i64* %sizeToCopy512, align 8, !dbg !2841
  %436 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2842
  %tmpOutStart540 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %436, i32 0, i32 14, !dbg !2843
  %437 = load i64, i64* %tmpOutStart540, align 8, !dbg !2844
  %add541 = add i64 %437, %435, !dbg !2844
  store i64 %add541, i64* %tmpOutStart540, align 8, !dbg !2844
  %438 = load i64, i64* %sizeToCopy512, align 8, !dbg !2845
  %439 = load i8*, i8** %dstPtr, align 8, !dbg !2846
  %add.ptr542 = getelementptr inbounds i8, i8* %439, i64 %438, !dbg !2846
  store i8* %add.ptr542, i8** %dstPtr, align 8, !dbg !2846
  %440 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2847
  %tmpOutStart543 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %440, i32 0, i32 14, !dbg !2849
  %441 = load i64, i64* %tmpOutStart543, align 8, !dbg !2849
  %442 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2850
  %tmpOutSize544 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %442, i32 0, i32 13, !dbg !2851
  %443 = load i64, i64* %tmpOutSize544, align 8, !dbg !2851
  %cmp545 = icmp eq i64 %441, %443, !dbg !2852
  br i1 %cmp545, label %if.then547, label %if.end549, !dbg !2853

if.then547:                                       ; preds = %if.end539
  %444 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2854
  %dStage548 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %444, i32 0, i32 2, !dbg !2856
  store i32 3, i32* %dStage548, align 4, !dbg !2857
  br label %sw.epilog, !dbg !2858

if.end549:                                        ; preds = %if.end539
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2859
  store i64 4, i64* %nextSrcSizeHint, align 8, !dbg !2860
  br label %sw.epilog, !dbg !2861

sw.bb550:                                         ; preds = %while.body
  %445 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2862
  %frameRemainingSize551 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %445, i32 0, i32 3, !dbg !2864
  %446 = load i64, i64* %frameRemainingSize551, align 8, !dbg !2864
  %tobool552 = icmp ne i64 %446, 0, !dbg !2862
  br i1 %tobool552, label %if.then553, label %if.end555, !dbg !2865

if.then553:                                       ; preds = %sw.bb550
  %call554 = call i64 @err0r(i32 14), !dbg !2866
  store i64 %call554, i64* %retval, align 8, !dbg !2867
  br label %return, !dbg !2867

if.end555:                                        ; preds = %sw.bb550
  %447 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2868
  %frameInfo556 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %447, i32 0, i32 0, !dbg !2870
  %contentChecksumFlag557 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo556, i32 0, i32 2, !dbg !2871
  %448 = load i32, i32* %contentChecksumFlag557, align 8, !dbg !2871
  %tobool558 = icmp ne i32 %448, 0, !dbg !2868
  br i1 %tobool558, label %if.end560, label %if.then559, !dbg !2872

if.then559:                                       ; preds = %if.end555
  store i64 0, i64* %nextSrcSizeHint, align 8, !dbg !2873
  %449 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2875
  call void @LZ4F_resetDecompressionContext(%struct.LZ4F_dctx_s* %449), !dbg !2876
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2877
  br label %sw.epilog, !dbg !2878

if.end560:                                        ; preds = %if.end555
  %450 = load i8*, i8** %srcEnd, align 8, !dbg !2879
  %451 = load i8*, i8** %srcPtr, align 8, !dbg !2881
  %sub.ptr.lhs.cast561 = ptrtoint i8* %450 to i64, !dbg !2882
  %sub.ptr.rhs.cast562 = ptrtoint i8* %451 to i64, !dbg !2882
  %sub.ptr.sub563 = sub i64 %sub.ptr.lhs.cast561, %sub.ptr.rhs.cast562, !dbg !2882
  %cmp564 = icmp slt i64 %sub.ptr.sub563, 4, !dbg !2883
  br i1 %cmp564, label %if.then566, label %if.else569, !dbg !2884

if.then566:                                       ; preds = %if.end560
  %452 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2885
  %tmpInSize567 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %452, i32 0, i32 7, !dbg !2887
  store i64 0, i64* %tmpInSize567, align 8, !dbg !2888
  %453 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2889
  %dStage568 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %453, i32 0, i32 2, !dbg !2890
  store i32 11, i32* %dStage568, align 4, !dbg !2891
  br label %if.end571, !dbg !2892

if.else569:                                       ; preds = %if.end560
  %454 = load i8*, i8** %srcPtr, align 8, !dbg !2893
  store i8* %454, i8** %selectedIn, align 8, !dbg !2895
  %455 = load i8*, i8** %srcPtr, align 8, !dbg !2896
  %add.ptr570 = getelementptr inbounds i8, i8* %455, i64 4, !dbg !2896
  store i8* %add.ptr570, i8** %srcPtr, align 8, !dbg !2896
  br label %if.end571

if.end571:                                        ; preds = %if.else569, %if.then566
  %456 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2897
  %dStage572 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %456, i32 0, i32 2, !dbg !2899
  %457 = load i32, i32* %dStage572, align 4, !dbg !2899
  %cmp573 = icmp eq i32 %457, 11, !dbg !2900
  br i1 %cmp573, label %if.then575, label %if.end605, !dbg !2901

if.then575:                                       ; preds = %if.end571
  br label %sw.bb576, !dbg !2901

sw.bb576:                                         ; preds = %while.body, %if.then575
  %458 = load i8*, i8** %srcEnd, align 8, !dbg !2902
  %459 = load i8*, i8** %srcPtr, align 8, !dbg !2904
  %sub.ptr.lhs.cast578 = ptrtoint i8* %458 to i64, !dbg !2905
  %sub.ptr.rhs.cast579 = ptrtoint i8* %459 to i64, !dbg !2905
  %sub.ptr.sub580 = sub i64 %sub.ptr.lhs.cast578, %sub.ptr.rhs.cast579, !dbg !2905
  store i64 %sub.ptr.sub580, i64* %remainingInput577, align 8, !dbg !2906
  %460 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2907
  %tmpInSize582 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %460, i32 0, i32 7, !dbg !2908
  %461 = load i64, i64* %tmpInSize582, align 8, !dbg !2908
  %sub583 = sub i64 4, %461, !dbg !2909
  store i64 %sub583, i64* %wantedData581, align 8, !dbg !2910
  %462 = load i64, i64* %wantedData581, align 8, !dbg !2911
  %463 = load i64, i64* %remainingInput577, align 8, !dbg !2911
  %cmp585 = icmp ult i64 %462, %463, !dbg !2911
  br i1 %cmp585, label %cond.true587, label %cond.false588, !dbg !2911

cond.true587:                                     ; preds = %sw.bb576
  %464 = load i64, i64* %wantedData581, align 8, !dbg !2911
  br label %cond.end589, !dbg !2911

cond.false588:                                    ; preds = %sw.bb576
  %465 = load i64, i64* %remainingInput577, align 8, !dbg !2911
  br label %cond.end589, !dbg !2911

cond.end589:                                      ; preds = %cond.false588, %cond.true587
  %cond590 = phi i64 [ %464, %cond.true587 ], [ %465, %cond.false588 ], !dbg !2911
  store i64 %cond590, i64* %sizeToCopy584, align 8, !dbg !2912
  %466 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2913
  %tmpIn591 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %466, i32 0, i32 6, !dbg !2914
  %467 = load i8*, i8** %tmpIn591, align 8, !dbg !2914
  %468 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2915
  %tmpInSize592 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %468, i32 0, i32 7, !dbg !2916
  %469 = load i64, i64* %tmpInSize592, align 8, !dbg !2916
  %add.ptr593 = getelementptr inbounds i8, i8* %467, i64 %469, !dbg !2917
  %470 = load i8*, i8** %srcPtr, align 8, !dbg !2918
  %471 = load i64, i64* %sizeToCopy584, align 8, !dbg !2919
  %472 = call i8* @memcpy(i8* %add.ptr593, i8* %470, i64 %471), !dbg !2920
  %473 = load i64, i64* %sizeToCopy584, align 8, !dbg !2921
  %474 = load i8*, i8** %srcPtr, align 8, !dbg !2922
  %add.ptr594 = getelementptr inbounds i8, i8* %474, i64 %473, !dbg !2922
  store i8* %add.ptr594, i8** %srcPtr, align 8, !dbg !2922
  %475 = load i64, i64* %sizeToCopy584, align 8, !dbg !2923
  %476 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2924
  %tmpInSize595 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %476, i32 0, i32 7, !dbg !2925
  %477 = load i64, i64* %tmpInSize595, align 8, !dbg !2926
  %add596 = add i64 %477, %475, !dbg !2926
  store i64 %add596, i64* %tmpInSize595, align 8, !dbg !2926
  %478 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2927
  %tmpInSize597 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %478, i32 0, i32 7, !dbg !2929
  %479 = load i64, i64* %tmpInSize597, align 8, !dbg !2929
  %cmp598 = icmp ult i64 %479, 4, !dbg !2930
  br i1 %cmp598, label %if.then600, label %if.end603, !dbg !2931

if.then600:                                       ; preds = %cond.end589
  %480 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2932
  %tmpInSize601 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %480, i32 0, i32 7, !dbg !2934
  %481 = load i64, i64* %tmpInSize601, align 8, !dbg !2934
  %sub602 = sub i64 4, %481, !dbg !2935
  store i64 %sub602, i64* %nextSrcSizeHint, align 8, !dbg !2936
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2937
  br label %sw.epilog, !dbg !2938

if.end603:                                        ; preds = %cond.end589
  %482 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2939
  %tmpIn604 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %482, i32 0, i32 6, !dbg !2940
  %483 = load i8*, i8** %tmpIn604, align 8, !dbg !2940
  store i8* %483, i8** %selectedIn, align 8, !dbg !2941
  br label %if.end605, !dbg !2942

if.end605:                                        ; preds = %if.end603, %if.end571
  %484 = load i8*, i8** %selectedIn, align 8, !dbg !2943
  %call607 = call i32 @LZ4F_readLE32(i8* %484), !dbg !2945
  store i32 %call607, i32* %readCRC606, align 4, !dbg !2946
  %485 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2947
  %xxh608 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %485, i32 0, i32 15, !dbg !2948
  %call609 = call i32 @XXH32_digest(%struct.XXH32_state_s* %xxh608), !dbg !2949
  store i32 %call609, i32* %resultCRC, align 4, !dbg !2950
  %486 = load i32, i32* %readCRC606, align 4, !dbg !2951
  %487 = load i32, i32* %resultCRC, align 4, !dbg !2953
  %cmp610 = icmp ne i32 %486, %487, !dbg !2954
  br i1 %cmp610, label %if.then612, label %if.end614, !dbg !2955

if.then612:                                       ; preds = %if.end605
  %call613 = call i64 @err0r(i32 18), !dbg !2956
  store i64 %call613, i64* %retval, align 8, !dbg !2957
  br label %return, !dbg !2957

if.end614:                                        ; preds = %if.end605
  store i64 0, i64* %nextSrcSizeHint, align 8, !dbg !2958
  %488 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2959
  call void @LZ4F_resetDecompressionContext(%struct.LZ4F_dctx_s* %488), !dbg !2960
  store i32 0, i32* %doAnotherStage, align 4, !dbg !2961
  br label %sw.epilog, !dbg !2962

sw.bb615:                                         ; preds = %while.body
  %489 = load i8*, i8** %srcEnd, align 8, !dbg !2963
  %490 = load i8*, i8** %srcPtr, align 8, !dbg !2965
  %sub.ptr.lhs.cast616 = ptrtoint i8* %489 to i64, !dbg !2966
  %sub.ptr.rhs.cast617 = ptrtoint i8* %490 to i64, !dbg !2966
  %sub.ptr.sub618 = sub i64 %sub.ptr.lhs.cast616, %sub.ptr.rhs.cast617, !dbg !2966
  %cmp619 = icmp sge i64 %sub.ptr.sub618, 4, !dbg !2967
  br i1 %cmp619, label %if.then621, label %if.else623, !dbg !2968

if.then621:                                       ; preds = %sw.bb615
  %491 = load i8*, i8** %srcPtr, align 8, !dbg !2969
  store i8* %491, i8** %selectedIn, align 8, !dbg !2971
  %492 = load i8*, i8** %srcPtr, align 8, !dbg !2972
  %add.ptr622 = getelementptr inbounds i8, i8* %492, i64 4, !dbg !2972
  store i8* %add.ptr622, i8** %srcPtr, align 8, !dbg !2972
  br label %if.end627, !dbg !2973

if.else623:                                       ; preds = %sw.bb615
  %493 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2974
  %tmpInSize624 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %493, i32 0, i32 7, !dbg !2976
  store i64 4, i64* %tmpInSize624, align 8, !dbg !2977
  %494 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2978
  %tmpInTarget625 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %494, i32 0, i32 8, !dbg !2979
  store i64 8, i64* %tmpInTarget625, align 8, !dbg !2980
  %495 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2981
  %dStage626 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %495, i32 0, i32 2, !dbg !2982
  store i32 13, i32* %dStage626, align 4, !dbg !2983
  br label %if.end627

if.end627:                                        ; preds = %if.else623, %if.then621
  %496 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2984
  %dStage628 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %496, i32 0, i32 2, !dbg !2986
  %497 = load i32, i32* %dStage628, align 4, !dbg !2986
  %cmp629 = icmp eq i32 %497, 13, !dbg !2987
  br i1 %cmp629, label %if.then631, label %if.end671, !dbg !2988

if.then631:                                       ; preds = %if.end627
  br label %sw.bb632, !dbg !2988

sw.bb632:                                         ; preds = %while.body, %if.then631
  %498 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2989
  %tmpInTarget634 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %498, i32 0, i32 8, !dbg !2989
  %499 = load i64, i64* %tmpInTarget634, align 8, !dbg !2989
  %500 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2989
  %tmpInSize635 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %500, i32 0, i32 7, !dbg !2989
  %501 = load i64, i64* %tmpInSize635, align 8, !dbg !2989
  %sub636 = sub i64 %499, %501, !dbg !2989
  %502 = load i8*, i8** %srcEnd, align 8, !dbg !2989
  %503 = load i8*, i8** %srcPtr, align 8, !dbg !2989
  %sub.ptr.lhs.cast637 = ptrtoint i8* %502 to i64, !dbg !2989
  %sub.ptr.rhs.cast638 = ptrtoint i8* %503 to i64, !dbg !2989
  %sub.ptr.sub639 = sub i64 %sub.ptr.lhs.cast637, %sub.ptr.rhs.cast638, !dbg !2989
  %cmp640 = icmp ult i64 %sub636, %sub.ptr.sub639, !dbg !2989
  br i1 %cmp640, label %cond.true642, label %cond.false646, !dbg !2989

cond.true642:                                     ; preds = %sw.bb632
  %504 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2989
  %tmpInTarget643 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %504, i32 0, i32 8, !dbg !2989
  %505 = load i64, i64* %tmpInTarget643, align 8, !dbg !2989
  %506 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2989
  %tmpInSize644 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %506, i32 0, i32 7, !dbg !2989
  %507 = load i64, i64* %tmpInSize644, align 8, !dbg !2989
  %sub645 = sub i64 %505, %507, !dbg !2989
  br label %cond.end650, !dbg !2989

cond.false646:                                    ; preds = %sw.bb632
  %508 = load i8*, i8** %srcEnd, align 8, !dbg !2989
  %509 = load i8*, i8** %srcPtr, align 8, !dbg !2989
  %sub.ptr.lhs.cast647 = ptrtoint i8* %508 to i64, !dbg !2989
  %sub.ptr.rhs.cast648 = ptrtoint i8* %509 to i64, !dbg !2989
  %sub.ptr.sub649 = sub i64 %sub.ptr.lhs.cast647, %sub.ptr.rhs.cast648, !dbg !2989
  br label %cond.end650, !dbg !2989

cond.end650:                                      ; preds = %cond.false646, %cond.true642
  %cond651 = phi i64 [ %sub645, %cond.true642 ], [ %sub.ptr.sub649, %cond.false646 ], !dbg !2989
  store i64 %cond651, i64* %sizeToCopy633, align 8, !dbg !2991
  %510 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2992
  %header652 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %510, i32 0, i32 17, !dbg !2993
  %arraydecay653 = getelementptr inbounds [19 x i8], [19 x i8]* %header652, i32 0, i32 0, !dbg !2992
  %511 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !2994
  %tmpInSize654 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %511, i32 0, i32 7, !dbg !2995
  %512 = load i64, i64* %tmpInSize654, align 8, !dbg !2995
  %add.ptr655 = getelementptr inbounds i8, i8* %arraydecay653, i64 %512, !dbg !2996
  %513 = load i8*, i8** %srcPtr, align 8, !dbg !2997
  %514 = load i64, i64* %sizeToCopy633, align 8, !dbg !2998
  %515 = call i8* @memcpy(i8* %add.ptr655, i8* %513, i64 %514), !dbg !2999
  %516 = load i64, i64* %sizeToCopy633, align 8, !dbg !3000
  %517 = load i8*, i8** %srcPtr, align 8, !dbg !3001
  %add.ptr656 = getelementptr inbounds i8, i8* %517, i64 %516, !dbg !3001
  store i8* %add.ptr656, i8** %srcPtr, align 8, !dbg !3001
  %518 = load i64, i64* %sizeToCopy633, align 8, !dbg !3002
  %519 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3003
  %tmpInSize657 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %519, i32 0, i32 7, !dbg !3004
  %520 = load i64, i64* %tmpInSize657, align 8, !dbg !3005
  %add658 = add i64 %520, %518, !dbg !3005
  store i64 %add658, i64* %tmpInSize657, align 8, !dbg !3005
  %521 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3006
  %tmpInSize659 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %521, i32 0, i32 7, !dbg !3008
  %522 = load i64, i64* %tmpInSize659, align 8, !dbg !3008
  %523 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3009
  %tmpInTarget660 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %523, i32 0, i32 8, !dbg !3010
  %524 = load i64, i64* %tmpInTarget660, align 8, !dbg !3010
  %cmp661 = icmp ult i64 %522, %524, !dbg !3011
  br i1 %cmp661, label %if.then663, label %if.end667, !dbg !3012

if.then663:                                       ; preds = %cond.end650
  %525 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3013
  %tmpInTarget664 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %525, i32 0, i32 8, !dbg !3015
  %526 = load i64, i64* %tmpInTarget664, align 8, !dbg !3015
  %527 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3016
  %tmpInSize665 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %527, i32 0, i32 7, !dbg !3017
  %528 = load i64, i64* %tmpInSize665, align 8, !dbg !3017
  %sub666 = sub i64 %526, %528, !dbg !3018
  store i64 %sub666, i64* %nextSrcSizeHint, align 8, !dbg !3019
  store i32 0, i32* %doAnotherStage, align 4, !dbg !3020
  br label %sw.epilog, !dbg !3021

if.end667:                                        ; preds = %cond.end650
  %529 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3022
  %header668 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %529, i32 0, i32 17, !dbg !3023
  %arraydecay669 = getelementptr inbounds [19 x i8], [19 x i8]* %header668, i32 0, i32 0, !dbg !3022
  %add.ptr670 = getelementptr inbounds i8, i8* %arraydecay669, i64 4, !dbg !3024
  store i8* %add.ptr670, i8** %selectedIn, align 8, !dbg !3025
  br label %if.end671, !dbg !3026

if.end671:                                        ; preds = %if.end667, %if.end627
  %530 = load i8*, i8** %selectedIn, align 8, !dbg !3027
  %call672 = call i32 @LZ4F_readLE32(i8* %530), !dbg !3029
  %conv673 = zext i32 %call672 to i64, !dbg !3029
  store i64 %conv673, i64* %SFrameSize, align 8, !dbg !3030
  %531 = load i64, i64* %SFrameSize, align 8, !dbg !3031
  %532 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3032
  %frameInfo674 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %532, i32 0, i32 0, !dbg !3033
  %contentSize675 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo674, i32 0, i32 4, !dbg !3034
  store i64 %531, i64* %contentSize675, align 8, !dbg !3035
  %533 = load i64, i64* %SFrameSize, align 8, !dbg !3036
  %534 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3037
  %tmpInTarget676 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %534, i32 0, i32 8, !dbg !3038
  store i64 %533, i64* %tmpInTarget676, align 8, !dbg !3039
  %535 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3040
  %dStage677 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %535, i32 0, i32 2, !dbg !3041
  store i32 14, i32* %dStage677, align 4, !dbg !3042
  br label %sw.epilog, !dbg !3043

sw.bb678:                                         ; preds = %while.body
  %536 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3044
  %tmpInTarget679 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %536, i32 0, i32 8, !dbg !3044
  %537 = load i64, i64* %tmpInTarget679, align 8, !dbg !3044
  %538 = load i8*, i8** %srcEnd, align 8, !dbg !3044
  %539 = load i8*, i8** %srcPtr, align 8, !dbg !3044
  %sub.ptr.lhs.cast680 = ptrtoint i8* %538 to i64, !dbg !3044
  %sub.ptr.rhs.cast681 = ptrtoint i8* %539 to i64, !dbg !3044
  %sub.ptr.sub682 = sub i64 %sub.ptr.lhs.cast680, %sub.ptr.rhs.cast681, !dbg !3044
  %cmp683 = icmp ult i64 %537, %sub.ptr.sub682, !dbg !3044
  br i1 %cmp683, label %cond.true685, label %cond.false687, !dbg !3044

cond.true685:                                     ; preds = %sw.bb678
  %540 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3044
  %tmpInTarget686 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %540, i32 0, i32 8, !dbg !3044
  %541 = load i64, i64* %tmpInTarget686, align 8, !dbg !3044
  br label %cond.end691, !dbg !3044

cond.false687:                                    ; preds = %sw.bb678
  %542 = load i8*, i8** %srcEnd, align 8, !dbg !3044
  %543 = load i8*, i8** %srcPtr, align 8, !dbg !3044
  %sub.ptr.lhs.cast688 = ptrtoint i8* %542 to i64, !dbg !3044
  %sub.ptr.rhs.cast689 = ptrtoint i8* %543 to i64, !dbg !3044
  %sub.ptr.sub690 = sub i64 %sub.ptr.lhs.cast688, %sub.ptr.rhs.cast689, !dbg !3044
  br label %cond.end691, !dbg !3044

cond.end691:                                      ; preds = %cond.false687, %cond.true685
  %cond692 = phi i64 [ %541, %cond.true685 ], [ %sub.ptr.sub690, %cond.false687 ], !dbg !3044
  store i64 %cond692, i64* %skipSize, align 8, !dbg !3046
  %544 = load i64, i64* %skipSize, align 8, !dbg !3047
  %545 = load i8*, i8** %srcPtr, align 8, !dbg !3048
  %add.ptr693 = getelementptr inbounds i8, i8* %545, i64 %544, !dbg !3048
  store i8* %add.ptr693, i8** %srcPtr, align 8, !dbg !3048
  %546 = load i64, i64* %skipSize, align 8, !dbg !3049
  %547 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3050
  %tmpInTarget694 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %547, i32 0, i32 8, !dbg !3051
  %548 = load i64, i64* %tmpInTarget694, align 8, !dbg !3052
  %sub695 = sub i64 %548, %546, !dbg !3052
  store i64 %sub695, i64* %tmpInTarget694, align 8, !dbg !3052
  store i32 0, i32* %doAnotherStage, align 4, !dbg !3053
  %549 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3054
  %tmpInTarget696 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %549, i32 0, i32 8, !dbg !3055
  %550 = load i64, i64* %tmpInTarget696, align 8, !dbg !3055
  store i64 %550, i64* %nextSrcSizeHint, align 8, !dbg !3056
  %551 = load i64, i64* %nextSrcSizeHint, align 8, !dbg !3057
  %tobool697 = icmp ne i64 %551, 0, !dbg !3057
  br i1 %tobool697, label %if.then698, label %if.end699, !dbg !3059

if.then698:                                       ; preds = %cond.end691
  br label %sw.epilog, !dbg !3060

if.end699:                                        ; preds = %cond.end691
  %552 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3061
  call void @LZ4F_resetDecompressionContext(%struct.LZ4F_dctx_s* %552), !dbg !3062
  br label %sw.epilog, !dbg !3063

sw.epilog:                                        ; preds = %while.body, %if.end699, %if.then698, %if.end671, %if.then663, %if.end614, %if.then600, %if.then559, %if.end549, %if.then547, %if.end422, %if.then342, %if.then310, %if.end301, %if.then289, %if.end242, %if.end241, %if.end173, %if.end162, %if.then143, %if.then130, %if.end54, %if.then40, %if.end10
  br label %while.cond, !dbg !2032, !llvm.loop !3064

while.end:                                        ; preds = %while.cond
  %553 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3066
  %frameInfo700 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %553, i32 0, i32 0, !dbg !3068
  %blockMode701 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo700, i32 0, i32 1, !dbg !3069
  %554 = load i32, i32* %blockMode701, align 4, !dbg !3069
  %cmp702 = icmp eq i32 %554, 0, !dbg !3070
  br i1 %cmp702, label %land.lhs.true704, label %if.end784, !dbg !3071

land.lhs.true704:                                 ; preds = %while.end
  %555 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3072
  %dict705 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %555, i32 0, i32 10, !dbg !3073
  %556 = load i8*, i8** %dict705, align 8, !dbg !3073
  %557 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3074
  %tmpOutBuffer706 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %557, i32 0, i32 9, !dbg !3075
  %558 = load i8*, i8** %tmpOutBuffer706, align 8, !dbg !3075
  %cmp707 = icmp ne i8* %556, %558, !dbg !3076
  br i1 %cmp707, label %land.lhs.true709, label %if.end784, !dbg !3077

land.lhs.true709:                                 ; preds = %land.lhs.true704
  %559 = load %struct.LZ4F_decompressOptions_t*, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8, !dbg !3078
  %stableDst = getelementptr inbounds %struct.LZ4F_decompressOptions_t, %struct.LZ4F_decompressOptions_t* %559, i32 0, i32 0, !dbg !3079
  %560 = load i32, i32* %stableDst, align 4, !dbg !3079
  %tobool710 = icmp ne i32 %560, 0, !dbg !3078
  br i1 %tobool710, label %if.end784, label %land.lhs.true711, !dbg !3080

land.lhs.true711:                                 ; preds = %land.lhs.true709
  %561 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3081
  %dStage712 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %561, i32 0, i32 2, !dbg !3082
  %562 = load i32, i32* %dStage712, align 4, !dbg !3082
  %sub713 = sub i32 %562, 2, !dbg !3083
  %cmp714 = icmp ult i32 %sub713, 8, !dbg !3084
  br i1 %cmp714, label %if.then716, label %if.end784, !dbg !3085

if.then716:                                       ; preds = %land.lhs.true711
  %563 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3086
  %dStage717 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %563, i32 0, i32 2, !dbg !3089
  %564 = load i32, i32* %dStage717, align 4, !dbg !3089
  %cmp718 = icmp eq i32 %564, 9, !dbg !3090
  br i1 %cmp718, label %if.then720, label %if.else757, !dbg !3091

if.then720:                                       ; preds = %if.then716
  %565 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3092
  %tmpOut721 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %565, i32 0, i32 12, !dbg !3094
  %566 = load i8*, i8** %tmpOut721, align 8, !dbg !3094
  %567 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3095
  %tmpOutBuffer722 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %567, i32 0, i32 9, !dbg !3096
  %568 = load i8*, i8** %tmpOutBuffer722, align 8, !dbg !3096
  %sub.ptr.lhs.cast723 = ptrtoint i8* %566 to i64, !dbg !3097
  %sub.ptr.rhs.cast724 = ptrtoint i8* %568 to i64, !dbg !3097
  %sub.ptr.sub725 = sub i64 %sub.ptr.lhs.cast723, %sub.ptr.rhs.cast724, !dbg !3097
  store i64 %sub.ptr.sub725, i64* %preserveSize, align 8, !dbg !3098
  %569 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3099
  %tmpOutSize726 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %569, i32 0, i32 13, !dbg !3100
  %570 = load i64, i64* %tmpOutSize726, align 8, !dbg !3100
  %sub727 = sub i64 65536, %570, !dbg !3101
  store i64 %sub727, i64* %copySize, align 8, !dbg !3102
  %571 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3103
  %dict728 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %571, i32 0, i32 10, !dbg !3104
  %572 = load i8*, i8** %dict728, align 8, !dbg !3104
  %573 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3105
  %dictSize729 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %573, i32 0, i32 11, !dbg !3106
  %574 = load i64, i64* %dictSize729, align 8, !dbg !3106
  %add.ptr730 = getelementptr inbounds i8, i8* %572, i64 %574, !dbg !3107
  %575 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3108
  %tmpOutStart731 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %575, i32 0, i32 14, !dbg !3109
  %576 = load i64, i64* %tmpOutStart731, align 8, !dbg !3109
  %idx.neg = sub i64 0, %576, !dbg !3110
  %add.ptr732 = getelementptr inbounds i8, i8* %add.ptr730, i64 %idx.neg, !dbg !3110
  store i8* %add.ptr732, i8** %oldDictEnd, align 8, !dbg !3111
  %577 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3112
  %tmpOutSize733 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %577, i32 0, i32 13, !dbg !3114
  %578 = load i64, i64* %tmpOutSize733, align 8, !dbg !3114
  %cmp734 = icmp ugt i64 %578, 65536, !dbg !3115
  br i1 %cmp734, label %if.then736, label %if.end737, !dbg !3116

if.then736:                                       ; preds = %if.then720
  store i64 0, i64* %copySize, align 8, !dbg !3117
  br label %if.end737, !dbg !3118

if.end737:                                        ; preds = %if.then736, %if.then720
  %579 = load i64, i64* %copySize, align 8, !dbg !3119
  %580 = load i64, i64* %preserveSize, align 8, !dbg !3121
  %cmp738 = icmp ugt i64 %579, %580, !dbg !3122
  br i1 %cmp738, label %if.then740, label %if.end741, !dbg !3123

if.then740:                                       ; preds = %if.end737
  %581 = load i64, i64* %preserveSize, align 8, !dbg !3124
  store i64 %581, i64* %copySize, align 8, !dbg !3125
  br label %if.end741, !dbg !3126

if.end741:                                        ; preds = %if.then740, %if.end737
  %582 = load i64, i64* %copySize, align 8, !dbg !3127
  %cmp742 = icmp ugt i64 %582, 0, !dbg !3129
  br i1 %cmp742, label %if.then744, label %if.end751, !dbg !3130

if.then744:                                       ; preds = %if.end741
  %583 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3131
  %tmpOutBuffer745 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %583, i32 0, i32 9, !dbg !3132
  %584 = load i8*, i8** %tmpOutBuffer745, align 8, !dbg !3132
  %585 = load i64, i64* %preserveSize, align 8, !dbg !3133
  %add.ptr746 = getelementptr inbounds i8, i8* %584, i64 %585, !dbg !3134
  %586 = load i64, i64* %copySize, align 8, !dbg !3135
  %idx.neg747 = sub i64 0, %586, !dbg !3136
  %add.ptr748 = getelementptr inbounds i8, i8* %add.ptr746, i64 %idx.neg747, !dbg !3136
  %587 = load i8*, i8** %oldDictEnd, align 8, !dbg !3137
  %588 = load i64, i64* %copySize, align 8, !dbg !3138
  %idx.neg749 = sub i64 0, %588, !dbg !3139
  %add.ptr750 = getelementptr inbounds i8, i8* %587, i64 %idx.neg749, !dbg !3139
  %589 = load i64, i64* %copySize, align 8, !dbg !3140
  %590 = call i8* @memcpy(i8* %add.ptr748, i8* %add.ptr750, i64 %589), !dbg !3141
  br label %if.end751, !dbg !3141

if.end751:                                        ; preds = %if.then744, %if.end741
  %591 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3142
  %tmpOutBuffer752 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %591, i32 0, i32 9, !dbg !3143
  %592 = load i8*, i8** %tmpOutBuffer752, align 8, !dbg !3143
  %593 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3144
  %dict753 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %593, i32 0, i32 10, !dbg !3145
  store i8* %592, i8** %dict753, align 8, !dbg !3146
  %594 = load i64, i64* %preserveSize, align 8, !dbg !3147
  %595 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3148
  %tmpOutStart754 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %595, i32 0, i32 14, !dbg !3149
  %596 = load i64, i64* %tmpOutStart754, align 8, !dbg !3149
  %add755 = add i64 %594, %596, !dbg !3150
  %597 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3151
  %dictSize756 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %597, i32 0, i32 11, !dbg !3152
  store i64 %add755, i64* %dictSize756, align 8, !dbg !3153
  br label %if.end783, !dbg !3154

if.else757:                                       ; preds = %if.then716
  %598 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3155
  %dict759 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %598, i32 0, i32 10, !dbg !3157
  %599 = load i8*, i8** %dict759, align 8, !dbg !3157
  %600 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3158
  %dictSize760 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %600, i32 0, i32 11, !dbg !3159
  %601 = load i64, i64* %dictSize760, align 8, !dbg !3159
  %add.ptr761 = getelementptr inbounds i8, i8* %599, i64 %601, !dbg !3160
  store i8* %add.ptr761, i8** %oldDictEnd758, align 8, !dbg !3161
  %602 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3162
  %dictSize762 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %602, i32 0, i32 11, !dbg !3162
  %603 = load i64, i64* %dictSize762, align 8, !dbg !3162
  %cmp763 = icmp ult i64 %603, 65536, !dbg !3162
  br i1 %cmp763, label %cond.true765, label %cond.false767, !dbg !3162

cond.true765:                                     ; preds = %if.else757
  %604 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3162
  %dictSize766 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %604, i32 0, i32 11, !dbg !3162
  %605 = load i64, i64* %dictSize766, align 8, !dbg !3162
  br label %cond.end768, !dbg !3162

cond.false767:                                    ; preds = %if.else757
  br label %cond.end768, !dbg !3162

cond.end768:                                      ; preds = %cond.false767, %cond.true765
  %cond769 = phi i64 [ %605, %cond.true765 ], [ 65536, %cond.false767 ], !dbg !3162
  store i64 %cond769, i64* %newDictSize, align 8, !dbg !3163
  %606 = load i64, i64* %newDictSize, align 8, !dbg !3164
  %cmp770 = icmp ugt i64 %606, 0, !dbg !3166
  br i1 %cmp770, label %if.then772, label %if.end776, !dbg !3167

if.then772:                                       ; preds = %cond.end768
  %607 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3168
  %tmpOutBuffer773 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %607, i32 0, i32 9, !dbg !3169
  %608 = load i8*, i8** %tmpOutBuffer773, align 8, !dbg !3169
  %609 = load i8*, i8** %oldDictEnd758, align 8, !dbg !3170
  %610 = load i64, i64* %newDictSize, align 8, !dbg !3171
  %idx.neg774 = sub i64 0, %610, !dbg !3172
  %add.ptr775 = getelementptr inbounds i8, i8* %609, i64 %idx.neg774, !dbg !3172
  %611 = load i64, i64* %newDictSize, align 8, !dbg !3173
  %612 = call i8* @memcpy(i8* %608, i8* %add.ptr775, i64 %611), !dbg !3174
  br label %if.end776, !dbg !3174

if.end776:                                        ; preds = %if.then772, %cond.end768
  %613 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3175
  %tmpOutBuffer777 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %613, i32 0, i32 9, !dbg !3176
  %614 = load i8*, i8** %tmpOutBuffer777, align 8, !dbg !3176
  %615 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3177
  %dict778 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %615, i32 0, i32 10, !dbg !3178
  store i8* %614, i8** %dict778, align 8, !dbg !3179
  %616 = load i64, i64* %newDictSize, align 8, !dbg !3180
  %617 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3181
  %dictSize779 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %617, i32 0, i32 11, !dbg !3182
  store i64 %616, i64* %dictSize779, align 8, !dbg !3183
  %618 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3184
  %tmpOutBuffer780 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %618, i32 0, i32 9, !dbg !3185
  %619 = load i8*, i8** %tmpOutBuffer780, align 8, !dbg !3185
  %620 = load i64, i64* %newDictSize, align 8, !dbg !3186
  %add.ptr781 = getelementptr inbounds i8, i8* %619, i64 %620, !dbg !3187
  %621 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3188
  %tmpOut782 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %621, i32 0, i32 12, !dbg !3189
  store i8* %add.ptr781, i8** %tmpOut782, align 8, !dbg !3190
  br label %if.end783

if.end783:                                        ; preds = %if.end776, %if.end751
  br label %if.end784, !dbg !3191

if.end784:                                        ; preds = %if.end783, %land.lhs.true711, %land.lhs.true709, %land.lhs.true704, %while.end
  %622 = load i8*, i8** %srcPtr, align 8, !dbg !3192
  %623 = load i8*, i8** %srcStart, align 8, !dbg !3193
  %sub.ptr.lhs.cast785 = ptrtoint i8* %622 to i64, !dbg !3194
  %sub.ptr.rhs.cast786 = ptrtoint i8* %623 to i64, !dbg !3194
  %sub.ptr.sub787 = sub i64 %sub.ptr.lhs.cast785, %sub.ptr.rhs.cast786, !dbg !3194
  %624 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !3195
  store i64 %sub.ptr.sub787, i64* %624, align 8, !dbg !3196
  %625 = load i8*, i8** %dstPtr, align 8, !dbg !3197
  %626 = load i8*, i8** %dstStart, align 8, !dbg !3198
  %sub.ptr.lhs.cast788 = ptrtoint i8* %625 to i64, !dbg !3199
  %sub.ptr.rhs.cast789 = ptrtoint i8* %626 to i64, !dbg !3199
  %sub.ptr.sub790 = sub i64 %sub.ptr.lhs.cast788, %sub.ptr.rhs.cast789, !dbg !3199
  %627 = load i64*, i64** %dstSizePtr.addr, align 8, !dbg !3200
  store i64 %sub.ptr.sub790, i64* %627, align 8, !dbg !3201
  %628 = load i64, i64* %nextSrcSizeHint, align 8, !dbg !3202
  store i64 %628, i64* %retval, align 8, !dbg !3203
  br label %return, !dbg !3203

return:                                           ; preds = %if.end784, %if.then612, %if.then553, %if.then487, %if.then397, %if.then368, %if.then299, %if.then149, %if.then84, %if.then76, %if.then53, %if.then17, %if.then9
  %629 = load i64, i64* %retval, align 8, !dbg !3204
  ret i64 %629, !dbg !3204
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_headerSize(i8* %src, i64 %srcSize) #0 !dbg !3205 {
entry:
  %retval = alloca i64, align 8
  %src.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %FLG = alloca i8, align 1
  %contentSizeFlag = alloca i32, align 4
  %dictIDFlag = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  %0 = load i64, i64* %srcSize.addr, align 8, !dbg !3208
  %cmp = icmp ult i64 %0, 5, !dbg !3210
  br i1 %cmp, label %if.then, label %if.end, !dbg !3211

if.then:                                          ; preds = %entry
  %call = call i64 @err0r(i32 12), !dbg !3212
  store i64 %call, i64* %retval, align 8, !dbg !3213
  br label %return, !dbg !3213

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8, !dbg !3214
  %call1 = call i32 @LZ4F_readLE32(i8* %1), !dbg !3216
  %and = and i32 %call1, -16, !dbg !3217
  %cmp2 = icmp eq i32 %and, 407710288, !dbg !3218
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3219

if.then3:                                         ; preds = %if.end
  store i64 8, i64* %retval, align 8, !dbg !3220
  br label %return, !dbg !3220

if.end4:                                          ; preds = %if.end
  %2 = load i8*, i8** %src.addr, align 8, !dbg !3221
  %call5 = call i32 @LZ4F_readLE32(i8* %2), !dbg !3223
  %cmp6 = icmp ne i32 %call5, 407708164, !dbg !3224
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !3225

if.then7:                                         ; preds = %if.end4
  %call8 = call i64 @err0r(i32 13), !dbg !3226
  store i64 %call8, i64* %retval, align 8, !dbg !3227
  br label %return, !dbg !3227

if.end9:                                          ; preds = %if.end4
  %3 = load i8*, i8** %src.addr, align 8, !dbg !3228
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 4, !dbg !3230
  %4 = load i8, i8* %arrayidx, align 1, !dbg !3230
  store i8 %4, i8* %FLG, align 1, !dbg !3231
  %5 = load i8, i8* %FLG, align 1, !dbg !3232
  %conv = zext i8 %5 to i32, !dbg !3232
  %shr = ashr i32 %conv, 3, !dbg !3233
  %and10 = and i32 %shr, 1, !dbg !3234
  store i32 %and10, i32* %contentSizeFlag, align 4, !dbg !3235
  %6 = load i8, i8* %FLG, align 1, !dbg !3236
  %conv11 = zext i8 %6 to i32, !dbg !3236
  %and12 = and i32 %conv11, 1, !dbg !3237
  store i32 %and12, i32* %dictIDFlag, align 4, !dbg !3238
  %7 = load i32, i32* %contentSizeFlag, align 4, !dbg !3239
  %mul = mul i32 %7, 8, !dbg !3240
  %conv13 = zext i32 %mul to i64, !dbg !3241
  %add = add i64 7, %conv13, !dbg !3242
  %8 = load i32, i32* %dictIDFlag, align 4, !dbg !3243
  %mul14 = mul i32 %8, 4, !dbg !3244
  %conv15 = zext i32 %mul14 to i64, !dbg !3245
  %add16 = add i64 %add, %conv15, !dbg !3246
  store i64 %add16, i64* %retval, align 8, !dbg !3247
  br label %return, !dbg !3247

return:                                           ; preds = %if.end9, %if.then7, %if.then3, %if.then
  %9 = load i64, i64* %retval, align 8, !dbg !3248
  ret i64 %9, !dbg !3248
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_decodeHeader(%struct.LZ4F_dctx_s* %dctx, i8* %src, i64 %srcSize) #0 !dbg !3249 {
entry:
  %retval = alloca i64, align 8
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %src.addr = alloca i8*, align 8
  %srcSize.addr = alloca i64, align 8
  %blockMode = alloca i32, align 4
  %blockChecksumFlag = alloca i32, align 4
  %contentSizeFlag = alloca i32, align 4
  %contentChecksumFlag = alloca i32, align 4
  %dictIDFlag = alloca i32, align 4
  %blockSizeID = alloca i32, align 4
  %frameHeaderSize = alloca i64, align 8
  %srcPtr = alloca i8*, align 8
  %FLG = alloca i32, align 4
  %version = alloca i32, align 4
  %BD = alloca i32, align 4
  %HC = alloca i8, align 1
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 %srcSize, i64* %srcSize.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8, !dbg !3252
  store i8* %0, i8** %srcPtr, align 8, !dbg !3253
  %1 = load i64, i64* %srcSize.addr, align 8, !dbg !3254
  %cmp = icmp ult i64 %1, 7, !dbg !3256
  br i1 %cmp, label %if.then, label %if.end, !dbg !3257

if.then:                                          ; preds = %entry
  %call = call i64 @err0r(i32 12), !dbg !3258
  store i64 %call, i64* %retval, align 8, !dbg !3259
  br label %return, !dbg !3259

if.end:                                           ; preds = %entry
  %2 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3260
  %frameInfo = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %2, i32 0, i32 0, !dbg !3261
  %3 = bitcast %struct.LZ4F_frameInfo_t* %frameInfo to i8*, !dbg !3262
  %4 = call i8* @memset(i8* %3, i32 0, i64 32), !dbg !3262
  %5 = load i8*, i8** %srcPtr, align 8, !dbg !3263
  %call1 = call i32 @LZ4F_readLE32(i8* %5), !dbg !3265
  %and = and i32 %call1, -16, !dbg !3266
  %cmp2 = icmp eq i32 %and, 407710288, !dbg !3267
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !3268

if.then3:                                         ; preds = %if.end
  %6 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3269
  %frameInfo4 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %6, i32 0, i32 0, !dbg !3271
  %frameType = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo4, i32 0, i32 3, !dbg !3272
  store i32 1, i32* %frameType, align 4, !dbg !3273
  %7 = load i8*, i8** %src.addr, align 8, !dbg !3274
  %8 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3276
  %header = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %8, i32 0, i32 17, !dbg !3277
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %header, i32 0, i32 0, !dbg !3278
  %cmp5 = icmp eq i8* %7, %arraydecay, !dbg !3279
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !3280

if.then6:                                         ; preds = %if.then3
  %9 = load i64, i64* %srcSize.addr, align 8, !dbg !3281
  %10 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3283
  %tmpInSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %10, i32 0, i32 7, !dbg !3284
  store i64 %9, i64* %tmpInSize, align 8, !dbg !3285
  %11 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3286
  %tmpInTarget = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %11, i32 0, i32 8, !dbg !3287
  store i64 8, i64* %tmpInTarget, align 8, !dbg !3288
  %12 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3289
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %12, i32 0, i32 2, !dbg !3290
  store i32 13, i32* %dStage, align 4, !dbg !3291
  %13 = load i64, i64* %srcSize.addr, align 8, !dbg !3292
  store i64 %13, i64* %retval, align 8, !dbg !3293
  br label %return, !dbg !3293

if.else:                                          ; preds = %if.then3
  %14 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3294
  %dStage7 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %14, i32 0, i32 2, !dbg !3296
  store i32 12, i32* %dStage7, align 4, !dbg !3297
  store i64 4, i64* %retval, align 8, !dbg !3298
  br label %return, !dbg !3298

if.end8:                                          ; preds = %if.end
  %15 = load i8*, i8** %srcPtr, align 8, !dbg !3299
  %call9 = call i32 @LZ4F_readLE32(i8* %15), !dbg !3301
  %cmp10 = icmp ne i32 %call9, 407708164, !dbg !3302
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !3303

if.then11:                                        ; preds = %if.end8
  %call12 = call i64 @err0r(i32 13), !dbg !3304
  store i64 %call12, i64* %retval, align 8, !dbg !3305
  br label %return, !dbg !3305

if.end13:                                         ; preds = %if.end8
  %16 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3306
  %frameInfo14 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %16, i32 0, i32 0, !dbg !3307
  %frameType15 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo14, i32 0, i32 3, !dbg !3308
  store i32 0, i32* %frameType15, align 4, !dbg !3309
  %17 = load i8*, i8** %srcPtr, align 8, !dbg !3310
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 4, !dbg !3310
  %18 = load i8, i8* %arrayidx, align 1, !dbg !3310
  %conv = zext i8 %18 to i32, !dbg !3310
  store i32 %conv, i32* %FLG, align 4, !dbg !3312
  %19 = load i32, i32* %FLG, align 4, !dbg !3313
  %shr = lshr i32 %19, 6, !dbg !3314
  %and16 = and i32 %shr, 3, !dbg !3315
  store i32 %and16, i32* %version, align 4, !dbg !3316
  %20 = load i32, i32* %FLG, align 4, !dbg !3317
  %shr17 = lshr i32 %20, 4, !dbg !3318
  %and18 = and i32 %shr17, 1, !dbg !3319
  store i32 %and18, i32* %blockChecksumFlag, align 4, !dbg !3320
  %21 = load i32, i32* %FLG, align 4, !dbg !3321
  %shr19 = lshr i32 %21, 5, !dbg !3322
  %and20 = and i32 %shr19, 1, !dbg !3323
  store i32 %and20, i32* %blockMode, align 4, !dbg !3324
  %22 = load i32, i32* %FLG, align 4, !dbg !3325
  %shr21 = lshr i32 %22, 3, !dbg !3326
  %and22 = and i32 %shr21, 1, !dbg !3327
  store i32 %and22, i32* %contentSizeFlag, align 4, !dbg !3328
  %23 = load i32, i32* %FLG, align 4, !dbg !3329
  %shr23 = lshr i32 %23, 2, !dbg !3330
  %and24 = and i32 %shr23, 1, !dbg !3331
  store i32 %and24, i32* %contentChecksumFlag, align 4, !dbg !3332
  %24 = load i32, i32* %FLG, align 4, !dbg !3333
  %and25 = and i32 %24, 1, !dbg !3334
  store i32 %and25, i32* %dictIDFlag, align 4, !dbg !3335
  %25 = load i32, i32* %FLG, align 4, !dbg !3336
  %shr26 = lshr i32 %25, 1, !dbg !3338
  %and27 = and i32 %shr26, 1, !dbg !3339
  %cmp28 = icmp ne i32 %and27, 0, !dbg !3340
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !3341

if.then30:                                        ; preds = %if.end13
  %call31 = call i64 @err0r(i32 8), !dbg !3342
  store i64 %call31, i64* %retval, align 8, !dbg !3343
  br label %return, !dbg !3343

if.end32:                                         ; preds = %if.end13
  %26 = load i32, i32* %version, align 4, !dbg !3344
  %cmp33 = icmp ne i32 %26, 1, !dbg !3346
  br i1 %cmp33, label %if.then35, label %if.end37, !dbg !3347

if.then35:                                        ; preds = %if.end32
  %call36 = call i64 @err0r(i32 6), !dbg !3348
  store i64 %call36, i64* %retval, align 8, !dbg !3349
  br label %return, !dbg !3349

if.end37:                                         ; preds = %if.end32
  %27 = load i32, i32* %contentSizeFlag, align 4, !dbg !3350
  %mul = mul i32 %27, 8, !dbg !3351
  %conv38 = zext i32 %mul to i64, !dbg !3352
  %add = add i64 7, %conv38, !dbg !3353
  %28 = load i32, i32* %dictIDFlag, align 4, !dbg !3354
  %mul39 = mul i32 %28, 4, !dbg !3355
  %conv40 = zext i32 %mul39 to i64, !dbg !3356
  %add41 = add i64 %add, %conv40, !dbg !3357
  store i64 %add41, i64* %frameHeaderSize, align 8, !dbg !3358
  %29 = load i64, i64* %srcSize.addr, align 8, !dbg !3359
  %30 = load i64, i64* %frameHeaderSize, align 8, !dbg !3361
  %cmp42 = icmp ult i64 %29, %30, !dbg !3362
  br i1 %cmp42, label %if.then44, label %if.end56, !dbg !3363

if.then44:                                        ; preds = %if.end37
  %31 = load i8*, i8** %srcPtr, align 8, !dbg !3364
  %32 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3367
  %header45 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %32, i32 0, i32 17, !dbg !3368
  %arraydecay46 = getelementptr inbounds [19 x i8], [19 x i8]* %header45, i32 0, i32 0, !dbg !3367
  %cmp47 = icmp ne i8* %31, %arraydecay46, !dbg !3369
  br i1 %cmp47, label %if.then49, label %if.end52, !dbg !3370

if.then49:                                        ; preds = %if.then44
  %33 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3371
  %header50 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %33, i32 0, i32 17, !dbg !3372
  %arraydecay51 = getelementptr inbounds [19 x i8], [19 x i8]* %header50, i32 0, i32 0, !dbg !3373
  %34 = load i8*, i8** %srcPtr, align 8, !dbg !3374
  %35 = load i64, i64* %srcSize.addr, align 8, !dbg !3375
  %36 = call i8* @memcpy(i8* %arraydecay51, i8* %34, i64 %35), !dbg !3373
  br label %if.end52, !dbg !3373

if.end52:                                         ; preds = %if.then49, %if.then44
  %37 = load i64, i64* %srcSize.addr, align 8, !dbg !3376
  %38 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3377
  %tmpInSize53 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %38, i32 0, i32 7, !dbg !3378
  store i64 %37, i64* %tmpInSize53, align 8, !dbg !3379
  %39 = load i64, i64* %frameHeaderSize, align 8, !dbg !3380
  %40 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3381
  %tmpInTarget54 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %40, i32 0, i32 8, !dbg !3382
  store i64 %39, i64* %tmpInTarget54, align 8, !dbg !3383
  %41 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3384
  %dStage55 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %41, i32 0, i32 2, !dbg !3385
  store i32 1, i32* %dStage55, align 4, !dbg !3386
  %42 = load i64, i64* %srcSize.addr, align 8, !dbg !3387
  store i64 %42, i64* %retval, align 8, !dbg !3388
  br label %return, !dbg !3388

if.end56:                                         ; preds = %if.end37
  %43 = load i8*, i8** %srcPtr, align 8, !dbg !3389
  %arrayidx57 = getelementptr inbounds i8, i8* %43, i64 5, !dbg !3389
  %44 = load i8, i8* %arrayidx57, align 1, !dbg !3389
  %conv58 = zext i8 %44 to i32, !dbg !3389
  store i32 %conv58, i32* %BD, align 4, !dbg !3391
  %45 = load i32, i32* %BD, align 4, !dbg !3392
  %shr59 = lshr i32 %45, 4, !dbg !3393
  %and60 = and i32 %shr59, 7, !dbg !3394
  store i32 %and60, i32* %blockSizeID, align 4, !dbg !3395
  %46 = load i32, i32* %BD, align 4, !dbg !3396
  %shr61 = lshr i32 %46, 7, !dbg !3398
  %and62 = and i32 %shr61, 1, !dbg !3399
  %cmp63 = icmp ne i32 %and62, 0, !dbg !3400
  br i1 %cmp63, label %if.then65, label %if.end67, !dbg !3401

if.then65:                                        ; preds = %if.end56
  %call66 = call i64 @err0r(i32 8), !dbg !3402
  store i64 %call66, i64* %retval, align 8, !dbg !3403
  br label %return, !dbg !3403

if.end67:                                         ; preds = %if.end56
  %47 = load i32, i32* %blockSizeID, align 4, !dbg !3404
  %cmp68 = icmp ult i32 %47, 4, !dbg !3406
  br i1 %cmp68, label %if.then70, label %if.end72, !dbg !3407

if.then70:                                        ; preds = %if.end67
  %call71 = call i64 @err0r(i32 2), !dbg !3408
  store i64 %call71, i64* %retval, align 8, !dbg !3409
  br label %return, !dbg !3409

if.end72:                                         ; preds = %if.end67
  %48 = load i32, i32* %BD, align 4, !dbg !3410
  %shr73 = lshr i32 %48, 0, !dbg !3412
  %and74 = and i32 %shr73, 15, !dbg !3413
  %cmp75 = icmp ne i32 %and74, 0, !dbg !3414
  br i1 %cmp75, label %if.then77, label %if.end79, !dbg !3415

if.then77:                                        ; preds = %if.end72
  %call78 = call i64 @err0r(i32 8), !dbg !3416
  store i64 %call78, i64* %retval, align 8, !dbg !3417
  br label %return, !dbg !3417

if.end79:                                         ; preds = %if.end72
  %49 = load i8*, i8** %srcPtr, align 8, !dbg !3418
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 4, !dbg !3420
  %50 = load i64, i64* %frameHeaderSize, align 8, !dbg !3421
  %sub = sub i64 %50, 5, !dbg !3422
  %call80 = call zeroext i8 @LZ4F_headerChecksum(i8* %add.ptr, i64 %sub), !dbg !3423
  store i8 %call80, i8* %HC, align 1, !dbg !3424
  %51 = load i8, i8* %HC, align 1, !dbg !3425
  %conv81 = zext i8 %51 to i32, !dbg !3425
  %52 = load i8*, i8** %srcPtr, align 8, !dbg !3427
  %53 = load i64, i64* %frameHeaderSize, align 8, !dbg !3428
  %sub82 = sub i64 %53, 1, !dbg !3429
  %arrayidx83 = getelementptr inbounds i8, i8* %52, i64 %sub82, !dbg !3427
  %54 = load i8, i8* %arrayidx83, align 1, !dbg !3427
  %conv84 = zext i8 %54 to i32, !dbg !3427
  %cmp85 = icmp ne i32 %conv81, %conv84, !dbg !3430
  br i1 %cmp85, label %if.then87, label %if.end89, !dbg !3431

if.then87:                                        ; preds = %if.end79
  %call88 = call i64 @err0r(i32 17), !dbg !3432
  store i64 %call88, i64* %retval, align 8, !dbg !3433
  br label %return, !dbg !3433

if.end89:                                         ; preds = %if.end79
  %55 = load i32, i32* %blockMode, align 4, !dbg !3434
  %56 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3435
  %frameInfo90 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %56, i32 0, i32 0, !dbg !3436
  %blockMode91 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo90, i32 0, i32 1, !dbg !3437
  store i32 %55, i32* %blockMode91, align 4, !dbg !3438
  %57 = load i32, i32* %blockChecksumFlag, align 4, !dbg !3439
  %58 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3440
  %frameInfo92 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %58, i32 0, i32 0, !dbg !3441
  %blockChecksumFlag93 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo92, i32 0, i32 6, !dbg !3442
  store i32 %57, i32* %blockChecksumFlag93, align 4, !dbg !3443
  %59 = load i32, i32* %contentChecksumFlag, align 4, !dbg !3444
  %60 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3445
  %frameInfo94 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %60, i32 0, i32 0, !dbg !3446
  %contentChecksumFlag95 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo94, i32 0, i32 2, !dbg !3447
  store i32 %59, i32* %contentChecksumFlag95, align 8, !dbg !3448
  %61 = load i32, i32* %blockSizeID, align 4, !dbg !3449
  %62 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3450
  %frameInfo96 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %62, i32 0, i32 0, !dbg !3451
  %blockSizeID97 = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo96, i32 0, i32 0, !dbg !3452
  store i32 %61, i32* %blockSizeID97, align 8, !dbg !3453
  %63 = load i32, i32* %blockSizeID, align 4, !dbg !3454
  %call98 = call i64 @LZ4F_getBlockSize(i32 %63), !dbg !3455
  %64 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3456
  %maxBlockSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %64, i32 0, i32 4, !dbg !3457
  store i64 %call98, i64* %maxBlockSize, align 8, !dbg !3458
  %65 = load i32, i32* %contentSizeFlag, align 4, !dbg !3459
  %tobool = icmp ne i32 %65, 0, !dbg !3459
  br i1 %tobool, label %if.then99, label %if.end103, !dbg !3461

if.then99:                                        ; preds = %if.end89
  %66 = load i8*, i8** %srcPtr, align 8, !dbg !3462
  %add.ptr100 = getelementptr inbounds i8, i8* %66, i64 6, !dbg !3463
  %call101 = call i64 @LZ4F_readLE64(i8* %add.ptr100), !dbg !3464
  %67 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3465
  %frameInfo102 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %67, i32 0, i32 0, !dbg !3466
  %contentSize = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo102, i32 0, i32 4, !dbg !3467
  store i64 %call101, i64* %contentSize, align 8, !dbg !3468
  %68 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3469
  %frameRemainingSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %68, i32 0, i32 3, !dbg !3470
  store i64 %call101, i64* %frameRemainingSize, align 8, !dbg !3471
  br label %if.end103, !dbg !3469

if.end103:                                        ; preds = %if.then99, %if.end89
  %69 = load i32, i32* %dictIDFlag, align 4, !dbg !3472
  %tobool104 = icmp ne i32 %69, 0, !dbg !3472
  br i1 %tobool104, label %if.then105, label %if.end110, !dbg !3474

if.then105:                                       ; preds = %if.end103
  %70 = load i8*, i8** %srcPtr, align 8, !dbg !3475
  %71 = load i64, i64* %frameHeaderSize, align 8, !dbg !3476
  %add.ptr106 = getelementptr inbounds i8, i8* %70, i64 %71, !dbg !3477
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr106, i64 -5, !dbg !3478
  %call108 = call i32 @LZ4F_readLE32(i8* %add.ptr107), !dbg !3479
  %72 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3480
  %frameInfo109 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %72, i32 0, i32 0, !dbg !3481
  %dictID = getelementptr inbounds %struct.LZ4F_frameInfo_t, %struct.LZ4F_frameInfo_t* %frameInfo109, i32 0, i32 5, !dbg !3482
  store i32 %call108, i32* %dictID, align 8, !dbg !3483
  br label %if.end110, !dbg !3480

if.end110:                                        ; preds = %if.then105, %if.end103
  %73 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3484
  %dStage111 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %73, i32 0, i32 2, !dbg !3485
  store i32 2, i32* %dStage111, align 4, !dbg !3486
  %74 = load i64, i64* %frameHeaderSize, align 8, !dbg !3487
  store i64 %74, i64* %retval, align 8, !dbg !3488
  br label %return, !dbg !3488

return:                                           ; preds = %if.end110, %if.then87, %if.then77, %if.then70, %if.then65, %if.end52, %if.then35, %if.then30, %if.then11, %if.else, %if.then6, %if.then
  %75 = load i64, i64* %retval, align 8, !dbg !3489
  ret i64 %75, !dbg !3489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_readLE32(i8* %src) #0 !dbg !3490 {
entry:
  %src.addr = alloca i8*, align 8
  %srcPtr = alloca i8*, align 8
  %value32 = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8, !dbg !3493
  store i8* %0, i8** %srcPtr, align 8, !dbg !3494
  %1 = load i8*, i8** %srcPtr, align 8, !dbg !3495
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3495
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3495
  %conv = zext i8 %2 to i32, !dbg !3495
  store i32 %conv, i32* %value32, align 4, !dbg !3496
  %3 = load i8*, i8** %srcPtr, align 8, !dbg !3497
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3497
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !3497
  %conv2 = zext i8 %4 to i32, !dbg !3498
  %shl = shl i32 %conv2, 8, !dbg !3499
  %5 = load i32, i32* %value32, align 4, !dbg !3500
  %add = add i32 %5, %shl, !dbg !3500
  store i32 %add, i32* %value32, align 4, !dbg !3500
  %6 = load i8*, i8** %srcPtr, align 8, !dbg !3501
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3501
  %7 = load i8, i8* %arrayidx3, align 1, !dbg !3501
  %conv4 = zext i8 %7 to i32, !dbg !3502
  %shl5 = shl i32 %conv4, 16, !dbg !3503
  %8 = load i32, i32* %value32, align 4, !dbg !3504
  %add6 = add i32 %8, %shl5, !dbg !3504
  store i32 %add6, i32* %value32, align 4, !dbg !3504
  %9 = load i8*, i8** %srcPtr, align 8, !dbg !3505
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !3505
  %10 = load i8, i8* %arrayidx7, align 1, !dbg !3505
  %conv8 = zext i8 %10 to i32, !dbg !3506
  %shl9 = shl i32 %conv8, 24, !dbg !3507
  %11 = load i32, i32* %value32, align 4, !dbg !3508
  %add10 = add i32 %11, %shl9, !dbg !3508
  store i32 %add10, i32* %value32, align 4, !dbg !3508
  %12 = load i32, i32* %value32, align 4, !dbg !3509
  ret i32 %12, !dbg !3510
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LZ4F_updateDict(%struct.LZ4F_dctx_s* %dctx, i8* %dstPtr, i64 %dstSize, i8* %dstBufferStart, i32 %withinTmp) #0 !dbg !3511 {
entry:
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %dstPtr.addr = alloca i8*, align 8
  %dstSize.addr = alloca i64, align 8
  %dstBufferStart.addr = alloca i8*, align 8
  %withinTmp.addr = alloca i32, align 4
  %preserveSize = alloca i64, align 8
  %copySize = alloca i64, align 8
  %oldDictEnd = alloca i8*, align 8
  %preserveSize61 = alloca i64, align 8
  %preserveSize77 = alloca i64, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store i8* %dstPtr, i8** %dstPtr.addr, align 8
  store i64 %dstSize, i64* %dstSize.addr, align 8
  store i8* %dstBufferStart, i8** %dstBufferStart.addr, align 8
  store i32 %withinTmp, i32* %withinTmp.addr, align 4
  %0 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3514
  %dictSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %0, i32 0, i32 11, !dbg !3516
  %1 = load i64, i64* %dictSize, align 8, !dbg !3516
  %cmp = icmp eq i64 %1, 0, !dbg !3517
  br i1 %cmp, label %if.then, label %if.end, !dbg !3518

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3519
  %3 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3520
  %dict = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %3, i32 0, i32 10, !dbg !3521
  store i8* %2, i8** %dict, align 8, !dbg !3522
  br label %if.end, !dbg !3520

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3523
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %4, i32 0, i32 10, !dbg !3525
  %5 = load i8*, i8** %dict1, align 8, !dbg !3525
  %6 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3526
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %6, i32 0, i32 11, !dbg !3527
  %7 = load i64, i64* %dictSize2, align 8, !dbg !3527
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %7, !dbg !3528
  %8 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3529
  %cmp3 = icmp eq i8* %add.ptr, %8, !dbg !3530
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !3531

if.then4:                                         ; preds = %if.end
  %9 = load i64, i64* %dstSize.addr, align 8, !dbg !3532
  %10 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3534
  %dictSize5 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %10, i32 0, i32 11, !dbg !3535
  %11 = load i64, i64* %dictSize5, align 8, !dbg !3536
  %add = add i64 %11, %9, !dbg !3536
  store i64 %add, i64* %dictSize5, align 8, !dbg !3536
  br label %return, !dbg !3537

if.end6:                                          ; preds = %if.end
  %12 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3538
  %13 = load i8*, i8** %dstBufferStart.addr, align 8, !dbg !3540
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64, !dbg !3541
  %sub.ptr.rhs.cast = ptrtoint i8* %13 to i64, !dbg !3541
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3541
  %14 = load i64, i64* %dstSize.addr, align 8, !dbg !3542
  %add7 = add i64 %sub.ptr.sub, %14, !dbg !3543
  %cmp8 = icmp uge i64 %add7, 65536, !dbg !3544
  br i1 %cmp8, label %if.then9, label %if.end16, !dbg !3545

if.then9:                                         ; preds = %if.end6
  %15 = load i8*, i8** %dstBufferStart.addr, align 8, !dbg !3546
  %16 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3548
  %dict10 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %16, i32 0, i32 10, !dbg !3549
  store i8* %15, i8** %dict10, align 8, !dbg !3550
  %17 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3551
  %18 = load i8*, i8** %dstBufferStart.addr, align 8, !dbg !3552
  %sub.ptr.lhs.cast11 = ptrtoint i8* %17 to i64, !dbg !3553
  %sub.ptr.rhs.cast12 = ptrtoint i8* %18 to i64, !dbg !3553
  %sub.ptr.sub13 = sub i64 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12, !dbg !3553
  %19 = load i64, i64* %dstSize.addr, align 8, !dbg !3554
  %add14 = add i64 %sub.ptr.sub13, %19, !dbg !3555
  %20 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3556
  %dictSize15 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %20, i32 0, i32 11, !dbg !3557
  store i64 %add14, i64* %dictSize15, align 8, !dbg !3558
  br label %return, !dbg !3559

if.end16:                                         ; preds = %if.end6
  %21 = load i32, i32* %withinTmp.addr, align 4, !dbg !3560
  %tobool = icmp ne i32 %21, 0, !dbg !3562
  br i1 %tobool, label %land.lhs.true, label %if.end22, !dbg !3563

land.lhs.true:                                    ; preds = %if.end16
  %22 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3564
  %dict17 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %22, i32 0, i32 10, !dbg !3565
  %23 = load i8*, i8** %dict17, align 8, !dbg !3565
  %24 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3566
  %tmpOutBuffer = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %24, i32 0, i32 9, !dbg !3567
  %25 = load i8*, i8** %tmpOutBuffer, align 8, !dbg !3567
  %cmp18 = icmp eq i8* %23, %25, !dbg !3568
  br i1 %cmp18, label %if.then19, label %if.end22, !dbg !3569

if.then19:                                        ; preds = %land.lhs.true
  %26 = load i64, i64* %dstSize.addr, align 8, !dbg !3570
  %27 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3572
  %dictSize20 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %27, i32 0, i32 11, !dbg !3573
  %28 = load i64, i64* %dictSize20, align 8, !dbg !3574
  %add21 = add i64 %28, %26, !dbg !3574
  store i64 %add21, i64* %dictSize20, align 8, !dbg !3574
  br label %return, !dbg !3575

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %29 = load i32, i32* %withinTmp.addr, align 4, !dbg !3576
  %tobool23 = icmp ne i32 %29, 0, !dbg !3576
  br i1 %tobool23, label %if.then24, label %if.end52, !dbg !3578

if.then24:                                        ; preds = %if.end22
  %30 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3579
  %tmpOut = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %30, i32 0, i32 12, !dbg !3581
  %31 = load i8*, i8** %tmpOut, align 8, !dbg !3581
  %32 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3582
  %tmpOutBuffer25 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %32, i32 0, i32 9, !dbg !3583
  %33 = load i8*, i8** %tmpOutBuffer25, align 8, !dbg !3583
  %sub.ptr.lhs.cast26 = ptrtoint i8* %31 to i64, !dbg !3584
  %sub.ptr.rhs.cast27 = ptrtoint i8* %33 to i64, !dbg !3584
  %sub.ptr.sub28 = sub i64 %sub.ptr.lhs.cast26, %sub.ptr.rhs.cast27, !dbg !3584
  store i64 %sub.ptr.sub28, i64* %preserveSize, align 8, !dbg !3585
  %34 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3586
  %tmpOutSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %34, i32 0, i32 13, !dbg !3587
  %35 = load i64, i64* %tmpOutSize, align 8, !dbg !3587
  %sub = sub i64 65536, %35, !dbg !3588
  store i64 %sub, i64* %copySize, align 8, !dbg !3589
  %36 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3590
  %dict29 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %36, i32 0, i32 10, !dbg !3591
  %37 = load i8*, i8** %dict29, align 8, !dbg !3591
  %38 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3592
  %dictSize30 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %38, i32 0, i32 11, !dbg !3593
  %39 = load i64, i64* %dictSize30, align 8, !dbg !3593
  %add.ptr31 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !3594
  %40 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3595
  %tmpOutStart = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %40, i32 0, i32 14, !dbg !3596
  %41 = load i64, i64* %tmpOutStart, align 8, !dbg !3596
  %idx.neg = sub i64 0, %41, !dbg !3597
  %add.ptr32 = getelementptr inbounds i8, i8* %add.ptr31, i64 %idx.neg, !dbg !3597
  store i8* %add.ptr32, i8** %oldDictEnd, align 8, !dbg !3598
  %42 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3599
  %tmpOutSize33 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %42, i32 0, i32 13, !dbg !3601
  %43 = load i64, i64* %tmpOutSize33, align 8, !dbg !3601
  %cmp34 = icmp ugt i64 %43, 65536, !dbg !3602
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !3603

if.then35:                                        ; preds = %if.then24
  store i64 0, i64* %copySize, align 8, !dbg !3604
  br label %if.end36, !dbg !3605

if.end36:                                         ; preds = %if.then35, %if.then24
  %44 = load i64, i64* %copySize, align 8, !dbg !3606
  %45 = load i64, i64* %preserveSize, align 8, !dbg !3608
  %cmp37 = icmp ugt i64 %44, %45, !dbg !3609
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !3610

if.then38:                                        ; preds = %if.end36
  %46 = load i64, i64* %preserveSize, align 8, !dbg !3611
  store i64 %46, i64* %copySize, align 8, !dbg !3612
  br label %if.end39, !dbg !3613

if.end39:                                         ; preds = %if.then38, %if.end36
  %47 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3614
  %tmpOutBuffer40 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %47, i32 0, i32 9, !dbg !3615
  %48 = load i8*, i8** %tmpOutBuffer40, align 8, !dbg !3615
  %49 = load i64, i64* %preserveSize, align 8, !dbg !3616
  %add.ptr41 = getelementptr inbounds i8, i8* %48, i64 %49, !dbg !3617
  %50 = load i64, i64* %copySize, align 8, !dbg !3618
  %idx.neg42 = sub i64 0, %50, !dbg !3619
  %add.ptr43 = getelementptr inbounds i8, i8* %add.ptr41, i64 %idx.neg42, !dbg !3619
  %51 = load i8*, i8** %oldDictEnd, align 8, !dbg !3620
  %52 = load i64, i64* %copySize, align 8, !dbg !3621
  %idx.neg44 = sub i64 0, %52, !dbg !3622
  %add.ptr45 = getelementptr inbounds i8, i8* %51, i64 %idx.neg44, !dbg !3622
  %53 = load i64, i64* %copySize, align 8, !dbg !3623
  %54 = call i8* @memcpy(i8* %add.ptr43, i8* %add.ptr45, i64 %53), !dbg !3624
  %55 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3625
  %tmpOutBuffer46 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %55, i32 0, i32 9, !dbg !3626
  %56 = load i8*, i8** %tmpOutBuffer46, align 8, !dbg !3626
  %57 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3627
  %dict47 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %57, i32 0, i32 10, !dbg !3628
  store i8* %56, i8** %dict47, align 8, !dbg !3629
  %58 = load i64, i64* %preserveSize, align 8, !dbg !3630
  %59 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3631
  %tmpOutStart48 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %59, i32 0, i32 14, !dbg !3632
  %60 = load i64, i64* %tmpOutStart48, align 8, !dbg !3632
  %add49 = add i64 %58, %60, !dbg !3633
  %61 = load i64, i64* %dstSize.addr, align 8, !dbg !3634
  %add50 = add i64 %add49, %61, !dbg !3635
  %62 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3636
  %dictSize51 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %62, i32 0, i32 11, !dbg !3637
  store i64 %add50, i64* %dictSize51, align 8, !dbg !3638
  br label %return, !dbg !3639

if.end52:                                         ; preds = %if.end22
  %63 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3640
  %dict53 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %63, i32 0, i32 10, !dbg !3642
  %64 = load i8*, i8** %dict53, align 8, !dbg !3642
  %65 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3643
  %tmpOutBuffer54 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %65, i32 0, i32 9, !dbg !3644
  %66 = load i8*, i8** %tmpOutBuffer54, align 8, !dbg !3644
  %cmp55 = icmp eq i8* %64, %66, !dbg !3645
  br i1 %cmp55, label %if.then56, label %if.end76, !dbg !3646

if.then56:                                        ; preds = %if.end52
  %67 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3647
  %dictSize57 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %67, i32 0, i32 11, !dbg !3650
  %68 = load i64, i64* %dictSize57, align 8, !dbg !3650
  %69 = load i64, i64* %dstSize.addr, align 8, !dbg !3651
  %add58 = add i64 %68, %69, !dbg !3652
  %70 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3653
  %maxBufferSize = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %70, i32 0, i32 5, !dbg !3654
  %71 = load i64, i64* %maxBufferSize, align 8, !dbg !3654
  %cmp59 = icmp ugt i64 %add58, %71, !dbg !3655
  br i1 %cmp59, label %if.then60, label %if.end70, !dbg !3656

if.then60:                                        ; preds = %if.then56
  %72 = load i64, i64* %dstSize.addr, align 8, !dbg !3657
  %sub62 = sub i64 65536, %72, !dbg !3659
  store i64 %sub62, i64* %preserveSize61, align 8, !dbg !3660
  %73 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3661
  %tmpOutBuffer63 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %73, i32 0, i32 9, !dbg !3662
  %74 = load i8*, i8** %tmpOutBuffer63, align 8, !dbg !3662
  %75 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3663
  %dict64 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %75, i32 0, i32 10, !dbg !3664
  %76 = load i8*, i8** %dict64, align 8, !dbg !3664
  %77 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3665
  %dictSize65 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %77, i32 0, i32 11, !dbg !3666
  %78 = load i64, i64* %dictSize65, align 8, !dbg !3666
  %add.ptr66 = getelementptr inbounds i8, i8* %76, i64 %78, !dbg !3667
  %79 = load i64, i64* %preserveSize61, align 8, !dbg !3668
  %idx.neg67 = sub i64 0, %79, !dbg !3669
  %add.ptr68 = getelementptr inbounds i8, i8* %add.ptr66, i64 %idx.neg67, !dbg !3669
  %80 = load i64, i64* %preserveSize61, align 8, !dbg !3670
  %81 = call i8* @memcpy(i8* %74, i8* %add.ptr68, i64 %80), !dbg !3671
  %82 = load i64, i64* %preserveSize61, align 8, !dbg !3672
  %83 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3673
  %dictSize69 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %83, i32 0, i32 11, !dbg !3674
  store i64 %82, i64* %dictSize69, align 8, !dbg !3675
  br label %if.end70, !dbg !3676

if.end70:                                         ; preds = %if.then60, %if.then56
  %84 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3677
  %tmpOutBuffer71 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %84, i32 0, i32 9, !dbg !3678
  %85 = load i8*, i8** %tmpOutBuffer71, align 8, !dbg !3678
  %86 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3679
  %dictSize72 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %86, i32 0, i32 11, !dbg !3680
  %87 = load i64, i64* %dictSize72, align 8, !dbg !3680
  %add.ptr73 = getelementptr inbounds i8, i8* %85, i64 %87, !dbg !3681
  %88 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3682
  %89 = load i64, i64* %dstSize.addr, align 8, !dbg !3683
  %90 = call i8* @memcpy(i8* %add.ptr73, i8* %88, i64 %89), !dbg !3684
  %91 = load i64, i64* %dstSize.addr, align 8, !dbg !3685
  %92 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3686
  %dictSize74 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %92, i32 0, i32 11, !dbg !3687
  %93 = load i64, i64* %dictSize74, align 8, !dbg !3688
  %add75 = add i64 %93, %91, !dbg !3688
  store i64 %add75, i64* %dictSize74, align 8, !dbg !3688
  br label %return, !dbg !3689

if.end76:                                         ; preds = %if.end52
  %94 = load i64, i64* %dstSize.addr, align 8, !dbg !3690
  %sub78 = sub i64 65536, %94, !dbg !3692
  store i64 %sub78, i64* %preserveSize77, align 8, !dbg !3693
  %95 = load i64, i64* %preserveSize77, align 8, !dbg !3694
  %96 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3696
  %dictSize79 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %96, i32 0, i32 11, !dbg !3697
  %97 = load i64, i64* %dictSize79, align 8, !dbg !3697
  %cmp80 = icmp ugt i64 %95, %97, !dbg !3698
  br i1 %cmp80, label %if.then81, label %if.end83, !dbg !3699

if.then81:                                        ; preds = %if.end76
  %98 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3700
  %dictSize82 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %98, i32 0, i32 11, !dbg !3701
  %99 = load i64, i64* %dictSize82, align 8, !dbg !3701
  store i64 %99, i64* %preserveSize77, align 8, !dbg !3702
  br label %if.end83, !dbg !3703

if.end83:                                         ; preds = %if.then81, %if.end76
  %100 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3704
  %tmpOutBuffer84 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %100, i32 0, i32 9, !dbg !3705
  %101 = load i8*, i8** %tmpOutBuffer84, align 8, !dbg !3705
  %102 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3706
  %dict85 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %102, i32 0, i32 10, !dbg !3707
  %103 = load i8*, i8** %dict85, align 8, !dbg !3707
  %104 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3708
  %dictSize86 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %104, i32 0, i32 11, !dbg !3709
  %105 = load i64, i64* %dictSize86, align 8, !dbg !3709
  %add.ptr87 = getelementptr inbounds i8, i8* %103, i64 %105, !dbg !3710
  %106 = load i64, i64* %preserveSize77, align 8, !dbg !3711
  %idx.neg88 = sub i64 0, %106, !dbg !3712
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr87, i64 %idx.neg88, !dbg !3712
  %107 = load i64, i64* %preserveSize77, align 8, !dbg !3713
  %108 = call i8* @memcpy(i8* %101, i8* %add.ptr89, i64 %107), !dbg !3714
  %109 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3715
  %tmpOutBuffer90 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %109, i32 0, i32 9, !dbg !3716
  %110 = load i8*, i8** %tmpOutBuffer90, align 8, !dbg !3716
  %111 = load i64, i64* %preserveSize77, align 8, !dbg !3717
  %add.ptr91 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !3718
  %112 = load i8*, i8** %dstPtr.addr, align 8, !dbg !3719
  %113 = load i64, i64* %dstSize.addr, align 8, !dbg !3720
  %114 = call i8* @memcpy(i8* %add.ptr91, i8* %112, i64 %113), !dbg !3721
  %115 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3722
  %tmpOutBuffer92 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %115, i32 0, i32 9, !dbg !3723
  %116 = load i8*, i8** %tmpOutBuffer92, align 8, !dbg !3723
  %117 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3724
  %dict93 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %117, i32 0, i32 10, !dbg !3725
  store i8* %116, i8** %dict93, align 8, !dbg !3726
  %118 = load i64, i64* %preserveSize77, align 8, !dbg !3727
  %119 = load i64, i64* %dstSize.addr, align 8, !dbg !3728
  %add94 = add i64 %118, %119, !dbg !3729
  %120 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3730
  %dictSize95 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %120, i32 0, i32 11, !dbg !3731
  store i64 %add94, i64* %dictSize95, align 8, !dbg !3732
  br label %return, !dbg !3733

return:                                           ; preds = %if.end83, %if.end70, %if.end39, %if.then19, %if.then9, %if.then4
  ret void, !dbg !3733
}

declare i32 @XXH32(i8*, i64, i32) #3

declare i32 @LZ4_decompress_safe_usingDict(i8*, i8*, i32, i32, i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define i64 @LZ4F_decompress_usingDict(%struct.LZ4F_dctx_s* %dctx, i8* %dstBuffer, i64* %dstSizePtr, i8* %srcBuffer, i64* %srcSizePtr, i8* %dict, i64 %dictSize, %struct.LZ4F_decompressOptions_t* %decompressOptionsPtr) #0 !dbg !3734 {
entry:
  %dctx.addr = alloca %struct.LZ4F_dctx_s*, align 8
  %dstBuffer.addr = alloca i8*, align 8
  %dstSizePtr.addr = alloca i64*, align 8
  %srcBuffer.addr = alloca i8*, align 8
  %srcSizePtr.addr = alloca i64*, align 8
  %dict.addr = alloca i8*, align 8
  %dictSize.addr = alloca i64, align 8
  %decompressOptionsPtr.addr = alloca %struct.LZ4F_decompressOptions_t*, align 8
  store %struct.LZ4F_dctx_s* %dctx, %struct.LZ4F_dctx_s** %dctx.addr, align 8
  store i8* %dstBuffer, i8** %dstBuffer.addr, align 8
  store i64* %dstSizePtr, i64** %dstSizePtr.addr, align 8
  store i8* %srcBuffer, i8** %srcBuffer.addr, align 8
  store i64* %srcSizePtr, i64** %srcSizePtr.addr, align 8
  store i8* %dict, i8** %dict.addr, align 8
  store i64 %dictSize, i64* %dictSize.addr, align 8
  store %struct.LZ4F_decompressOptions_t* %decompressOptionsPtr, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8
  %0 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3737
  %dStage = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %0, i32 0, i32 2, !dbg !3739
  %1 = load i32, i32* %dStage, align 4, !dbg !3739
  %cmp = icmp ule i32 %1, 2, !dbg !3740
  br i1 %cmp, label %if.then, label %if.end, !dbg !3741

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %dict.addr, align 8, !dbg !3742
  %3 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3744
  %dict1 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %3, i32 0, i32 10, !dbg !3745
  store i8* %2, i8** %dict1, align 8, !dbg !3746
  %4 = load i64, i64* %dictSize.addr, align 8, !dbg !3747
  %5 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3748
  %dictSize2 = getelementptr inbounds %struct.LZ4F_dctx_s, %struct.LZ4F_dctx_s* %5, i32 0, i32 11, !dbg !3749
  store i64 %4, i64* %dictSize2, align 8, !dbg !3750
  br label %if.end, !dbg !3751

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.LZ4F_dctx_s*, %struct.LZ4F_dctx_s** %dctx.addr, align 8, !dbg !3752
  %7 = load i8*, i8** %dstBuffer.addr, align 8, !dbg !3753
  %8 = load i64*, i64** %dstSizePtr.addr, align 8, !dbg !3754
  %9 = load i8*, i8** %srcBuffer.addr, align 8, !dbg !3755
  %10 = load i64*, i64** %srcSizePtr.addr, align 8, !dbg !3756
  %11 = load %struct.LZ4F_decompressOptions_t*, %struct.LZ4F_decompressOptions_t** %decompressOptionsPtr.addr, align 8, !dbg !3757
  %call = call i64 @LZ4F_decompress(%struct.LZ4F_dctx_s* %6, i8* %7, i64* %8, i8* %9, i64* %10, %struct.LZ4F_decompressOptions_t* %11), !dbg !3758
  ret i64 %call, !dbg !3759
}

declare void @LZ4_resetStream_fast(%union.LZ4_stream_u*) #3

declare void @LZ4_attach_dictionary(%union.LZ4_stream_u*, %union.LZ4_stream_u*) #3

declare void @LZ4_resetStreamHC_fast(%union.LZ4_streamHC_u*, i32) #3

declare void @LZ4_attach_HC_dictionary(%union.LZ4_streamHC_u*, %union.LZ4_streamHC_u*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_compressBlock(i8* %ctx, i8* %src, i8* %dst, i32 %srcSize, i32 %dstCapacity, i32 %level, %struct.LZ4F_CDict_s* %cdict) #0 !dbg !3760 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %acceleration = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %srcSize, i32* %srcSize.addr, align 4
  store i32 %dstCapacity, i32* %dstCapacity.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  %0 = load i32, i32* %level.addr, align 4, !dbg !3761
  %cmp = icmp slt i32 %0, 0, !dbg !3762
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3763

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4, !dbg !3764
  %sub = sub nsw i32 0, %1, !dbg !3765
  %add = add nsw i32 %sub, 1, !dbg !3766
  br label %cond.end, !dbg !3763

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3763

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ], !dbg !3763
  store i32 %cond, i32* %acceleration, align 4, !dbg !3767
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3768
  %3 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3769
  %4 = load i32, i32* %level.addr, align 4, !dbg !3770
  call void @LZ4F_initStream(i8* %2, %struct.LZ4F_CDict_s* %3, i32 %4, i32 1), !dbg !3771
  %5 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3772
  %tobool = icmp ne %struct.LZ4F_CDict_s* %5, null, !dbg !3772
  br i1 %tobool, label %if.then, label %if.else, !dbg !3774

if.then:                                          ; preds = %cond.end
  %6 = load i8*, i8** %ctx.addr, align 8, !dbg !3775
  %7 = bitcast i8* %6 to %union.LZ4_stream_u*, !dbg !3777
  %8 = load i8*, i8** %src.addr, align 8, !dbg !3778
  %9 = load i8*, i8** %dst.addr, align 8, !dbg !3779
  %10 = load i32, i32* %srcSize.addr, align 4, !dbg !3780
  %11 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3781
  %12 = load i32, i32* %acceleration, align 4, !dbg !3782
  %call = call i32 @LZ4_compress_fast_continue(%union.LZ4_stream_u* %7, i8* %8, i8* %9, i32 %10, i32 %11, i32 %12), !dbg !3783
  store i32 %call, i32* %retval, align 4, !dbg !3784
  br label %return, !dbg !3784

if.else:                                          ; preds = %cond.end
  %13 = load i8*, i8** %ctx.addr, align 8, !dbg !3785
  %14 = load i8*, i8** %src.addr, align 8, !dbg !3787
  %15 = load i8*, i8** %dst.addr, align 8, !dbg !3788
  %16 = load i32, i32* %srcSize.addr, align 4, !dbg !3789
  %17 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3790
  %18 = load i32, i32* %acceleration, align 4, !dbg !3791
  %call1 = call i32 @LZ4_compress_fast_extState_fastReset(i8* %13, i8* %14, i8* %15, i32 %16, i32 %17, i32 %18), !dbg !3792
  store i32 %call1, i32* %retval, align 4, !dbg !3793
  br label %return, !dbg !3793

return:                                           ; preds = %if.else, %if.then
  %19 = load i32, i32* %retval, align 4, !dbg !3794
  ret i32 %19, !dbg !3794
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_compressBlock_continue(i8* %ctx, i8* %src, i8* %dst, i32 %srcSize, i32 %dstCapacity, i32 %level, %struct.LZ4F_CDict_s* %cdict) #0 !dbg !3795 {
entry:
  %ctx.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  %acceleration = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %srcSize, i32* %srcSize.addr, align 4
  store i32 %dstCapacity, i32* %dstCapacity.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  %0 = load i32, i32* %level.addr, align 4, !dbg !3796
  %cmp = icmp slt i32 %0, 0, !dbg !3797
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3798

cond.true:                                        ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4, !dbg !3799
  %sub = sub nsw i32 0, %1, !dbg !3800
  %add = add nsw i32 %sub, 1, !dbg !3801
  br label %cond.end, !dbg !3798

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3798

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ 1, %cond.false ], !dbg !3798
  store i32 %cond, i32* %acceleration, align 4, !dbg !3802
  %2 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3803
  %3 = load i8*, i8** %ctx.addr, align 8, !dbg !3804
  %4 = bitcast i8* %3 to %union.LZ4_stream_u*, !dbg !3805
  %5 = load i8*, i8** %src.addr, align 8, !dbg !3806
  %6 = load i8*, i8** %dst.addr, align 8, !dbg !3807
  %7 = load i32, i32* %srcSize.addr, align 4, !dbg !3808
  %8 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3809
  %9 = load i32, i32* %acceleration, align 4, !dbg !3810
  %call = call i32 @LZ4_compress_fast_continue(%union.LZ4_stream_u* %4, i8* %5, i8* %6, i32 %7, i32 %8, i32 %9), !dbg !3811
  ret i32 %call, !dbg !3812
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_compressBlockHC(i8* %ctx, i8* %src, i8* %dst, i32 %srcSize, i32 %dstCapacity, i32 %level, %struct.LZ4F_CDict_s* %cdict) #0 !dbg !3813 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %srcSize, i32* %srcSize.addr, align 4
  store i32 %dstCapacity, i32* %dstCapacity.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  %0 = load i8*, i8** %ctx.addr, align 8, !dbg !3814
  %1 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3815
  %2 = load i32, i32* %level.addr, align 4, !dbg !3816
  call void @LZ4F_initStream(i8* %0, %struct.LZ4F_CDict_s* %1, i32 %2, i32 1), !dbg !3817
  %3 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3818
  %tobool = icmp ne %struct.LZ4F_CDict_s* %3, null, !dbg !3818
  br i1 %tobool, label %if.then, label %if.end, !dbg !3820

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %ctx.addr, align 8, !dbg !3821
  %5 = bitcast i8* %4 to %union.LZ4_streamHC_u*, !dbg !3823
  %6 = load i8*, i8** %src.addr, align 8, !dbg !3824
  %7 = load i8*, i8** %dst.addr, align 8, !dbg !3825
  %8 = load i32, i32* %srcSize.addr, align 4, !dbg !3826
  %9 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3827
  %call = call i32 @LZ4_compress_HC_continue(%union.LZ4_streamHC_u* %5, i8* %6, i8* %7, i32 %8, i32 %9), !dbg !3828
  store i32 %call, i32* %retval, align 4, !dbg !3829
  br label %return, !dbg !3829

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %ctx.addr, align 8, !dbg !3830
  %11 = load i8*, i8** %src.addr, align 8, !dbg !3831
  %12 = load i8*, i8** %dst.addr, align 8, !dbg !3832
  %13 = load i32, i32* %srcSize.addr, align 4, !dbg !3833
  %14 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3834
  %15 = load i32, i32* %level.addr, align 4, !dbg !3835
  %call1 = call i32 @LZ4_compress_HC_extStateHC_fastReset(i8* %10, i8* %11, i8* %12, i32 %13, i32 %14, i32 %15), !dbg !3836
  store i32 %call1, i32* %retval, align 4, !dbg !3837
  br label %return, !dbg !3837

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !3838
  ret i32 %16, !dbg !3838
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4F_compressBlockHC_continue(i8* %ctx, i8* %src, i8* %dst, i32 %srcSize, i32 %dstCapacity, i32 %level, %struct.LZ4F_CDict_s* %cdict) #0 !dbg !3839 {
entry:
  %ctx.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %srcSize.addr = alloca i32, align 4
  %dstCapacity.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %cdict.addr = alloca %struct.LZ4F_CDict_s*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %srcSize, i32* %srcSize.addr, align 4
  store i32 %dstCapacity, i32* %dstCapacity.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store %struct.LZ4F_CDict_s* %cdict, %struct.LZ4F_CDict_s** %cdict.addr, align 8
  %0 = load i32, i32* %level.addr, align 4, !dbg !3840
  %1 = load %struct.LZ4F_CDict_s*, %struct.LZ4F_CDict_s** %cdict.addr, align 8, !dbg !3841
  %2 = load i8*, i8** %ctx.addr, align 8, !dbg !3842
  %3 = bitcast i8* %2 to %union.LZ4_streamHC_u*, !dbg !3843
  %4 = load i8*, i8** %src.addr, align 8, !dbg !3844
  %5 = load i8*, i8** %dst.addr, align 8, !dbg !3845
  %6 = load i32, i32* %srcSize.addr, align 4, !dbg !3846
  %7 = load i32, i32* %dstCapacity.addr, align 4, !dbg !3847
  %call = call i32 @LZ4_compress_HC_continue(%union.LZ4_streamHC_u* %3, i8* %4, i8* %5, i32 %6, i32 %7), !dbg !3848
  ret i32 %call, !dbg !3849
}

declare i32 @LZ4_compress_fast_continue(%union.LZ4_stream_u*, i8*, i8*, i32, i32, i32) #3

declare i32 @LZ4_compress_fast_extState_fastReset(i8*, i8*, i8*, i32, i32, i32) #3

declare i32 @LZ4_compress_HC_continue(%union.LZ4_streamHC_u*, i8*, i8*, i32, i32) #3

declare i32 @LZ4_compress_HC_extStateHC_fastReset(i8*, i8*, i8*, i32, i32, i32) #3

declare i32 @LZ4_saveDict(%union.LZ4_stream_u*, i8*, i32) #3

declare i32 @LZ4_saveDictHC(%union.LZ4_streamHC_u*, i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @LZ4F_readLE64(i8* %src) #0 !dbg !3850 {
entry:
  %src.addr = alloca i8*, align 8
  %srcPtr = alloca i8*, align 8
  %value64 = alloca i64, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8*, i8** %src.addr, align 8, !dbg !3853
  store i8* %0, i8** %srcPtr, align 8, !dbg !3854
  %1 = load i8*, i8** %srcPtr, align 8, !dbg !3855
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0, !dbg !3855
  %2 = load i8, i8* %arrayidx, align 1, !dbg !3855
  %conv = zext i8 %2 to i64, !dbg !3855
  store i64 %conv, i64* %value64, align 8, !dbg !3856
  %3 = load i8*, i8** %srcPtr, align 8, !dbg !3857
  %arrayidx1 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3857
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !3857
  %conv2 = zext i8 %4 to i64, !dbg !3858
  %shl = shl i64 %conv2, 8, !dbg !3859
  %5 = load i64, i64* %value64, align 8, !dbg !3860
  %add = add i64 %5, %shl, !dbg !3860
  store i64 %add, i64* %value64, align 8, !dbg !3860
  %6 = load i8*, i8** %srcPtr, align 8, !dbg !3861
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3861
  %7 = load i8, i8* %arrayidx3, align 1, !dbg !3861
  %conv4 = zext i8 %7 to i64, !dbg !3862
  %shl5 = shl i64 %conv4, 16, !dbg !3863
  %8 = load i64, i64* %value64, align 8, !dbg !3864
  %add6 = add i64 %8, %shl5, !dbg !3864
  store i64 %add6, i64* %value64, align 8, !dbg !3864
  %9 = load i8*, i8** %srcPtr, align 8, !dbg !3865
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !3865
  %10 = load i8, i8* %arrayidx7, align 1, !dbg !3865
  %conv8 = zext i8 %10 to i64, !dbg !3866
  %shl9 = shl i64 %conv8, 24, !dbg !3867
  %11 = load i64, i64* %value64, align 8, !dbg !3868
  %add10 = add i64 %11, %shl9, !dbg !3868
  store i64 %add10, i64* %value64, align 8, !dbg !3868
  %12 = load i8*, i8** %srcPtr, align 8, !dbg !3869
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !3869
  %13 = load i8, i8* %arrayidx11, align 1, !dbg !3869
  %conv12 = zext i8 %13 to i64, !dbg !3870
  %shl13 = shl i64 %conv12, 32, !dbg !3871
  %14 = load i64, i64* %value64, align 8, !dbg !3872
  %add14 = add i64 %14, %shl13, !dbg !3872
  store i64 %add14, i64* %value64, align 8, !dbg !3872
  %15 = load i8*, i8** %srcPtr, align 8, !dbg !3873
  %arrayidx15 = getelementptr inbounds i8, i8* %15, i64 5, !dbg !3873
  %16 = load i8, i8* %arrayidx15, align 1, !dbg !3873
  %conv16 = zext i8 %16 to i64, !dbg !3874
  %shl17 = shl i64 %conv16, 40, !dbg !3875
  %17 = load i64, i64* %value64, align 8, !dbg !3876
  %add18 = add i64 %17, %shl17, !dbg !3876
  store i64 %add18, i64* %value64, align 8, !dbg !3876
  %18 = load i8*, i8** %srcPtr, align 8, !dbg !3877
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 6, !dbg !3877
  %19 = load i8, i8* %arrayidx19, align 1, !dbg !3877
  %conv20 = zext i8 %19 to i64, !dbg !3878
  %shl21 = shl i64 %conv20, 48, !dbg !3879
  %20 = load i64, i64* %value64, align 8, !dbg !3880
  %add22 = add i64 %20, %shl21, !dbg !3880
  store i64 %add22, i64* %value64, align 8, !dbg !3880
  %21 = load i8*, i8** %srcPtr, align 8, !dbg !3881
  %arrayidx23 = getelementptr inbounds i8, i8* %21, i64 7, !dbg !3881
  %22 = load i8, i8* %arrayidx23, align 1, !dbg !3881
  %conv24 = zext i8 %22 to i64, !dbg !3882
  %shl25 = shl i64 %conv24, 56, !dbg !3883
  %23 = load i64, i64* %value64, align 8, !dbg !3884
  %add26 = add i64 %23, %shl25, !dbg !3884
  store i64 %add26, i64* %value64, align 8, !dbg !3884
  %24 = load i64, i64* %value64, align 8, !dbg !3885
  ret i64 %24, !dbg !3886
}

; Function Attrs: noinline nounwind uwtable
define i8* @memcpy(i8*, i8*, i64) #5 !dbg !3887 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8, !dbg !3892
  store i8* %9, i8** %7, align 8, !dbg !3893
  %10 = load i8*, i8** %5, align 8, !dbg !3894
  store i8* %10, i8** %8, align 8, !dbg !3895
  br label %11, !dbg !3896

; <label>:11:                                     ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !3897
  %13 = add i64 %12, -1, !dbg !3897
  store i64 %13, i64* %6, align 8, !dbg !3897
  %14 = icmp ugt i64 %12, 0, !dbg !3898
  br i1 %14, label %15, label %21, !dbg !3896

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !3899
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !3899
  store i8* %17, i8** %8, align 8, !dbg !3899
  %18 = load i8, i8* %16, align 1, !dbg !3900
  %19 = load i8*, i8** %7, align 8, !dbg !3901
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !3901
  store i8* %20, i8** %7, align 8, !dbg !3901
  store i8 %18, i8* %19, align 1, !dbg !3902
  br label %11, !dbg !3896, !llvm.loop !3903

; <label>:21:                                     ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !3904
  ret i8* %22, !dbg !3905
}

; Function Attrs: noinline nounwind uwtable
define i8* @memset(i8*, i32, i64) #5 !dbg !3906 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8, !dbg !3909
  store i8* %8, i8** %7, align 8, !dbg !3910
  br label %9, !dbg !3911

; <label>:9:                                      ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !3912
  %11 = add i64 %10, -1, !dbg !3912
  store i64 %11, i64* %6, align 8, !dbg !3912
  %12 = icmp ugt i64 %10, 0, !dbg !3913
  br i1 %12, label %13, label %18, !dbg !3911

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !3914
  %15 = trunc i32 %14 to i8, !dbg !3914
  %16 = load i8*, i8** %7, align 8, !dbg !3915
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !3915
  store i8* %17, i8** %7, align 8, !dbg !3915
  store i8 %15, i8* %16, align 1, !dbg !3916
  br label %9, !dbg !3911, !llvm.loop !3917

; <label>:18:                                     ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !3918
  ret i8* %19, !dbg !3919
}

; Function Attrs: noinline nounwind uwtable
define void @klee_div_zero_check(i64) #5 !dbg !3920 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8, !dbg !3924
  %4 = icmp eq i64 %3, 0, !dbg !3926
  br i1 %4, label %5, label %6, !dbg !3927

; <label>:5:                                      ; preds = %1
  call void @klee_report_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0), i32 14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.24, i32 0, i32 0)) #8, !dbg !3928
  unreachable, !dbg !3928

; <label>:6:                                      ; preds = %1
  ret void, !dbg !3929
}

; Function Attrs: noreturn
declare void @klee_report_error(i8*, i32, i8*, i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!14, !292, !294, !296}
!llvm.module.flags = !{!298, !299, !300}
!llvm.ident = !{!301, !302, !302, !302}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "codeError", scope: !2, file: !3, line: 246, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "LZ4F_getErrorName", scope: !3, file: !3, line: 244, type: !4, isLocal: false, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3 = !DIFile(filename: "lib/lz4frame.c", directory: "/home/klee/lz4")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_errorCode_t", file: !10, line: 95, baseType: !11)
!10 = !DIFile(filename: "lib/lz4frame.h", directory: "/home/klee/lz4")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 62, baseType: !13)
!12 = !DIFile(filename: "/tmp/llvm-60-install_O_D_A/lib/clang/6.0.1/include/stddef.h", directory: "/home/klee/lz4")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 (branches/release_60 355598)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !85, globals: !270)
!15 = !{!16, !40, !47, !51, !55, !59, !63, !68}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 481, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!18 = !DIEnumerator(name: "LZ4F_OK_NoError", value: 0)
!19 = !DIEnumerator(name: "LZ4F_ERROR_GENERIC", value: 1)
!20 = !DIEnumerator(name: "LZ4F_ERROR_maxBlockSize_invalid", value: 2)
!21 = !DIEnumerator(name: "LZ4F_ERROR_blockMode_invalid", value: 3)
!22 = !DIEnumerator(name: "LZ4F_ERROR_contentChecksumFlag_invalid", value: 4)
!23 = !DIEnumerator(name: "LZ4F_ERROR_compressionLevel_invalid", value: 5)
!24 = !DIEnumerator(name: "LZ4F_ERROR_headerVersion_wrong", value: 6)
!25 = !DIEnumerator(name: "LZ4F_ERROR_blockChecksum_invalid", value: 7)
!26 = !DIEnumerator(name: "LZ4F_ERROR_reservedFlag_set", value: 8)
!27 = !DIEnumerator(name: "LZ4F_ERROR_allocation_failed", value: 9)
!28 = !DIEnumerator(name: "LZ4F_ERROR_srcSize_tooLarge", value: 10)
!29 = !DIEnumerator(name: "LZ4F_ERROR_dstMaxSize_tooSmall", value: 11)
!30 = !DIEnumerator(name: "LZ4F_ERROR_frameHeader_incomplete", value: 12)
!31 = !DIEnumerator(name: "LZ4F_ERROR_frameType_unknown", value: 13)
!32 = !DIEnumerator(name: "LZ4F_ERROR_frameSize_wrong", value: 14)
!33 = !DIEnumerator(name: "LZ4F_ERROR_srcPtr_wrong", value: 15)
!34 = !DIEnumerator(name: "LZ4F_ERROR_decompressionFailed", value: 16)
!35 = !DIEnumerator(name: "LZ4F_ERROR_headerChecksum_invalid", value: 17)
!36 = !DIEnumerator(name: "LZ4F_ERROR_contentChecksum_invalid", value: 18)
!37 = !DIEnumerator(name: "LZ4F_ERROR_frameDecoding_alreadyStarted", value: 19)
!38 = !DIEnumerator(name: "LZ4F_ERROR_maxCode", value: 20)
!39 = !DIEnumerator(name: "_LZ4F_dummy_error_enum_for_c89_never_used", value: 21)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 114, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "LZ4F_default", value: 0)
!43 = !DIEnumerator(name: "LZ4F_max64KB", value: 4)
!44 = !DIEnumerator(name: "LZ4F_max256KB", value: 5)
!45 = !DIEnumerator(name: "LZ4F_max1MB", value: 6)
!46 = !DIEnumerator(name: "LZ4F_max4MB", value: 7)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 129, size: 32, elements: !48)
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "LZ4F_blockLinked", value: 0)
!50 = !DIEnumerator(name: "LZ4F_blockIndependent", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 136, size: 32, elements: !52)
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "LZ4F_noContentChecksum", value: 0)
!54 = !DIEnumerator(name: "LZ4F_contentChecksumEnabled", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 148, size: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "LZ4F_frame", value: 0)
!58 = !DIEnumerator(name: "LZ4F_skippableFrame", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 143, size: 32, elements: !60)
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "LZ4F_noBlockChecksum", value: 0)
!62 = !DIEnumerator(name: "LZ4F_blockChecksumEnabled", value: 1)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 801, size: 32, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "notDone", value: 0)
!66 = !DIEnumerator(name: "fromTmpBuffer", value: 1)
!67 = !DIEnumerator(name: "fromSrcBuffer", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 1012, size: 32, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!70 = !DIEnumerator(name: "dstage_getFrameHeader", value: 0)
!71 = !DIEnumerator(name: "dstage_storeFrameHeader", value: 1)
!72 = !DIEnumerator(name: "dstage_init", value: 2)
!73 = !DIEnumerator(name: "dstage_getBlockHeader", value: 3)
!74 = !DIEnumerator(name: "dstage_storeBlockHeader", value: 4)
!75 = !DIEnumerator(name: "dstage_copyDirect", value: 5)
!76 = !DIEnumerator(name: "dstage_getBlockChecksum", value: 6)
!77 = !DIEnumerator(name: "dstage_getCBlock", value: 7)
!78 = !DIEnumerator(name: "dstage_storeCBlock", value: 8)
!79 = !DIEnumerator(name: "dstage_flushOut", value: 9)
!80 = !DIEnumerator(name: "dstage_getSuffix", value: 10)
!81 = !DIEnumerator(name: "dstage_storeSuffix", value: 11)
!82 = !DIEnumerator(name: "dstage_getSFrameSize", value: 12)
!83 = !DIEnumerator(name: "dstage_storeSFrameSize", value: 13)
!84 = !DIEnumerator(name: "dstage_skipSkippable", value: 14)
!85 = !{!9, !86, !87, !88, !90, !91, !96, !11, !6, !98, !174, !238, !104, !137, !92, !121, !241, !243, !269, !187, !206, !189, !197, !191}
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_errorCodes", file: !10, line: 482, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !12, line: 51, baseType: !89)
!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "BYTE", file: !3, line: 122, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !94, line: 48, baseType: !95)
!94 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/klee/lz4")
!95 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "U64", file: !3, line: 126, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !94, line: 55, baseType: !13)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_CDict", file: !10, line: 491, baseType: !100)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LZ4F_CDict_s", file: !3, line: 467, size: 192, elements: !101)
!101 = !{!102, !103, !136}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dictContent", scope: !100, file: !3, line: 468, baseType: !90, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fastCtx", scope: !100, file: !3, line: 469, baseType: !104, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4_stream_t", file: !106, line: 257, baseType: !107)
!106 = !DIFile(filename: "lib/lz4.h", directory: "/home/klee/lz4")
!107 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "LZ4_stream_u", file: !106, line: 563, size: 131328, elements: !108)
!108 = !{!109, !114}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !107, file: !106, line: 564, baseType: !110, size: 131328)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 131328, elements: !112)
!111 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !{!113}
!113 = !DISubrange(count: 2052)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "internal_donotuse", scope: !107, file: !106, line: 565, baseType: !115, size: 131328)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4_stream_t_internal", file: !106, line: 514, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LZ4_stream_t_internal", file: !106, line: 515, size: 131328, elements: !117)
!117 = !{!118, !124, !125, !128, !129, !132, !135}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "hashTable", scope: !116, file: !106, line: 516, baseType: !119, size: 131072)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 131072, elements: !122)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 51, baseType: !121)
!121 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!122 = !{!123}
!123 = !DISubrange(count: 4096)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "currentOffset", scope: !116, file: !106, line: 517, baseType: !120, size: 32, offset: 131072)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !116, file: !106, line: 518, baseType: !126, size: 16, offset: 131104)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 49, baseType: !127)
!127 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tableType", scope: !116, file: !106, line: 519, baseType: !126, size: 16, offset: 131120)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "dictionary", scope: !116, file: !106, line: 520, baseType: !130, size: 64, offset: 131136)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "dictCtx", scope: !116, file: !106, line: 521, baseType: !133, size: 64, offset: 131200)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "dictSize", scope: !116, file: !106, line: 522, baseType: !120, size: 32, offset: 131264)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "HCCtx", scope: !100, file: !3, line: 470, baseType: !137, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4_streamHC_t", file: !139, line: 101, baseType: !140)
!139 = !DIFile(filename: "lib/lz4hc.h", directory: "/home/klee/lz4")
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "LZ4_streamHC_u", file: !139, line: 246, size: 2097600, elements: !141)
!141 = !{!142, !146}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !140, file: !139, line: 247, baseType: !143, size: 2097600)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2097600, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 32775)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "internal_donotuse", scope: !140, file: !139, line: 248, baseType: !147, size: 2097536)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4HC_CCtx_internal", file: !139, line: 201, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LZ4HC_CCtx_internal", file: !139, line: 202, size: 2097536, elements: !149)
!149 = !{!150, !154, !158, !159, !160, !161, !162, !163, !164, !166, !170, !171}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hashTable", scope: !148, file: !139, line: 204, baseType: !151, size: 1048576)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1048576, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 32768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chainTable", scope: !148, file: !139, line: 205, baseType: !155, size: 1048576, offset: 1048576)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1048576, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 65536)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !148, file: !139, line: 206, baseType: !130, size: 64, offset: 2097152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !148, file: !139, line: 207, baseType: !130, size: 64, offset: 2097216)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dictBase", scope: !148, file: !139, line: 208, baseType: !130, size: 64, offset: 2097280)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dictLimit", scope: !148, file: !139, line: 209, baseType: !120, size: 32, offset: 2097344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "lowLimit", scope: !148, file: !139, line: 210, baseType: !120, size: 32, offset: 2097376)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nextToUpdate", scope: !148, file: !139, line: 211, baseType: !120, size: 32, offset: 2097408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "compressionLevel", scope: !148, file: !139, line: 212, baseType: !165, size: 16, offset: 2097440)
!165 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "favorDecSpeed", scope: !148, file: !139, line: 213, baseType: !167, size: 8, offset: 2097456)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !168, line: 194, baseType: !169)
!168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/klee/lz4")
!169 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "dirty", scope: !148, file: !139, line: 215, baseType: !167, size: 8, offset: 2097464)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "dictCtx", scope: !148, file: !139, line: 216, baseType: !172, size: 64, offset: 2097472)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_cctx_t", file: !3, line: 229, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LZ4F_cctx_s", file: !3, line: 213, size: 1472, elements: !177)
!177 = !{!178, !205, !207, !208, !211, !212, !213, !214, !215, !216, !217, !234, !235, !237}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "prefs", scope: !176, file: !3, line: 215, baseType: !179, size: 448)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_preferences_t", file: !10, line: 189, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 183, size: 448, elements: !181)
!181 = !{!182, !198, !199, !200, !201}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "frameInfo", scope: !180, file: !10, line: 184, baseType: !183, size: 256)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_frameInfo_t", file: !10, line: 174, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 166, size: 256, elements: !185)
!185 = !{!186, !188, !190, !192, !194, !195, !196}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "blockSizeID", scope: !184, file: !10, line: 167, baseType: !187, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_blockSizeID_t", file: !10, line: 124, baseType: !40)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "blockMode", scope: !184, file: !10, line: 168, baseType: !189, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_blockMode_t", file: !10, line: 134, baseType: !47)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "contentChecksumFlag", scope: !184, file: !10, line: 169, baseType: !191, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_contentChecksum_t", file: !10, line: 141, baseType: !51)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "frameType", scope: !184, file: !10, line: 170, baseType: !193, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_frameType_t", file: !10, line: 152, baseType: !55)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "contentSize", scope: !184, file: !10, line: 171, baseType: !111, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dictID", scope: !184, file: !10, line: 172, baseType: !121, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "blockChecksumFlag", scope: !184, file: !10, line: 173, baseType: !197, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_blockChecksum_t", file: !10, line: 146, baseType: !59)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "compressionLevel", scope: !180, file: !10, line: 185, baseType: !86, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "autoFlush", scope: !180, file: !10, line: 186, baseType: !121, size: 32, offset: 288)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "favorDecSpeed", scope: !180, file: !10, line: 187, baseType: !121, size: 32, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !180, file: !10, line: 188, baseType: !202, size: 96, offset: 352)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 96, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 3)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !3, line: 216, baseType: !206, size: 32, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !3, line: 124, baseType: !120)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "cStage", scope: !176, file: !3, line: 217, baseType: !206, size: 32, offset: 480)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cdict", scope: !176, file: !3, line: 218, baseType: !209, size: 64, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "maxBlockSize", scope: !176, file: !3, line: 219, baseType: !11, size: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "maxBufferSize", scope: !176, file: !3, line: 220, baseType: !11, size: 64, offset: 640)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tmpBuff", scope: !176, file: !3, line: 221, baseType: !91, size: 64, offset: 704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tmpIn", scope: !176, file: !3, line: 222, baseType: !91, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tmpInSize", scope: !176, file: !3, line: 223, baseType: !11, size: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "totalInSize", scope: !176, file: !3, line: 224, baseType: !96, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "xxh", scope: !176, file: !3, line: 225, baseType: !218, size: 384, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "XXH32_state_t", file: !219, line: 172, baseType: !220)
!219 = !DIFile(filename: "lib/xxhash.h", directory: "/home/klee/lz4")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "XXH32_state_s", file: !219, line: 264, size: 384, elements: !221)
!221 = !{!222, !223, !224, !225, !226, !227, !228, !232, !233}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "total_len_32", scope: !220, file: !219, line: 265, baseType: !120, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "large_len", scope: !220, file: !219, line: 266, baseType: !120, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !220, file: !219, line: 267, baseType: !120, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !220, file: !219, line: 268, baseType: !120, size: 32, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !220, file: !219, line: 269, baseType: !120, size: 32, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !220, file: !219, line: 270, baseType: !120, size: 32, offset: 160)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mem32", scope: !220, file: !219, line: 271, baseType: !229, size: 128, offset: 192)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 128, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 4)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !220, file: !219, line: 272, baseType: !120, size: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !220, file: !219, line: 273, baseType: !120, size: 32, offset: 352)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "lz4CtxPtr", scope: !176, file: !3, line: 226, baseType: !90, size: 64, offset: 1344)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "lz4CtxAlloc", scope: !176, file: !3, line: 227, baseType: !236, size: 16, offset: 1408)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !3, line: 123, baseType: !126)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "lz4CtxState", scope: !176, file: !3, line: 228, baseType: !236, size: 16, offset: 1424)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_compressionContext_t", file: !10, line: 224, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_cctx", file: !10, line: 223, baseType: !176)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_dctx", file: !10, line: 327, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LZ4F_dctx_s", file: !3, line: 1024, size: 2048, elements: !246)
!246 = !{!247, !248, !249, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "frameInfo", scope: !245, file: !3, line: 1025, baseType: !183, size: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !245, file: !3, line: 1026, baseType: !206, size: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dStage", scope: !245, file: !3, line: 1027, baseType: !250, size: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "dStage_t", file: !3, line: 1022, baseType: !68)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "frameRemainingSize", scope: !245, file: !3, line: 1028, baseType: !96, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "maxBlockSize", scope: !245, file: !3, line: 1029, baseType: !11, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "maxBufferSize", scope: !245, file: !3, line: 1030, baseType: !11, size: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tmpIn", scope: !245, file: !3, line: 1031, baseType: !91, size: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tmpInSize", scope: !245, file: !3, line: 1032, baseType: !11, size: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tmpInTarget", scope: !245, file: !3, line: 1033, baseType: !11, size: 64, offset: 640)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tmpOutBuffer", scope: !245, file: !3, line: 1034, baseType: !91, size: 64, offset: 704)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !245, file: !3, line: 1035, baseType: !241, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dictSize", scope: !245, file: !3, line: 1036, baseType: !11, size: 64, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tmpOut", scope: !245, file: !3, line: 1037, baseType: !91, size: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tmpOutSize", scope: !245, file: !3, line: 1038, baseType: !11, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tmpOutStart", scope: !245, file: !3, line: 1039, baseType: !11, size: 64, offset: 1024)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "xxh", scope: !245, file: !3, line: 1040, baseType: !218, size: 384, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "blockChecksum", scope: !245, file: !3, line: 1041, baseType: !218, size: 384, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !245, file: !3, line: 1042, baseType: !266, size: 152, offset: 1856)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 152, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 19)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!270 = !{!0, !271, !279, !281, !283, !285, !287}
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "blockSizes", scope: !273, file: !3, line: 270, type: !277, isLocal: true, isDefinition: true)
!273 = distinct !DISubprogram(name: "LZ4F_getBlockSize", scope: !3, file: !3, line: 268, type: !274, isLocal: false, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{!11, !121}
!276 = !{}
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !230)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression(DW_OP_constu, 19, DW_OP_stack_value))
!280 = distinct !DIGlobalVariable(name: "maxFHSize", scope: !14, file: !3, line: 205, type: !278, isLocal: true, isDefinition: true)
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!282 = distinct !DIGlobalVariable(name: "BHSize", scope: !14, file: !3, line: 206, type: !278, isLocal: true, isDefinition: true)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression(DW_OP_constu, 4, DW_OP_stack_value))
!284 = distinct !DIGlobalVariable(name: "BFSize", scope: !14, file: !3, line: 207, type: !278, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression(DW_OP_constu, 7, DW_OP_stack_value))
!286 = distinct !DIGlobalVariable(name: "minFHSize", scope: !14, file: !3, line: 204, type: !278, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "LZ4F_errorStrings", scope: !14, file: !3, line: 236, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1344, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 21)
!292 = distinct !DICompileUnit(language: DW_LANG_C89, file: !293, producer: "clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !276)
!293 = !DIFile(filename: "/tmp/klee_src/runtime/FreeStanding/memcpy.c", directory: "/tmp/klee_build60stp_z3/runtime/FreeStanding")
!294 = distinct !DICompileUnit(language: DW_LANG_C89, file: !295, producer: "clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !276)
!295 = !DIFile(filename: "/tmp/klee_src/runtime/FreeStanding/memset.c", directory: "/tmp/klee_build60stp_z3/runtime/FreeStanding")
!296 = distinct !DICompileUnit(language: DW_LANG_C89, file: !297, producer: "clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !276)
!297 = !DIFile(filename: "/tmp/klee_src/runtime/Intrinsic/klee_div_zero_check.c", directory: "/tmp/klee_build60stp_z3/runtime/Intrinsic")
!298 = !{i32 2, !"Dwarf Version", i32 4}
!299 = !{i32 2, !"Debug Info Version", i32 3}
!300 = !{i32 1, !"wchar_size", i32 4}
!301 = !{!"clang version 6.0.1 (branches/release_60 355598)"}
!302 = !{!"clang version 6.0.0-1ubuntu2~16.04.1 (tags/RELEASE_600/final)"}
!303 = distinct !DISubprogram(name: "LZ4F_isError", scope: !3, file: !3, line: 239, type: !304, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!304 = !DISubroutineType(types: !305)
!305 = !{!121, !9}
!306 = !DILocation(line: 241, column: 13, scope: !303)
!307 = !DILocation(line: 241, column: 18, scope: !303)
!308 = !DILocation(line: 241, column: 5, scope: !303)
!309 = !DILocation(line: 247, column: 22, scope: !310)
!310 = distinct !DILexicalBlock(scope: !2, file: !3, line: 247, column: 9)
!311 = !DILocation(line: 247, column: 9, scope: !310)
!312 = !DILocation(line: 247, column: 9, scope: !2)
!313 = !DILocation(line: 247, column: 61, scope: !310)
!314 = !DILocation(line: 247, column: 55, scope: !310)
!315 = !DILocation(line: 247, column: 54, scope: !310)
!316 = !DILocation(line: 247, column: 36, scope: !310)
!317 = !DILocation(line: 247, column: 29, scope: !310)
!318 = !DILocation(line: 248, column: 12, scope: !2)
!319 = !DILocation(line: 248, column: 5, scope: !2)
!320 = !DILocation(line: 249, column: 1, scope: !2)
!321 = distinct !DISubprogram(name: "LZ4F_getErrorCode", scope: !3, file: !3, line: 251, type: !322, isLocal: false, isDefinition: true, scopeLine: 252, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!322 = !DISubroutineType(types: !323)
!323 = !{!87, !11}
!324 = !DILocation(line: 253, column: 23, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 253, column: 9)
!326 = !DILocation(line: 253, column: 10, scope: !325)
!327 = !DILocation(line: 253, column: 9, scope: !321)
!328 = !DILocation(line: 253, column: 40, scope: !325)
!329 = !DILocation(line: 254, column: 42, scope: !321)
!330 = !DILocation(line: 254, column: 30, scope: !321)
!331 = !DILocation(line: 254, column: 12, scope: !321)
!332 = !DILocation(line: 254, column: 5, scope: !321)
!333 = !DILocation(line: 255, column: 1, scope: !321)
!334 = distinct !DISubprogram(name: "LZ4F_getVersion", scope: !3, file: !3, line: 264, type: !335, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!335 = !DISubroutineType(types: !336)
!336 = !{!121}
!337 = !DILocation(line: 264, column: 34, scope: !334)
!338 = distinct !DISubprogram(name: "LZ4F_compressionLevel_max", scope: !3, file: !3, line: 266, type: !339, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!339 = !DISubroutineType(types: !340)
!340 = !{!86}
!341 = !DILocation(line: 266, column: 39, scope: !338)
!342 = !DILocation(line: 272, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !273, file: !3, line: 272, column: 9)
!344 = !DILocation(line: 272, column: 21, scope: !343)
!345 = !DILocation(line: 272, column: 9, scope: !273)
!346 = !DILocation(line: 272, column: 39, scope: !343)
!347 = !DILocation(line: 272, column: 27, scope: !343)
!348 = !DILocation(line: 273, column: 9, scope: !349)
!349 = distinct !DILexicalBlock(scope: !273, file: !3, line: 273, column: 9)
!350 = !DILocation(line: 273, column: 21, scope: !349)
!351 = !DILocation(line: 273, column: 25, scope: !349)
!352 = !DILocation(line: 273, column: 28, scope: !349)
!353 = !DILocation(line: 273, column: 40, scope: !349)
!354 = !DILocation(line: 273, column: 9, scope: !273)
!355 = !DILocation(line: 273, column: 52, scope: !349)
!356 = !DILocation(line: 273, column: 45, scope: !349)
!357 = !DILocation(line: 274, column: 17, scope: !273)
!358 = !DILocation(line: 275, column: 23, scope: !273)
!359 = !DILocation(line: 275, column: 12, scope: !273)
!360 = !DILocation(line: 275, column: 5, scope: !273)
!361 = !DILocation(line: 276, column: 1, scope: !273)
!362 = distinct !DISubprogram(name: "err0r", scope: !3, file: !3, line: 257, type: !363, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!363 = !DISubroutineType(types: !364)
!364 = !{!9, !87}
!365 = !DILocation(line: 261, column: 42, scope: !362)
!366 = !DILocation(line: 261, column: 31, scope: !362)
!367 = !DILocation(line: 261, column: 30, scope: !362)
!368 = !DILocation(line: 261, column: 5, scope: !362)
!369 = distinct !DISubprogram(name: "LZ4F_compressFrameBound", scope: !3, file: !3, line: 340, type: !370, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!370 = !DISubroutineType(types: !371)
!371 = !{!11, !11, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!374 = !DILocation(line: 343, column: 18, scope: !369)
!375 = !DILocation(line: 345, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !369, file: !3, line: 345, column: 9)
!377 = !DILocation(line: 345, column: 23, scope: !376)
!378 = !DILocation(line: 345, column: 9, scope: !369)
!379 = !DILocation(line: 345, column: 40, scope: !376)
!380 = !DILocation(line: 345, column: 39, scope: !376)
!381 = !DILocation(line: 345, column: 31, scope: !376)
!382 = !DILocation(line: 346, column: 10, scope: !376)
!383 = !DILocation(line: 347, column: 11, scope: !369)
!384 = !DILocation(line: 347, column: 21, scope: !369)
!385 = !DILocation(line: 349, column: 53, scope: !369)
!386 = !DILocation(line: 349, column: 25, scope: !369)
!387 = !DILocation(line: 349, column: 23, scope: !369)
!388 = !DILocation(line: 349, column: 5, scope: !369)
!389 = distinct !DISubprogram(name: "LZ4F_compressBound_internal", scope: !3, file: !3, line: 313, type: !390, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!390 = !DISubroutineType(types: !391)
!391 = !{!11, !11, !372, !11}
!392 = !DILocation(line: 318, column: 5, scope: !389)
!393 = !DILocation(line: 319, column: 15, scope: !389)
!394 = !DILocation(line: 319, column: 25, scope: !389)
!395 = !DILocation(line: 319, column: 45, scope: !389)
!396 = !DILocation(line: 320, column: 53, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !3, line: 320, column: 5)
!398 = !DILocation(line: 320, column: 67, scope: !397)
!399 = !DILocation(line: 320, column: 52, scope: !397)
!400 = !DILocation(line: 320, column: 90, scope: !397)
!401 = !DILocation(line: 320, column: 41, scope: !397)
!402 = !DILocation(line: 321, column: 27, scope: !397)
!403 = !DILocation(line: 321, column: 37, scope: !397)
!404 = !DILocation(line: 321, column: 50, scope: !397)
!405 = !DILocation(line: 321, column: 57, scope: !397)
!406 = !DILocation(line: 321, column: 47, scope: !397)
!407 = !DILocation(line: 321, column: 19, scope: !397)
!408 = !DILocation(line: 322, column: 44, scope: !397)
!409 = !DILocation(line: 322, column: 54, scope: !397)
!410 = !DILocation(line: 322, column: 64, scope: !397)
!411 = !DILocation(line: 322, column: 34, scope: !397)
!412 = !DILocation(line: 323, column: 52, scope: !397)
!413 = !DILocation(line: 323, column: 34, scope: !397)
!414 = !DILocation(line: 323, column: 22, scope: !397)
!415 = !DILocation(line: 324, column: 36, scope: !397)
!416 = !DILocation(line: 324, column: 46, scope: !397)
!417 = !DILocation(line: 324, column: 22, scope: !397)
!418 = !DILocation(line: 325, column: 37, scope: !397)
!419 = !DILocation(line: 325, column: 22, scope: !397)
!420 = !DILocation(line: 326, column: 35, scope: !397)
!421 = !DILocation(line: 326, column: 45, scope: !397)
!422 = !DILocation(line: 326, column: 43, scope: !397)
!423 = !DILocation(line: 326, column: 22, scope: !397)
!424 = !DILocation(line: 327, column: 50, scope: !397)
!425 = !DILocation(line: 327, column: 63, scope: !397)
!426 = !DILocation(line: 327, column: 61, scope: !397)
!427 = !{!"True"}
!428 = !DILocation(line: 327, column: 39, scope: !397)
!429 = !DILocation(line: 327, column: 24, scope: !397)
!430 = !DILocation(line: 328, column: 41, scope: !397)
!431 = !DILocation(line: 328, column: 55, scope: !397)
!432 = !DILocation(line: 328, column: 64, scope: !397)
!433 = !DILocation(line: 328, column: 52, scope: !397)
!434 = !DILocation(line: 328, column: 22, scope: !397)
!435 = !DILocation(line: 329, column: 38, scope: !397)
!436 = !DILocation(line: 329, column: 46, scope: !397)
!437 = !DILocation(line: 329, column: 22, scope: !397)
!438 = !DILocation(line: 330, column: 35, scope: !397)
!439 = !DILocation(line: 330, column: 51, scope: !397)
!440 = !DILocation(line: 330, column: 64, scope: !397)
!441 = !DILocation(line: 330, column: 48, scope: !397)
!442 = !DILocation(line: 330, column: 24, scope: !397)
!443 = !DILocation(line: 332, column: 46, scope: !397)
!444 = !DILocation(line: 332, column: 56, scope: !397)
!445 = !DILocation(line: 332, column: 66, scope: !397)
!446 = !DILocation(line: 332, column: 44, scope: !397)
!447 = !DILocation(line: 332, column: 22, scope: !397)
!448 = !DILocation(line: 333, column: 43, scope: !397)
!449 = !DILocation(line: 333, column: 53, scope: !397)
!450 = !DILocation(line: 333, column: 63, scope: !397)
!451 = !DILocation(line: 333, column: 82, scope: !397)
!452 = !DILocation(line: 333, column: 40, scope: !397)
!453 = !DILocation(line: 333, column: 22, scope: !397)
!454 = !DILocation(line: 335, column: 27, scope: !397)
!455 = !DILocation(line: 335, column: 25, scope: !397)
!456 = !DILocation(line: 335, column: 43, scope: !397)
!457 = !DILocation(line: 335, column: 41, scope: !397)
!458 = !DILocation(line: 336, column: 17, scope: !397)
!459 = !DILocation(line: 336, column: 29, scope: !397)
!460 = !DILocation(line: 336, column: 27, scope: !397)
!461 = !DILocation(line: 335, column: 53, scope: !397)
!462 = !DILocation(line: 336, column: 45, scope: !397)
!463 = !DILocation(line: 336, column: 43, scope: !397)
!464 = !DILocation(line: 336, column: 61, scope: !397)
!465 = !DILocation(line: 336, column: 59, scope: !397)
!466 = !DILocation(line: 335, column: 9, scope: !397)
!467 = distinct !DISubprogram(name: "LZ4F_compressFrame_usingCDict", scope: !3, file: !3, line: 362, type: !468, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!468 = !DISubroutineType(types: !469)
!469 = !{!11, !239, !90, !11, !470, !11, !209, !372}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!472 = !DILocation(line: 370, column: 36, scope: !467)
!473 = !DILocation(line: 370, column: 17, scope: !467)
!474 = !DILocation(line: 371, column: 20, scope: !467)
!475 = !DILocation(line: 371, column: 11, scope: !467)
!476 = !DILocation(line: 372, column: 26, scope: !467)
!477 = !DILocation(line: 372, column: 37, scope: !467)
!478 = !DILocation(line: 372, column: 35, scope: !467)
!479 = !DILocation(line: 372, column: 17, scope: !467)
!480 = !DILocation(line: 374, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !467, file: !3, line: 374, column: 9)
!482 = !DILocation(line: 374, column: 23, scope: !481)
!483 = !DILocation(line: 374, column: 9, scope: !467)
!484 = !DILocation(line: 375, column: 18, scope: !481)
!485 = !DILocation(line: 375, column: 17, scope: !481)
!486 = !DILocation(line: 375, column: 9, scope: !481)
!487 = !DILocation(line: 377, column: 9, scope: !481)
!488 = !DILocation(line: 378, column: 15, scope: !489)
!489 = distinct !DILexicalBlock(scope: !467, file: !3, line: 378, column: 9)
!490 = !DILocation(line: 378, column: 25, scope: !489)
!491 = !DILocation(line: 378, column: 37, scope: !489)
!492 = !DILocation(line: 378, column: 9, scope: !467)
!493 = !DILocation(line: 379, column: 44, scope: !489)
!494 = !DILocation(line: 379, column: 15, scope: !489)
!495 = !DILocation(line: 379, column: 25, scope: !489)
!496 = !DILocation(line: 379, column: 37, scope: !489)
!497 = !DILocation(line: 379, column: 9, scope: !489)
!498 = !DILocation(line: 381, column: 58, scope: !467)
!499 = !DILocation(line: 381, column: 68, scope: !467)
!500 = !DILocation(line: 381, column: 81, scope: !467)
!501 = !DILocation(line: 381, column: 35, scope: !467)
!502 = !DILocation(line: 381, column: 11, scope: !467)
!503 = !DILocation(line: 381, column: 21, scope: !467)
!504 = !DILocation(line: 381, column: 33, scope: !467)
!505 = !DILocation(line: 382, column: 11, scope: !467)
!506 = !DILocation(line: 382, column: 21, scope: !467)
!507 = !DILocation(line: 383, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !467, file: !3, line: 383, column: 9)
!509 = !DILocation(line: 383, column: 44, scope: !508)
!510 = !DILocation(line: 383, column: 54, scope: !508)
!511 = !DILocation(line: 383, column: 20, scope: !508)
!512 = !DILocation(line: 383, column: 17, scope: !508)
!513 = !DILocation(line: 383, column: 9, scope: !467)
!514 = !DILocation(line: 384, column: 15, scope: !508)
!515 = !DILocation(line: 384, column: 25, scope: !508)
!516 = !DILocation(line: 384, column: 35, scope: !508)
!517 = !DILocation(line: 384, column: 9, scope: !508)
!518 = !DILocation(line: 386, column: 5, scope: !467)
!519 = !DILocation(line: 387, column: 13, scope: !467)
!520 = !DILocation(line: 387, column: 23, scope: !467)
!521 = !DILocation(line: 389, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !467, file: !3, line: 389, column: 9)
!523 = !DILocation(line: 389, column: 47, scope: !522)
!524 = !DILocation(line: 389, column: 23, scope: !522)
!525 = !DILocation(line: 389, column: 21, scope: !522)
!526 = !DILocation(line: 389, column: 9, scope: !467)
!527 = !DILocation(line: 390, column: 16, scope: !522)
!528 = !DILocation(line: 390, column: 9, scope: !522)
!529 = !DILocation(line: 392, column: 63, scope: !530)
!530 = distinct !DILexicalBlock(scope: !467, file: !3, line: 392, column: 5)
!531 = !DILocation(line: 392, column: 69, scope: !530)
!532 = !DILocation(line: 392, column: 80, scope: !530)
!533 = !DILocation(line: 392, column: 93, scope: !530)
!534 = !DILocation(line: 392, column: 33, scope: !530)
!535 = !DILocation(line: 392, column: 20, scope: !530)
!536 = !DILocation(line: 393, column: 24, scope: !537)
!537 = distinct !DILexicalBlock(scope: !530, file: !3, line: 393, column: 11)
!538 = !DILocation(line: 393, column: 11, scope: !537)
!539 = !DILocation(line: 393, column: 11, scope: !530)
!540 = !DILocation(line: 393, column: 44, scope: !537)
!541 = !DILocation(line: 393, column: 37, scope: !537)
!542 = !DILocation(line: 394, column: 17, scope: !530)
!543 = !DILocation(line: 394, column: 14, scope: !530)
!544 = !DILocation(line: 397, column: 48, scope: !545)
!545 = distinct !DILexicalBlock(scope: !467, file: !3, line: 397, column: 5)
!546 = !DILocation(line: 397, column: 54, scope: !545)
!547 = !DILocation(line: 397, column: 71, scope: !545)
!548 = !DILocation(line: 397, column: 78, scope: !545)
!549 = !DILocation(line: 397, column: 77, scope: !545)
!550 = !DILocation(line: 397, column: 87, scope: !545)
!551 = !DILocation(line: 397, column: 98, scope: !545)
!552 = !DILocation(line: 397, column: 28, scope: !545)
!553 = !DILocation(line: 397, column: 20, scope: !545)
!554 = !DILocation(line: 398, column: 24, scope: !555)
!555 = distinct !DILexicalBlock(scope: !545, file: !3, line: 398, column: 11)
!556 = !DILocation(line: 398, column: 11, scope: !555)
!557 = !DILocation(line: 398, column: 11, scope: !545)
!558 = !DILocation(line: 398, column: 39, scope: !555)
!559 = !DILocation(line: 398, column: 32, scope: !555)
!560 = !DILocation(line: 399, column: 17, scope: !545)
!561 = !DILocation(line: 399, column: 14, scope: !545)
!562 = !DILocation(line: 402, column: 48, scope: !563)
!563 = distinct !DILexicalBlock(scope: !467, file: !3, line: 402, column: 5)
!564 = !DILocation(line: 402, column: 54, scope: !563)
!565 = !DILocation(line: 402, column: 71, scope: !563)
!566 = !DILocation(line: 402, column: 78, scope: !563)
!567 = !DILocation(line: 402, column: 77, scope: !563)
!568 = !DILocation(line: 402, column: 31, scope: !563)
!569 = !DILocation(line: 402, column: 20, scope: !563)
!570 = !DILocation(line: 403, column: 24, scope: !571)
!571 = distinct !DILexicalBlock(scope: !563, file: !3, line: 403, column: 11)
!572 = !DILocation(line: 403, column: 11, scope: !571)
!573 = !DILocation(line: 403, column: 11, scope: !563)
!574 = !DILocation(line: 403, column: 42, scope: !571)
!575 = !DILocation(line: 403, column: 35, scope: !571)
!576 = !DILocation(line: 404, column: 17, scope: !563)
!577 = !DILocation(line: 404, column: 14, scope: !563)
!578 = !DILocation(line: 407, column: 21, scope: !467)
!579 = !DILocation(line: 407, column: 30, scope: !467)
!580 = !DILocation(line: 407, column: 28, scope: !467)
!581 = !DILocation(line: 407, column: 5, scope: !467)
!582 = !DILocation(line: 408, column: 1, scope: !467)
!583 = distinct !DISubprogram(name: "LZ4F_optimalBSID", scope: !3, file: !3, line: 293, type: !584, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!584 = !DISubroutineType(types: !585)
!585 = !{!187, !586, !278}
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!587 = !DILocation(line: 296, column: 24, scope: !583)
!588 = !DILocation(line: 297, column: 12, scope: !583)
!589 = !DILocation(line: 298, column: 5, scope: !583)
!590 = !DILocation(line: 298, column: 12, scope: !583)
!591 = !DILocation(line: 298, column: 28, scope: !583)
!592 = !DILocation(line: 298, column: 26, scope: !583)
!593 = !DILocation(line: 299, column: 13, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !3, line: 299, column: 13)
!595 = distinct !DILexicalBlock(scope: !583, file: !3, line: 298, column: 42)
!596 = !DILocation(line: 299, column: 24, scope: !594)
!597 = !DILocation(line: 299, column: 21, scope: !594)
!598 = !DILocation(line: 299, column: 13, scope: !595)
!599 = !DILocation(line: 300, column: 20, scope: !594)
!600 = !DILocation(line: 300, column: 13, scope: !594)
!601 = !DILocation(line: 301, column: 50, scope: !595)
!602 = !DILocation(line: 301, column: 63, scope: !595)
!603 = !DILocation(line: 301, column: 22, scope: !595)
!604 = !DILocation(line: 302, column: 22, scope: !595)
!605 = distinct !{!605, !589, !606}
!606 = !DILocation(line: 303, column: 5, scope: !583)
!607 = !DILocation(line: 304, column: 12, scope: !583)
!608 = !DILocation(line: 304, column: 5, scope: !583)
!609 = !DILocation(line: 305, column: 1, scope: !583)
!610 = distinct !DISubprogram(name: "LZ4F_compressBegin_usingCDict", scope: !3, file: !3, line: 589, type: !611, isLocal: false, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!611 = !DISubroutineType(types: !612)
!612 = !{!11, !239, !90, !11, !209, !372}
!613 = !DILocation(line: 595, column: 35, scope: !610)
!614 = !DILocation(line: 595, column: 17, scope: !610)
!615 = !DILocation(line: 596, column: 20, scope: !610)
!616 = !DILocation(line: 596, column: 11, scope: !610)
!617 = !DILocation(line: 599, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !610, file: !3, line: 599, column: 9)
!619 = !DILocation(line: 599, column: 21, scope: !618)
!620 = !DILocation(line: 599, column: 9, scope: !610)
!621 = !DILocation(line: 599, column: 41, scope: !618)
!622 = !DILocation(line: 599, column: 34, scope: !618)
!623 = !DILocation(line: 600, column: 5, scope: !610)
!624 = !DILocation(line: 601, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !610, file: !3, line: 601, column: 9)
!626 = !DILocation(line: 601, column: 24, scope: !625)
!627 = !DILocation(line: 601, column: 9, scope: !610)
!628 = !DILocation(line: 601, column: 48, scope: !625)
!629 = !DILocation(line: 601, column: 33, scope: !625)
!630 = !DILocation(line: 602, column: 5, scope: !610)
!631 = !DILocation(line: 602, column: 14, scope: !610)
!632 = !DILocation(line: 602, column: 23, scope: !610)
!633 = !DILocation(line: 602, column: 22, scope: !610)
!634 = !DILocation(line: 605, column: 32, scope: !635)
!635 = distinct !DILexicalBlock(scope: !610, file: !3, line: 605, column: 5)
!636 = !DILocation(line: 605, column: 41, scope: !635)
!637 = !DILocation(line: 605, column: 47, scope: !635)
!638 = !DILocation(line: 605, column: 64, scope: !635)
!639 = !DILocation(line: 605, column: 31, scope: !635)
!640 = !DILocation(line: 605, column: 19, scope: !635)
!641 = !DILocation(line: 606, column: 13, scope: !642)
!642 = distinct !DILexicalBlock(scope: !635, file: !3, line: 606, column: 13)
!643 = !DILocation(line: 606, column: 22, scope: !642)
!644 = !DILocation(line: 606, column: 36, scope: !642)
!645 = !DILocation(line: 606, column: 34, scope: !642)
!646 = !DILocation(line: 606, column: 13, scope: !635)
!647 = !DILocation(line: 607, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !642, file: !3, line: 606, column: 47)
!649 = !DILocation(line: 608, column: 17, scope: !650)
!650 = distinct !DILexicalBlock(scope: !648, file: !3, line: 608, column: 17)
!651 = !DILocation(line: 608, column: 26, scope: !650)
!652 = !DILocation(line: 608, column: 32, scope: !650)
!653 = !DILocation(line: 608, column: 49, scope: !650)
!654 = !DILocation(line: 608, column: 17, scope: !648)
!655 = !DILocation(line: 609, column: 45, scope: !656)
!656 = distinct !DILexicalBlock(scope: !650, file: !3, line: 608, column: 69)
!657 = !DILocation(line: 609, column: 38, scope: !656)
!658 = !DILocation(line: 609, column: 17, scope: !656)
!659 = !DILocation(line: 609, column: 26, scope: !656)
!660 = !DILocation(line: 609, column: 36, scope: !656)
!661 = !DILocation(line: 610, column: 13, scope: !656)
!662 = !DILocation(line: 611, column: 45, scope: !663)
!663 = distinct !DILexicalBlock(scope: !650, file: !3, line: 610, column: 20)
!664 = !DILocation(line: 611, column: 38, scope: !663)
!665 = !DILocation(line: 611, column: 17, scope: !663)
!666 = !DILocation(line: 611, column: 26, scope: !663)
!667 = !DILocation(line: 611, column: 36, scope: !663)
!668 = !DILocation(line: 613, column: 17, scope: !669)
!669 = distinct !DILexicalBlock(scope: !648, file: !3, line: 613, column: 17)
!670 = !DILocation(line: 613, column: 26, scope: !669)
!671 = !DILocation(line: 613, column: 36, scope: !669)
!672 = !DILocation(line: 613, column: 17, scope: !648)
!673 = !DILocation(line: 613, column: 52, scope: !669)
!674 = !DILocation(line: 613, column: 45, scope: !669)
!675 = !DILocation(line: 614, column: 36, scope: !648)
!676 = !DILocation(line: 614, column: 13, scope: !648)
!677 = !DILocation(line: 614, column: 22, scope: !648)
!678 = !DILocation(line: 614, column: 34, scope: !648)
!679 = !DILocation(line: 615, column: 36, scope: !648)
!680 = !DILocation(line: 615, column: 13, scope: !648)
!681 = !DILocation(line: 615, column: 22, scope: !648)
!682 = !DILocation(line: 615, column: 34, scope: !648)
!683 = !DILocation(line: 616, column: 9, scope: !648)
!684 = !DILocation(line: 616, column: 20, scope: !685)
!685 = distinct !DILexicalBlock(scope: !642, file: !3, line: 616, column: 20)
!686 = !DILocation(line: 616, column: 29, scope: !685)
!687 = !DILocation(line: 616, column: 44, scope: !685)
!688 = !DILocation(line: 616, column: 41, scope: !685)
!689 = !DILocation(line: 616, column: 20, scope: !642)
!690 = !DILocation(line: 619, column: 17, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 619, column: 17)
!692 = distinct !DILexicalBlock(scope: !685, file: !3, line: 616, column: 55)
!693 = !DILocation(line: 619, column: 26, scope: !691)
!694 = !DILocation(line: 619, column: 32, scope: !691)
!695 = !DILocation(line: 619, column: 49, scope: !691)
!696 = !DILocation(line: 619, column: 17, scope: !692)
!697 = !DILocation(line: 620, column: 50, scope: !698)
!698 = distinct !DILexicalBlock(scope: !691, file: !3, line: 619, column: 69)
!699 = !DILocation(line: 620, column: 59, scope: !698)
!700 = !DILocation(line: 620, column: 33, scope: !698)
!701 = !DILocation(line: 620, column: 17, scope: !698)
!702 = !DILocation(line: 621, column: 13, scope: !698)
!703 = !DILocation(line: 622, column: 54, scope: !704)
!704 = distinct !DILexicalBlock(scope: !691, file: !3, line: 621, column: 20)
!705 = !DILocation(line: 622, column: 63, scope: !704)
!706 = !DILocation(line: 622, column: 35, scope: !704)
!707 = !DILocation(line: 622, column: 74, scope: !704)
!708 = !DILocation(line: 622, column: 83, scope: !704)
!709 = !DILocation(line: 622, column: 89, scope: !704)
!710 = !DILocation(line: 622, column: 17, scope: !704)
!711 = !DILocation(line: 624, column: 36, scope: !692)
!712 = !DILocation(line: 624, column: 13, scope: !692)
!713 = !DILocation(line: 624, column: 22, scope: !692)
!714 = !DILocation(line: 624, column: 34, scope: !692)
!715 = !DILocation(line: 625, column: 9, scope: !692)
!716 = !DILocation(line: 629, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !610, file: !3, line: 629, column: 9)
!718 = !DILocation(line: 629, column: 18, scope: !717)
!719 = !DILocation(line: 629, column: 24, scope: !717)
!720 = !DILocation(line: 629, column: 34, scope: !717)
!721 = !DILocation(line: 629, column: 46, scope: !717)
!722 = !DILocation(line: 629, column: 9, scope: !610)
!723 = !DILocation(line: 630, column: 9, scope: !717)
!724 = !DILocation(line: 630, column: 18, scope: !717)
!725 = !DILocation(line: 630, column: 24, scope: !717)
!726 = !DILocation(line: 630, column: 34, scope: !717)
!727 = !DILocation(line: 630, column: 46, scope: !717)
!728 = !DILocation(line: 631, column: 47, scope: !610)
!729 = !DILocation(line: 631, column: 56, scope: !610)
!730 = !DILocation(line: 631, column: 62, scope: !610)
!731 = !DILocation(line: 631, column: 72, scope: !610)
!732 = !DILocation(line: 631, column: 29, scope: !610)
!733 = !DILocation(line: 631, column: 5, scope: !610)
!734 = !DILocation(line: 631, column: 14, scope: !610)
!735 = !DILocation(line: 631, column: 27, scope: !610)
!736 = !DILocation(line: 633, column: 41, scope: !737)
!737 = distinct !DILexicalBlock(scope: !610, file: !3, line: 633, column: 5)
!738 = !DILocation(line: 633, column: 57, scope: !737)
!739 = !DILocation(line: 634, column: 18, scope: !737)
!740 = !DILocation(line: 634, column: 27, scope: !737)
!741 = !DILocation(line: 634, column: 33, scope: !737)
!742 = !DILocation(line: 634, column: 43, scope: !737)
!743 = !DILocation(line: 634, column: 53, scope: !737)
!744 = !DILocation(line: 634, column: 74, scope: !737)
!745 = !DILocation(line: 634, column: 79, scope: !737)
!746 = !DILocation(line: 634, column: 17, scope: !737)
!747 = !DILocation(line: 635, column: 17, scope: !737)
!748 = !DILocation(line: 635, column: 26, scope: !737)
!749 = !DILocation(line: 635, column: 43, scope: !737)
!750 = !DILocation(line: 635, column: 52, scope: !737)
!751 = !DILocation(line: 635, column: 58, scope: !737)
!752 = !DILocation(line: 635, column: 68, scope: !737)
!753 = !DILocation(line: 635, column: 78, scope: !737)
!754 = !DILocation(line: 635, column: 99, scope: !737)
!755 = !DILocation(line: 635, column: 105, scope: !737)
!756 = !DILocation(line: 635, column: 41, scope: !737)
!757 = !DILocation(line: 635, column: 39, scope: !737)
!758 = !DILocation(line: 633, column: 22, scope: !737)
!759 = !DILocation(line: 637, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !737, file: !3, line: 637, column: 13)
!761 = !DILocation(line: 637, column: 22, scope: !760)
!762 = !DILocation(line: 637, column: 38, scope: !760)
!763 = !DILocation(line: 637, column: 36, scope: !760)
!764 = !DILocation(line: 637, column: 13, scope: !737)
!765 = !DILocation(line: 638, column: 13, scope: !766)
!766 = distinct !DILexicalBlock(scope: !760, file: !3, line: 637, column: 56)
!767 = !DILocation(line: 638, column: 22, scope: !766)
!768 = !DILocation(line: 638, column: 36, scope: !766)
!769 = !DILocation(line: 639, column: 13, scope: !766)
!770 = !DILocation(line: 640, column: 39, scope: !766)
!771 = !DILocation(line: 640, column: 13, scope: !766)
!772 = !DILocation(line: 640, column: 22, scope: !766)
!773 = !DILocation(line: 640, column: 30, scope: !766)
!774 = !DILocation(line: 641, column: 17, scope: !775)
!775 = distinct !DILexicalBlock(scope: !766, file: !3, line: 641, column: 17)
!776 = !DILocation(line: 641, column: 26, scope: !775)
!777 = !DILocation(line: 641, column: 34, scope: !775)
!778 = !DILocation(line: 641, column: 17, scope: !766)
!779 = !DILocation(line: 641, column: 50, scope: !775)
!780 = !DILocation(line: 641, column: 43, scope: !775)
!781 = !DILocation(line: 642, column: 38, scope: !766)
!782 = !DILocation(line: 642, column: 13, scope: !766)
!783 = !DILocation(line: 642, column: 22, scope: !766)
!784 = !DILocation(line: 642, column: 36, scope: !766)
!785 = !DILocation(line: 643, column: 5, scope: !766)
!786 = !DILocation(line: 644, column: 22, scope: !610)
!787 = !DILocation(line: 644, column: 31, scope: !610)
!788 = !DILocation(line: 644, column: 5, scope: !610)
!789 = !DILocation(line: 644, column: 14, scope: !610)
!790 = !DILocation(line: 644, column: 20, scope: !610)
!791 = !DILocation(line: 645, column: 5, scope: !610)
!792 = !DILocation(line: 645, column: 14, scope: !610)
!793 = !DILocation(line: 645, column: 24, scope: !610)
!794 = !DILocation(line: 646, column: 25, scope: !610)
!795 = !DILocation(line: 646, column: 34, scope: !610)
!796 = !DILocation(line: 646, column: 11, scope: !610)
!797 = !DILocation(line: 649, column: 22, scope: !610)
!798 = !DILocation(line: 649, column: 5, scope: !610)
!799 = !DILocation(line: 649, column: 14, scope: !610)
!800 = !DILocation(line: 649, column: 20, scope: !610)
!801 = !DILocation(line: 650, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !610, file: !3, line: 650, column: 9)
!803 = !DILocation(line: 650, column: 18, scope: !802)
!804 = !DILocation(line: 650, column: 24, scope: !802)
!805 = !DILocation(line: 650, column: 34, scope: !802)
!806 = !DILocation(line: 650, column: 44, scope: !802)
!807 = !DILocation(line: 650, column: 9, scope: !610)
!808 = !DILocation(line: 652, column: 25, scope: !809)
!809 = distinct !DILexicalBlock(scope: !802, file: !3, line: 650, column: 65)
!810 = !DILocation(line: 652, column: 34, scope: !809)
!811 = !DILocation(line: 652, column: 45, scope: !809)
!812 = !DILocation(line: 652, column: 52, scope: !809)
!813 = !DILocation(line: 652, column: 61, scope: !809)
!814 = !DILocation(line: 652, column: 67, scope: !809)
!815 = !DILocation(line: 652, column: 9, scope: !809)
!816 = !DILocation(line: 653, column: 5, scope: !809)
!817 = !DILocation(line: 654, column: 9, scope: !818)
!818 = distinct !DILexicalBlock(scope: !610, file: !3, line: 654, column: 9)
!819 = !DILocation(line: 654, column: 25, scope: !818)
!820 = !DILocation(line: 654, column: 42, scope: !818)
!821 = !DILocation(line: 654, column: 9, scope: !610)
!822 = !DILocation(line: 655, column: 54, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !3, line: 654, column: 63)
!824 = !DILocation(line: 655, column: 63, scope: !823)
!825 = !DILocation(line: 655, column: 37, scope: !823)
!826 = !DILocation(line: 655, column: 79, scope: !823)
!827 = !DILocation(line: 655, column: 95, scope: !823)
!828 = !DILocation(line: 655, column: 9, scope: !823)
!829 = !DILocation(line: 656, column: 5, scope: !823)
!830 = !DILocation(line: 659, column: 20, scope: !610)
!831 = !DILocation(line: 659, column: 5, scope: !610)
!832 = !DILocation(line: 660, column: 12, scope: !610)
!833 = !DILocation(line: 661, column: 19, scope: !610)
!834 = !DILocation(line: 661, column: 17, scope: !610)
!835 = !DILocation(line: 665, column: 13, scope: !610)
!836 = !DILocation(line: 665, column: 22, scope: !610)
!837 = !DILocation(line: 665, column: 28, scope: !610)
!838 = !DILocation(line: 665, column: 38, scope: !610)
!839 = !DILocation(line: 665, column: 48, scope: !610)
!840 = !DILocation(line: 665, column: 58, scope: !610)
!841 = !DILocation(line: 665, column: 9, scope: !610)
!842 = !DILocation(line: 666, column: 13, scope: !610)
!843 = !DILocation(line: 666, column: 22, scope: !610)
!844 = !DILocation(line: 666, column: 28, scope: !610)
!845 = !DILocation(line: 666, column: 38, scope: !610)
!846 = !DILocation(line: 666, column: 56, scope: !610)
!847 = !DILocation(line: 666, column: 66, scope: !610)
!848 = !DILocation(line: 666, column: 9, scope: !610)
!849 = !DILocation(line: 667, column: 23, scope: !610)
!850 = !DILocation(line: 667, column: 32, scope: !610)
!851 = !DILocation(line: 667, column: 38, scope: !610)
!852 = !DILocation(line: 667, column: 48, scope: !610)
!853 = !DILocation(line: 667, column: 60, scope: !610)
!854 = !DILocation(line: 667, column: 65, scope: !610)
!855 = !DILocation(line: 667, column: 9, scope: !610)
!856 = !DILocation(line: 668, column: 13, scope: !610)
!857 = !DILocation(line: 668, column: 22, scope: !610)
!858 = !DILocation(line: 668, column: 28, scope: !610)
!859 = !DILocation(line: 668, column: 38, scope: !610)
!860 = !DILocation(line: 668, column: 58, scope: !610)
!861 = !DILocation(line: 668, column: 68, scope: !610)
!862 = !DILocation(line: 668, column: 9, scope: !610)
!863 = !DILocation(line: 669, column: 13, scope: !610)
!864 = !DILocation(line: 669, column: 22, scope: !610)
!865 = !DILocation(line: 669, column: 28, scope: !610)
!866 = !DILocation(line: 669, column: 38, scope: !610)
!867 = !DILocation(line: 669, column: 45, scope: !610)
!868 = !DILocation(line: 669, column: 9, scope: !610)
!869 = !DILocation(line: 664, column: 17, scope: !610)
!870 = !DILocation(line: 664, column: 12, scope: !610)
!871 = !DILocation(line: 664, column: 15, scope: !610)
!872 = !DILocation(line: 671, column: 25, scope: !610)
!873 = !DILocation(line: 671, column: 34, scope: !610)
!874 = !DILocation(line: 671, column: 40, scope: !610)
!875 = !DILocation(line: 671, column: 50, scope: !610)
!876 = !DILocation(line: 671, column: 62, scope: !610)
!877 = !DILocation(line: 671, column: 72, scope: !610)
!878 = !DILocation(line: 671, column: 17, scope: !610)
!879 = !DILocation(line: 671, column: 12, scope: !610)
!880 = !DILocation(line: 671, column: 15, scope: !610)
!881 = !DILocation(line: 673, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !610, file: !3, line: 673, column: 9)
!883 = !DILocation(line: 673, column: 18, scope: !882)
!884 = !DILocation(line: 673, column: 24, scope: !882)
!885 = !DILocation(line: 673, column: 34, scope: !882)
!886 = !DILocation(line: 673, column: 9, scope: !610)
!887 = !DILocation(line: 674, column: 24, scope: !888)
!888 = distinct !DILexicalBlock(scope: !882, file: !3, line: 673, column: 47)
!889 = !DILocation(line: 674, column: 32, scope: !888)
!890 = !DILocation(line: 674, column: 41, scope: !888)
!891 = !DILocation(line: 674, column: 47, scope: !888)
!892 = !DILocation(line: 674, column: 57, scope: !888)
!893 = !DILocation(line: 674, column: 9, scope: !888)
!894 = !DILocation(line: 675, column: 16, scope: !888)
!895 = !DILocation(line: 676, column: 9, scope: !888)
!896 = !DILocation(line: 676, column: 18, scope: !888)
!897 = !DILocation(line: 676, column: 30, scope: !888)
!898 = !DILocation(line: 677, column: 5, scope: !888)
!899 = !DILocation(line: 679, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !610, file: !3, line: 679, column: 9)
!901 = !DILocation(line: 679, column: 18, scope: !900)
!902 = !DILocation(line: 679, column: 24, scope: !900)
!903 = !DILocation(line: 679, column: 34, scope: !900)
!904 = !DILocation(line: 679, column: 9, scope: !610)
!905 = !DILocation(line: 680, column: 24, scope: !906)
!906 = distinct !DILexicalBlock(scope: !900, file: !3, line: 679, column: 42)
!907 = !DILocation(line: 680, column: 32, scope: !906)
!908 = !DILocation(line: 680, column: 41, scope: !906)
!909 = !DILocation(line: 680, column: 47, scope: !906)
!910 = !DILocation(line: 680, column: 57, scope: !906)
!911 = !DILocation(line: 680, column: 9, scope: !906)
!912 = !DILocation(line: 681, column: 16, scope: !906)
!913 = !DILocation(line: 682, column: 5, scope: !906)
!914 = !DILocation(line: 684, column: 35, scope: !610)
!915 = !DILocation(line: 684, column: 57, scope: !610)
!916 = !DILocation(line: 684, column: 66, scope: !610)
!917 = !DILocation(line: 684, column: 64, scope: !610)
!918 = !DILocation(line: 684, column: 15, scope: !610)
!919 = !DILocation(line: 684, column: 6, scope: !610)
!920 = !DILocation(line: 684, column: 13, scope: !610)
!921 = !DILocation(line: 685, column: 11, scope: !610)
!922 = !DILocation(line: 687, column: 5, scope: !610)
!923 = !DILocation(line: 687, column: 14, scope: !610)
!924 = !DILocation(line: 687, column: 21, scope: !610)
!925 = !DILocation(line: 688, column: 21, scope: !610)
!926 = !DILocation(line: 688, column: 30, scope: !610)
!927 = !DILocation(line: 688, column: 28, scope: !610)
!928 = !DILocation(line: 688, column: 5, scope: !610)
!929 = !DILocation(line: 689, column: 1, scope: !610)
!930 = distinct !DISubprogram(name: "LZ4F_compressUpdate", scope: !3, file: !3, line: 810, type: !931, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!931 = !DISubroutineType(types: !932)
!932 = !{!11, !239, !90, !11, !470, !11, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_compressOptions_t", file: !10, line: 229, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 226, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "stableSrc", scope: !936, file: !10, line: 227, baseType: !121, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !936, file: !10, line: 228, baseType: !202, size: 96, offset: 32)
!940 = !DILocation(line: 816, column: 30, scope: !930)
!941 = !DILocation(line: 816, column: 39, scope: !930)
!942 = !DILocation(line: 816, column: 18, scope: !930)
!943 = !DILocation(line: 817, column: 39, scope: !930)
!944 = !DILocation(line: 817, column: 17, scope: !930)
!945 = !DILocation(line: 818, column: 32, scope: !930)
!946 = !DILocation(line: 818, column: 41, scope: !930)
!947 = !DILocation(line: 818, column: 39, scope: !930)
!948 = !DILocation(line: 818, column: 23, scope: !930)
!949 = !DILocation(line: 819, column: 35, scope: !930)
!950 = !DILocation(line: 819, column: 17, scope: !930)
!951 = !DILocation(line: 820, column: 20, scope: !930)
!952 = !DILocation(line: 820, column: 11, scope: !930)
!953 = !DILocation(line: 821, column: 26, scope: !930)
!954 = !DILocation(line: 822, column: 60, scope: !930)
!955 = !DILocation(line: 822, column: 69, scope: !930)
!956 = !DILocation(line: 822, column: 75, scope: !930)
!957 = !DILocation(line: 822, column: 85, scope: !930)
!958 = !DILocation(line: 822, column: 96, scope: !930)
!959 = !DILocation(line: 822, column: 105, scope: !930)
!960 = !DILocation(line: 822, column: 111, scope: !930)
!961 = !DILocation(line: 822, column: 37, scope: !930)
!962 = !DILocation(line: 822, column: 26, scope: !930)
!963 = !DILocation(line: 826, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !930, file: !3, line: 826, column: 9)
!965 = !DILocation(line: 826, column: 18, scope: !964)
!966 = !DILocation(line: 826, column: 25, scope: !964)
!967 = !DILocation(line: 826, column: 9, scope: !930)
!968 = !DILocation(line: 826, column: 38, scope: !964)
!969 = !DILocation(line: 826, column: 31, scope: !964)
!970 = !DILocation(line: 827, column: 9, scope: !971)
!971 = distinct !DILexicalBlock(scope: !930, file: !3, line: 827, column: 9)
!972 = !DILocation(line: 827, column: 51, scope: !971)
!973 = !DILocation(line: 827, column: 62, scope: !971)
!974 = !DILocation(line: 827, column: 71, scope: !971)
!975 = !DILocation(line: 827, column: 79, scope: !971)
!976 = !DILocation(line: 827, column: 88, scope: !971)
!977 = !DILocation(line: 827, column: 23, scope: !971)
!978 = !DILocation(line: 827, column: 21, scope: !971)
!979 = !DILocation(line: 827, column: 9, scope: !930)
!980 = !DILocation(line: 828, column: 16, scope: !971)
!981 = !DILocation(line: 828, column: 9, scope: !971)
!982 = !DILocation(line: 829, column: 5, scope: !930)
!983 = !DILocation(line: 830, column: 9, scope: !984)
!984 = distinct !DILexicalBlock(scope: !930, file: !3, line: 830, column: 9)
!985 = !DILocation(line: 830, column: 28, scope: !984)
!986 = !DILocation(line: 830, column: 9, scope: !930)
!987 = !DILocation(line: 830, column: 56, scope: !984)
!988 = !DILocation(line: 830, column: 37, scope: !984)
!989 = !DILocation(line: 833, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !930, file: !3, line: 833, column: 9)
!991 = !DILocation(line: 833, column: 18, scope: !990)
!992 = !DILocation(line: 833, column: 28, scope: !990)
!993 = !DILocation(line: 833, column: 9, scope: !930)
!994 = !DILocation(line: 834, column: 35, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !3, line: 833, column: 33)
!996 = !DILocation(line: 834, column: 47, scope: !995)
!997 = !DILocation(line: 834, column: 56, scope: !995)
!998 = !DILocation(line: 834, column: 45, scope: !995)
!999 = !DILocation(line: 834, column: 22, scope: !995)
!1000 = !DILocation(line: 835, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !995, file: !3, line: 835, column: 13)
!1002 = !DILocation(line: 835, column: 26, scope: !1001)
!1003 = !DILocation(line: 835, column: 24, scope: !1001)
!1004 = !DILocation(line: 835, column: 13, scope: !995)
!1005 = !DILocation(line: 837, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 835, column: 35)
!1007 = !DILocation(line: 837, column: 29, scope: !1006)
!1008 = !DILocation(line: 837, column: 37, scope: !1006)
!1009 = !DILocation(line: 837, column: 46, scope: !1006)
!1010 = !DILocation(line: 837, column: 35, scope: !1006)
!1011 = !DILocation(line: 837, column: 57, scope: !1006)
!1012 = !DILocation(line: 837, column: 68, scope: !1006)
!1013 = !DILocation(line: 837, column: 13, scope: !1006)
!1014 = !DILocation(line: 838, column: 22, scope: !1006)
!1015 = !DILocation(line: 838, column: 20, scope: !1006)
!1016 = !DILocation(line: 839, column: 35, scope: !1006)
!1017 = !DILocation(line: 839, column: 13, scope: !1006)
!1018 = !DILocation(line: 839, column: 22, scope: !1006)
!1019 = !DILocation(line: 839, column: 32, scope: !1006)
!1020 = !DILocation(line: 841, column: 9, scope: !1006)
!1021 = !DILocation(line: 843, column: 33, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 841, column: 16)
!1023 = !DILocation(line: 844, column: 20, scope: !1022)
!1024 = !DILocation(line: 844, column: 29, scope: !1022)
!1025 = !DILocation(line: 844, column: 37, scope: !1022)
!1026 = !DILocation(line: 844, column: 46, scope: !1022)
!1027 = !DILocation(line: 844, column: 35, scope: !1022)
!1028 = !DILocation(line: 844, column: 57, scope: !1022)
!1029 = !DILocation(line: 844, column: 68, scope: !1022)
!1030 = !DILocation(line: 844, column: 13, scope: !1022)
!1031 = !DILocation(line: 845, column: 23, scope: !1022)
!1032 = !DILocation(line: 845, column: 20, scope: !1022)
!1033 = !DILocation(line: 847, column: 38, scope: !1022)
!1034 = !DILocation(line: 848, column: 38, scope: !1022)
!1035 = !DILocation(line: 848, column: 47, scope: !1022)
!1036 = !DILocation(line: 848, column: 54, scope: !1022)
!1037 = !DILocation(line: 849, column: 38, scope: !1022)
!1038 = !DILocation(line: 849, column: 48, scope: !1022)
!1039 = !DILocation(line: 849, column: 57, scope: !1022)
!1040 = !DILocation(line: 849, column: 68, scope: !1022)
!1041 = !DILocation(line: 849, column: 77, scope: !1022)
!1042 = !DILocation(line: 849, column: 83, scope: !1022)
!1043 = !DILocation(line: 850, column: 38, scope: !1022)
!1044 = !DILocation(line: 850, column: 47, scope: !1022)
!1045 = !DILocation(line: 851, column: 38, scope: !1022)
!1046 = !DILocation(line: 851, column: 47, scope: !1022)
!1047 = !DILocation(line: 851, column: 53, scope: !1022)
!1048 = !DILocation(line: 851, column: 63, scope: !1022)
!1049 = !DILocation(line: 847, column: 23, scope: !1022)
!1050 = !DILocation(line: 847, column: 20, scope: !1022)
!1051 = !DILocation(line: 853, column: 17, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 853, column: 17)
!1053 = !DILocation(line: 853, column: 26, scope: !1052)
!1054 = !DILocation(line: 853, column: 32, scope: !1052)
!1055 = !DILocation(line: 853, column: 42, scope: !1052)
!1056 = !DILocation(line: 853, column: 51, scope: !1052)
!1057 = !DILocation(line: 853, column: 17, scope: !1022)
!1058 = !DILocation(line: 853, column: 89, scope: !1052)
!1059 = !DILocation(line: 853, column: 71, scope: !1052)
!1060 = !DILocation(line: 853, column: 80, scope: !1052)
!1061 = !DILocation(line: 853, column: 86, scope: !1052)
!1062 = !DILocation(line: 854, column: 13, scope: !1022)
!1063 = !DILocation(line: 854, column: 22, scope: !1022)
!1064 = !DILocation(line: 854, column: 32, scope: !1022)
!1065 = !DILocation(line: 856, column: 5, scope: !995)
!1066 = !DILocation(line: 858, column: 5, scope: !930)
!1067 = !DILocation(line: 858, column: 21, scope: !930)
!1068 = !DILocation(line: 858, column: 30, scope: !930)
!1069 = !DILocation(line: 858, column: 28, scope: !930)
!1070 = !DILocation(line: 858, column: 41, scope: !930)
!1071 = !DILocation(line: 858, column: 38, scope: !930)
!1072 = !DILocation(line: 860, column: 29, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !930, file: !3, line: 858, column: 52)
!1074 = !DILocation(line: 861, column: 34, scope: !1073)
!1075 = !DILocation(line: 862, column: 34, scope: !1073)
!1076 = !DILocation(line: 862, column: 42, scope: !1073)
!1077 = !DILocation(line: 863, column: 34, scope: !1073)
!1078 = !DILocation(line: 863, column: 44, scope: !1073)
!1079 = !DILocation(line: 863, column: 53, scope: !1073)
!1080 = !DILocation(line: 863, column: 64, scope: !1073)
!1081 = !DILocation(line: 863, column: 73, scope: !1073)
!1082 = !DILocation(line: 863, column: 79, scope: !1073)
!1083 = !DILocation(line: 864, column: 34, scope: !1073)
!1084 = !DILocation(line: 864, column: 43, scope: !1073)
!1085 = !DILocation(line: 865, column: 34, scope: !1073)
!1086 = !DILocation(line: 865, column: 43, scope: !1073)
!1087 = !DILocation(line: 865, column: 49, scope: !1073)
!1088 = !DILocation(line: 865, column: 59, scope: !1073)
!1089 = !DILocation(line: 861, column: 19, scope: !1073)
!1090 = !DILocation(line: 861, column: 16, scope: !1073)
!1091 = !DILocation(line: 866, column: 19, scope: !1073)
!1092 = !DILocation(line: 866, column: 16, scope: !1073)
!1093 = distinct !{!1093, !1066, !1094}
!1094 = !DILocation(line: 867, column: 5, scope: !930)
!1095 = !DILocation(line: 869, column: 10, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !930, file: !3, line: 869, column: 9)
!1097 = !DILocation(line: 869, column: 19, scope: !1096)
!1098 = !DILocation(line: 869, column: 25, scope: !1096)
!1099 = !DILocation(line: 869, column: 9, scope: !1096)
!1100 = !DILocation(line: 869, column: 36, scope: !1096)
!1101 = !DILocation(line: 869, column: 40, scope: !1096)
!1102 = !DILocation(line: 869, column: 49, scope: !1096)
!1103 = !DILocation(line: 869, column: 47, scope: !1096)
!1104 = !DILocation(line: 869, column: 9, scope: !930)
!1105 = !DILocation(line: 871, column: 29, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 869, column: 58)
!1107 = !DILocation(line: 872, column: 34, scope: !1106)
!1108 = !DILocation(line: 873, column: 34, scope: !1106)
!1109 = !DILocation(line: 873, column: 51, scope: !1106)
!1110 = !DILocation(line: 873, column: 60, scope: !1106)
!1111 = !DILocation(line: 873, column: 58, scope: !1106)
!1112 = !DILocation(line: 874, column: 34, scope: !1106)
!1113 = !DILocation(line: 874, column: 44, scope: !1106)
!1114 = !DILocation(line: 874, column: 53, scope: !1106)
!1115 = !DILocation(line: 874, column: 64, scope: !1106)
!1116 = !DILocation(line: 874, column: 73, scope: !1106)
!1117 = !DILocation(line: 874, column: 79, scope: !1106)
!1118 = !DILocation(line: 875, column: 34, scope: !1106)
!1119 = !DILocation(line: 875, column: 43, scope: !1106)
!1120 = !DILocation(line: 876, column: 34, scope: !1106)
!1121 = !DILocation(line: 876, column: 43, scope: !1106)
!1122 = !DILocation(line: 876, column: 49, scope: !1106)
!1123 = !DILocation(line: 876, column: 59, scope: !1106)
!1124 = !DILocation(line: 872, column: 19, scope: !1106)
!1125 = !DILocation(line: 872, column: 16, scope: !1106)
!1126 = !DILocation(line: 877, column: 19, scope: !1106)
!1127 = !DILocation(line: 877, column: 17, scope: !1106)
!1128 = !DILocation(line: 878, column: 5, scope: !1106)
!1129 = !DILocation(line: 881, column: 10, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !930, file: !3, line: 881, column: 9)
!1131 = !DILocation(line: 881, column: 19, scope: !1130)
!1132 = !DILocation(line: 881, column: 25, scope: !1130)
!1133 = !DILocation(line: 881, column: 35, scope: !1130)
!1134 = !DILocation(line: 881, column: 44, scope: !1130)
!1135 = !DILocation(line: 881, column: 64, scope: !1130)
!1136 = !DILocation(line: 881, column: 68, scope: !1130)
!1137 = !DILocation(line: 881, column: 87, scope: !1130)
!1138 = !DILocation(line: 881, column: 9, scope: !930)
!1139 = !DILocation(line: 882, column: 13, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 882, column: 13)
!1141 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 881, column: 105)
!1142 = !DILocation(line: 882, column: 33, scope: !1140)
!1143 = !DILocation(line: 882, column: 13, scope: !1141)
!1144 = !DILocation(line: 883, column: 30, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 882, column: 44)
!1146 = !DILocation(line: 883, column: 39, scope: !1145)
!1147 = !DILocation(line: 883, column: 13, scope: !1145)
!1148 = !DILocation(line: 883, column: 22, scope: !1145)
!1149 = !DILocation(line: 883, column: 28, scope: !1145)
!1150 = !DILocation(line: 884, column: 9, scope: !1145)
!1151 = !DILocation(line: 885, column: 57, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 884, column: 16)
!1153 = !DILocation(line: 885, column: 38, scope: !1152)
!1154 = !DILocation(line: 885, column: 23, scope: !1152)
!1155 = !DILocation(line: 886, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 886, column: 17)
!1157 = !DILocation(line: 886, column: 29, scope: !1156)
!1158 = !DILocation(line: 886, column: 17, scope: !1152)
!1159 = !DILocation(line: 886, column: 41, scope: !1156)
!1160 = !DILocation(line: 886, column: 34, scope: !1156)
!1161 = !DILocation(line: 887, column: 30, scope: !1152)
!1162 = !DILocation(line: 887, column: 39, scope: !1152)
!1163 = !DILocation(line: 887, column: 49, scope: !1152)
!1164 = !DILocation(line: 887, column: 47, scope: !1152)
!1165 = !DILocation(line: 887, column: 13, scope: !1152)
!1166 = !DILocation(line: 887, column: 22, scope: !1152)
!1167 = !DILocation(line: 887, column: 28, scope: !1152)
!1168 = !DILocation(line: 889, column: 5, scope: !1141)
!1169 = !DILocation(line: 892, column: 10, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !930, file: !3, line: 892, column: 9)
!1171 = !DILocation(line: 892, column: 19, scope: !1170)
!1172 = !DILocation(line: 892, column: 27, scope: !1170)
!1173 = !DILocation(line: 892, column: 25, scope: !1170)
!1174 = !DILocation(line: 892, column: 41, scope: !1170)
!1175 = !DILocation(line: 892, column: 50, scope: !1170)
!1176 = !DILocation(line: 892, column: 60, scope: !1170)
!1177 = !DILocation(line: 892, column: 69, scope: !1170)
!1178 = !DILocation(line: 892, column: 58, scope: !1170)
!1179 = !DILocation(line: 892, column: 38, scope: !1170)
!1180 = !DILocation(line: 893, column: 9, scope: !1170)
!1181 = !DILocation(line: 893, column: 14, scope: !1170)
!1182 = !DILocation(line: 893, column: 23, scope: !1170)
!1183 = !DILocation(line: 893, column: 29, scope: !1170)
!1184 = !DILocation(line: 893, column: 13, scope: !1170)
!1185 = !DILocation(line: 892, column: 9, scope: !930)
!1186 = !DILocation(line: 895, column: 53, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 894, column: 5)
!1188 = !DILocation(line: 895, column: 34, scope: !1187)
!1189 = !DILocation(line: 895, column: 19, scope: !1187)
!1190 = !DILocation(line: 896, column: 26, scope: !1187)
!1191 = !DILocation(line: 896, column: 35, scope: !1187)
!1192 = !DILocation(line: 896, column: 45, scope: !1187)
!1193 = !DILocation(line: 896, column: 43, scope: !1187)
!1194 = !DILocation(line: 896, column: 9, scope: !1187)
!1195 = !DILocation(line: 896, column: 18, scope: !1187)
!1196 = !DILocation(line: 896, column: 24, scope: !1187)
!1197 = !DILocation(line: 897, column: 5, scope: !1187)
!1198 = !DILocation(line: 900, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !930, file: !3, line: 900, column: 9)
!1200 = !DILocation(line: 900, column: 18, scope: !1199)
!1201 = !DILocation(line: 900, column: 16, scope: !1199)
!1202 = !DILocation(line: 900, column: 9, scope: !930)
!1203 = !DILocation(line: 902, column: 44, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 900, column: 26)
!1205 = !DILocation(line: 902, column: 53, scope: !1204)
!1206 = !DILocation(line: 902, column: 51, scope: !1204)
!1207 = !DILocation(line: 902, column: 22, scope: !1204)
!1208 = !DILocation(line: 903, column: 16, scope: !1204)
!1209 = !DILocation(line: 903, column: 25, scope: !1204)
!1210 = !DILocation(line: 903, column: 32, scope: !1204)
!1211 = !DILocation(line: 903, column: 40, scope: !1204)
!1212 = !DILocation(line: 903, column: 9, scope: !1204)
!1213 = !DILocation(line: 904, column: 30, scope: !1204)
!1214 = !DILocation(line: 904, column: 9, scope: !1204)
!1215 = !DILocation(line: 904, column: 18, scope: !1204)
!1216 = !DILocation(line: 904, column: 28, scope: !1204)
!1217 = !DILocation(line: 905, column: 5, scope: !1204)
!1218 = !DILocation(line: 907, column: 9, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !930, file: !3, line: 907, column: 9)
!1220 = !DILocation(line: 907, column: 18, scope: !1219)
!1221 = !DILocation(line: 907, column: 24, scope: !1219)
!1222 = !DILocation(line: 907, column: 34, scope: !1219)
!1223 = !DILocation(line: 907, column: 54, scope: !1219)
!1224 = !DILocation(line: 907, column: 9, scope: !930)
!1225 = !DILocation(line: 908, column: 30, scope: !1219)
!1226 = !DILocation(line: 908, column: 39, scope: !1219)
!1227 = !DILocation(line: 908, column: 45, scope: !1219)
!1228 = !DILocation(line: 908, column: 56, scope: !1219)
!1229 = !DILocation(line: 908, column: 15, scope: !1219)
!1230 = !DILocation(line: 908, column: 9, scope: !1219)
!1231 = !DILocation(line: 910, column: 29, scope: !930)
!1232 = !DILocation(line: 910, column: 5, scope: !930)
!1233 = !DILocation(line: 910, column: 14, scope: !930)
!1234 = !DILocation(line: 910, column: 26, scope: !930)
!1235 = !DILocation(line: 911, column: 21, scope: !930)
!1236 = !DILocation(line: 911, column: 30, scope: !930)
!1237 = !DILocation(line: 911, column: 28, scope: !930)
!1238 = !DILocation(line: 911, column: 5, scope: !930)
!1239 = !DILocation(line: 912, column: 1, scope: !930)
!1240 = distinct !DISubprogram(name: "LZ4F_compressEnd", scope: !3, file: !3, line: 971, type: !1241, isLocal: false, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!11, !239, !90, !11, !933}
!1243 = !DILocation(line: 975, column: 35, scope: !1240)
!1244 = !DILocation(line: 975, column: 17, scope: !1240)
!1245 = !DILocation(line: 976, column: 20, scope: !1240)
!1246 = !DILocation(line: 976, column: 11, scope: !1240)
!1247 = !DILocation(line: 978, column: 41, scope: !1240)
!1248 = !DILocation(line: 978, column: 50, scope: !1240)
!1249 = !DILocation(line: 978, column: 61, scope: !1240)
!1250 = !DILocation(line: 978, column: 74, scope: !1240)
!1251 = !DILocation(line: 978, column: 30, scope: !1240)
!1252 = !DILocation(line: 978, column: 18, scope: !1240)
!1253 = !DILocation(line: 979, column: 22, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 979, column: 9)
!1255 = !DILocation(line: 979, column: 9, scope: !1254)
!1256 = !DILocation(line: 979, column: 9, scope: !1240)
!1257 = !DILocation(line: 979, column: 41, scope: !1254)
!1258 = !DILocation(line: 979, column: 34, scope: !1254)
!1259 = !DILocation(line: 980, column: 15, scope: !1240)
!1260 = !DILocation(line: 980, column: 12, scope: !1240)
!1261 = !DILocation(line: 983, column: 20, scope: !1240)
!1262 = !DILocation(line: 983, column: 17, scope: !1240)
!1263 = !DILocation(line: 985, column: 9, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 985, column: 9)
!1265 = !DILocation(line: 985, column: 21, scope: !1264)
!1266 = !DILocation(line: 985, column: 9, scope: !1240)
!1267 = !DILocation(line: 985, column: 33, scope: !1264)
!1268 = !DILocation(line: 985, column: 26, scope: !1264)
!1269 = !DILocation(line: 986, column: 20, scope: !1240)
!1270 = !DILocation(line: 986, column: 5, scope: !1240)
!1271 = !DILocation(line: 987, column: 12, scope: !1240)
!1272 = !DILocation(line: 989, column: 9, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 989, column: 9)
!1274 = !DILocation(line: 989, column: 18, scope: !1273)
!1275 = !DILocation(line: 989, column: 24, scope: !1273)
!1276 = !DILocation(line: 989, column: 34, scope: !1273)
!1277 = !DILocation(line: 989, column: 54, scope: !1273)
!1278 = !DILocation(line: 989, column: 9, scope: !1240)
!1279 = !DILocation(line: 990, column: 40, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 989, column: 86)
!1281 = !DILocation(line: 990, column: 49, scope: !1280)
!1282 = !DILocation(line: 990, column: 25, scope: !1280)
!1283 = !DILocation(line: 990, column: 19, scope: !1280)
!1284 = !DILocation(line: 991, column: 13, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 991, column: 13)
!1286 = !DILocation(line: 991, column: 25, scope: !1285)
!1287 = !DILocation(line: 991, column: 13, scope: !1280)
!1288 = !DILocation(line: 991, column: 37, scope: !1285)
!1289 = !DILocation(line: 991, column: 30, scope: !1285)
!1290 = !DILocation(line: 992, column: 24, scope: !1280)
!1291 = !DILocation(line: 992, column: 32, scope: !1280)
!1292 = !DILocation(line: 992, column: 9, scope: !1280)
!1293 = !DILocation(line: 993, column: 15, scope: !1280)
!1294 = !DILocation(line: 994, column: 5, scope: !1280)
!1295 = !DILocation(line: 996, column: 5, scope: !1240)
!1296 = !DILocation(line: 996, column: 14, scope: !1240)
!1297 = !DILocation(line: 996, column: 21, scope: !1240)
!1298 = !DILocation(line: 997, column: 5, scope: !1240)
!1299 = !DILocation(line: 997, column: 14, scope: !1240)
!1300 = !DILocation(line: 997, column: 28, scope: !1240)
!1301 = !DILocation(line: 999, column: 9, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 999, column: 9)
!1303 = !DILocation(line: 999, column: 18, scope: !1302)
!1304 = !DILocation(line: 999, column: 24, scope: !1302)
!1305 = !DILocation(line: 999, column: 34, scope: !1302)
!1306 = !DILocation(line: 999, column: 9, scope: !1240)
!1307 = !DILocation(line: 1000, column: 13, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1000, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 999, column: 47)
!1310 = !DILocation(line: 1000, column: 22, scope: !1308)
!1311 = !DILocation(line: 1000, column: 28, scope: !1308)
!1312 = !DILocation(line: 1000, column: 38, scope: !1308)
!1313 = !DILocation(line: 1000, column: 53, scope: !1308)
!1314 = !DILocation(line: 1000, column: 62, scope: !1308)
!1315 = !DILocation(line: 1000, column: 50, scope: !1308)
!1316 = !DILocation(line: 1000, column: 13, scope: !1309)
!1317 = !DILocation(line: 1001, column: 20, scope: !1308)
!1318 = !DILocation(line: 1001, column: 13, scope: !1308)
!1319 = !DILocation(line: 1002, column: 5, scope: !1309)
!1320 = !DILocation(line: 1004, column: 21, scope: !1240)
!1321 = !DILocation(line: 1004, column: 30, scope: !1240)
!1322 = !DILocation(line: 1004, column: 28, scope: !1240)
!1323 = !DILocation(line: 1004, column: 5, scope: !1240)
!1324 = !DILocation(line: 1005, column: 1, scope: !1240)
!1325 = distinct !DISubprogram(name: "LZ4F_compressFrame", scope: !3, file: !3, line: 418, type: !1326, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!11, !90, !11, !470, !11, !372}
!1328 = !DILocation(line: 430, column: 18, scope: !1325)
!1329 = !DILocation(line: 433, column: 5, scope: !1325)
!1330 = !DILocation(line: 434, column: 10, scope: !1325)
!1331 = !DILocation(line: 434, column: 18, scope: !1325)
!1332 = !DILocation(line: 435, column: 10, scope: !1325)
!1333 = !DILocation(line: 435, column: 24, scope: !1325)
!1334 = !DILocation(line: 436, column: 9, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 436, column: 9)
!1336 = !DILocation(line: 436, column: 24, scope: !1335)
!1337 = !DILocation(line: 436, column: 32, scope: !1335)
!1338 = !DILocation(line: 437, column: 9, scope: !1335)
!1339 = !DILocation(line: 437, column: 25, scope: !1335)
!1340 = !DILocation(line: 437, column: 42, scope: !1335)
!1341 = !DILocation(line: 436, column: 9, scope: !1325)
!1342 = !DILocation(line: 439, column: 9, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 438, column: 5)
!1344 = !DILocation(line: 440, column: 30, scope: !1343)
!1345 = !DILocation(line: 440, column: 9, scope: !1343)
!1346 = !DILocation(line: 440, column: 18, scope: !1343)
!1347 = !DILocation(line: 440, column: 28, scope: !1343)
!1348 = !DILocation(line: 441, column: 9, scope: !1343)
!1349 = !DILocation(line: 441, column: 18, scope: !1343)
!1350 = !DILocation(line: 441, column: 30, scope: !1343)
!1351 = !DILocation(line: 442, column: 9, scope: !1343)
!1352 = !DILocation(line: 442, column: 18, scope: !1343)
!1353 = !DILocation(line: 442, column: 30, scope: !1343)
!1354 = !DILocation(line: 443, column: 5, scope: !1343)
!1355 = !DILocation(line: 446, column: 44, scope: !1325)
!1356 = !DILocation(line: 446, column: 53, scope: !1325)
!1357 = !DILocation(line: 446, column: 64, scope: !1325)
!1358 = !DILocation(line: 447, column: 44, scope: !1325)
!1359 = !DILocation(line: 447, column: 55, scope: !1325)
!1360 = !DILocation(line: 448, column: 50, scope: !1325)
!1361 = !DILocation(line: 446, column: 14, scope: !1325)
!1362 = !DILocation(line: 446, column: 12, scope: !1325)
!1363 = !DILocation(line: 453, column: 9, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 453, column: 9)
!1365 = !DILocation(line: 453, column: 24, scope: !1364)
!1366 = !DILocation(line: 453, column: 32, scope: !1364)
!1367 = !DILocation(line: 454, column: 9, scope: !1364)
!1368 = !DILocation(line: 454, column: 25, scope: !1364)
!1369 = !DILocation(line: 454, column: 42, scope: !1364)
!1370 = !DILocation(line: 453, column: 9, scope: !1325)
!1371 = !DILocation(line: 456, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 455, column: 5)
!1373 = !DILocation(line: 457, column: 5, scope: !1372)
!1374 = !DILocation(line: 459, column: 12, scope: !1325)
!1375 = !DILocation(line: 459, column: 5, scope: !1325)
!1376 = distinct !DISubprogram(name: "LZ4F_createCDict", scope: !3, file: !3, line: 479, type: !1377, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!98, !470, !11}
!1379 = !DILocation(line: 481, column: 42, scope: !1376)
!1380 = !DILocation(line: 481, column: 17, scope: !1376)
!1381 = !DILocation(line: 482, column: 39, scope: !1376)
!1382 = !DILocation(line: 482, column: 25, scope: !1376)
!1383 = !DILocation(line: 482, column: 17, scope: !1376)
!1384 = !DILocation(line: 484, column: 10, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 484, column: 9)
!1386 = !DILocation(line: 484, column: 9, scope: !1376)
!1387 = !DILocation(line: 484, column: 17, scope: !1385)
!1388 = !DILocation(line: 485, column: 9, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 485, column: 9)
!1390 = !DILocation(line: 485, column: 18, scope: !1389)
!1391 = !DILocation(line: 485, column: 9, scope: !1376)
!1392 = !DILocation(line: 486, column: 22, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 485, column: 27)
!1394 = !DILocation(line: 486, column: 31, scope: !1393)
!1395 = !DILocation(line: 486, column: 19, scope: !1393)
!1396 = !DILocation(line: 487, column: 18, scope: !1393)
!1397 = !DILocation(line: 488, column: 5, scope: !1393)
!1398 = !DILocation(line: 489, column: 26, scope: !1376)
!1399 = !DILocation(line: 489, column: 5, scope: !1376)
!1400 = !DILocation(line: 489, column: 12, scope: !1376)
!1401 = !DILocation(line: 489, column: 24, scope: !1376)
!1402 = !DILocation(line: 490, column: 22, scope: !1376)
!1403 = !DILocation(line: 490, column: 5, scope: !1376)
!1404 = !DILocation(line: 490, column: 12, scope: !1376)
!1405 = !DILocation(line: 490, column: 20, scope: !1376)
!1406 = !DILocation(line: 491, column: 20, scope: !1376)
!1407 = !DILocation(line: 491, column: 5, scope: !1376)
!1408 = !DILocation(line: 491, column: 12, scope: !1376)
!1409 = !DILocation(line: 491, column: 18, scope: !1376)
!1410 = !DILocation(line: 492, column: 10, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 492, column: 9)
!1412 = !DILocation(line: 492, column: 17, scope: !1411)
!1413 = !DILocation(line: 492, column: 29, scope: !1411)
!1414 = !DILocation(line: 492, column: 33, scope: !1411)
!1415 = !DILocation(line: 492, column: 40, scope: !1411)
!1416 = !DILocation(line: 492, column: 48, scope: !1411)
!1417 = !DILocation(line: 492, column: 52, scope: !1411)
!1418 = !DILocation(line: 492, column: 59, scope: !1411)
!1419 = !DILocation(line: 492, column: 9, scope: !1376)
!1420 = !DILocation(line: 493, column: 24, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 492, column: 66)
!1422 = !DILocation(line: 493, column: 9, scope: !1421)
!1423 = !DILocation(line: 494, column: 9, scope: !1421)
!1424 = !DILocation(line: 496, column: 12, scope: !1376)
!1425 = !DILocation(line: 496, column: 19, scope: !1376)
!1426 = !DILocation(line: 496, column: 32, scope: !1376)
!1427 = !DILocation(line: 496, column: 43, scope: !1376)
!1428 = !DILocation(line: 496, column: 5, scope: !1376)
!1429 = !DILocation(line: 497, column: 19, scope: !1376)
!1430 = !DILocation(line: 497, column: 26, scope: !1376)
!1431 = !DILocation(line: 497, column: 48, scope: !1376)
!1432 = !DILocation(line: 497, column: 55, scope: !1376)
!1433 = !DILocation(line: 497, column: 73, scope: !1376)
!1434 = !DILocation(line: 497, column: 68, scope: !1376)
!1435 = !DILocation(line: 497, column: 5, scope: !1376)
!1436 = !DILocation(line: 498, column: 29, scope: !1376)
!1437 = !DILocation(line: 498, column: 36, scope: !1376)
!1438 = !DILocation(line: 498, column: 5, scope: !1376)
!1439 = !DILocation(line: 499, column: 20, scope: !1376)
!1440 = !DILocation(line: 499, column: 27, scope: !1376)
!1441 = !DILocation(line: 499, column: 47, scope: !1376)
!1442 = !DILocation(line: 499, column: 54, scope: !1376)
!1443 = !DILocation(line: 499, column: 72, scope: !1376)
!1444 = !DILocation(line: 499, column: 67, scope: !1376)
!1445 = !DILocation(line: 499, column: 5, scope: !1376)
!1446 = !DILocation(line: 500, column: 12, scope: !1376)
!1447 = !DILocation(line: 500, column: 5, scope: !1376)
!1448 = !DILocation(line: 501, column: 1, scope: !1376)
!1449 = distinct !DISubprogram(name: "LZ4F_freeCDict", scope: !3, file: !3, line: 503, type: !1450, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !98}
!1452 = !DILocation(line: 505, column: 9, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 505, column: 9)
!1454 = !DILocation(line: 505, column: 14, scope: !1453)
!1455 = !DILocation(line: 505, column: 9, scope: !1449)
!1456 = !DILocation(line: 505, column: 22, scope: !1453)
!1457 = !DILocation(line: 506, column: 5, scope: !1449)
!1458 = !DILocation(line: 507, column: 20, scope: !1449)
!1459 = !DILocation(line: 507, column: 27, scope: !1449)
!1460 = !DILocation(line: 507, column: 5, scope: !1449)
!1461 = !DILocation(line: 508, column: 22, scope: !1449)
!1462 = !DILocation(line: 508, column: 29, scope: !1449)
!1463 = !DILocation(line: 508, column: 5, scope: !1449)
!1464 = !DILocation(line: 509, column: 5, scope: !1449)
!1465 = !DILocation(line: 510, column: 1, scope: !1449)
!1466 = distinct !DISubprogram(name: "LZ4F_createCompressionContext", scope: !3, file: !3, line: 525, type: !1467, isLocal: false, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!9, !1469, !121}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1470 = !DILocation(line: 527, column: 48, scope: !1466)
!1471 = !DILocation(line: 527, column: 34, scope: !1466)
!1472 = !DILocation(line: 527, column: 24, scope: !1466)
!1473 = !DILocation(line: 528, column: 9, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 528, column: 9)
!1475 = !DILocation(line: 528, column: 16, scope: !1474)
!1476 = !DILocation(line: 528, column: 9, scope: !1466)
!1477 = !DILocation(line: 528, column: 31, scope: !1474)
!1478 = !DILocation(line: 528, column: 24, scope: !1474)
!1479 = !DILocation(line: 530, column: 24, scope: !1466)
!1480 = !DILocation(line: 530, column: 5, scope: !1466)
!1481 = !DILocation(line: 530, column: 14, scope: !1466)
!1482 = !DILocation(line: 530, column: 22, scope: !1466)
!1483 = !DILocation(line: 531, column: 5, scope: !1466)
!1484 = !DILocation(line: 531, column: 14, scope: !1466)
!1485 = !DILocation(line: 531, column: 21, scope: !1466)
!1486 = !DILocation(line: 533, column: 62, scope: !1466)
!1487 = !DILocation(line: 533, column: 6, scope: !1466)
!1488 = !DILocation(line: 533, column: 33, scope: !1466)
!1489 = !DILocation(line: 535, column: 5, scope: !1466)
!1490 = !DILocation(line: 536, column: 1, scope: !1466)
!1491 = distinct !DISubprogram(name: "LZ4F_freeCompressionContext", scope: !3, file: !3, line: 539, type: !1492, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!9, !238}
!1494 = !DILocation(line: 541, column: 48, scope: !1491)
!1495 = !DILocation(line: 541, column: 24, scope: !1491)
!1496 = !DILocation(line: 543, column: 9, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 543, column: 9)
!1498 = !DILocation(line: 543, column: 17, scope: !1497)
!1499 = !DILocation(line: 543, column: 9, scope: !1491)
!1500 = !DILocation(line: 544, column: 8, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 543, column: 26)
!1502 = !DILocation(line: 545, column: 8, scope: !1501)
!1503 = !DILocation(line: 546, column: 8, scope: !1501)
!1504 = !DILocation(line: 547, column: 5, scope: !1501)
!1505 = !DILocation(line: 549, column: 5, scope: !1491)
!1506 = distinct !DISubprogram(name: "LZ4F_initStream", scope: !3, file: !3, line: 561, type: !1507, isLocal: true, isDefinition: true, scopeLine: 564, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !90, !209, !86, !189}
!1509 = !DILocation(line: 565, column: 9, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 565, column: 9)
!1511 = !DILocation(line: 565, column: 15, scope: !1510)
!1512 = !DILocation(line: 565, column: 9, scope: !1506)
!1513 = !DILocation(line: 566, column: 13, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 566, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 565, column: 35)
!1516 = !DILocation(line: 566, column: 19, scope: !1514)
!1517 = !DILocation(line: 566, column: 27, scope: !1514)
!1518 = !DILocation(line: 566, column: 30, scope: !1514)
!1519 = !DILocation(line: 566, column: 40, scope: !1514)
!1520 = !DILocation(line: 566, column: 13, scope: !1515)
!1521 = !DILocation(line: 573, column: 49, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 566, column: 61)
!1523 = !DILocation(line: 573, column: 34, scope: !1522)
!1524 = !DILocation(line: 573, column: 13, scope: !1522)
!1525 = !DILocation(line: 574, column: 9, scope: !1522)
!1526 = !DILocation(line: 575, column: 47, scope: !1515)
!1527 = !DILocation(line: 575, column: 31, scope: !1515)
!1528 = !DILocation(line: 575, column: 52, scope: !1515)
!1529 = !DILocation(line: 575, column: 60, scope: !1515)
!1530 = !DILocation(line: 575, column: 67, scope: !1515)
!1531 = !DILocation(line: 575, column: 9, scope: !1515)
!1532 = !DILocation(line: 576, column: 5, scope: !1515)
!1533 = !DILocation(line: 577, column: 49, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 576, column: 12)
!1535 = !DILocation(line: 577, column: 32, scope: !1534)
!1536 = !DILocation(line: 577, column: 54, scope: !1534)
!1537 = !DILocation(line: 577, column: 9, scope: !1534)
!1538 = !DILocation(line: 578, column: 52, scope: !1534)
!1539 = !DILocation(line: 578, column: 34, scope: !1534)
!1540 = !DILocation(line: 578, column: 57, scope: !1534)
!1541 = !DILocation(line: 578, column: 65, scope: !1534)
!1542 = !DILocation(line: 578, column: 72, scope: !1534)
!1543 = !DILocation(line: 578, column: 9, scope: !1534)
!1544 = !DILocation(line: 580, column: 1, scope: !1506)
!1545 = distinct !DISubprogram(name: "LZ4F_writeLE32", scope: !3, file: !3, line: 147, type: !1546, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !90, !206}
!1548 = !DILocation(line: 149, column: 33, scope: !1545)
!1549 = !DILocation(line: 149, column: 17, scope: !1545)
!1550 = !DILocation(line: 150, column: 23, scope: !1545)
!1551 = !DILocation(line: 150, column: 17, scope: !1545)
!1552 = !DILocation(line: 150, column: 5, scope: !1545)
!1553 = !DILocation(line: 150, column: 15, scope: !1545)
!1554 = !DILocation(line: 151, column: 24, scope: !1545)
!1555 = !DILocation(line: 151, column: 32, scope: !1545)
!1556 = !DILocation(line: 151, column: 17, scope: !1545)
!1557 = !DILocation(line: 151, column: 5, scope: !1545)
!1558 = !DILocation(line: 151, column: 15, scope: !1545)
!1559 = !DILocation(line: 152, column: 24, scope: !1545)
!1560 = !DILocation(line: 152, column: 32, scope: !1545)
!1561 = !DILocation(line: 152, column: 17, scope: !1545)
!1562 = !DILocation(line: 152, column: 5, scope: !1545)
!1563 = !DILocation(line: 152, column: 15, scope: !1545)
!1564 = !DILocation(line: 153, column: 24, scope: !1545)
!1565 = !DILocation(line: 153, column: 32, scope: !1545)
!1566 = !DILocation(line: 153, column: 17, scope: !1545)
!1567 = !DILocation(line: 153, column: 5, scope: !1545)
!1568 = !DILocation(line: 153, column: 15, scope: !1545)
!1569 = !DILocation(line: 154, column: 1, scope: !1545)
!1570 = distinct !DISubprogram(name: "LZ4F_writeLE64", scope: !3, file: !3, line: 170, type: !1571, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !90, !96}
!1573 = !DILocation(line: 172, column: 33, scope: !1570)
!1574 = !DILocation(line: 172, column: 17, scope: !1570)
!1575 = !DILocation(line: 173, column: 23, scope: !1570)
!1576 = !DILocation(line: 173, column: 17, scope: !1570)
!1577 = !DILocation(line: 173, column: 5, scope: !1570)
!1578 = !DILocation(line: 173, column: 15, scope: !1570)
!1579 = !DILocation(line: 174, column: 24, scope: !1570)
!1580 = !DILocation(line: 174, column: 32, scope: !1570)
!1581 = !DILocation(line: 174, column: 17, scope: !1570)
!1582 = !DILocation(line: 174, column: 5, scope: !1570)
!1583 = !DILocation(line: 174, column: 15, scope: !1570)
!1584 = !DILocation(line: 175, column: 24, scope: !1570)
!1585 = !DILocation(line: 175, column: 32, scope: !1570)
!1586 = !DILocation(line: 175, column: 17, scope: !1570)
!1587 = !DILocation(line: 175, column: 5, scope: !1570)
!1588 = !DILocation(line: 175, column: 15, scope: !1570)
!1589 = !DILocation(line: 176, column: 24, scope: !1570)
!1590 = !DILocation(line: 176, column: 32, scope: !1570)
!1591 = !DILocation(line: 176, column: 17, scope: !1570)
!1592 = !DILocation(line: 176, column: 5, scope: !1570)
!1593 = !DILocation(line: 176, column: 15, scope: !1570)
!1594 = !DILocation(line: 177, column: 24, scope: !1570)
!1595 = !DILocation(line: 177, column: 32, scope: !1570)
!1596 = !DILocation(line: 177, column: 17, scope: !1570)
!1597 = !DILocation(line: 177, column: 5, scope: !1570)
!1598 = !DILocation(line: 177, column: 15, scope: !1570)
!1599 = !DILocation(line: 178, column: 24, scope: !1570)
!1600 = !DILocation(line: 178, column: 32, scope: !1570)
!1601 = !DILocation(line: 178, column: 17, scope: !1570)
!1602 = !DILocation(line: 178, column: 5, scope: !1570)
!1603 = !DILocation(line: 178, column: 15, scope: !1570)
!1604 = !DILocation(line: 179, column: 24, scope: !1570)
!1605 = !DILocation(line: 179, column: 32, scope: !1570)
!1606 = !DILocation(line: 179, column: 17, scope: !1570)
!1607 = !DILocation(line: 179, column: 5, scope: !1570)
!1608 = !DILocation(line: 179, column: 15, scope: !1570)
!1609 = !DILocation(line: 180, column: 24, scope: !1570)
!1610 = !DILocation(line: 180, column: 32, scope: !1570)
!1611 = !DILocation(line: 180, column: 17, scope: !1570)
!1612 = !DILocation(line: 180, column: 5, scope: !1570)
!1613 = !DILocation(line: 180, column: 15, scope: !1570)
!1614 = !DILocation(line: 181, column: 1, scope: !1570)
!1615 = distinct !DISubprogram(name: "LZ4F_headerChecksum", scope: !3, file: !3, line: 283, type: !1616, isLocal: true, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!92, !470, !11}
!1618 = !DILocation(line: 285, column: 27, scope: !1615)
!1619 = !DILocation(line: 285, column: 35, scope: !1615)
!1620 = !DILocation(line: 285, column: 21, scope: !1615)
!1621 = !DILocation(line: 285, column: 15, scope: !1615)
!1622 = !DILocation(line: 286, column: 19, scope: !1615)
!1623 = !DILocation(line: 286, column: 23, scope: !1615)
!1624 = !DILocation(line: 286, column: 12, scope: !1615)
!1625 = !DILocation(line: 286, column: 5, scope: !1615)
!1626 = distinct !DISubprogram(name: "LZ4F_compressBegin", scope: !3, file: !3, line: 699, type: !1627, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!11, !239, !90, !11, !372}
!1629 = !DILocation(line: 703, column: 42, scope: !1626)
!1630 = !DILocation(line: 703, column: 51, scope: !1626)
!1631 = !DILocation(line: 703, column: 62, scope: !1626)
!1632 = !DILocation(line: 704, column: 48, scope: !1626)
!1633 = !DILocation(line: 703, column: 12, scope: !1626)
!1634 = !DILocation(line: 703, column: 5, scope: !1626)
!1635 = distinct !DISubprogram(name: "LZ4F_compressBound", scope: !3, file: !3, line: 713, type: !370, isLocal: false, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1636 = !DILocation(line: 715, column: 40, scope: !1635)
!1637 = !DILocation(line: 715, column: 49, scope: !1635)
!1638 = !DILocation(line: 715, column: 12, scope: !1635)
!1639 = !DILocation(line: 715, column: 5, scope: !1635)
!1640 = distinct !DISubprogram(name: "LZ4F_selectCompression", scope: !3, file: !3, line: 784, type: !1641, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1643, !189, !86}
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "compressFunc_t", file: !3, line: 719, baseType: !1644)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!86, !90, !6, !269, !86, !86, !86, !209}
!1647 = !DILocation(line: 786, column: 9, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 786, column: 9)
!1649 = !DILocation(line: 786, column: 15, scope: !1648)
!1650 = !DILocation(line: 786, column: 9, scope: !1640)
!1651 = !DILocation(line: 787, column: 13, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 787, column: 13)
!1653 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 786, column: 35)
!1654 = !DILocation(line: 787, column: 23, scope: !1652)
!1655 = !DILocation(line: 787, column: 13, scope: !1653)
!1656 = !DILocation(line: 787, column: 49, scope: !1652)
!1657 = !DILocation(line: 788, column: 9, scope: !1653)
!1658 = !DILocation(line: 790, column: 9, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 790, column: 9)
!1660 = !DILocation(line: 790, column: 19, scope: !1659)
!1661 = !DILocation(line: 790, column: 9, scope: !1640)
!1662 = !DILocation(line: 790, column: 45, scope: !1659)
!1663 = !DILocation(line: 791, column: 5, scope: !1640)
!1664 = !DILocation(line: 792, column: 1, scope: !1640)
!1665 = distinct !DISubprogram(name: "LZ4F_makeBlock", scope: !3, file: !3, line: 726, type: !1666, isLocal: true, isDefinition: true, scopeLine: 731, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!11, !90, !470, !11, !1643, !90, !86, !209, !197}
!1668 = !DILocation(line: 732, column: 35, scope: !1665)
!1669 = !DILocation(line: 732, column: 17, scope: !1665)
!1670 = !DILocation(line: 733, column: 22, scope: !1665)
!1671 = !DILocation(line: 733, column: 31, scope: !1665)
!1672 = !DILocation(line: 733, column: 52, scope: !1665)
!1673 = !DILocation(line: 733, column: 65, scope: !1665)
!1674 = !DILocation(line: 733, column: 73, scope: !1665)
!1675 = !DILocation(line: 734, column: 45, scope: !1665)
!1676 = !DILocation(line: 734, column: 39, scope: !1665)
!1677 = !DILocation(line: 734, column: 61, scope: !1665)
!1678 = !DILocation(line: 734, column: 68, scope: !1665)
!1679 = !DILocation(line: 734, column: 55, scope: !1665)
!1680 = !DILocation(line: 735, column: 39, scope: !1665)
!1681 = !DILocation(line: 735, column: 46, scope: !1665)
!1682 = !DILocation(line: 733, column: 9, scope: !1665)
!1683 = !DILocation(line: 736, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 736, column: 9)
!1685 = !DILocation(line: 736, column: 15, scope: !1684)
!1686 = !DILocation(line: 736, column: 9, scope: !1665)
!1687 = !DILocation(line: 737, column: 22, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 736, column: 21)
!1689 = !DILocation(line: 737, column: 17, scope: !1688)
!1690 = !DILocation(line: 737, column: 15, scope: !1688)
!1691 = !DILocation(line: 738, column: 24, scope: !1688)
!1692 = !DILocation(line: 738, column: 34, scope: !1688)
!1693 = !DILocation(line: 738, column: 40, scope: !1688)
!1694 = !DILocation(line: 738, column: 9, scope: !1688)
!1695 = !DILocation(line: 739, column: 16, scope: !1688)
!1696 = !DILocation(line: 739, column: 24, scope: !1688)
!1697 = !DILocation(line: 739, column: 33, scope: !1688)
!1698 = !DILocation(line: 739, column: 38, scope: !1688)
!1699 = !DILocation(line: 739, column: 9, scope: !1688)
!1700 = !DILocation(line: 740, column: 5, scope: !1688)
!1701 = !DILocation(line: 741, column: 24, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 740, column: 12)
!1703 = !DILocation(line: 741, column: 34, scope: !1702)
!1704 = !DILocation(line: 741, column: 9, scope: !1702)
!1705 = !DILocation(line: 743, column: 9, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 743, column: 9)
!1707 = !DILocation(line: 743, column: 9, scope: !1665)
!1708 = !DILocation(line: 744, column: 33, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 743, column: 18)
!1710 = !DILocation(line: 744, column: 41, scope: !1709)
!1711 = !DILocation(line: 744, column: 50, scope: !1709)
!1712 = !DILocation(line: 744, column: 27, scope: !1709)
!1713 = !DILocation(line: 744, column: 19, scope: !1709)
!1714 = !DILocation(line: 745, column: 24, scope: !1709)
!1715 = !DILocation(line: 745, column: 32, scope: !1709)
!1716 = !DILocation(line: 745, column: 40, scope: !1709)
!1717 = !DILocation(line: 745, column: 39, scope: !1709)
!1718 = !DILocation(line: 745, column: 47, scope: !1709)
!1719 = !DILocation(line: 745, column: 9, scope: !1709)
!1720 = !DILocation(line: 746, column: 5, scope: !1709)
!1721 = !DILocation(line: 747, column: 21, scope: !1665)
!1722 = !DILocation(line: 747, column: 19, scope: !1665)
!1723 = !DILocation(line: 747, column: 35, scope: !1665)
!1724 = !DILocation(line: 747, column: 29, scope: !1665)
!1725 = !DILocation(line: 747, column: 43, scope: !1665)
!1726 = !DILocation(line: 747, column: 27, scope: !1665)
!1727 = !DILocation(line: 747, column: 5, scope: !1665)
!1728 = distinct !DISubprogram(name: "LZ4F_localSaveDict", scope: !3, file: !3, line: 794, type: !1729, isLocal: true, isDefinition: true, scopeLine: 795, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!86, !174}
!1731 = !DILocation(line: 796, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 796, column: 9)
!1733 = !DILocation(line: 796, column: 18, scope: !1732)
!1734 = !DILocation(line: 796, column: 24, scope: !1732)
!1735 = !DILocation(line: 796, column: 41, scope: !1732)
!1736 = !DILocation(line: 796, column: 9, scope: !1728)
!1737 = !DILocation(line: 797, column: 46, scope: !1732)
!1738 = !DILocation(line: 797, column: 55, scope: !1732)
!1739 = !DILocation(line: 797, column: 30, scope: !1732)
!1740 = !DILocation(line: 797, column: 75, scope: !1732)
!1741 = !DILocation(line: 797, column: 84, scope: !1732)
!1742 = !DILocation(line: 797, column: 16, scope: !1732)
!1743 = !DILocation(line: 797, column: 9, scope: !1732)
!1744 = !DILocation(line: 798, column: 46, scope: !1728)
!1745 = !DILocation(line: 798, column: 55, scope: !1728)
!1746 = !DILocation(line: 798, column: 28, scope: !1728)
!1747 = !DILocation(line: 798, column: 75, scope: !1728)
!1748 = !DILocation(line: 798, column: 84, scope: !1728)
!1749 = !DILocation(line: 798, column: 12, scope: !1728)
!1750 = !DILocation(line: 798, column: 5, scope: !1728)
!1751 = !DILocation(line: 799, column: 1, scope: !1728)
!1752 = distinct !DISubprogram(name: "LZ4F_flush", scope: !3, file: !3, line: 923, type: !1241, isLocal: false, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1753 = !DILocation(line: 927, column: 35, scope: !1752)
!1754 = !DILocation(line: 927, column: 17, scope: !1752)
!1755 = !DILocation(line: 928, column: 20, scope: !1752)
!1756 = !DILocation(line: 928, column: 11, scope: !1752)
!1757 = !DILocation(line: 931, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 931, column: 9)
!1759 = !DILocation(line: 931, column: 18, scope: !1758)
!1760 = !DILocation(line: 931, column: 28, scope: !1758)
!1761 = !DILocation(line: 931, column: 9, scope: !1752)
!1762 = !DILocation(line: 931, column: 34, scope: !1758)
!1763 = !DILocation(line: 932, column: 9, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 932, column: 9)
!1765 = !DILocation(line: 932, column: 18, scope: !1764)
!1766 = !DILocation(line: 932, column: 25, scope: !1764)
!1767 = !DILocation(line: 932, column: 9, scope: !1752)
!1768 = !DILocation(line: 932, column: 38, scope: !1764)
!1769 = !DILocation(line: 932, column: 31, scope: !1764)
!1770 = !DILocation(line: 933, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 933, column: 9)
!1772 = !DILocation(line: 933, column: 24, scope: !1771)
!1773 = !DILocation(line: 933, column: 33, scope: !1771)
!1774 = !DILocation(line: 933, column: 43, scope: !1771)
!1775 = !DILocation(line: 933, column: 52, scope: !1771)
!1776 = !DILocation(line: 933, column: 21, scope: !1771)
!1777 = !DILocation(line: 933, column: 9, scope: !1752)
!1778 = !DILocation(line: 934, column: 16, scope: !1771)
!1779 = !DILocation(line: 934, column: 9, scope: !1771)
!1780 = !DILocation(line: 935, column: 11, scope: !1752)
!1781 = !DILocation(line: 938, column: 39, scope: !1752)
!1782 = !DILocation(line: 938, column: 48, scope: !1752)
!1783 = !DILocation(line: 938, column: 54, scope: !1752)
!1784 = !DILocation(line: 938, column: 64, scope: !1752)
!1785 = !DILocation(line: 938, column: 75, scope: !1752)
!1786 = !DILocation(line: 938, column: 84, scope: !1752)
!1787 = !DILocation(line: 938, column: 90, scope: !1752)
!1788 = !DILocation(line: 938, column: 16, scope: !1752)
!1789 = !DILocation(line: 938, column: 14, scope: !1752)
!1790 = !DILocation(line: 941, column: 30, scope: !1752)
!1791 = !DILocation(line: 942, column: 30, scope: !1752)
!1792 = !DILocation(line: 942, column: 39, scope: !1752)
!1793 = !DILocation(line: 942, column: 46, scope: !1752)
!1794 = !DILocation(line: 942, column: 55, scope: !1752)
!1795 = !DILocation(line: 943, column: 30, scope: !1752)
!1796 = !DILocation(line: 943, column: 40, scope: !1752)
!1797 = !DILocation(line: 943, column: 49, scope: !1752)
!1798 = !DILocation(line: 943, column: 60, scope: !1752)
!1799 = !DILocation(line: 943, column: 69, scope: !1752)
!1800 = !DILocation(line: 943, column: 75, scope: !1752)
!1801 = !DILocation(line: 944, column: 30, scope: !1752)
!1802 = !DILocation(line: 944, column: 39, scope: !1752)
!1803 = !DILocation(line: 945, column: 30, scope: !1752)
!1804 = !DILocation(line: 945, column: 39, scope: !1752)
!1805 = !DILocation(line: 945, column: 45, scope: !1752)
!1806 = !DILocation(line: 945, column: 55, scope: !1752)
!1807 = !DILocation(line: 941, column: 15, scope: !1752)
!1808 = !DILocation(line: 941, column: 12, scope: !1752)
!1809 = !DILocation(line: 948, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 948, column: 9)
!1811 = !DILocation(line: 948, column: 18, scope: !1810)
!1812 = !DILocation(line: 948, column: 24, scope: !1810)
!1813 = !DILocation(line: 948, column: 34, scope: !1810)
!1814 = !DILocation(line: 948, column: 44, scope: !1810)
!1815 = !DILocation(line: 948, column: 9, scope: !1752)
!1816 = !DILocation(line: 949, column: 27, scope: !1810)
!1817 = !DILocation(line: 949, column: 36, scope: !1810)
!1818 = !DILocation(line: 949, column: 9, scope: !1810)
!1819 = !DILocation(line: 949, column: 18, scope: !1810)
!1820 = !DILocation(line: 949, column: 24, scope: !1810)
!1821 = !DILocation(line: 950, column: 5, scope: !1752)
!1822 = !DILocation(line: 950, column: 14, scope: !1752)
!1823 = !DILocation(line: 950, column: 24, scope: !1752)
!1824 = !DILocation(line: 953, column: 10, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 953, column: 9)
!1826 = !DILocation(line: 953, column: 19, scope: !1825)
!1827 = !DILocation(line: 953, column: 27, scope: !1825)
!1828 = !DILocation(line: 953, column: 36, scope: !1825)
!1829 = !DILocation(line: 953, column: 25, scope: !1825)
!1830 = !DILocation(line: 953, column: 53, scope: !1825)
!1831 = !DILocation(line: 953, column: 62, scope: !1825)
!1832 = !DILocation(line: 953, column: 72, scope: !1825)
!1833 = !DILocation(line: 953, column: 81, scope: !1825)
!1834 = !DILocation(line: 953, column: 70, scope: !1825)
!1835 = !DILocation(line: 953, column: 50, scope: !1825)
!1836 = !DILocation(line: 953, column: 9, scope: !1752)
!1837 = !DILocation(line: 954, column: 53, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1825, file: !3, line: 953, column: 97)
!1839 = !DILocation(line: 954, column: 34, scope: !1838)
!1840 = !DILocation(line: 954, column: 19, scope: !1838)
!1841 = !DILocation(line: 955, column: 26, scope: !1838)
!1842 = !DILocation(line: 955, column: 35, scope: !1838)
!1843 = !DILocation(line: 955, column: 45, scope: !1838)
!1844 = !DILocation(line: 955, column: 43, scope: !1838)
!1845 = !DILocation(line: 955, column: 9, scope: !1838)
!1846 = !DILocation(line: 955, column: 18, scope: !1838)
!1847 = !DILocation(line: 955, column: 24, scope: !1838)
!1848 = !DILocation(line: 956, column: 5, scope: !1838)
!1849 = !DILocation(line: 958, column: 21, scope: !1752)
!1850 = !DILocation(line: 958, column: 30, scope: !1752)
!1851 = !DILocation(line: 958, column: 28, scope: !1752)
!1852 = !DILocation(line: 958, column: 5, scope: !1752)
!1853 = !DILocation(line: 959, column: 1, scope: !1752)
!1854 = distinct !DISubprogram(name: "LZ4F_createDecompressionContext", scope: !3, file: !3, line: 1052, type: !1855, isLocal: false, isDefinition: true, scopeLine: 1053, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!9, !1857, !121}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1858 = !DILocation(line: 1054, column: 41, scope: !1854)
!1859 = !DILocation(line: 1054, column: 29, scope: !1854)
!1860 = !DILocation(line: 1054, column: 22, scope: !1854)
!1861 = !DILocation(line: 1055, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1854, file: !3, line: 1055, column: 9)
!1863 = !DILocation(line: 1055, column: 13, scope: !1862)
!1864 = !DILocation(line: 1055, column: 9, scope: !1854)
!1865 = !DILocation(line: 1055, column: 28, scope: !1862)
!1866 = !DILocation(line: 1055, column: 21, scope: !1862)
!1867 = !DILocation(line: 1057, column: 21, scope: !1854)
!1868 = !DILocation(line: 1057, column: 5, scope: !1854)
!1869 = !DILocation(line: 1057, column: 11, scope: !1854)
!1870 = !DILocation(line: 1057, column: 19, scope: !1854)
!1871 = !DILocation(line: 1058, column: 37, scope: !1854)
!1872 = !DILocation(line: 1058, column: 6, scope: !1854)
!1873 = !DILocation(line: 1058, column: 35, scope: !1854)
!1874 = !DILocation(line: 1059, column: 5, scope: !1854)
!1875 = !DILocation(line: 1060, column: 1, scope: !1854)
!1876 = distinct !DISubprogram(name: "LZ4F_freeDecompressionContext", scope: !3, file: !3, line: 1062, type: !1877, isLocal: false, isDefinition: true, scopeLine: 1063, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!9, !243}
!1879 = !DILocation(line: 1064, column: 22, scope: !1876)
!1880 = !DILocation(line: 1065, column: 9, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 1065, column: 9)
!1882 = !DILocation(line: 1065, column: 14, scope: !1881)
!1883 = !DILocation(line: 1065, column: 9, scope: !1876)
!1884 = !DILocation(line: 1066, column: 34, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1065, column: 23)
!1886 = !DILocation(line: 1066, column: 40, scope: !1885)
!1887 = !DILocation(line: 1066, column: 16, scope: !1885)
!1888 = !DILocation(line: 1066, column: 14, scope: !1885)
!1889 = !DILocation(line: 1067, column: 7, scope: !1885)
!1890 = !DILocation(line: 1068, column: 7, scope: !1885)
!1891 = !DILocation(line: 1069, column: 7, scope: !1885)
!1892 = !DILocation(line: 1070, column: 5, scope: !1885)
!1893 = !DILocation(line: 1071, column: 12, scope: !1876)
!1894 = !DILocation(line: 1071, column: 5, scope: !1876)
!1895 = distinct !DISubprogram(name: "LZ4F_resetDecompressionContext", scope: !3, file: !3, line: 1077, type: !1896, isLocal: false, isDefinition: true, scopeLine: 1078, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{null, !243}
!1898 = !DILocation(line: 1079, column: 5, scope: !1895)
!1899 = !DILocation(line: 1079, column: 11, scope: !1895)
!1900 = !DILocation(line: 1079, column: 18, scope: !1895)
!1901 = !DILocation(line: 1080, column: 5, scope: !1895)
!1902 = !DILocation(line: 1080, column: 11, scope: !1895)
!1903 = !DILocation(line: 1080, column: 16, scope: !1895)
!1904 = !DILocation(line: 1081, column: 5, scope: !1895)
!1905 = !DILocation(line: 1081, column: 11, scope: !1895)
!1906 = !DILocation(line: 1081, column: 20, scope: !1895)
!1907 = !DILocation(line: 1082, column: 1, scope: !1895)
!1908 = distinct !DISubprogram(name: "LZ4F_getFrameInfo", scope: !3, file: !3, line: 1220, type: !1909, isLocal: false, isDefinition: true, scopeLine: 1222, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!11, !243, !1911, !470, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!1913 = !DILocation(line: 1223, column: 9, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !3, line: 1223, column: 9)
!1915 = !DILocation(line: 1223, column: 15, scope: !1914)
!1916 = !DILocation(line: 1223, column: 22, scope: !1914)
!1917 = !DILocation(line: 1223, column: 9, scope: !1908)
!1918 = !DILocation(line: 1225, column: 16, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1223, column: 49)
!1920 = !DILocation(line: 1225, column: 21, scope: !1919)
!1921 = !DILocation(line: 1226, column: 10, scope: !1919)
!1922 = !DILocation(line: 1226, column: 21, scope: !1919)
!1923 = !DILocation(line: 1227, column: 10, scope: !1919)
!1924 = !DILocation(line: 1227, column: 25, scope: !1919)
!1925 = !DILocation(line: 1227, column: 31, scope: !1919)
!1926 = !DILocation(line: 1229, column: 32, scope: !1919)
!1927 = !DILocation(line: 1229, column: 16, scope: !1919)
!1928 = !DILocation(line: 1229, column: 9, scope: !1919)
!1929 = !DILocation(line: 1231, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 1231, column: 13)
!1931 = distinct !DILexicalBlock(scope: !1914, file: !3, line: 1230, column: 12)
!1932 = !DILocation(line: 1231, column: 19, scope: !1930)
!1933 = !DILocation(line: 1231, column: 26, scope: !1930)
!1934 = !DILocation(line: 1231, column: 13, scope: !1931)
!1935 = !DILocation(line: 1233, column: 14, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1231, column: 54)
!1937 = !DILocation(line: 1233, column: 25, scope: !1936)
!1938 = !DILocation(line: 1234, column: 20, scope: !1936)
!1939 = !DILocation(line: 1234, column: 13, scope: !1936)
!1940 = !DILocation(line: 1237, column: 50, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1930, file: !3, line: 1235, column: 16)
!1942 = !DILocation(line: 1237, column: 62, scope: !1941)
!1943 = !DILocation(line: 1237, column: 61, scope: !1941)
!1944 = !DILocation(line: 1237, column: 34, scope: !1941)
!1945 = !DILocation(line: 1237, column: 26, scope: !1941)
!1946 = !DILocation(line: 1238, column: 30, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 1238, column: 17)
!1948 = !DILocation(line: 1238, column: 17, scope: !1947)
!1949 = !DILocation(line: 1238, column: 17, scope: !1941)
!1950 = !DILocation(line: 1238, column: 41, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1947, file: !3, line: 1238, column: 38)
!1952 = !DILocation(line: 1238, column: 51, scope: !1951)
!1953 = !DILocation(line: 1238, column: 62, scope: !1951)
!1954 = !DILocation(line: 1238, column: 55, scope: !1951)
!1955 = !DILocation(line: 1239, column: 18, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 1239, column: 17)
!1957 = !DILocation(line: 1239, column: 17, scope: !1956)
!1958 = !DILocation(line: 1239, column: 31, scope: !1956)
!1959 = !DILocation(line: 1239, column: 29, scope: !1956)
!1960 = !DILocation(line: 1239, column: 17, scope: !1941)
!1961 = !DILocation(line: 1240, column: 18, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 1239, column: 38)
!1963 = !DILocation(line: 1240, column: 28, scope: !1962)
!1964 = !DILocation(line: 1241, column: 24, scope: !1962)
!1965 = !DILocation(line: 1241, column: 17, scope: !1962)
!1966 = !DILocation(line: 1244, column: 46, scope: !1941)
!1967 = !DILocation(line: 1244, column: 52, scope: !1941)
!1968 = !DILocation(line: 1244, column: 63, scope: !1941)
!1969 = !DILocation(line: 1244, column: 28, scope: !1941)
!1970 = !DILocation(line: 1244, column: 26, scope: !1941)
!1971 = !DILocation(line: 1245, column: 30, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 1245, column: 17)
!1973 = !DILocation(line: 1245, column: 17, scope: !1972)
!1974 = !DILocation(line: 1245, column: 17, scope: !1941)
!1975 = !DILocation(line: 1246, column: 18, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 1245, column: 45)
!1977 = !DILocation(line: 1246, column: 29, scope: !1976)
!1978 = !DILocation(line: 1247, column: 13, scope: !1976)
!1979 = !DILocation(line: 1248, column: 31, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !3, line: 1247, column: 20)
!1981 = !DILocation(line: 1248, column: 18, scope: !1980)
!1982 = !DILocation(line: 1248, column: 29, scope: !1980)
!1983 = !DILocation(line: 1249, column: 30, scope: !1980)
!1984 = !DILocation(line: 1251, column: 14, scope: !1941)
!1985 = !DILocation(line: 1251, column: 29, scope: !1941)
!1986 = !DILocation(line: 1251, column: 35, scope: !1941)
!1987 = !DILocation(line: 1252, column: 20, scope: !1941)
!1988 = !DILocation(line: 1252, column: 13, scope: !1941)
!1989 = !DILocation(line: 1254, column: 1, scope: !1908)
!1990 = distinct !DISubprogram(name: "LZ4F_decompress", scope: !3, file: !3, line: 1343, type: !1991, isLocal: false, isDefinition: true, scopeLine: 1347, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!11, !243, !90, !1912, !470, !1912, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1995)
!1995 = !DIDerivedType(tag: DW_TAG_typedef, name: "LZ4F_decompressOptions_t", file: !10, line: 333, baseType: !1996)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 330, size: 128, elements: !1997)
!1997 = !{!1998, !1999}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "stableDst", scope: !1996, file: !10, line: 331, baseType: !121, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1996, file: !10, line: 332, baseType: !202, size: 96, offset: 32)
!2000 = !DILocation(line: 1349, column: 47, scope: !1990)
!2001 = !DILocation(line: 1349, column: 23, scope: !1990)
!2002 = !DILocation(line: 1350, column: 32, scope: !1990)
!2003 = !DILocation(line: 1350, column: 44, scope: !1990)
!2004 = !DILocation(line: 1350, column: 43, scope: !1990)
!2005 = !DILocation(line: 1350, column: 41, scope: !1990)
!2006 = !DILocation(line: 1350, column: 23, scope: !1990)
!2007 = !DILocation(line: 1351, column: 26, scope: !1990)
!2008 = !DILocation(line: 1351, column: 17, scope: !1990)
!2009 = !DILocation(line: 1352, column: 35, scope: !1990)
!2010 = !DILocation(line: 1352, column: 17, scope: !1990)
!2011 = !DILocation(line: 1353, column: 26, scope: !1990)
!2012 = !DILocation(line: 1353, column: 38, scope: !1990)
!2013 = !DILocation(line: 1353, column: 37, scope: !1990)
!2014 = !DILocation(line: 1353, column: 35, scope: !1990)
!2015 = !DILocation(line: 1353, column: 17, scope: !1990)
!2016 = !DILocation(line: 1354, column: 20, scope: !1990)
!2017 = !DILocation(line: 1354, column: 11, scope: !1990)
!2018 = !DILocation(line: 1355, column: 17, scope: !1990)
!2019 = !DILocation(line: 1356, column: 14, scope: !1990)
!2020 = !DILocation(line: 1357, column: 12, scope: !1990)
!2021 = !DILocation(line: 1360, column: 5, scope: !1990)
!2022 = !DILocation(line: 1361, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1361, column: 9)
!2024 = !DILocation(line: 1361, column: 29, scope: !2023)
!2025 = !DILocation(line: 1361, column: 9, scope: !1990)
!2026 = !DILocation(line: 1361, column: 58, scope: !2023)
!2027 = !DILocation(line: 1361, column: 37, scope: !2023)
!2028 = !DILocation(line: 1362, column: 6, scope: !1990)
!2029 = !DILocation(line: 1362, column: 17, scope: !1990)
!2030 = !DILocation(line: 1363, column: 6, scope: !1990)
!2031 = !DILocation(line: 1363, column: 17, scope: !1990)
!2032 = !DILocation(line: 1367, column: 5, scope: !1990)
!2033 = !DILocation(line: 1367, column: 12, scope: !1990)
!2034 = !DILocation(line: 1369, column: 16, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1367, column: 28)
!2036 = !DILocation(line: 1369, column: 22, scope: !2035)
!2037 = !DILocation(line: 1369, column: 9, scope: !2035)
!2038 = !DILocation(line: 1373, column: 26, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1373, column: 17)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 1370, column: 9)
!2041 = !DILocation(line: 1373, column: 33, scope: !2039)
!2042 = !DILocation(line: 1373, column: 32, scope: !2039)
!2043 = !DILocation(line: 1373, column: 41, scope: !2039)
!2044 = !DILocation(line: 1373, column: 17, scope: !2040)
!2045 = !DILocation(line: 1374, column: 56, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 1373, column: 55)
!2047 = !DILocation(line: 1374, column: 62, scope: !2046)
!2048 = !DILocation(line: 1374, column: 70, scope: !2046)
!2049 = !DILocation(line: 1374, column: 77, scope: !2046)
!2050 = !DILocation(line: 1374, column: 76, scope: !2046)
!2051 = !DILocation(line: 1374, column: 38, scope: !2046)
!2052 = !DILocation(line: 1374, column: 30, scope: !2046)
!2053 = !DILocation(line: 1375, column: 34, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 1375, column: 21)
!2055 = !DILocation(line: 1375, column: 21, scope: !2054)
!2056 = !DILocation(line: 1375, column: 21, scope: !2046)
!2057 = !DILocation(line: 1375, column: 49, scope: !2054)
!2058 = !DILocation(line: 1375, column: 42, scope: !2054)
!2059 = !DILocation(line: 1376, column: 27, scope: !2046)
!2060 = !DILocation(line: 1376, column: 24, scope: !2046)
!2061 = !DILocation(line: 1377, column: 17, scope: !2046)
!2062 = !DILocation(line: 1379, column: 13, scope: !2040)
!2063 = !DILocation(line: 1379, column: 19, scope: !2040)
!2064 = !DILocation(line: 1379, column: 29, scope: !2040)
!2065 = !DILocation(line: 1380, column: 17, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1380, column: 17)
!2067 = !DILocation(line: 1380, column: 24, scope: !2066)
!2068 = !DILocation(line: 1380, column: 23, scope: !2066)
!2069 = !DILocation(line: 1380, column: 31, scope: !2066)
!2070 = !DILocation(line: 1380, column: 17, scope: !2040)
!2071 = !DILocation(line: 1380, column: 37, scope: !2066)
!2072 = !DILocation(line: 1381, column: 13, scope: !2040)
!2073 = !DILocation(line: 1381, column: 19, scope: !2040)
!2074 = !DILocation(line: 1381, column: 31, scope: !2040)
!2075 = !DILocation(line: 1382, column: 13, scope: !2040)
!2076 = !DILocation(line: 1382, column: 19, scope: !2040)
!2077 = !DILocation(line: 1382, column: 26, scope: !2040)
!2078 = !DILocation(line: 1386, column: 43, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1386, column: 13)
!2080 = !DILocation(line: 1386, column: 30, scope: !2079)
!2081 = !DILocation(line: 1387, column: 24, scope: !2079)
!2082 = !DILocation(line: 1387, column: 30, scope: !2079)
!2083 = !DILocation(line: 1387, column: 39, scope: !2079)
!2084 = !DILocation(line: 1387, column: 45, scope: !2079)
!2085 = !DILocation(line: 1387, column: 37, scope: !2079)
!2086 = !DILocation(line: 1387, column: 56, scope: !2079)
!2087 = !DILocation(line: 1387, column: 64, scope: !2079)
!2088 = !DILocation(line: 1387, column: 17, scope: !2079)
!2089 = !DILocation(line: 1388, column: 36, scope: !2079)
!2090 = !DILocation(line: 1388, column: 17, scope: !2079)
!2091 = !DILocation(line: 1388, column: 23, scope: !2079)
!2092 = !DILocation(line: 1388, column: 33, scope: !2079)
!2093 = !DILocation(line: 1389, column: 27, scope: !2079)
!2094 = !DILocation(line: 1389, column: 24, scope: !2079)
!2095 = !DILocation(line: 1391, column: 17, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1391, column: 17)
!2097 = !DILocation(line: 1391, column: 23, scope: !2096)
!2098 = !DILocation(line: 1391, column: 35, scope: !2096)
!2099 = !DILocation(line: 1391, column: 41, scope: !2096)
!2100 = !DILocation(line: 1391, column: 33, scope: !2096)
!2101 = !DILocation(line: 1391, column: 17, scope: !2040)
!2102 = !DILocation(line: 1392, column: 36, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1391, column: 54)
!2104 = !DILocation(line: 1392, column: 42, scope: !2103)
!2105 = !DILocation(line: 1392, column: 56, scope: !2103)
!2106 = !DILocation(line: 1392, column: 62, scope: !2103)
!2107 = !DILocation(line: 1392, column: 54, scope: !2103)
!2108 = !DILocation(line: 1392, column: 73, scope: !2103)
!2109 = !DILocation(line: 1392, column: 33, scope: !2103)
!2110 = !DILocation(line: 1393, column: 32, scope: !2103)
!2111 = !DILocation(line: 1394, column: 17, scope: !2103)
!2112 = !DILocation(line: 1396, column: 56, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1396, column: 13)
!2114 = !DILocation(line: 1396, column: 62, scope: !2113)
!2115 = !DILocation(line: 1396, column: 68, scope: !2113)
!2116 = !DILocation(line: 1396, column: 76, scope: !2113)
!2117 = !DILocation(line: 1396, column: 82, scope: !2113)
!2118 = !DILocation(line: 1396, column: 38, scope: !2113)
!2119 = !DILocation(line: 1396, column: 30, scope: !2113)
!2120 = !DILocation(line: 1397, column: 34, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1397, column: 21)
!2122 = !DILocation(line: 1397, column: 21, scope: !2121)
!2123 = !DILocation(line: 1397, column: 21, scope: !2113)
!2124 = !DILocation(line: 1397, column: 49, scope: !2121)
!2125 = !DILocation(line: 1397, column: 42, scope: !2121)
!2126 = !DILocation(line: 1399, column: 13, scope: !2040)
!2127 = !DILocation(line: 1402, column: 17, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1402, column: 17)
!2129 = !DILocation(line: 1402, column: 23, scope: !2128)
!2130 = !DILocation(line: 1402, column: 33, scope: !2128)
!2131 = !DILocation(line: 1402, column: 17, scope: !2040)
!2132 = !DILocation(line: 1402, column: 74, scope: !2128)
!2133 = !DILocation(line: 1402, column: 80, scope: !2128)
!2134 = !DILocation(line: 1402, column: 60, scope: !2128)
!2135 = !DILocation(line: 1402, column: 54, scope: !2128)
!2136 = !DILocation(line: 1404, column: 45, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1404, column: 13)
!2138 = !DILocation(line: 1404, column: 51, scope: !2137)
!2139 = !DILocation(line: 1405, column: 25, scope: !2137)
!2140 = !DILocation(line: 1405, column: 31, scope: !2137)
!2141 = !DILocation(line: 1405, column: 41, scope: !2137)
!2142 = !DILocation(line: 1405, column: 50, scope: !2137)
!2143 = !DILocation(line: 1405, column: 70, scope: !2137)
!2144 = !DILocation(line: 1405, column: 76, scope: !2137)
!2145 = !DILocation(line: 1405, column: 23, scope: !2137)
!2146 = !DILocation(line: 1405, column: 21, scope: !2137)
!2147 = !DILocation(line: 1404, column: 30, scope: !2137)
!2148 = !DILocation(line: 1406, column: 21, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2137, file: !3, line: 1406, column: 21)
!2150 = !DILocation(line: 1406, column: 36, scope: !2149)
!2151 = !DILocation(line: 1406, column: 42, scope: !2149)
!2152 = !DILocation(line: 1406, column: 34, scope: !2149)
!2153 = !DILocation(line: 1406, column: 21, scope: !2137)
!2154 = !DILocation(line: 1407, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 1406, column: 57)
!2156 = !DILocation(line: 1407, column: 27, scope: !2155)
!2157 = !DILocation(line: 1407, column: 41, scope: !2155)
!2158 = !DILocation(line: 1408, column: 21, scope: !2155)
!2159 = !DILocation(line: 1409, column: 42, scope: !2155)
!2160 = !DILocation(line: 1409, column: 21, scope: !2155)
!2161 = !DILocation(line: 1409, column: 27, scope: !2155)
!2162 = !DILocation(line: 1409, column: 33, scope: !2155)
!2163 = !DILocation(line: 1410, column: 25, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 1410, column: 25)
!2165 = !DILocation(line: 1410, column: 31, scope: !2164)
!2166 = !DILocation(line: 1410, column: 37, scope: !2164)
!2167 = !DILocation(line: 1410, column: 25, scope: !2155)
!2168 = !DILocation(line: 1411, column: 32, scope: !2164)
!2169 = !DILocation(line: 1411, column: 25, scope: !2164)
!2170 = !DILocation(line: 1412, column: 21, scope: !2155)
!2171 = !DILocation(line: 1413, column: 48, scope: !2155)
!2172 = !DILocation(line: 1413, column: 21, scope: !2155)
!2173 = !DILocation(line: 1413, column: 27, scope: !2155)
!2174 = !DILocation(line: 1413, column: 39, scope: !2155)
!2175 = !DILocation(line: 1414, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 1414, column: 25)
!2177 = !DILocation(line: 1414, column: 31, scope: !2176)
!2178 = !DILocation(line: 1414, column: 43, scope: !2176)
!2179 = !DILocation(line: 1414, column: 25, scope: !2155)
!2180 = !DILocation(line: 1415, column: 32, scope: !2176)
!2181 = !DILocation(line: 1415, column: 25, scope: !2176)
!2182 = !DILocation(line: 1416, column: 43, scope: !2155)
!2183 = !DILocation(line: 1416, column: 21, scope: !2155)
!2184 = !DILocation(line: 1416, column: 27, scope: !2155)
!2185 = !DILocation(line: 1416, column: 41, scope: !2155)
!2186 = !DILocation(line: 1417, column: 13, scope: !2155)
!2187 = !DILocation(line: 1418, column: 13, scope: !2040)
!2188 = !DILocation(line: 1418, column: 19, scope: !2040)
!2189 = !DILocation(line: 1418, column: 29, scope: !2040)
!2190 = !DILocation(line: 1419, column: 13, scope: !2040)
!2191 = !DILocation(line: 1419, column: 19, scope: !2040)
!2192 = !DILocation(line: 1419, column: 31, scope: !2040)
!2193 = !DILocation(line: 1420, column: 28, scope: !2040)
!2194 = !DILocation(line: 1420, column: 34, scope: !2040)
!2195 = !DILocation(line: 1420, column: 13, scope: !2040)
!2196 = !DILocation(line: 1420, column: 19, scope: !2040)
!2197 = !DILocation(line: 1420, column: 26, scope: !2040)
!2198 = !DILocation(line: 1421, column: 13, scope: !2040)
!2199 = !DILocation(line: 1421, column: 19, scope: !2040)
!2200 = !DILocation(line: 1421, column: 31, scope: !2040)
!2201 = !DILocation(line: 1422, column: 13, scope: !2040)
!2202 = !DILocation(line: 1422, column: 19, scope: !2040)
!2203 = !DILocation(line: 1422, column: 30, scope: !2040)
!2204 = !DILocation(line: 1424, column: 13, scope: !2040)
!2205 = !DILocation(line: 1424, column: 19, scope: !2040)
!2206 = !DILocation(line: 1424, column: 26, scope: !2040)
!2207 = !DILocation(line: 1428, column: 26, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1428, column: 17)
!2209 = !DILocation(line: 1428, column: 35, scope: !2208)
!2210 = !DILocation(line: 1428, column: 33, scope: !2208)
!2211 = !DILocation(line: 1428, column: 43, scope: !2208)
!2212 = !DILocation(line: 1428, column: 17, scope: !2040)
!2213 = !DILocation(line: 1429, column: 30, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1428, column: 54)
!2215 = !DILocation(line: 1429, column: 28, scope: !2214)
!2216 = !DILocation(line: 1430, column: 24, scope: !2214)
!2217 = !DILocation(line: 1431, column: 13, scope: !2214)
!2218 = !DILocation(line: 1433, column: 17, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 1431, column: 20)
!2220 = !DILocation(line: 1433, column: 23, scope: !2219)
!2221 = !DILocation(line: 1433, column: 33, scope: !2219)
!2222 = !DILocation(line: 1434, column: 17, scope: !2219)
!2223 = !DILocation(line: 1434, column: 23, scope: !2219)
!2224 = !DILocation(line: 1434, column: 30, scope: !2219)
!2225 = !DILocation(line: 1437, column: 17, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1437, column: 17)
!2227 = !DILocation(line: 1437, column: 23, scope: !2226)
!2228 = !DILocation(line: 1437, column: 30, scope: !2226)
!2229 = !DILocation(line: 1437, column: 17, scope: !2040)
!2230 = !DILocation(line: 1439, column: 56, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 1439, column: 13)
!2232 = !DILocation(line: 1439, column: 65, scope: !2231)
!2233 = !DILocation(line: 1439, column: 63, scope: !2231)
!2234 = !DILocation(line: 1439, column: 30, scope: !2231)
!2235 = !DILocation(line: 1440, column: 52, scope: !2231)
!2236 = !DILocation(line: 1440, column: 58, scope: !2231)
!2237 = !DILocation(line: 1440, column: 50, scope: !2231)
!2238 = !DILocation(line: 1440, column: 30, scope: !2231)
!2239 = !DILocation(line: 1441, column: 43, scope: !2231)
!2240 = !DILocation(line: 1441, column: 30, scope: !2231)
!2241 = !DILocation(line: 1442, column: 24, scope: !2231)
!2242 = !DILocation(line: 1442, column: 30, scope: !2231)
!2243 = !DILocation(line: 1442, column: 38, scope: !2231)
!2244 = !DILocation(line: 1442, column: 44, scope: !2231)
!2245 = !DILocation(line: 1442, column: 36, scope: !2231)
!2246 = !DILocation(line: 1442, column: 55, scope: !2231)
!2247 = !DILocation(line: 1442, column: 63, scope: !2231)
!2248 = !DILocation(line: 1442, column: 17, scope: !2231)
!2249 = !DILocation(line: 1443, column: 27, scope: !2231)
!2250 = !DILocation(line: 1443, column: 24, scope: !2231)
!2251 = !DILocation(line: 1444, column: 36, scope: !2231)
!2252 = !DILocation(line: 1444, column: 17, scope: !2231)
!2253 = !DILocation(line: 1444, column: 23, scope: !2231)
!2254 = !DILocation(line: 1444, column: 33, scope: !2231)
!2255 = !DILocation(line: 1446, column: 21, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 1446, column: 21)
!2257 = !DILocation(line: 1446, column: 27, scope: !2256)
!2258 = !DILocation(line: 1446, column: 37, scope: !2256)
!2259 = !DILocation(line: 1446, column: 21, scope: !2231)
!2260 = !DILocation(line: 1447, column: 48, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 1446, column: 47)
!2262 = !DILocation(line: 1447, column: 54, scope: !2261)
!2263 = !DILocation(line: 1447, column: 46, scope: !2261)
!2264 = !DILocation(line: 1447, column: 37, scope: !2261)
!2265 = !DILocation(line: 1448, column: 37, scope: !2261)
!2266 = !DILocation(line: 1449, column: 21, scope: !2261)
!2267 = !DILocation(line: 1451, column: 30, scope: !2231)
!2268 = !DILocation(line: 1451, column: 36, scope: !2231)
!2269 = !DILocation(line: 1451, column: 28, scope: !2231)
!2270 = !DILocation(line: 1452, column: 13, scope: !2231)
!2271 = !DILocation(line: 1455, column: 61, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1455, column: 13)
!2273 = !DILocation(line: 1455, column: 47, scope: !2272)
!2274 = !DILocation(line: 1455, column: 73, scope: !2272)
!2275 = !DILocation(line: 1455, column: 30, scope: !2272)
!2276 = !DILocation(line: 1456, column: 40, scope: !2272)
!2277 = !DILocation(line: 1456, column: 46, scope: !2272)
!2278 = !DILocation(line: 1456, column: 56, scope: !2272)
!2279 = !DILocation(line: 1456, column: 74, scope: !2272)
!2280 = !DILocation(line: 1456, column: 30, scope: !2272)
!2281 = !DILocation(line: 1457, column: 21, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1457, column: 21)
!2283 = !DILocation(line: 1457, column: 35, scope: !2282)
!2284 = !DILocation(line: 1457, column: 21, scope: !2272)
!2285 = !DILocation(line: 1458, column: 21, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 1457, column: 40)
!2287 = !DILocation(line: 1458, column: 27, scope: !2286)
!2288 = !DILocation(line: 1458, column: 34, scope: !2286)
!2289 = !DILocation(line: 1459, column: 21, scope: !2286)
!2290 = !DILocation(line: 1461, column: 21, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1461, column: 21)
!2292 = !DILocation(line: 1461, column: 38, scope: !2291)
!2293 = !DILocation(line: 1461, column: 44, scope: !2291)
!2294 = !DILocation(line: 1461, column: 36, scope: !2291)
!2295 = !DILocation(line: 1461, column: 21, scope: !2272)
!2296 = !DILocation(line: 1462, column: 28, scope: !2291)
!2297 = !DILocation(line: 1462, column: 21, scope: !2291)
!2298 = !DILocation(line: 1463, column: 35, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1463, column: 21)
!2300 = !DILocation(line: 1463, column: 21, scope: !2299)
!2301 = !DILocation(line: 1463, column: 47, scope: !2299)
!2302 = !DILocation(line: 1463, column: 21, scope: !2272)
!2303 = !DILocation(line: 1465, column: 41, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 1463, column: 78)
!2305 = !DILocation(line: 1465, column: 21, scope: !2304)
!2306 = !DILocation(line: 1465, column: 27, scope: !2304)
!2307 = !DILocation(line: 1465, column: 39, scope: !2304)
!2308 = !DILocation(line: 1466, column: 25, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2304, file: !3, line: 1466, column: 25)
!2310 = !DILocation(line: 1466, column: 31, scope: !2309)
!2311 = !DILocation(line: 1466, column: 41, scope: !2309)
!2312 = !DILocation(line: 1466, column: 25, scope: !2304)
!2313 = !DILocation(line: 1467, column: 44, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2309, file: !3, line: 1466, column: 60)
!2315 = !DILocation(line: 1467, column: 50, scope: !2314)
!2316 = !DILocation(line: 1467, column: 31, scope: !2314)
!2317 = !DILocation(line: 1468, column: 21, scope: !2314)
!2318 = !DILocation(line: 1469, column: 21, scope: !2304)
!2319 = !DILocation(line: 1469, column: 27, scope: !2304)
!2320 = !DILocation(line: 1469, column: 34, scope: !2304)
!2321 = !DILocation(line: 1470, column: 21, scope: !2304)
!2322 = !DILocation(line: 1473, column: 37, scope: !2272)
!2323 = !DILocation(line: 1473, column: 54, scope: !2272)
!2324 = !DILocation(line: 1473, column: 52, scope: !2272)
!2325 = !DILocation(line: 1473, column: 17, scope: !2272)
!2326 = !DILocation(line: 1473, column: 23, scope: !2272)
!2327 = !DILocation(line: 1473, column: 35, scope: !2272)
!2328 = !DILocation(line: 1474, column: 17, scope: !2272)
!2329 = !DILocation(line: 1474, column: 23, scope: !2272)
!2330 = !DILocation(line: 1474, column: 30, scope: !2272)
!2331 = !DILocation(line: 1475, column: 21, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 1475, column: 21)
!2333 = !DILocation(line: 1475, column: 29, scope: !2332)
!2334 = !DILocation(line: 1475, column: 27, scope: !2332)
!2335 = !DILocation(line: 1475, column: 21, scope: !2272)
!2336 = !DILocation(line: 1476, column: 48, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 1475, column: 37)
!2338 = !DILocation(line: 1476, column: 46, scope: !2337)
!2339 = !DILocation(line: 1476, column: 65, scope: !2337)
!2340 = !DILocation(line: 1476, column: 63, scope: !2337)
!2341 = !DILocation(line: 1476, column: 37, scope: !2337)
!2342 = !DILocation(line: 1477, column: 36, scope: !2337)
!2343 = !DILocation(line: 1478, column: 17, scope: !2337)
!2344 = !DILocation(line: 1479, column: 17, scope: !2272)
!2345 = !DILocation(line: 1483, column: 44, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1483, column: 13)
!2347 = !DILocation(line: 1483, column: 30, scope: !2346)
!2348 = !DILocation(line: 1484, column: 43, scope: !2346)
!2349 = !DILocation(line: 1484, column: 30, scope: !2346)
!2350 = !DILocation(line: 1485, column: 24, scope: !2346)
!2351 = !DILocation(line: 1485, column: 32, scope: !2346)
!2352 = !DILocation(line: 1485, column: 40, scope: !2346)
!2353 = !DILocation(line: 1485, column: 17, scope: !2346)
!2354 = !DILocation(line: 1486, column: 21, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1486, column: 21)
!2356 = !DILocation(line: 1486, column: 27, scope: !2355)
!2357 = !DILocation(line: 1486, column: 37, scope: !2355)
!2358 = !DILocation(line: 1486, column: 21, scope: !2346)
!2359 = !DILocation(line: 1487, column: 41, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2355, file: !3, line: 1486, column: 56)
!2361 = !DILocation(line: 1487, column: 47, scope: !2360)
!2362 = !DILocation(line: 1487, column: 62, scope: !2360)
!2363 = !DILocation(line: 1487, column: 70, scope: !2360)
!2364 = !DILocation(line: 1487, column: 27, scope: !2360)
!2365 = !DILocation(line: 1488, column: 17, scope: !2360)
!2366 = !DILocation(line: 1489, column: 21, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1489, column: 21)
!2368 = !DILocation(line: 1489, column: 27, scope: !2367)
!2369 = !DILocation(line: 1489, column: 37, scope: !2367)
!2370 = !DILocation(line: 1489, column: 21, scope: !2346)
!2371 = !DILocation(line: 1490, column: 41, scope: !2367)
!2372 = !DILocation(line: 1490, column: 47, scope: !2367)
!2373 = !DILocation(line: 1490, column: 52, scope: !2367)
!2374 = !DILocation(line: 1490, column: 60, scope: !2367)
!2375 = !DILocation(line: 1490, column: 27, scope: !2367)
!2376 = !DILocation(line: 1490, column: 21, scope: !2367)
!2377 = !DILocation(line: 1491, column: 21, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1491, column: 21)
!2379 = !DILocation(line: 1491, column: 27, scope: !2378)
!2380 = !DILocation(line: 1491, column: 37, scope: !2378)
!2381 = !DILocation(line: 1491, column: 21, scope: !2346)
!2382 = !DILocation(line: 1492, column: 49, scope: !2378)
!2383 = !DILocation(line: 1492, column: 21, scope: !2378)
!2384 = !DILocation(line: 1492, column: 27, scope: !2378)
!2385 = !DILocation(line: 1492, column: 46, scope: !2378)
!2386 = !DILocation(line: 1495, column: 21, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1495, column: 21)
!2388 = !DILocation(line: 1495, column: 27, scope: !2387)
!2389 = !DILocation(line: 1495, column: 37, scope: !2387)
!2390 = !DILocation(line: 1495, column: 47, scope: !2387)
!2391 = !DILocation(line: 1495, column: 21, scope: !2346)
!2392 = !DILocation(line: 1496, column: 37, scope: !2387)
!2393 = !DILocation(line: 1496, column: 43, scope: !2387)
!2394 = !DILocation(line: 1496, column: 51, scope: !2387)
!2395 = !DILocation(line: 1496, column: 63, scope: !2387)
!2396 = !DILocation(line: 1496, column: 21, scope: !2387)
!2397 = !DILocation(line: 1498, column: 27, scope: !2346)
!2398 = !DILocation(line: 1498, column: 24, scope: !2346)
!2399 = !DILocation(line: 1499, column: 27, scope: !2346)
!2400 = !DILocation(line: 1499, column: 24, scope: !2346)
!2401 = !DILocation(line: 1500, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 1500, column: 21)
!2403 = !DILocation(line: 1500, column: 35, scope: !2402)
!2404 = !DILocation(line: 1500, column: 41, scope: !2402)
!2405 = !DILocation(line: 1500, column: 32, scope: !2402)
!2406 = !DILocation(line: 1500, column: 21, scope: !2346)
!2407 = !DILocation(line: 1501, column: 25, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !3, line: 1501, column: 25)
!2409 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 1500, column: 54)
!2410 = !DILocation(line: 1501, column: 31, scope: !2408)
!2411 = !DILocation(line: 1501, column: 41, scope: !2408)
!2412 = !DILocation(line: 1501, column: 25, scope: !2409)
!2413 = !DILocation(line: 1502, column: 25, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2408, file: !3, line: 1501, column: 60)
!2415 = !DILocation(line: 1502, column: 31, scope: !2414)
!2416 = !DILocation(line: 1502, column: 41, scope: !2414)
!2417 = !DILocation(line: 1503, column: 25, scope: !2414)
!2418 = !DILocation(line: 1503, column: 31, scope: !2414)
!2419 = !DILocation(line: 1503, column: 38, scope: !2414)
!2420 = !DILocation(line: 1504, column: 21, scope: !2414)
!2421 = !DILocation(line: 1505, column: 25, scope: !2408)
!2422 = !DILocation(line: 1505, column: 31, scope: !2408)
!2423 = !DILocation(line: 1505, column: 38, scope: !2408)
!2424 = !DILocation(line: 1506, column: 21, scope: !2409)
!2425 = !DILocation(line: 1508, column: 38, scope: !2346)
!2426 = !DILocation(line: 1508, column: 17, scope: !2346)
!2427 = !DILocation(line: 1508, column: 23, scope: !2346)
!2428 = !DILocation(line: 1508, column: 35, scope: !2346)
!2429 = !DILocation(line: 1509, column: 35, scope: !2346)
!2430 = !DILocation(line: 1509, column: 41, scope: !2346)
!2431 = !DILocation(line: 1510, column: 35, scope: !2346)
!2432 = !DILocation(line: 1510, column: 41, scope: !2346)
!2433 = !DILocation(line: 1510, column: 51, scope: !2346)
!2434 = !DILocation(line: 1510, column: 69, scope: !2346)
!2435 = !DILocation(line: 1510, column: 33, scope: !2346)
!2436 = !DILocation(line: 1509, column: 53, scope: !2346)
!2437 = !DILocation(line: 1511, column: 33, scope: !2346)
!2438 = !DILocation(line: 1509, column: 33, scope: !2346)
!2439 = !DILocation(line: 1512, column: 32, scope: !2346)
!2440 = !DILocation(line: 1513, column: 17, scope: !2346)
!2441 = !DILocation(line: 1519, column: 22, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1519, column: 21)
!2443 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1518, column: 13)
!2444 = !DILocation(line: 1519, column: 29, scope: !2442)
!2445 = !DILocation(line: 1519, column: 28, scope: !2442)
!2446 = !DILocation(line: 1519, column: 36, scope: !2442)
!2447 = !DILocation(line: 1519, column: 42, scope: !2442)
!2448 = !DILocation(line: 1519, column: 46, scope: !2442)
!2449 = !DILocation(line: 1519, column: 52, scope: !2442)
!2450 = !DILocation(line: 1519, column: 61, scope: !2442)
!2451 = !DILocation(line: 1519, column: 21, scope: !2443)
!2452 = !DILocation(line: 1520, column: 30, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1519, column: 67)
!2454 = !DILocation(line: 1520, column: 28, scope: !2453)
!2455 = !DILocation(line: 1521, column: 28, scope: !2453)
!2456 = !DILocation(line: 1522, column: 17, scope: !2453)
!2457 = !DILocation(line: 1523, column: 52, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 1522, column: 24)
!2459 = !DILocation(line: 1523, column: 58, scope: !2458)
!2460 = !DILocation(line: 1523, column: 50, scope: !2458)
!2461 = !DILocation(line: 1523, column: 34, scope: !2458)
!2462 = !DILocation(line: 1524, column: 47, scope: !2458)
!2463 = !DILocation(line: 1524, column: 34, scope: !2458)
!2464 = !DILocation(line: 1525, column: 28, scope: !2458)
!2465 = !DILocation(line: 1525, column: 34, scope: !2458)
!2466 = !DILocation(line: 1525, column: 43, scope: !2458)
!2467 = !DILocation(line: 1525, column: 49, scope: !2458)
!2468 = !DILocation(line: 1525, column: 41, scope: !2458)
!2469 = !DILocation(line: 1525, column: 60, scope: !2458)
!2470 = !DILocation(line: 1525, column: 68, scope: !2458)
!2471 = !DILocation(line: 1525, column: 21, scope: !2458)
!2472 = !DILocation(line: 1526, column: 40, scope: !2458)
!2473 = !DILocation(line: 1526, column: 21, scope: !2458)
!2474 = !DILocation(line: 1526, column: 27, scope: !2458)
!2475 = !DILocation(line: 1526, column: 37, scope: !2458)
!2476 = !DILocation(line: 1527, column: 31, scope: !2458)
!2477 = !DILocation(line: 1527, column: 28, scope: !2458)
!2478 = !DILocation(line: 1528, column: 25, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1528, column: 25)
!2480 = !DILocation(line: 1528, column: 31, scope: !2479)
!2481 = !DILocation(line: 1528, column: 41, scope: !2479)
!2482 = !DILocation(line: 1528, column: 25, scope: !2458)
!2483 = !DILocation(line: 1529, column: 40, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1528, column: 46)
!2485 = !DILocation(line: 1530, column: 25, scope: !2484)
!2486 = !DILocation(line: 1532, column: 30, scope: !2458)
!2487 = !DILocation(line: 1532, column: 36, scope: !2458)
!2488 = !DILocation(line: 1532, column: 28, scope: !2458)
!2489 = !DILocation(line: 1534, column: 55, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 1534, column: 17)
!2491 = !DILocation(line: 1534, column: 41, scope: !2490)
!2492 = !DILocation(line: 1534, column: 31, scope: !2490)
!2493 = !DILocation(line: 1535, column: 55, scope: !2490)
!2494 = !DILocation(line: 1535, column: 61, scope: !2490)
!2495 = !DILocation(line: 1535, column: 41, scope: !2490)
!2496 = !DILocation(line: 1535, column: 31, scope: !2490)
!2497 = !DILocation(line: 1536, column: 25, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !3, line: 1536, column: 25)
!2499 = !DILocation(line: 1536, column: 36, scope: !2498)
!2500 = !DILocation(line: 1536, column: 33, scope: !2498)
!2501 = !DILocation(line: 1536, column: 25, scope: !2490)
!2502 = !DILocation(line: 1537, column: 32, scope: !2498)
!2503 = !DILocation(line: 1537, column: 25, scope: !2498)
!2504 = !DILocation(line: 1539, column: 13, scope: !2040)
!2505 = !DILocation(line: 1539, column: 19, scope: !2040)
!2506 = !DILocation(line: 1539, column: 26, scope: !2040)
!2507 = !DILocation(line: 1540, column: 13, scope: !2040)
!2508 = !DILocation(line: 1543, column: 26, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1543, column: 17)
!2510 = !DILocation(line: 1543, column: 33, scope: !2509)
!2511 = !DILocation(line: 1543, column: 32, scope: !2509)
!2512 = !DILocation(line: 1543, column: 43, scope: !2509)
!2513 = !DILocation(line: 1543, column: 49, scope: !2509)
!2514 = !DILocation(line: 1543, column: 41, scope: !2509)
!2515 = !DILocation(line: 1543, column: 17, scope: !2040)
!2516 = !DILocation(line: 1544, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1543, column: 62)
!2518 = !DILocation(line: 1544, column: 23, scope: !2517)
!2519 = !DILocation(line: 1544, column: 33, scope: !2517)
!2520 = !DILocation(line: 1545, column: 17, scope: !2517)
!2521 = !DILocation(line: 1545, column: 23, scope: !2517)
!2522 = !DILocation(line: 1545, column: 30, scope: !2517)
!2523 = !DILocation(line: 1546, column: 17, scope: !2517)
!2524 = !DILocation(line: 1549, column: 26, scope: !2040)
!2525 = !DILocation(line: 1549, column: 24, scope: !2040)
!2526 = !DILocation(line: 1550, column: 23, scope: !2040)
!2527 = !DILocation(line: 1550, column: 29, scope: !2040)
!2528 = !DILocation(line: 1550, column: 20, scope: !2040)
!2529 = !DILocation(line: 1552, column: 17, scope: !2040)
!2530 = !DILocation(line: 1554, column: 43, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !3, line: 1554, column: 13)
!2532 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1552, column: 17)
!2533 = !DILocation(line: 1554, column: 49, scope: !2531)
!2534 = !DILocation(line: 1554, column: 63, scope: !2531)
!2535 = !DILocation(line: 1554, column: 69, scope: !2531)
!2536 = !DILocation(line: 1554, column: 61, scope: !2531)
!2537 = !DILocation(line: 1554, column: 30, scope: !2531)
!2538 = !DILocation(line: 1555, column: 51, scope: !2531)
!2539 = !DILocation(line: 1555, column: 58, scope: !2531)
!2540 = !DILocation(line: 1555, column: 57, scope: !2531)
!2541 = !DILocation(line: 1555, column: 30, scope: !2531)
!2542 = !DILocation(line: 1556, column: 43, scope: !2531)
!2543 = !DILocation(line: 1556, column: 30, scope: !2531)
!2544 = !DILocation(line: 1557, column: 24, scope: !2531)
!2545 = !DILocation(line: 1557, column: 30, scope: !2531)
!2546 = !DILocation(line: 1557, column: 38, scope: !2531)
!2547 = !DILocation(line: 1557, column: 44, scope: !2531)
!2548 = !DILocation(line: 1557, column: 36, scope: !2531)
!2549 = !DILocation(line: 1557, column: 55, scope: !2531)
!2550 = !DILocation(line: 1557, column: 63, scope: !2531)
!2551 = !DILocation(line: 1557, column: 17, scope: !2531)
!2552 = !DILocation(line: 1558, column: 36, scope: !2531)
!2553 = !DILocation(line: 1558, column: 17, scope: !2531)
!2554 = !DILocation(line: 1558, column: 23, scope: !2531)
!2555 = !DILocation(line: 1558, column: 33, scope: !2531)
!2556 = !DILocation(line: 1559, column: 27, scope: !2531)
!2557 = !DILocation(line: 1559, column: 24, scope: !2531)
!2558 = !DILocation(line: 1560, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 1560, column: 21)
!2560 = !DILocation(line: 1560, column: 27, scope: !2559)
!2561 = !DILocation(line: 1560, column: 39, scope: !2559)
!2562 = !DILocation(line: 1560, column: 45, scope: !2559)
!2563 = !DILocation(line: 1560, column: 37, scope: !2559)
!2564 = !DILocation(line: 1560, column: 21, scope: !2531)
!2565 = !DILocation(line: 1561, column: 40, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2559, file: !3, line: 1560, column: 58)
!2567 = !DILocation(line: 1561, column: 46, scope: !2566)
!2568 = !DILocation(line: 1561, column: 60, scope: !2566)
!2569 = !DILocation(line: 1561, column: 66, scope: !2566)
!2570 = !DILocation(line: 1561, column: 58, scope: !2566)
!2571 = !DILocation(line: 1562, column: 39, scope: !2566)
!2572 = !DILocation(line: 1562, column: 45, scope: !2566)
!2573 = !DILocation(line: 1562, column: 55, scope: !2566)
!2574 = !DILocation(line: 1562, column: 73, scope: !2566)
!2575 = !DILocation(line: 1562, column: 37, scope: !2566)
!2576 = !DILocation(line: 1563, column: 37, scope: !2566)
!2577 = !DILocation(line: 1561, column: 37, scope: !2566)
!2578 = !DILocation(line: 1564, column: 36, scope: !2566)
!2579 = !DILocation(line: 1565, column: 21, scope: !2566)
!2580 = !DILocation(line: 1567, column: 30, scope: !2531)
!2581 = !DILocation(line: 1567, column: 36, scope: !2531)
!2582 = !DILocation(line: 1567, column: 28, scope: !2531)
!2583 = !DILocation(line: 1568, column: 13, scope: !2531)
!2584 = !DILocation(line: 1571, column: 17, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1571, column: 17)
!2586 = !DILocation(line: 1571, column: 23, scope: !2585)
!2587 = !DILocation(line: 1571, column: 33, scope: !2585)
!2588 = !DILocation(line: 1571, column: 17, scope: !2040)
!2589 = !DILocation(line: 1572, column: 17, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 1571, column: 52)
!2591 = !DILocation(line: 1572, column: 23, scope: !2590)
!2592 = !DILocation(line: 1572, column: 35, scope: !2590)
!2593 = !DILocation(line: 1574, column: 60, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1574, column: 17)
!2595 = !DILocation(line: 1574, column: 73, scope: !2594)
!2596 = !DILocation(line: 1574, column: 79, scope: !2594)
!2597 = !DILocation(line: 1574, column: 71, scope: !2594)
!2598 = !DILocation(line: 1574, column: 46, scope: !2594)
!2599 = !DILocation(line: 1574, column: 31, scope: !2594)
!2600 = !DILocation(line: 1575, column: 52, scope: !2594)
!2601 = !DILocation(line: 1575, column: 64, scope: !2594)
!2602 = !DILocation(line: 1575, column: 70, scope: !2594)
!2603 = !DILocation(line: 1575, column: 46, scope: !2594)
!2604 = !DILocation(line: 1575, column: 31, scope: !2594)
!2605 = !DILocation(line: 1576, column: 25, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1576, column: 25)
!2607 = !DILocation(line: 1576, column: 41, scope: !2606)
!2608 = !DILocation(line: 1576, column: 38, scope: !2606)
!2609 = !DILocation(line: 1576, column: 25, scope: !2594)
!2610 = !DILocation(line: 1577, column: 32, scope: !2606)
!2611 = !DILocation(line: 1577, column: 25, scope: !2606)
!2612 = !DILocation(line: 1578, column: 17, scope: !2590)
!2613 = !DILocation(line: 1580, column: 26, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1580, column: 17)
!2615 = !DILocation(line: 1580, column: 33, scope: !2614)
!2616 = !DILocation(line: 1580, column: 32, scope: !2614)
!2617 = !DILocation(line: 1580, column: 44, scope: !2614)
!2618 = !DILocation(line: 1580, column: 50, scope: !2614)
!2619 = !DILocation(line: 1580, column: 41, scope: !2614)
!2620 = !DILocation(line: 1580, column: 17, scope: !2040)
!2621 = !DILocation(line: 1581, column: 49, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 1580, column: 64)
!2623 = !DILocation(line: 1581, column: 55, scope: !2622)
!2624 = !DILocation(line: 1581, column: 29, scope: !2622)
!2625 = !DILocation(line: 1582, column: 35, scope: !2622)
!2626 = !DILocation(line: 1582, column: 41, scope: !2622)
!2627 = !DILocation(line: 1582, column: 24, scope: !2622)
!2628 = !DILocation(line: 1584, column: 21, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1584, column: 21)
!2630 = !DILocation(line: 1584, column: 26, scope: !2629)
!2631 = !DILocation(line: 1584, column: 29, scope: !2629)
!2632 = !DILocation(line: 1584, column: 38, scope: !2629)
!2633 = !DILocation(line: 1584, column: 21, scope: !2622)
!2634 = !DILocation(line: 1586, column: 29, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 1584, column: 46)
!2636 = !DILocation(line: 1586, column: 38, scope: !2635)
!2637 = !DILocation(line: 1586, column: 26, scope: !2635)
!2638 = !DILocation(line: 1587, column: 30, scope: !2635)
!2639 = !DILocation(line: 1588, column: 17, scope: !2635)
!2640 = !DILocation(line: 1591, column: 38, scope: !2622)
!2641 = !DILocation(line: 1591, column: 57, scope: !2622)
!2642 = !DILocation(line: 1592, column: 30, scope: !2622)
!2643 = !DILocation(line: 1592, column: 36, scope: !2622)
!2644 = !DILocation(line: 1592, column: 25, scope: !2622)
!2645 = !DILocation(line: 1592, column: 54, scope: !2622)
!2646 = !DILocation(line: 1592, column: 60, scope: !2622)
!2647 = !DILocation(line: 1592, column: 49, scope: !2622)
!2648 = !DILocation(line: 1593, column: 25, scope: !2622)
!2649 = !DILocation(line: 1593, column: 36, scope: !2622)
!2650 = !DILocation(line: 1593, column: 31, scope: !2622)
!2651 = !DILocation(line: 1590, column: 31, scope: !2622)
!2652 = !DILocation(line: 1590, column: 29, scope: !2622)
!2653 = !DILocation(line: 1594, column: 21, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1594, column: 21)
!2655 = !DILocation(line: 1594, column: 33, scope: !2654)
!2656 = !DILocation(line: 1594, column: 21, scope: !2622)
!2657 = !DILocation(line: 1594, column: 45, scope: !2654)
!2658 = !DILocation(line: 1594, column: 38, scope: !2654)
!2659 = !DILocation(line: 1595, column: 21, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1595, column: 21)
!2661 = !DILocation(line: 1595, column: 27, scope: !2660)
!2662 = !DILocation(line: 1595, column: 37, scope: !2660)
!2663 = !DILocation(line: 1595, column: 21, scope: !2622)
!2664 = !DILocation(line: 1596, column: 36, scope: !2660)
!2665 = !DILocation(line: 1596, column: 42, scope: !2660)
!2666 = !DILocation(line: 1596, column: 48, scope: !2660)
!2667 = !DILocation(line: 1596, column: 56, scope: !2660)
!2668 = !DILocation(line: 1596, column: 21, scope: !2660)
!2669 = !DILocation(line: 1597, column: 21, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1597, column: 21)
!2671 = !DILocation(line: 1597, column: 27, scope: !2670)
!2672 = !DILocation(line: 1597, column: 37, scope: !2670)
!2673 = !DILocation(line: 1597, column: 21, scope: !2622)
!2674 = !DILocation(line: 1598, column: 49, scope: !2670)
!2675 = !DILocation(line: 1598, column: 21, scope: !2670)
!2676 = !DILocation(line: 1598, column: 27, scope: !2670)
!2677 = !DILocation(line: 1598, column: 46, scope: !2670)
!2678 = !DILocation(line: 1601, column: 21, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 1601, column: 21)
!2680 = !DILocation(line: 1601, column: 27, scope: !2679)
!2681 = !DILocation(line: 1601, column: 37, scope: !2679)
!2682 = !DILocation(line: 1601, column: 46, scope: !2679)
!2683 = !DILocation(line: 1601, column: 21, scope: !2622)
!2684 = !DILocation(line: 1602, column: 37, scope: !2679)
!2685 = !DILocation(line: 1602, column: 43, scope: !2679)
!2686 = !DILocation(line: 1602, column: 51, scope: !2679)
!2687 = !DILocation(line: 1602, column: 64, scope: !2679)
!2688 = !DILocation(line: 1602, column: 21, scope: !2679)
!2689 = !DILocation(line: 1604, column: 27, scope: !2622)
!2690 = !DILocation(line: 1604, column: 24, scope: !2622)
!2691 = !DILocation(line: 1605, column: 17, scope: !2622)
!2692 = !DILocation(line: 1605, column: 23, scope: !2622)
!2693 = !DILocation(line: 1605, column: 30, scope: !2622)
!2694 = !DILocation(line: 1606, column: 17, scope: !2622)
!2695 = !DILocation(line: 1611, column: 17, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1611, column: 17)
!2697 = !DILocation(line: 1611, column: 23, scope: !2696)
!2698 = !DILocation(line: 1611, column: 33, scope: !2696)
!2699 = !DILocation(line: 1611, column: 43, scope: !2696)
!2700 = !DILocation(line: 1611, column: 17, scope: !2040)
!2701 = !DILocation(line: 1612, column: 21, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2703, file: !3, line: 1612, column: 21)
!2703 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 1611, column: 64)
!2704 = !DILocation(line: 1612, column: 27, scope: !2702)
!2705 = !DILocation(line: 1612, column: 35, scope: !2702)
!2706 = !DILocation(line: 1612, column: 41, scope: !2702)
!2707 = !DILocation(line: 1612, column: 32, scope: !2702)
!2708 = !DILocation(line: 1612, column: 21, scope: !2703)
!2709 = !DILocation(line: 1613, column: 25, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 1613, column: 25)
!2711 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1612, column: 55)
!2712 = !DILocation(line: 1613, column: 31, scope: !2710)
!2713 = !DILocation(line: 1613, column: 40, scope: !2710)
!2714 = !DILocation(line: 1613, column: 25, scope: !2711)
!2715 = !DILocation(line: 1614, column: 32, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 1613, column: 50)
!2717 = !DILocation(line: 1614, column: 38, scope: !2716)
!2718 = !DILocation(line: 1614, column: 52, scope: !2716)
!2719 = !DILocation(line: 1614, column: 58, scope: !2716)
!2720 = !DILocation(line: 1614, column: 65, scope: !2716)
!2721 = !DILocation(line: 1614, column: 71, scope: !2716)
!2722 = !DILocation(line: 1614, column: 63, scope: !2716)
!2723 = !DILocation(line: 1614, column: 80, scope: !2716)
!2724 = !DILocation(line: 1614, column: 25, scope: !2716)
!2725 = !DILocation(line: 1615, column: 25, scope: !2716)
!2726 = !DILocation(line: 1615, column: 31, scope: !2716)
!2727 = !DILocation(line: 1615, column: 40, scope: !2716)
!2728 = !DILocation(line: 1616, column: 21, scope: !2716)
!2729 = !DILocation(line: 1617, column: 36, scope: !2711)
!2730 = !DILocation(line: 1617, column: 42, scope: !2711)
!2731 = !DILocation(line: 1617, column: 57, scope: !2711)
!2732 = !DILocation(line: 1617, column: 63, scope: !2711)
!2733 = !DILocation(line: 1617, column: 55, scope: !2711)
!2734 = !DILocation(line: 1617, column: 21, scope: !2711)
!2735 = !DILocation(line: 1617, column: 27, scope: !2711)
!2736 = !DILocation(line: 1617, column: 34, scope: !2711)
!2737 = !DILocation(line: 1618, column: 17, scope: !2711)
!2738 = !DILocation(line: 1619, column: 54, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2702, file: !3, line: 1618, column: 24)
!2740 = !DILocation(line: 1619, column: 34, scope: !2739)
!2741 = !DILocation(line: 1620, column: 36, scope: !2739)
!2742 = !DILocation(line: 1620, column: 42, scope: !2739)
!2743 = !DILocation(line: 1620, column: 57, scope: !2739)
!2744 = !DILocation(line: 1620, column: 55, scope: !2739)
!2745 = !DILocation(line: 1620, column: 21, scope: !2739)
!2746 = !DILocation(line: 1620, column: 27, scope: !2739)
!2747 = !DILocation(line: 1620, column: 34, scope: !2739)
!2748 = !DILocation(line: 1621, column: 17, scope: !2703)
!2749 = !DILocation(line: 1624, column: 49, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1624, column: 13)
!2751 = !DILocation(line: 1624, column: 55, scope: !2750)
!2752 = !DILocation(line: 1624, column: 29, scope: !2750)
!2753 = !DILocation(line: 1625, column: 35, scope: !2750)
!2754 = !DILocation(line: 1625, column: 41, scope: !2750)
!2755 = !DILocation(line: 1625, column: 24, scope: !2750)
!2756 = !DILocation(line: 1627, column: 21, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1627, column: 21)
!2758 = !DILocation(line: 1627, column: 26, scope: !2757)
!2759 = !DILocation(line: 1627, column: 29, scope: !2757)
!2760 = !DILocation(line: 1627, column: 38, scope: !2757)
!2761 = !DILocation(line: 1627, column: 21, scope: !2750)
!2762 = !DILocation(line: 1629, column: 29, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 1627, column: 46)
!2764 = !DILocation(line: 1629, column: 38, scope: !2763)
!2765 = !DILocation(line: 1629, column: 26, scope: !2763)
!2766 = !DILocation(line: 1630, column: 30, scope: !2763)
!2767 = !DILocation(line: 1631, column: 17, scope: !2763)
!2768 = !DILocation(line: 1633, column: 38, scope: !2750)
!2769 = !DILocation(line: 1633, column: 57, scope: !2750)
!2770 = !DILocation(line: 1633, column: 63, scope: !2750)
!2771 = !DILocation(line: 1634, column: 30, scope: !2750)
!2772 = !DILocation(line: 1634, column: 36, scope: !2750)
!2773 = !DILocation(line: 1634, column: 25, scope: !2750)
!2774 = !DILocation(line: 1634, column: 54, scope: !2750)
!2775 = !DILocation(line: 1634, column: 60, scope: !2750)
!2776 = !DILocation(line: 1634, column: 49, scope: !2750)
!2777 = !DILocation(line: 1635, column: 25, scope: !2750)
!2778 = !DILocation(line: 1635, column: 36, scope: !2750)
!2779 = !DILocation(line: 1635, column: 31, scope: !2750)
!2780 = !DILocation(line: 1632, column: 31, scope: !2750)
!2781 = !DILocation(line: 1632, column: 29, scope: !2750)
!2782 = !DILocation(line: 1636, column: 21, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1636, column: 21)
!2784 = !DILocation(line: 1636, column: 33, scope: !2783)
!2785 = !DILocation(line: 1636, column: 21, scope: !2750)
!2786 = !DILocation(line: 1637, column: 28, scope: !2783)
!2787 = !DILocation(line: 1637, column: 21, scope: !2783)
!2788 = !DILocation(line: 1638, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1638, column: 21)
!2790 = !DILocation(line: 1638, column: 27, scope: !2789)
!2791 = !DILocation(line: 1638, column: 37, scope: !2789)
!2792 = !DILocation(line: 1638, column: 21, scope: !2750)
!2793 = !DILocation(line: 1639, column: 36, scope: !2789)
!2794 = !DILocation(line: 1639, column: 42, scope: !2789)
!2795 = !DILocation(line: 1639, column: 48, scope: !2789)
!2796 = !DILocation(line: 1639, column: 54, scope: !2789)
!2797 = !DILocation(line: 1639, column: 62, scope: !2789)
!2798 = !DILocation(line: 1639, column: 21, scope: !2789)
!2799 = !DILocation(line: 1640, column: 21, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2750, file: !3, line: 1640, column: 21)
!2801 = !DILocation(line: 1640, column: 27, scope: !2800)
!2802 = !DILocation(line: 1640, column: 37, scope: !2800)
!2803 = !DILocation(line: 1640, column: 21, scope: !2750)
!2804 = !DILocation(line: 1641, column: 49, scope: !2800)
!2805 = !DILocation(line: 1641, column: 21, scope: !2800)
!2806 = !DILocation(line: 1641, column: 27, scope: !2800)
!2807 = !DILocation(line: 1641, column: 46, scope: !2800)
!2808 = !DILocation(line: 1642, column: 36, scope: !2750)
!2809 = !DILocation(line: 1642, column: 17, scope: !2750)
!2810 = !DILocation(line: 1642, column: 23, scope: !2750)
!2811 = !DILocation(line: 1642, column: 34, scope: !2750)
!2812 = !DILocation(line: 1643, column: 17, scope: !2750)
!2813 = !DILocation(line: 1643, column: 23, scope: !2750)
!2814 = !DILocation(line: 1643, column: 35, scope: !2750)
!2815 = !DILocation(line: 1644, column: 17, scope: !2750)
!2816 = !DILocation(line: 1644, column: 23, scope: !2750)
!2817 = !DILocation(line: 1644, column: 30, scope: !2750)
!2818 = !DILocation(line: 1645, column: 13, scope: !2750)
!2819 = !DILocation(line: 1649, column: 43, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1649, column: 13)
!2821 = !DILocation(line: 1649, column: 30, scope: !2820)
!2822 = !DILocation(line: 1650, column: 24, scope: !2820)
!2823 = !DILocation(line: 1650, column: 32, scope: !2820)
!2824 = !DILocation(line: 1650, column: 38, scope: !2820)
!2825 = !DILocation(line: 1650, column: 47, scope: !2820)
!2826 = !DILocation(line: 1650, column: 53, scope: !2820)
!2827 = !DILocation(line: 1650, column: 45, scope: !2820)
!2828 = !DILocation(line: 1650, column: 66, scope: !2820)
!2829 = !DILocation(line: 1650, column: 17, scope: !2820)
!2830 = !DILocation(line: 1653, column: 21, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1653, column: 21)
!2832 = !DILocation(line: 1653, column: 27, scope: !2831)
!2833 = !DILocation(line: 1653, column: 37, scope: !2831)
!2834 = !DILocation(line: 1653, column: 47, scope: !2831)
!2835 = !DILocation(line: 1653, column: 21, scope: !2820)
!2836 = !DILocation(line: 1654, column: 37, scope: !2831)
!2837 = !DILocation(line: 1654, column: 43, scope: !2831)
!2838 = !DILocation(line: 1654, column: 51, scope: !2831)
!2839 = !DILocation(line: 1654, column: 63, scope: !2831)
!2840 = !DILocation(line: 1654, column: 21, scope: !2831)
!2841 = !DILocation(line: 1656, column: 38, scope: !2820)
!2842 = !DILocation(line: 1656, column: 17, scope: !2820)
!2843 = !DILocation(line: 1656, column: 23, scope: !2820)
!2844 = !DILocation(line: 1656, column: 35, scope: !2820)
!2845 = !DILocation(line: 1657, column: 27, scope: !2820)
!2846 = !DILocation(line: 1657, column: 24, scope: !2820)
!2847 = !DILocation(line: 1659, column: 21, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 1659, column: 21)
!2849 = !DILocation(line: 1659, column: 27, scope: !2848)
!2850 = !DILocation(line: 1659, column: 42, scope: !2848)
!2851 = !DILocation(line: 1659, column: 48, scope: !2848)
!2852 = !DILocation(line: 1659, column: 39, scope: !2848)
!2853 = !DILocation(line: 1659, column: 21, scope: !2820)
!2854 = !DILocation(line: 1660, column: 21, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2848, file: !3, line: 1659, column: 60)
!2856 = !DILocation(line: 1660, column: 27, scope: !2855)
!2857 = !DILocation(line: 1660, column: 34, scope: !2855)
!2858 = !DILocation(line: 1661, column: 21, scope: !2855)
!2859 = !DILocation(line: 1664, column: 32, scope: !2820)
!2860 = !DILocation(line: 1665, column: 33, scope: !2820)
!2861 = !DILocation(line: 1666, column: 17, scope: !2820)
!2862 = !DILocation(line: 1670, column: 17, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1670, column: 17)
!2864 = !DILocation(line: 1670, column: 23, scope: !2863)
!2865 = !DILocation(line: 1670, column: 17, scope: !2040)
!2866 = !DILocation(line: 1671, column: 24, scope: !2863)
!2867 = !DILocation(line: 1671, column: 17, scope: !2863)
!2868 = !DILocation(line: 1672, column: 18, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1672, column: 17)
!2870 = !DILocation(line: 1672, column: 24, scope: !2869)
!2871 = !DILocation(line: 1672, column: 34, scope: !2869)
!2872 = !DILocation(line: 1672, column: 17, scope: !2040)
!2873 = !DILocation(line: 1673, column: 33, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2869, file: !3, line: 1672, column: 55)
!2875 = !DILocation(line: 1674, column: 48, scope: !2874)
!2876 = !DILocation(line: 1674, column: 17, scope: !2874)
!2877 = !DILocation(line: 1675, column: 32, scope: !2874)
!2878 = !DILocation(line: 1676, column: 17, scope: !2874)
!2879 = !DILocation(line: 1678, column: 18, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1678, column: 17)
!2881 = !DILocation(line: 1678, column: 27, scope: !2880)
!2882 = !DILocation(line: 1678, column: 25, scope: !2880)
!2883 = !DILocation(line: 1678, column: 35, scope: !2880)
!2884 = !DILocation(line: 1678, column: 17, scope: !2040)
!2885 = !DILocation(line: 1679, column: 17, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1678, column: 40)
!2887 = !DILocation(line: 1679, column: 23, scope: !2886)
!2888 = !DILocation(line: 1679, column: 33, scope: !2886)
!2889 = !DILocation(line: 1680, column: 17, scope: !2886)
!2890 = !DILocation(line: 1680, column: 23, scope: !2886)
!2891 = !DILocation(line: 1680, column: 30, scope: !2886)
!2892 = !DILocation(line: 1681, column: 13, scope: !2886)
!2893 = !DILocation(line: 1682, column: 30, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2880, file: !3, line: 1681, column: 20)
!2895 = !DILocation(line: 1682, column: 28, scope: !2894)
!2896 = !DILocation(line: 1683, column: 24, scope: !2894)
!2897 = !DILocation(line: 1686, column: 17, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1686, column: 17)
!2899 = !DILocation(line: 1686, column: 23, scope: !2898)
!2900 = !DILocation(line: 1686, column: 30, scope: !2898)
!2901 = !DILocation(line: 1686, column: 17, scope: !2040)
!2902 = !DILocation(line: 1688, column: 56, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 1688, column: 13)
!2904 = !DILocation(line: 1688, column: 65, scope: !2903)
!2905 = !DILocation(line: 1688, column: 63, scope: !2903)
!2906 = !DILocation(line: 1688, column: 30, scope: !2903)
!2907 = !DILocation(line: 1689, column: 47, scope: !2903)
!2908 = !DILocation(line: 1689, column: 53, scope: !2903)
!2909 = !DILocation(line: 1689, column: 45, scope: !2903)
!2910 = !DILocation(line: 1689, column: 30, scope: !2903)
!2911 = !DILocation(line: 1690, column: 43, scope: !2903)
!2912 = !DILocation(line: 1690, column: 30, scope: !2903)
!2913 = !DILocation(line: 1691, column: 24, scope: !2903)
!2914 = !DILocation(line: 1691, column: 30, scope: !2903)
!2915 = !DILocation(line: 1691, column: 38, scope: !2903)
!2916 = !DILocation(line: 1691, column: 44, scope: !2903)
!2917 = !DILocation(line: 1691, column: 36, scope: !2903)
!2918 = !DILocation(line: 1691, column: 55, scope: !2903)
!2919 = !DILocation(line: 1691, column: 63, scope: !2903)
!2920 = !DILocation(line: 1691, column: 17, scope: !2903)
!2921 = !DILocation(line: 1692, column: 27, scope: !2903)
!2922 = !DILocation(line: 1692, column: 24, scope: !2903)
!2923 = !DILocation(line: 1693, column: 36, scope: !2903)
!2924 = !DILocation(line: 1693, column: 17, scope: !2903)
!2925 = !DILocation(line: 1693, column: 23, scope: !2903)
!2926 = !DILocation(line: 1693, column: 33, scope: !2903)
!2927 = !DILocation(line: 1694, column: 21, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 1694, column: 21)
!2929 = !DILocation(line: 1694, column: 27, scope: !2928)
!2930 = !DILocation(line: 1694, column: 37, scope: !2928)
!2931 = !DILocation(line: 1694, column: 21, scope: !2903)
!2932 = !DILocation(line: 1695, column: 43, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 1694, column: 42)
!2934 = !DILocation(line: 1695, column: 49, scope: !2933)
!2935 = !DILocation(line: 1695, column: 41, scope: !2933)
!2936 = !DILocation(line: 1695, column: 37, scope: !2933)
!2937 = !DILocation(line: 1696, column: 35, scope: !2933)
!2938 = !DILocation(line: 1697, column: 21, scope: !2933)
!2939 = !DILocation(line: 1699, column: 30, scope: !2903)
!2940 = !DILocation(line: 1699, column: 36, scope: !2903)
!2941 = !DILocation(line: 1699, column: 28, scope: !2903)
!2942 = !DILocation(line: 1700, column: 13, scope: !2903)
!2943 = !DILocation(line: 1703, column: 51, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1703, column: 13)
!2945 = !DILocation(line: 1703, column: 37, scope: !2944)
!2946 = !DILocation(line: 1703, column: 27, scope: !2944)
!2947 = !DILocation(line: 1704, column: 54, scope: !2944)
!2948 = !DILocation(line: 1704, column: 60, scope: !2944)
!2949 = !DILocation(line: 1704, column: 39, scope: !2944)
!2950 = !DILocation(line: 1704, column: 27, scope: !2944)
!2951 = !DILocation(line: 1705, column: 21, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 1705, column: 21)
!2953 = !DILocation(line: 1705, column: 32, scope: !2952)
!2954 = !DILocation(line: 1705, column: 29, scope: !2952)
!2955 = !DILocation(line: 1705, column: 21, scope: !2944)
!2956 = !DILocation(line: 1706, column: 28, scope: !2952)
!2957 = !DILocation(line: 1706, column: 21, scope: !2952)
!2958 = !DILocation(line: 1707, column: 33, scope: !2944)
!2959 = !DILocation(line: 1708, column: 48, scope: !2944)
!2960 = !DILocation(line: 1708, column: 17, scope: !2944)
!2961 = !DILocation(line: 1709, column: 32, scope: !2944)
!2962 = !DILocation(line: 1710, column: 17, scope: !2944)
!2963 = !DILocation(line: 1714, column: 18, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1714, column: 17)
!2965 = !DILocation(line: 1714, column: 27, scope: !2964)
!2966 = !DILocation(line: 1714, column: 25, scope: !2964)
!2967 = !DILocation(line: 1714, column: 35, scope: !2964)
!2968 = !DILocation(line: 1714, column: 17, scope: !2040)
!2969 = !DILocation(line: 1715, column: 30, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1714, column: 41)
!2971 = !DILocation(line: 1715, column: 28, scope: !2970)
!2972 = !DILocation(line: 1716, column: 24, scope: !2970)
!2973 = !DILocation(line: 1717, column: 13, scope: !2970)
!2974 = !DILocation(line: 1719, column: 17, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 1717, column: 20)
!2976 = !DILocation(line: 1719, column: 23, scope: !2975)
!2977 = !DILocation(line: 1719, column: 33, scope: !2975)
!2978 = !DILocation(line: 1720, column: 17, scope: !2975)
!2979 = !DILocation(line: 1720, column: 23, scope: !2975)
!2980 = !DILocation(line: 1720, column: 35, scope: !2975)
!2981 = !DILocation(line: 1721, column: 17, scope: !2975)
!2982 = !DILocation(line: 1721, column: 23, scope: !2975)
!2983 = !DILocation(line: 1721, column: 30, scope: !2975)
!2984 = !DILocation(line: 1724, column: 17, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1724, column: 17)
!2986 = !DILocation(line: 1724, column: 23, scope: !2985)
!2987 = !DILocation(line: 1724, column: 30, scope: !2985)
!2988 = !DILocation(line: 1724, column: 17, scope: !2040)
!2989 = !DILocation(line: 1726, column: 43, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 1726, column: 13)
!2991 = !DILocation(line: 1726, column: 30, scope: !2990)
!2992 = !DILocation(line: 1728, column: 24, scope: !2990)
!2993 = !DILocation(line: 1728, column: 30, scope: !2990)
!2994 = !DILocation(line: 1728, column: 39, scope: !2990)
!2995 = !DILocation(line: 1728, column: 45, scope: !2990)
!2996 = !DILocation(line: 1728, column: 37, scope: !2990)
!2997 = !DILocation(line: 1728, column: 56, scope: !2990)
!2998 = !DILocation(line: 1728, column: 64, scope: !2990)
!2999 = !DILocation(line: 1728, column: 17, scope: !2990)
!3000 = !DILocation(line: 1729, column: 27, scope: !2990)
!3001 = !DILocation(line: 1729, column: 24, scope: !2990)
!3002 = !DILocation(line: 1730, column: 36, scope: !2990)
!3003 = !DILocation(line: 1730, column: 17, scope: !2990)
!3004 = !DILocation(line: 1730, column: 23, scope: !2990)
!3005 = !DILocation(line: 1730, column: 33, scope: !2990)
!3006 = !DILocation(line: 1731, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 1731, column: 21)
!3008 = !DILocation(line: 1731, column: 27, scope: !3007)
!3009 = !DILocation(line: 1731, column: 39, scope: !3007)
!3010 = !DILocation(line: 1731, column: 45, scope: !3007)
!3011 = !DILocation(line: 1731, column: 37, scope: !3007)
!3012 = !DILocation(line: 1731, column: 21, scope: !2990)
!3013 = !DILocation(line: 1733, column: 39, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 1731, column: 58)
!3015 = !DILocation(line: 1733, column: 45, scope: !3014)
!3016 = !DILocation(line: 1733, column: 59, scope: !3014)
!3017 = !DILocation(line: 1733, column: 65, scope: !3014)
!3018 = !DILocation(line: 1733, column: 57, scope: !3014)
!3019 = !DILocation(line: 1733, column: 37, scope: !3014)
!3020 = !DILocation(line: 1734, column: 36, scope: !3014)
!3021 = !DILocation(line: 1735, column: 21, scope: !3014)
!3022 = !DILocation(line: 1737, column: 30, scope: !2990)
!3023 = !DILocation(line: 1737, column: 36, scope: !2990)
!3024 = !DILocation(line: 1737, column: 43, scope: !2990)
!3025 = !DILocation(line: 1737, column: 28, scope: !2990)
!3026 = !DILocation(line: 1738, column: 13, scope: !2990)
!3027 = !DILocation(line: 1741, column: 57, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1741, column: 13)
!3029 = !DILocation(line: 1741, column: 43, scope: !3028)
!3030 = !DILocation(line: 1741, column: 30, scope: !3028)
!3031 = !DILocation(line: 1742, column: 47, scope: !3028)
!3032 = !DILocation(line: 1742, column: 17, scope: !3028)
!3033 = !DILocation(line: 1742, column: 23, scope: !3028)
!3034 = !DILocation(line: 1742, column: 33, scope: !3028)
!3035 = !DILocation(line: 1742, column: 45, scope: !3028)
!3036 = !DILocation(line: 1743, column: 37, scope: !3028)
!3037 = !DILocation(line: 1743, column: 17, scope: !3028)
!3038 = !DILocation(line: 1743, column: 23, scope: !3028)
!3039 = !DILocation(line: 1743, column: 35, scope: !3028)
!3040 = !DILocation(line: 1744, column: 17, scope: !3028)
!3041 = !DILocation(line: 1744, column: 23, scope: !3028)
!3042 = !DILocation(line: 1744, column: 30, scope: !3028)
!3043 = !DILocation(line: 1745, column: 17, scope: !3028)
!3044 = !DILocation(line: 1749, column: 41, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1749, column: 13)
!3046 = !DILocation(line: 1749, column: 30, scope: !3045)
!3047 = !DILocation(line: 1750, column: 27, scope: !3045)
!3048 = !DILocation(line: 1750, column: 24, scope: !3045)
!3049 = !DILocation(line: 1751, column: 38, scope: !3045)
!3050 = !DILocation(line: 1751, column: 17, scope: !3045)
!3051 = !DILocation(line: 1751, column: 23, scope: !3045)
!3052 = !DILocation(line: 1751, column: 35, scope: !3045)
!3053 = !DILocation(line: 1752, column: 32, scope: !3045)
!3054 = !DILocation(line: 1753, column: 35, scope: !3045)
!3055 = !DILocation(line: 1753, column: 41, scope: !3045)
!3056 = !DILocation(line: 1753, column: 33, scope: !3045)
!3057 = !DILocation(line: 1754, column: 21, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3045, file: !3, line: 1754, column: 21)
!3059 = !DILocation(line: 1754, column: 21, scope: !3045)
!3060 = !DILocation(line: 1754, column: 38, scope: !3058)
!3061 = !DILocation(line: 1756, column: 48, scope: !3045)
!3062 = !DILocation(line: 1756, column: 17, scope: !3045)
!3063 = !DILocation(line: 1757, column: 17, scope: !3045)
!3064 = distinct !{!3064, !2032, !3065}
!3065 = !DILocation(line: 1760, column: 5, scope: !1990)
!3066 = !DILocation(line: 1764, column: 11, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 1764, column: 10)
!3068 = !DILocation(line: 1764, column: 17, scope: !3067)
!3069 = !DILocation(line: 1764, column: 27, scope: !3067)
!3070 = !DILocation(line: 1764, column: 36, scope: !3067)
!3071 = !DILocation(line: 1765, column: 7, scope: !3067)
!3072 = !DILocation(line: 1765, column: 11, scope: !3067)
!3073 = !DILocation(line: 1765, column: 17, scope: !3067)
!3074 = !DILocation(line: 1765, column: 25, scope: !3067)
!3075 = !DILocation(line: 1765, column: 31, scope: !3067)
!3076 = !DILocation(line: 1765, column: 22, scope: !3067)
!3077 = !DILocation(line: 1766, column: 7, scope: !3067)
!3078 = !DILocation(line: 1766, column: 12, scope: !3067)
!3079 = !DILocation(line: 1766, column: 34, scope: !3067)
!3080 = !DILocation(line: 1767, column: 7, scope: !3067)
!3081 = !DILocation(line: 1767, column: 22, scope: !3067)
!3082 = !DILocation(line: 1767, column: 28, scope: !3067)
!3083 = !DILocation(line: 1767, column: 35, scope: !3067)
!3084 = !DILocation(line: 1767, column: 38, scope: !3067)
!3085 = !DILocation(line: 1764, column: 10, scope: !1990)
!3086 = !DILocation(line: 1769, column: 13, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 1769, column: 13)
!3088 = distinct !DILexicalBlock(scope: !3067, file: !3, line: 1768, column: 5)
!3089 = !DILocation(line: 1769, column: 19, scope: !3087)
!3090 = !DILocation(line: 1769, column: 26, scope: !3087)
!3091 = !DILocation(line: 1769, column: 13, scope: !3088)
!3092 = !DILocation(line: 1770, column: 41, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1769, column: 46)
!3094 = !DILocation(line: 1770, column: 47, scope: !3093)
!3095 = !DILocation(line: 1770, column: 56, scope: !3093)
!3096 = !DILocation(line: 1770, column: 62, scope: !3093)
!3097 = !DILocation(line: 1770, column: 54, scope: !3093)
!3098 = !DILocation(line: 1770, column: 26, scope: !3093)
!3099 = !DILocation(line: 1771, column: 39, scope: !3093)
!3100 = !DILocation(line: 1771, column: 45, scope: !3093)
!3101 = !DILocation(line: 1771, column: 37, scope: !3093)
!3102 = !DILocation(line: 1771, column: 20, scope: !3093)
!3103 = !DILocation(line: 1772, column: 38, scope: !3093)
!3104 = !DILocation(line: 1772, column: 44, scope: !3093)
!3105 = !DILocation(line: 1772, column: 51, scope: !3093)
!3106 = !DILocation(line: 1772, column: 57, scope: !3093)
!3107 = !DILocation(line: 1772, column: 49, scope: !3093)
!3108 = !DILocation(line: 1772, column: 68, scope: !3093)
!3109 = !DILocation(line: 1772, column: 74, scope: !3093)
!3110 = !DILocation(line: 1772, column: 66, scope: !3093)
!3111 = !DILocation(line: 1772, column: 25, scope: !3093)
!3112 = !DILocation(line: 1773, column: 17, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1773, column: 17)
!3114 = !DILocation(line: 1773, column: 23, scope: !3113)
!3115 = !DILocation(line: 1773, column: 34, scope: !3113)
!3116 = !DILocation(line: 1773, column: 17, scope: !3093)
!3117 = !DILocation(line: 1773, column: 52, scope: !3113)
!3118 = !DILocation(line: 1773, column: 43, scope: !3113)
!3119 = !DILocation(line: 1774, column: 17, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1774, column: 17)
!3121 = !DILocation(line: 1774, column: 28, scope: !3120)
!3122 = !DILocation(line: 1774, column: 26, scope: !3120)
!3123 = !DILocation(line: 1774, column: 17, scope: !3093)
!3124 = !DILocation(line: 1774, column: 53, scope: !3120)
!3125 = !DILocation(line: 1774, column: 51, scope: !3120)
!3126 = !DILocation(line: 1774, column: 42, scope: !3120)
!3127 = !DILocation(line: 1776, column: 17, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 1776, column: 17)
!3129 = !DILocation(line: 1776, column: 26, scope: !3128)
!3130 = !DILocation(line: 1776, column: 17, scope: !3093)
!3131 = !DILocation(line: 1777, column: 24, scope: !3128)
!3132 = !DILocation(line: 1777, column: 30, scope: !3128)
!3133 = !DILocation(line: 1777, column: 45, scope: !3128)
!3134 = !DILocation(line: 1777, column: 43, scope: !3128)
!3135 = !DILocation(line: 1777, column: 60, scope: !3128)
!3136 = !DILocation(line: 1777, column: 58, scope: !3128)
!3137 = !DILocation(line: 1777, column: 70, scope: !3128)
!3138 = !DILocation(line: 1777, column: 83, scope: !3128)
!3139 = !DILocation(line: 1777, column: 81, scope: !3128)
!3140 = !DILocation(line: 1777, column: 93, scope: !3128)
!3141 = !DILocation(line: 1777, column: 17, scope: !3128)
!3142 = !DILocation(line: 1779, column: 26, scope: !3093)
!3143 = !DILocation(line: 1779, column: 32, scope: !3093)
!3144 = !DILocation(line: 1779, column: 13, scope: !3093)
!3145 = !DILocation(line: 1779, column: 19, scope: !3093)
!3146 = !DILocation(line: 1779, column: 24, scope: !3093)
!3147 = !DILocation(line: 1780, column: 30, scope: !3093)
!3148 = !DILocation(line: 1780, column: 45, scope: !3093)
!3149 = !DILocation(line: 1780, column: 51, scope: !3093)
!3150 = !DILocation(line: 1780, column: 43, scope: !3093)
!3151 = !DILocation(line: 1780, column: 13, scope: !3093)
!3152 = !DILocation(line: 1780, column: 19, scope: !3093)
!3153 = !DILocation(line: 1780, column: 28, scope: !3093)
!3154 = !DILocation(line: 1781, column: 9, scope: !3093)
!3155 = !DILocation(line: 1782, column: 44, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 1781, column: 16)
!3157 = !DILocation(line: 1782, column: 50, scope: !3156)
!3158 = !DILocation(line: 1782, column: 57, scope: !3156)
!3159 = !DILocation(line: 1782, column: 63, scope: !3156)
!3160 = !DILocation(line: 1782, column: 55, scope: !3156)
!3161 = !DILocation(line: 1782, column: 31, scope: !3156)
!3162 = !DILocation(line: 1783, column: 40, scope: !3156)
!3163 = !DILocation(line: 1783, column: 26, scope: !3156)
!3164 = !DILocation(line: 1785, column: 17, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 1785, column: 17)
!3166 = !DILocation(line: 1785, column: 29, scope: !3165)
!3167 = !DILocation(line: 1785, column: 17, scope: !3156)
!3168 = !DILocation(line: 1786, column: 24, scope: !3165)
!3169 = !DILocation(line: 1786, column: 30, scope: !3165)
!3170 = !DILocation(line: 1786, column: 44, scope: !3165)
!3171 = !DILocation(line: 1786, column: 57, scope: !3165)
!3172 = !DILocation(line: 1786, column: 55, scope: !3165)
!3173 = !DILocation(line: 1786, column: 70, scope: !3165)
!3174 = !DILocation(line: 1786, column: 17, scope: !3165)
!3175 = !DILocation(line: 1788, column: 26, scope: !3156)
!3176 = !DILocation(line: 1788, column: 32, scope: !3156)
!3177 = !DILocation(line: 1788, column: 13, scope: !3156)
!3178 = !DILocation(line: 1788, column: 19, scope: !3156)
!3179 = !DILocation(line: 1788, column: 24, scope: !3156)
!3180 = !DILocation(line: 1789, column: 30, scope: !3156)
!3181 = !DILocation(line: 1789, column: 13, scope: !3156)
!3182 = !DILocation(line: 1789, column: 19, scope: !3156)
!3183 = !DILocation(line: 1789, column: 28, scope: !3156)
!3184 = !DILocation(line: 1790, column: 28, scope: !3156)
!3185 = !DILocation(line: 1790, column: 34, scope: !3156)
!3186 = !DILocation(line: 1790, column: 49, scope: !3156)
!3187 = !DILocation(line: 1790, column: 47, scope: !3156)
!3188 = !DILocation(line: 1790, column: 13, scope: !3156)
!3189 = !DILocation(line: 1790, column: 19, scope: !3156)
!3190 = !DILocation(line: 1790, column: 26, scope: !3156)
!3191 = !DILocation(line: 1792, column: 5, scope: !3088)
!3192 = !DILocation(line: 1794, column: 20, scope: !1990)
!3193 = !DILocation(line: 1794, column: 29, scope: !1990)
!3194 = !DILocation(line: 1794, column: 27, scope: !1990)
!3195 = !DILocation(line: 1794, column: 6, scope: !1990)
!3196 = !DILocation(line: 1794, column: 17, scope: !1990)
!3197 = !DILocation(line: 1795, column: 20, scope: !1990)
!3198 = !DILocation(line: 1795, column: 29, scope: !1990)
!3199 = !DILocation(line: 1795, column: 27, scope: !1990)
!3200 = !DILocation(line: 1795, column: 6, scope: !1990)
!3201 = !DILocation(line: 1795, column: 17, scope: !1990)
!3202 = !DILocation(line: 1796, column: 12, scope: !1990)
!3203 = !DILocation(line: 1796, column: 5, scope: !1990)
!3204 = !DILocation(line: 1797, column: 1, scope: !1990)
!3205 = distinct !DISubprogram(name: "LZ4F_headerSize", scope: !3, file: !3, line: 1089, type: !3206, isLocal: true, isDefinition: true, scopeLine: 1090, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!11, !470, !11}
!3208 = !DILocation(line: 1092, column: 9, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1092, column: 9)
!3210 = !DILocation(line: 1092, column: 17, scope: !3209)
!3211 = !DILocation(line: 1092, column: 9, scope: !3205)
!3212 = !DILocation(line: 1092, column: 29, scope: !3209)
!3213 = !DILocation(line: 1092, column: 22, scope: !3209)
!3214 = !DILocation(line: 1095, column: 24, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1095, column: 9)
!3216 = !DILocation(line: 1095, column: 10, scope: !3215)
!3217 = !DILocation(line: 1095, column: 29, scope: !3215)
!3218 = !DILocation(line: 1095, column: 44, scope: !3215)
!3219 = !DILocation(line: 1095, column: 9, scope: !3205)
!3220 = !DILocation(line: 1095, column: 75, scope: !3215)
!3221 = !DILocation(line: 1098, column: 23, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1098, column: 9)
!3223 = !DILocation(line: 1098, column: 9, scope: !3222)
!3224 = !DILocation(line: 1098, column: 28, scope: !3222)
!3225 = !DILocation(line: 1098, column: 9, scope: !3205)
!3226 = !DILocation(line: 1099, column: 16, scope: !3222)
!3227 = !DILocation(line: 1099, column: 9, scope: !3222)
!3228 = !DILocation(line: 1102, column: 40, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 1102, column: 5)
!3230 = !DILocation(line: 1102, column: 26, scope: !3229)
!3231 = !DILocation(line: 1102, column: 20, scope: !3229)
!3232 = !DILocation(line: 1103, column: 38, scope: !3229)
!3233 = !DILocation(line: 1103, column: 41, scope: !3229)
!3234 = !DILocation(line: 1103, column: 46, scope: !3229)
!3235 = !DILocation(line: 1103, column: 19, scope: !3229)
!3236 = !DILocation(line: 1104, column: 32, scope: !3229)
!3237 = !DILocation(line: 1104, column: 36, scope: !3229)
!3238 = !DILocation(line: 1104, column: 19, scope: !3229)
!3239 = !DILocation(line: 1105, column: 29, scope: !3229)
!3240 = !DILocation(line: 1105, column: 44, scope: !3229)
!3241 = !DILocation(line: 1105, column: 28, scope: !3229)
!3242 = !DILocation(line: 1105, column: 26, scope: !3229)
!3243 = !DILocation(line: 1105, column: 51, scope: !3229)
!3244 = !DILocation(line: 1105, column: 61, scope: !3229)
!3245 = !DILocation(line: 1105, column: 50, scope: !3229)
!3246 = !DILocation(line: 1105, column: 48, scope: !3229)
!3247 = !DILocation(line: 1105, column: 9, scope: !3229)
!3248 = !DILocation(line: 1107, column: 1, scope: !3205)
!3249 = distinct !DISubprogram(name: "LZ4F_decodeHeader", scope: !3, file: !3, line: 1118, type: !3250, isLocal: true, isDefinition: true, scopeLine: 1119, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!11, !243, !470, !11}
!3252 = !DILocation(line: 1122, column: 39, scope: !3249)
!3253 = !DILocation(line: 1122, column: 17, scope: !3249)
!3254 = !DILocation(line: 1125, column: 9, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1125, column: 9)
!3256 = !DILocation(line: 1125, column: 17, scope: !3255)
!3257 = !DILocation(line: 1125, column: 9, scope: !3249)
!3258 = !DILocation(line: 1125, column: 37, scope: !3255)
!3259 = !DILocation(line: 1125, column: 30, scope: !3255)
!3260 = !DILocation(line: 1126, column: 16, scope: !3249)
!3261 = !DILocation(line: 1126, column: 22, scope: !3249)
!3262 = !DILocation(line: 1126, column: 5, scope: !3249)
!3263 = !DILocation(line: 1129, column: 24, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1129, column: 9)
!3265 = !DILocation(line: 1129, column: 10, scope: !3264)
!3266 = !DILocation(line: 1129, column: 32, scope: !3264)
!3267 = !DILocation(line: 1129, column: 47, scope: !3264)
!3268 = !DILocation(line: 1129, column: 9, scope: !3249)
!3269 = !DILocation(line: 1130, column: 9, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 1129, column: 78)
!3271 = !DILocation(line: 1130, column: 15, scope: !3270)
!3272 = !DILocation(line: 1130, column: 25, scope: !3270)
!3273 = !DILocation(line: 1130, column: 35, scope: !3270)
!3274 = !DILocation(line: 1131, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 1131, column: 13)
!3276 = !DILocation(line: 1131, column: 28, scope: !3275)
!3277 = !DILocation(line: 1131, column: 34, scope: !3275)
!3278 = !DILocation(line: 1131, column: 27, scope: !3275)
!3279 = !DILocation(line: 1131, column: 17, scope: !3275)
!3280 = !DILocation(line: 1131, column: 13, scope: !3270)
!3281 = !DILocation(line: 1132, column: 31, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1131, column: 43)
!3283 = !DILocation(line: 1132, column: 13, scope: !3282)
!3284 = !DILocation(line: 1132, column: 19, scope: !3282)
!3285 = !DILocation(line: 1132, column: 29, scope: !3282)
!3286 = !DILocation(line: 1133, column: 13, scope: !3282)
!3287 = !DILocation(line: 1133, column: 19, scope: !3282)
!3288 = !DILocation(line: 1133, column: 31, scope: !3282)
!3289 = !DILocation(line: 1134, column: 13, scope: !3282)
!3290 = !DILocation(line: 1134, column: 19, scope: !3282)
!3291 = !DILocation(line: 1134, column: 26, scope: !3282)
!3292 = !DILocation(line: 1135, column: 20, scope: !3282)
!3293 = !DILocation(line: 1135, column: 13, scope: !3282)
!3294 = !DILocation(line: 1137, column: 13, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 1136, column: 16)
!3296 = !DILocation(line: 1137, column: 19, scope: !3295)
!3297 = !DILocation(line: 1137, column: 26, scope: !3295)
!3298 = !DILocation(line: 1138, column: 13, scope: !3295)
!3299 = !DILocation(line: 1143, column: 23, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1143, column: 9)
!3301 = !DILocation(line: 1143, column: 9, scope: !3300)
!3302 = !DILocation(line: 1143, column: 31, scope: !3300)
!3303 = !DILocation(line: 1143, column: 9, scope: !3249)
!3304 = !DILocation(line: 1144, column: 16, scope: !3300)
!3305 = !DILocation(line: 1144, column: 9, scope: !3300)
!3306 = !DILocation(line: 1145, column: 5, scope: !3249)
!3307 = !DILocation(line: 1145, column: 11, scope: !3249)
!3308 = !DILocation(line: 1145, column: 21, scope: !3249)
!3309 = !DILocation(line: 1145, column: 31, scope: !3249)
!3310 = !DILocation(line: 1148, column: 25, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1148, column: 5)
!3312 = !DILocation(line: 1148, column: 19, scope: !3311)
!3313 = !DILocation(line: 1149, column: 30, scope: !3311)
!3314 = !DILocation(line: 1149, column: 33, scope: !3311)
!3315 = !DILocation(line: 1149, column: 38, scope: !3311)
!3316 = !DILocation(line: 1149, column: 19, scope: !3311)
!3317 = !DILocation(line: 1150, column: 30, scope: !3311)
!3318 = !DILocation(line: 1150, column: 33, scope: !3311)
!3319 = !DILocation(line: 1150, column: 38, scope: !3311)
!3320 = !DILocation(line: 1150, column: 27, scope: !3311)
!3321 = !DILocation(line: 1151, column: 22, scope: !3311)
!3322 = !DILocation(line: 1151, column: 25, scope: !3311)
!3323 = !DILocation(line: 1151, column: 30, scope: !3311)
!3324 = !DILocation(line: 1151, column: 19, scope: !3311)
!3325 = !DILocation(line: 1152, column: 28, scope: !3311)
!3326 = !DILocation(line: 1152, column: 31, scope: !3311)
!3327 = !DILocation(line: 1152, column: 36, scope: !3311)
!3328 = !DILocation(line: 1152, column: 25, scope: !3311)
!3329 = !DILocation(line: 1153, column: 32, scope: !3311)
!3330 = !DILocation(line: 1153, column: 35, scope: !3311)
!3331 = !DILocation(line: 1153, column: 40, scope: !3311)
!3332 = !DILocation(line: 1153, column: 29, scope: !3311)
!3333 = !DILocation(line: 1154, column: 22, scope: !3311)
!3334 = !DILocation(line: 1154, column: 26, scope: !3311)
!3335 = !DILocation(line: 1154, column: 20, scope: !3311)
!3336 = !DILocation(line: 1156, column: 15, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1156, column: 13)
!3338 = !DILocation(line: 1156, column: 18, scope: !3337)
!3339 = !DILocation(line: 1156, column: 22, scope: !3337)
!3340 = !DILocation(line: 1156, column: 30, scope: !3337)
!3341 = !DILocation(line: 1156, column: 13, scope: !3311)
!3342 = !DILocation(line: 1156, column: 43, scope: !3337)
!3343 = !DILocation(line: 1156, column: 36, scope: !3337)
!3344 = !DILocation(line: 1157, column: 13, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 1157, column: 13)
!3346 = !DILocation(line: 1157, column: 21, scope: !3345)
!3347 = !DILocation(line: 1157, column: 13, scope: !3311)
!3348 = !DILocation(line: 1157, column: 34, scope: !3345)
!3349 = !DILocation(line: 1157, column: 27, scope: !3345)
!3350 = !DILocation(line: 1161, column: 36, scope: !3249)
!3351 = !DILocation(line: 1161, column: 51, scope: !3249)
!3352 = !DILocation(line: 1161, column: 35, scope: !3249)
!3353 = !DILocation(line: 1161, column: 33, scope: !3249)
!3354 = !DILocation(line: 1161, column: 58, scope: !3249)
!3355 = !DILocation(line: 1161, column: 68, scope: !3249)
!3356 = !DILocation(line: 1161, column: 57, scope: !3249)
!3357 = !DILocation(line: 1161, column: 55, scope: !3249)
!3358 = !DILocation(line: 1161, column: 21, scope: !3249)
!3359 = !DILocation(line: 1163, column: 9, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1163, column: 9)
!3361 = !DILocation(line: 1163, column: 19, scope: !3360)
!3362 = !DILocation(line: 1163, column: 17, scope: !3360)
!3363 = !DILocation(line: 1163, column: 9, scope: !3249)
!3364 = !DILocation(line: 1165, column: 13, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !3, line: 1165, column: 13)
!3366 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 1163, column: 36)
!3367 = !DILocation(line: 1165, column: 23, scope: !3365)
!3368 = !DILocation(line: 1165, column: 29, scope: !3365)
!3369 = !DILocation(line: 1165, column: 20, scope: !3365)
!3370 = !DILocation(line: 1165, column: 13, scope: !3366)
!3371 = !DILocation(line: 1166, column: 20, scope: !3365)
!3372 = !DILocation(line: 1166, column: 26, scope: !3365)
!3373 = !DILocation(line: 1166, column: 13, scope: !3365)
!3374 = !DILocation(line: 1166, column: 34, scope: !3365)
!3375 = !DILocation(line: 1166, column: 42, scope: !3365)
!3376 = !DILocation(line: 1167, column: 27, scope: !3366)
!3377 = !DILocation(line: 1167, column: 9, scope: !3366)
!3378 = !DILocation(line: 1167, column: 15, scope: !3366)
!3379 = !DILocation(line: 1167, column: 25, scope: !3366)
!3380 = !DILocation(line: 1168, column: 29, scope: !3366)
!3381 = !DILocation(line: 1168, column: 9, scope: !3366)
!3382 = !DILocation(line: 1168, column: 15, scope: !3366)
!3383 = !DILocation(line: 1168, column: 27, scope: !3366)
!3384 = !DILocation(line: 1169, column: 9, scope: !3366)
!3385 = !DILocation(line: 1169, column: 15, scope: !3366)
!3386 = !DILocation(line: 1169, column: 22, scope: !3366)
!3387 = !DILocation(line: 1170, column: 16, scope: !3366)
!3388 = !DILocation(line: 1170, column: 9, scope: !3366)
!3389 = !DILocation(line: 1173, column: 24, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1173, column: 5)
!3391 = !DILocation(line: 1173, column: 19, scope: !3390)
!3392 = !DILocation(line: 1174, column: 24, scope: !3390)
!3393 = !DILocation(line: 1174, column: 26, scope: !3390)
!3394 = !DILocation(line: 1174, column: 31, scope: !3390)
!3395 = !DILocation(line: 1174, column: 21, scope: !3390)
!3396 = !DILocation(line: 1176, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1176, column: 13)
!3398 = !DILocation(line: 1176, column: 17, scope: !3397)
!3399 = !DILocation(line: 1176, column: 21, scope: !3397)
!3400 = !DILocation(line: 1176, column: 29, scope: !3397)
!3401 = !DILocation(line: 1176, column: 13, scope: !3390)
!3402 = !DILocation(line: 1176, column: 42, scope: !3397)
!3403 = !DILocation(line: 1176, column: 35, scope: !3397)
!3404 = !DILocation(line: 1177, column: 13, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1177, column: 13)
!3406 = !DILocation(line: 1177, column: 25, scope: !3405)
!3407 = !DILocation(line: 1177, column: 13, scope: !3390)
!3408 = !DILocation(line: 1177, column: 37, scope: !3405)
!3409 = !DILocation(line: 1177, column: 30, scope: !3405)
!3410 = !DILocation(line: 1178, column: 15, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 1178, column: 13)
!3412 = !DILocation(line: 1178, column: 17, scope: !3411)
!3413 = !DILocation(line: 1178, column: 21, scope: !3411)
!3414 = !DILocation(line: 1178, column: 30, scope: !3411)
!3415 = !DILocation(line: 1178, column: 13, scope: !3390)
!3416 = !DILocation(line: 1178, column: 43, scope: !3411)
!3417 = !DILocation(line: 1178, column: 36, scope: !3411)
!3418 = !DILocation(line: 1182, column: 45, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1182, column: 5)
!3420 = !DILocation(line: 1182, column: 51, scope: !3419)
!3421 = !DILocation(line: 1182, column: 55, scope: !3419)
!3422 = !DILocation(line: 1182, column: 70, scope: !3419)
!3423 = !DILocation(line: 1182, column: 25, scope: !3419)
!3424 = !DILocation(line: 1182, column: 20, scope: !3419)
!3425 = !DILocation(line: 1183, column: 13, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1183, column: 13)
!3427 = !DILocation(line: 1183, column: 19, scope: !3426)
!3428 = !DILocation(line: 1183, column: 26, scope: !3426)
!3429 = !DILocation(line: 1183, column: 41, scope: !3426)
!3430 = !DILocation(line: 1183, column: 16, scope: !3426)
!3431 = !DILocation(line: 1183, column: 13, scope: !3419)
!3432 = !DILocation(line: 1184, column: 20, scope: !3426)
!3433 = !DILocation(line: 1184, column: 13, scope: !3426)
!3434 = !DILocation(line: 1188, column: 51, scope: !3249)
!3435 = !DILocation(line: 1188, column: 5, scope: !3249)
!3436 = !DILocation(line: 1188, column: 11, scope: !3249)
!3437 = !DILocation(line: 1188, column: 21, scope: !3249)
!3438 = !DILocation(line: 1188, column: 31, scope: !3249)
!3439 = !DILocation(line: 1189, column: 63, scope: !3249)
!3440 = !DILocation(line: 1189, column: 5, scope: !3249)
!3441 = !DILocation(line: 1189, column: 11, scope: !3249)
!3442 = !DILocation(line: 1189, column: 21, scope: !3249)
!3443 = !DILocation(line: 1189, column: 39, scope: !3249)
!3444 = !DILocation(line: 1190, column: 67, scope: !3249)
!3445 = !DILocation(line: 1190, column: 5, scope: !3249)
!3446 = !DILocation(line: 1190, column: 11, scope: !3249)
!3447 = !DILocation(line: 1190, column: 21, scope: !3249)
!3448 = !DILocation(line: 1190, column: 41, scope: !3249)
!3449 = !DILocation(line: 1191, column: 55, scope: !3249)
!3450 = !DILocation(line: 1191, column: 5, scope: !3249)
!3451 = !DILocation(line: 1191, column: 11, scope: !3249)
!3452 = !DILocation(line: 1191, column: 21, scope: !3249)
!3453 = !DILocation(line: 1191, column: 33, scope: !3249)
!3454 = !DILocation(line: 1192, column: 44, scope: !3249)
!3455 = !DILocation(line: 1192, column: 26, scope: !3249)
!3456 = !DILocation(line: 1192, column: 5, scope: !3249)
!3457 = !DILocation(line: 1192, column: 11, scope: !3249)
!3458 = !DILocation(line: 1192, column: 24, scope: !3249)
!3459 = !DILocation(line: 1193, column: 9, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1193, column: 9)
!3461 = !DILocation(line: 1193, column: 9, scope: !3249)
!3462 = !DILocation(line: 1195, column: 57, scope: !3460)
!3463 = !DILocation(line: 1195, column: 63, scope: !3460)
!3464 = !DILocation(line: 1195, column: 43, scope: !3460)
!3465 = !DILocation(line: 1195, column: 13, scope: !3460)
!3466 = !DILocation(line: 1195, column: 19, scope: !3460)
!3467 = !DILocation(line: 1195, column: 29, scope: !3460)
!3468 = !DILocation(line: 1195, column: 41, scope: !3460)
!3469 = !DILocation(line: 1194, column: 9, scope: !3460)
!3470 = !DILocation(line: 1194, column: 15, scope: !3460)
!3471 = !DILocation(line: 1194, column: 34, scope: !3460)
!3472 = !DILocation(line: 1196, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 1196, column: 9)
!3474 = !DILocation(line: 1196, column: 9, scope: !3249)
!3475 = !DILocation(line: 1197, column: 48, scope: !3473)
!3476 = !DILocation(line: 1197, column: 57, scope: !3473)
!3477 = !DILocation(line: 1197, column: 55, scope: !3473)
!3478 = !DILocation(line: 1197, column: 73, scope: !3473)
!3479 = !DILocation(line: 1197, column: 34, scope: !3473)
!3480 = !DILocation(line: 1197, column: 9, scope: !3473)
!3481 = !DILocation(line: 1197, column: 15, scope: !3473)
!3482 = !DILocation(line: 1197, column: 25, scope: !3473)
!3483 = !DILocation(line: 1197, column: 32, scope: !3473)
!3484 = !DILocation(line: 1199, column: 5, scope: !3249)
!3485 = !DILocation(line: 1199, column: 11, scope: !3249)
!3486 = !DILocation(line: 1199, column: 18, scope: !3249)
!3487 = !DILocation(line: 1201, column: 12, scope: !3249)
!3488 = !DILocation(line: 1201, column: 5, scope: !3249)
!3489 = !DILocation(line: 1202, column: 1, scope: !3249)
!3490 = distinct !DISubprogram(name: "LZ4F_readLE32", scope: !3, file: !3, line: 137, type: !3491, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!206, !470}
!3493 = !DILocation(line: 139, column: 45, scope: !3490)
!3494 = !DILocation(line: 139, column: 23, scope: !3490)
!3495 = !DILocation(line: 140, column: 19, scope: !3490)
!3496 = !DILocation(line: 140, column: 9, scope: !3490)
!3497 = !DILocation(line: 141, column: 22, scope: !3490)
!3498 = !DILocation(line: 141, column: 17, scope: !3490)
!3499 = !DILocation(line: 141, column: 32, scope: !3490)
!3500 = !DILocation(line: 141, column: 13, scope: !3490)
!3501 = !DILocation(line: 142, column: 22, scope: !3490)
!3502 = !DILocation(line: 142, column: 17, scope: !3490)
!3503 = !DILocation(line: 142, column: 32, scope: !3490)
!3504 = !DILocation(line: 142, column: 13, scope: !3490)
!3505 = !DILocation(line: 143, column: 22, scope: !3490)
!3506 = !DILocation(line: 143, column: 17, scope: !3490)
!3507 = !DILocation(line: 143, column: 32, scope: !3490)
!3508 = !DILocation(line: 143, column: 13, scope: !3490)
!3509 = !DILocation(line: 144, column: 12, scope: !3490)
!3510 = !DILocation(line: 144, column: 5, scope: !3490)
!3511 = distinct !DISubprogram(name: "LZ4F_updateDict", scope: !3, file: !3, line: 1259, type: !3512, isLocal: true, isDefinition: true, scopeLine: 1262, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{null, !243, !241, !11, !241, !121}
!3514 = !DILocation(line: 1263, column: 9, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1263, column: 9)
!3516 = !DILocation(line: 1263, column: 15, scope: !3515)
!3517 = !DILocation(line: 1263, column: 23, scope: !3515)
!3518 = !DILocation(line: 1263, column: 9, scope: !3511)
!3519 = !DILocation(line: 1264, column: 35, scope: !3515)
!3520 = !DILocation(line: 1264, column: 9, scope: !3515)
!3521 = !DILocation(line: 1264, column: 15, scope: !3515)
!3522 = !DILocation(line: 1264, column: 20, scope: !3515)
!3523 = !DILocation(line: 1266, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1266, column: 9)
!3525 = !DILocation(line: 1266, column: 15, scope: !3524)
!3526 = !DILocation(line: 1266, column: 22, scope: !3524)
!3527 = !DILocation(line: 1266, column: 28, scope: !3524)
!3528 = !DILocation(line: 1266, column: 20, scope: !3524)
!3529 = !DILocation(line: 1266, column: 40, scope: !3524)
!3530 = !DILocation(line: 1266, column: 37, scope: !3524)
!3531 = !DILocation(line: 1266, column: 9, scope: !3511)
!3532 = !DILocation(line: 1267, column: 27, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 1266, column: 48)
!3534 = !DILocation(line: 1267, column: 9, scope: !3533)
!3535 = !DILocation(line: 1267, column: 15, scope: !3533)
!3536 = !DILocation(line: 1267, column: 24, scope: !3533)
!3537 = !DILocation(line: 1268, column: 9, scope: !3533)
!3538 = !DILocation(line: 1271, column: 9, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1271, column: 9)
!3540 = !DILocation(line: 1271, column: 18, scope: !3539)
!3541 = !DILocation(line: 1271, column: 16, scope: !3539)
!3542 = !DILocation(line: 1271, column: 35, scope: !3539)
!3543 = !DILocation(line: 1271, column: 33, scope: !3539)
!3544 = !DILocation(line: 1271, column: 43, scope: !3539)
!3545 = !DILocation(line: 1271, column: 9, scope: !3511)
!3546 = !DILocation(line: 1272, column: 35, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3539, file: !3, line: 1271, column: 53)
!3548 = !DILocation(line: 1272, column: 9, scope: !3547)
!3549 = !DILocation(line: 1272, column: 15, scope: !3547)
!3550 = !DILocation(line: 1272, column: 20, scope: !3547)
!3551 = !DILocation(line: 1273, column: 26, scope: !3547)
!3552 = !DILocation(line: 1273, column: 35, scope: !3547)
!3553 = !DILocation(line: 1273, column: 33, scope: !3547)
!3554 = !DILocation(line: 1273, column: 52, scope: !3547)
!3555 = !DILocation(line: 1273, column: 50, scope: !3547)
!3556 = !DILocation(line: 1273, column: 9, scope: !3547)
!3557 = !DILocation(line: 1273, column: 15, scope: !3547)
!3558 = !DILocation(line: 1273, column: 24, scope: !3547)
!3559 = !DILocation(line: 1274, column: 9, scope: !3547)
!3560 = !DILocation(line: 1281, column: 10, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1281, column: 9)
!3562 = !DILocation(line: 1281, column: 9, scope: !3561)
!3563 = !DILocation(line: 1281, column: 21, scope: !3561)
!3564 = !DILocation(line: 1281, column: 25, scope: !3561)
!3565 = !DILocation(line: 1281, column: 31, scope: !3561)
!3566 = !DILocation(line: 1281, column: 39, scope: !3561)
!3567 = !DILocation(line: 1281, column: 45, scope: !3561)
!3568 = !DILocation(line: 1281, column: 36, scope: !3561)
!3569 = !DILocation(line: 1281, column: 9, scope: !3511)
!3570 = !DILocation(line: 1284, column: 27, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1281, column: 60)
!3572 = !DILocation(line: 1284, column: 9, scope: !3571)
!3573 = !DILocation(line: 1284, column: 15, scope: !3571)
!3574 = !DILocation(line: 1284, column: 24, scope: !3571)
!3575 = !DILocation(line: 1285, column: 9, scope: !3571)
!3576 = !DILocation(line: 1288, column: 9, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1288, column: 9)
!3578 = !DILocation(line: 1288, column: 9, scope: !3511)
!3579 = !DILocation(line: 1289, column: 37, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3577, file: !3, line: 1288, column: 20)
!3581 = !DILocation(line: 1289, column: 43, scope: !3580)
!3582 = !DILocation(line: 1289, column: 52, scope: !3580)
!3583 = !DILocation(line: 1289, column: 58, scope: !3580)
!3584 = !DILocation(line: 1289, column: 50, scope: !3580)
!3585 = !DILocation(line: 1289, column: 22, scope: !3580)
!3586 = !DILocation(line: 1290, column: 35, scope: !3580)
!3587 = !DILocation(line: 1290, column: 41, scope: !3580)
!3588 = !DILocation(line: 1290, column: 33, scope: !3580)
!3589 = !DILocation(line: 1290, column: 16, scope: !3580)
!3590 = !DILocation(line: 1291, column: 40, scope: !3580)
!3591 = !DILocation(line: 1291, column: 46, scope: !3580)
!3592 = !DILocation(line: 1291, column: 53, scope: !3580)
!3593 = !DILocation(line: 1291, column: 59, scope: !3580)
!3594 = !DILocation(line: 1291, column: 51, scope: !3580)
!3595 = !DILocation(line: 1291, column: 70, scope: !3580)
!3596 = !DILocation(line: 1291, column: 76, scope: !3580)
!3597 = !DILocation(line: 1291, column: 68, scope: !3580)
!3598 = !DILocation(line: 1291, column: 27, scope: !3580)
!3599 = !DILocation(line: 1292, column: 13, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 1292, column: 13)
!3601 = !DILocation(line: 1292, column: 19, scope: !3600)
!3602 = !DILocation(line: 1292, column: 30, scope: !3600)
!3603 = !DILocation(line: 1292, column: 13, scope: !3580)
!3604 = !DILocation(line: 1292, column: 48, scope: !3600)
!3605 = !DILocation(line: 1292, column: 39, scope: !3600)
!3606 = !DILocation(line: 1293, column: 13, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 1293, column: 13)
!3608 = !DILocation(line: 1293, column: 24, scope: !3607)
!3609 = !DILocation(line: 1293, column: 22, scope: !3607)
!3610 = !DILocation(line: 1293, column: 13, scope: !3580)
!3611 = !DILocation(line: 1293, column: 49, scope: !3607)
!3612 = !DILocation(line: 1293, column: 47, scope: !3607)
!3613 = !DILocation(line: 1293, column: 38, scope: !3607)
!3614 = !DILocation(line: 1295, column: 16, scope: !3580)
!3615 = !DILocation(line: 1295, column: 22, scope: !3580)
!3616 = !DILocation(line: 1295, column: 37, scope: !3580)
!3617 = !DILocation(line: 1295, column: 35, scope: !3580)
!3618 = !DILocation(line: 1295, column: 52, scope: !3580)
!3619 = !DILocation(line: 1295, column: 50, scope: !3580)
!3620 = !DILocation(line: 1295, column: 62, scope: !3580)
!3621 = !DILocation(line: 1295, column: 75, scope: !3580)
!3622 = !DILocation(line: 1295, column: 73, scope: !3580)
!3623 = !DILocation(line: 1295, column: 85, scope: !3580)
!3624 = !DILocation(line: 1295, column: 9, scope: !3580)
!3625 = !DILocation(line: 1297, column: 22, scope: !3580)
!3626 = !DILocation(line: 1297, column: 28, scope: !3580)
!3627 = !DILocation(line: 1297, column: 9, scope: !3580)
!3628 = !DILocation(line: 1297, column: 15, scope: !3580)
!3629 = !DILocation(line: 1297, column: 20, scope: !3580)
!3630 = !DILocation(line: 1298, column: 26, scope: !3580)
!3631 = !DILocation(line: 1298, column: 41, scope: !3580)
!3632 = !DILocation(line: 1298, column: 47, scope: !3580)
!3633 = !DILocation(line: 1298, column: 39, scope: !3580)
!3634 = !DILocation(line: 1298, column: 61, scope: !3580)
!3635 = !DILocation(line: 1298, column: 59, scope: !3580)
!3636 = !DILocation(line: 1298, column: 9, scope: !3580)
!3637 = !DILocation(line: 1298, column: 15, scope: !3580)
!3638 = !DILocation(line: 1298, column: 24, scope: !3580)
!3639 = !DILocation(line: 1299, column: 9, scope: !3580)
!3640 = !DILocation(line: 1302, column: 9, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1302, column: 9)
!3642 = !DILocation(line: 1302, column: 15, scope: !3641)
!3643 = !DILocation(line: 1302, column: 23, scope: !3641)
!3644 = !DILocation(line: 1302, column: 29, scope: !3641)
!3645 = !DILocation(line: 1302, column: 20, scope: !3641)
!3646 = !DILocation(line: 1302, column: 9, scope: !3511)
!3647 = !DILocation(line: 1303, column: 13, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !3, line: 1303, column: 13)
!3649 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 1302, column: 43)
!3650 = !DILocation(line: 1303, column: 19, scope: !3648)
!3651 = !DILocation(line: 1303, column: 30, scope: !3648)
!3652 = !DILocation(line: 1303, column: 28, scope: !3648)
!3653 = !DILocation(line: 1303, column: 40, scope: !3648)
!3654 = !DILocation(line: 1303, column: 46, scope: !3648)
!3655 = !DILocation(line: 1303, column: 38, scope: !3648)
!3656 = !DILocation(line: 1303, column: 13, scope: !3649)
!3657 = !DILocation(line: 1304, column: 49, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3648, file: !3, line: 1303, column: 61)
!3659 = !DILocation(line: 1304, column: 47, scope: !3658)
!3660 = !DILocation(line: 1304, column: 26, scope: !3658)
!3661 = !DILocation(line: 1305, column: 20, scope: !3658)
!3662 = !DILocation(line: 1305, column: 26, scope: !3658)
!3663 = !DILocation(line: 1305, column: 40, scope: !3658)
!3664 = !DILocation(line: 1305, column: 46, scope: !3658)
!3665 = !DILocation(line: 1305, column: 53, scope: !3658)
!3666 = !DILocation(line: 1305, column: 59, scope: !3658)
!3667 = !DILocation(line: 1305, column: 51, scope: !3658)
!3668 = !DILocation(line: 1305, column: 70, scope: !3658)
!3669 = !DILocation(line: 1305, column: 68, scope: !3658)
!3670 = !DILocation(line: 1305, column: 84, scope: !3658)
!3671 = !DILocation(line: 1305, column: 13, scope: !3658)
!3672 = !DILocation(line: 1306, column: 30, scope: !3658)
!3673 = !DILocation(line: 1306, column: 13, scope: !3658)
!3674 = !DILocation(line: 1306, column: 19, scope: !3658)
!3675 = !DILocation(line: 1306, column: 28, scope: !3658)
!3676 = !DILocation(line: 1307, column: 9, scope: !3658)
!3677 = !DILocation(line: 1308, column: 16, scope: !3649)
!3678 = !DILocation(line: 1308, column: 22, scope: !3649)
!3679 = !DILocation(line: 1308, column: 37, scope: !3649)
!3680 = !DILocation(line: 1308, column: 43, scope: !3649)
!3681 = !DILocation(line: 1308, column: 35, scope: !3649)
!3682 = !DILocation(line: 1308, column: 53, scope: !3649)
!3683 = !DILocation(line: 1308, column: 61, scope: !3649)
!3684 = !DILocation(line: 1308, column: 9, scope: !3649)
!3685 = !DILocation(line: 1309, column: 27, scope: !3649)
!3686 = !DILocation(line: 1309, column: 9, scope: !3649)
!3687 = !DILocation(line: 1309, column: 15, scope: !3649)
!3688 = !DILocation(line: 1309, column: 24, scope: !3649)
!3689 = !DILocation(line: 1310, column: 9, scope: !3649)
!3690 = !DILocation(line: 1314, column: 39, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3511, file: !3, line: 1314, column: 5)
!3692 = !DILocation(line: 1314, column: 37, scope: !3691)
!3693 = !DILocation(line: 1314, column: 16, scope: !3691)
!3694 = !DILocation(line: 1315, column: 13, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3691, file: !3, line: 1315, column: 13)
!3696 = !DILocation(line: 1315, column: 28, scope: !3695)
!3697 = !DILocation(line: 1315, column: 34, scope: !3695)
!3698 = !DILocation(line: 1315, column: 26, scope: !3695)
!3699 = !DILocation(line: 1315, column: 13, scope: !3691)
!3700 = !DILocation(line: 1315, column: 59, scope: !3695)
!3701 = !DILocation(line: 1315, column: 65, scope: !3695)
!3702 = !DILocation(line: 1315, column: 57, scope: !3695)
!3703 = !DILocation(line: 1315, column: 44, scope: !3695)
!3704 = !DILocation(line: 1316, column: 16, scope: !3691)
!3705 = !DILocation(line: 1316, column: 22, scope: !3691)
!3706 = !DILocation(line: 1316, column: 36, scope: !3691)
!3707 = !DILocation(line: 1316, column: 42, scope: !3691)
!3708 = !DILocation(line: 1316, column: 49, scope: !3691)
!3709 = !DILocation(line: 1316, column: 55, scope: !3691)
!3710 = !DILocation(line: 1316, column: 47, scope: !3691)
!3711 = !DILocation(line: 1316, column: 66, scope: !3691)
!3712 = !DILocation(line: 1316, column: 64, scope: !3691)
!3713 = !DILocation(line: 1316, column: 80, scope: !3691)
!3714 = !DILocation(line: 1316, column: 9, scope: !3691)
!3715 = !DILocation(line: 1317, column: 16, scope: !3691)
!3716 = !DILocation(line: 1317, column: 22, scope: !3691)
!3717 = !DILocation(line: 1317, column: 37, scope: !3691)
!3718 = !DILocation(line: 1317, column: 35, scope: !3691)
!3719 = !DILocation(line: 1317, column: 51, scope: !3691)
!3720 = !DILocation(line: 1317, column: 59, scope: !3691)
!3721 = !DILocation(line: 1317, column: 9, scope: !3691)
!3722 = !DILocation(line: 1318, column: 22, scope: !3691)
!3723 = !DILocation(line: 1318, column: 28, scope: !3691)
!3724 = !DILocation(line: 1318, column: 9, scope: !3691)
!3725 = !DILocation(line: 1318, column: 15, scope: !3691)
!3726 = !DILocation(line: 1318, column: 20, scope: !3691)
!3727 = !DILocation(line: 1319, column: 26, scope: !3691)
!3728 = !DILocation(line: 1319, column: 41, scope: !3691)
!3729 = !DILocation(line: 1319, column: 39, scope: !3691)
!3730 = !DILocation(line: 1319, column: 9, scope: !3691)
!3731 = !DILocation(line: 1319, column: 15, scope: !3691)
!3732 = !DILocation(line: 1319, column: 24, scope: !3691)
!3733 = !DILocation(line: 1321, column: 1, scope: !3511)
!3734 = distinct !DISubprogram(name: "LZ4F_decompress_usingDict", scope: !3, file: !3, line: 1804, type: !3735, isLocal: false, isDefinition: true, scopeLine: 1809, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!11, !243, !90, !1912, !470, !1912, !470, !11, !1993}
!3737 = !DILocation(line: 1810, column: 9, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3734, file: !3, line: 1810, column: 9)
!3739 = !DILocation(line: 1810, column: 15, scope: !3738)
!3740 = !DILocation(line: 1810, column: 22, scope: !3738)
!3741 = !DILocation(line: 1810, column: 9, scope: !3734)
!3742 = !DILocation(line: 1811, column: 35, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 1810, column: 38)
!3744 = !DILocation(line: 1811, column: 9, scope: !3743)
!3745 = !DILocation(line: 1811, column: 15, scope: !3743)
!3746 = !DILocation(line: 1811, column: 20, scope: !3743)
!3747 = !DILocation(line: 1812, column: 26, scope: !3743)
!3748 = !DILocation(line: 1812, column: 9, scope: !3743)
!3749 = !DILocation(line: 1812, column: 15, scope: !3743)
!3750 = !DILocation(line: 1812, column: 24, scope: !3743)
!3751 = !DILocation(line: 1813, column: 5, scope: !3743)
!3752 = !DILocation(line: 1814, column: 28, scope: !3734)
!3753 = !DILocation(line: 1814, column: 34, scope: !3734)
!3754 = !DILocation(line: 1814, column: 45, scope: !3734)
!3755 = !DILocation(line: 1815, column: 28, scope: !3734)
!3756 = !DILocation(line: 1815, column: 39, scope: !3734)
!3757 = !DILocation(line: 1816, column: 28, scope: !3734)
!3758 = !DILocation(line: 1814, column: 12, scope: !3734)
!3759 = !DILocation(line: 1814, column: 5, scope: !3734)
!3760 = distinct !DISubprogram(name: "LZ4F_compressBlock", scope: !3, file: !3, line: 751, type: !1645, isLocal: true, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3761 = !DILocation(line: 753, column: 31, scope: !3760)
!3762 = !DILocation(line: 753, column: 37, scope: !3760)
!3763 = !DILocation(line: 753, column: 30, scope: !3760)
!3764 = !DILocation(line: 753, column: 45, scope: !3760)
!3765 = !DILocation(line: 753, column: 44, scope: !3760)
!3766 = !DILocation(line: 753, column: 51, scope: !3760)
!3767 = !DILocation(line: 753, column: 15, scope: !3760)
!3768 = !DILocation(line: 754, column: 21, scope: !3760)
!3769 = !DILocation(line: 754, column: 26, scope: !3760)
!3770 = !DILocation(line: 754, column: 33, scope: !3760)
!3771 = !DILocation(line: 754, column: 5, scope: !3760)
!3772 = !DILocation(line: 755, column: 9, scope: !3773)
!3773 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 755, column: 9)
!3774 = !DILocation(line: 755, column: 9, scope: !3760)
!3775 = !DILocation(line: 756, column: 58, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 755, column: 16)
!3777 = !DILocation(line: 756, column: 43, scope: !3776)
!3778 = !DILocation(line: 756, column: 63, scope: !3776)
!3779 = !DILocation(line: 756, column: 68, scope: !3776)
!3780 = !DILocation(line: 756, column: 73, scope: !3776)
!3781 = !DILocation(line: 756, column: 82, scope: !3776)
!3782 = !DILocation(line: 756, column: 95, scope: !3776)
!3783 = !DILocation(line: 756, column: 16, scope: !3776)
!3784 = !DILocation(line: 756, column: 9, scope: !3776)
!3785 = !DILocation(line: 758, column: 53, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3773, file: !3, line: 757, column: 12)
!3787 = !DILocation(line: 758, column: 58, scope: !3786)
!3788 = !DILocation(line: 758, column: 63, scope: !3786)
!3789 = !DILocation(line: 758, column: 68, scope: !3786)
!3790 = !DILocation(line: 758, column: 77, scope: !3786)
!3791 = !DILocation(line: 758, column: 90, scope: !3786)
!3792 = !DILocation(line: 758, column: 16, scope: !3786)
!3793 = !DILocation(line: 758, column: 9, scope: !3786)
!3794 = !DILocation(line: 760, column: 1, scope: !3760)
!3795 = distinct !DISubprogram(name: "LZ4F_compressBlock_continue", scope: !3, file: !3, line: 762, type: !1645, isLocal: true, isDefinition: true, scopeLine: 763, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3796 = !DILocation(line: 764, column: 31, scope: !3795)
!3797 = !DILocation(line: 764, column: 37, scope: !3795)
!3798 = !DILocation(line: 764, column: 30, scope: !3795)
!3799 = !DILocation(line: 764, column: 45, scope: !3795)
!3800 = !DILocation(line: 764, column: 44, scope: !3795)
!3801 = !DILocation(line: 764, column: 51, scope: !3795)
!3802 = !DILocation(line: 764, column: 15, scope: !3795)
!3803 = !DILocation(line: 765, column: 11, scope: !3795)
!3804 = !DILocation(line: 766, column: 54, scope: !3795)
!3805 = !DILocation(line: 766, column: 39, scope: !3795)
!3806 = !DILocation(line: 766, column: 59, scope: !3795)
!3807 = !DILocation(line: 766, column: 64, scope: !3795)
!3808 = !DILocation(line: 766, column: 69, scope: !3795)
!3809 = !DILocation(line: 766, column: 78, scope: !3795)
!3810 = !DILocation(line: 766, column: 91, scope: !3795)
!3811 = !DILocation(line: 766, column: 12, scope: !3795)
!3812 = !DILocation(line: 766, column: 5, scope: !3795)
!3813 = distinct !DISubprogram(name: "LZ4F_compressBlockHC", scope: !3, file: !3, line: 769, type: !1645, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3814 = !DILocation(line: 771, column: 21, scope: !3813)
!3815 = !DILocation(line: 771, column: 26, scope: !3813)
!3816 = !DILocation(line: 771, column: 33, scope: !3813)
!3817 = !DILocation(line: 771, column: 5, scope: !3813)
!3818 = !DILocation(line: 772, column: 9, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3813, file: !3, line: 772, column: 9)
!3820 = !DILocation(line: 772, column: 9, scope: !3813)
!3821 = !DILocation(line: 773, column: 58, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 772, column: 16)
!3823 = !DILocation(line: 773, column: 41, scope: !3822)
!3824 = !DILocation(line: 773, column: 63, scope: !3822)
!3825 = !DILocation(line: 773, column: 68, scope: !3822)
!3826 = !DILocation(line: 773, column: 73, scope: !3822)
!3827 = !DILocation(line: 773, column: 82, scope: !3822)
!3828 = !DILocation(line: 773, column: 16, scope: !3822)
!3829 = !DILocation(line: 773, column: 9, scope: !3822)
!3830 = !DILocation(line: 775, column: 49, scope: !3813)
!3831 = !DILocation(line: 775, column: 54, scope: !3813)
!3832 = !DILocation(line: 775, column: 59, scope: !3813)
!3833 = !DILocation(line: 775, column: 64, scope: !3813)
!3834 = !DILocation(line: 775, column: 73, scope: !3813)
!3835 = !DILocation(line: 775, column: 86, scope: !3813)
!3836 = !DILocation(line: 775, column: 12, scope: !3813)
!3837 = !DILocation(line: 775, column: 5, scope: !3813)
!3838 = !DILocation(line: 776, column: 1, scope: !3813)
!3839 = distinct !DISubprogram(name: "LZ4F_compressBlockHC_continue", scope: !3, file: !3, line: 778, type: !1645, isLocal: true, isDefinition: true, scopeLine: 779, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3840 = !DILocation(line: 780, column: 11, scope: !3839)
!3841 = !DILocation(line: 780, column: 24, scope: !3839)
!3842 = !DILocation(line: 781, column: 54, scope: !3839)
!3843 = !DILocation(line: 781, column: 37, scope: !3839)
!3844 = !DILocation(line: 781, column: 59, scope: !3839)
!3845 = !DILocation(line: 781, column: 64, scope: !3839)
!3846 = !DILocation(line: 781, column: 69, scope: !3839)
!3847 = !DILocation(line: 781, column: 78, scope: !3839)
!3848 = !DILocation(line: 781, column: 12, scope: !3839)
!3849 = !DILocation(line: 781, column: 5, scope: !3839)
!3850 = distinct !DISubprogram(name: "LZ4F_readLE64", scope: !3, file: !3, line: 156, type: !3851, isLocal: true, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !14, variables: !276)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!96, !470}
!3853 = !DILocation(line: 158, column: 45, scope: !3850)
!3854 = !DILocation(line: 158, column: 23, scope: !3850)
!3855 = !DILocation(line: 159, column: 19, scope: !3850)
!3856 = !DILocation(line: 159, column: 9, scope: !3850)
!3857 = !DILocation(line: 160, column: 22, scope: !3850)
!3858 = !DILocation(line: 160, column: 17, scope: !3850)
!3859 = !DILocation(line: 160, column: 31, scope: !3850)
!3860 = !DILocation(line: 160, column: 13, scope: !3850)
!3861 = !DILocation(line: 161, column: 22, scope: !3850)
!3862 = !DILocation(line: 161, column: 17, scope: !3850)
!3863 = !DILocation(line: 161, column: 31, scope: !3850)
!3864 = !DILocation(line: 161, column: 13, scope: !3850)
!3865 = !DILocation(line: 162, column: 22, scope: !3850)
!3866 = !DILocation(line: 162, column: 17, scope: !3850)
!3867 = !DILocation(line: 162, column: 31, scope: !3850)
!3868 = !DILocation(line: 162, column: 13, scope: !3850)
!3869 = !DILocation(line: 163, column: 22, scope: !3850)
!3870 = !DILocation(line: 163, column: 17, scope: !3850)
!3871 = !DILocation(line: 163, column: 31, scope: !3850)
!3872 = !DILocation(line: 163, column: 13, scope: !3850)
!3873 = !DILocation(line: 164, column: 22, scope: !3850)
!3874 = !DILocation(line: 164, column: 17, scope: !3850)
!3875 = !DILocation(line: 164, column: 31, scope: !3850)
!3876 = !DILocation(line: 164, column: 13, scope: !3850)
!3877 = !DILocation(line: 165, column: 22, scope: !3850)
!3878 = !DILocation(line: 165, column: 17, scope: !3850)
!3879 = !DILocation(line: 165, column: 31, scope: !3850)
!3880 = !DILocation(line: 165, column: 13, scope: !3850)
!3881 = !DILocation(line: 166, column: 22, scope: !3850)
!3882 = !DILocation(line: 166, column: 17, scope: !3850)
!3883 = !DILocation(line: 166, column: 31, scope: !3850)
!3884 = !DILocation(line: 166, column: 13, scope: !3850)
!3885 = !DILocation(line: 167, column: 12, scope: !3850)
!3886 = !DILocation(line: 167, column: 5, scope: !3850)
!3887 = distinct !DISubprogram(name: "memcpy", scope: !293, file: !293, line: 12, type: !3888, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !292, variables: !276)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!90, !90, !470, !3890}
!3890 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !3891, line: 62, baseType: !13)
!3891 = !DIFile(filename: "/usr/lib/llvm-6.0/lib/clang/6.0.0/include/stddef.h", directory: "/tmp/klee_build60stp_z3/runtime/FreeStanding")
!3892 = !DILocation(line: 13, column: 16, scope: !3887)
!3893 = !DILocation(line: 13, column: 9, scope: !3887)
!3894 = !DILocation(line: 14, column: 21, scope: !3887)
!3895 = !DILocation(line: 14, column: 15, scope: !3887)
!3896 = !DILocation(line: 16, column: 3, scope: !3887)
!3897 = !DILocation(line: 16, column: 13, scope: !3887)
!3898 = !DILocation(line: 16, column: 16, scope: !3887)
!3899 = !DILocation(line: 17, column: 19, scope: !3887)
!3900 = !DILocation(line: 17, column: 15, scope: !3887)
!3901 = !DILocation(line: 17, column: 10, scope: !3887)
!3902 = !DILocation(line: 17, column: 13, scope: !3887)
!3903 = distinct !{!3903, !3896, !3899}
!3904 = !DILocation(line: 18, column: 10, scope: !3887)
!3905 = !DILocation(line: 18, column: 3, scope: !3887)
!3906 = distinct !DISubprogram(name: "memset", scope: !295, file: !295, line: 12, type: !3907, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !294, variables: !276)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!90, !90, !86, !3890}
!3909 = !DILocation(line: 13, column: 13, scope: !3906)
!3910 = !DILocation(line: 13, column: 9, scope: !3906)
!3911 = !DILocation(line: 14, column: 3, scope: !3906)
!3912 = !DILocation(line: 14, column: 15, scope: !3906)
!3913 = !DILocation(line: 14, column: 18, scope: !3906)
!3914 = !DILocation(line: 15, column: 12, scope: !3906)
!3915 = !DILocation(line: 15, column: 7, scope: !3906)
!3916 = !DILocation(line: 15, column: 10, scope: !3906)
!3917 = distinct !{!3917, !3911, !3914}
!3918 = !DILocation(line: 16, column: 10, scope: !3906)
!3919 = !DILocation(line: 16, column: 3, scope: !3906)
!3920 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !297, file: !297, line: 12, type: !3921, isLocal: false, isDefinition: true, scopeLine: 12, flags: DIFlagPrototyped, isOptimized: false, unit: !296, variables: !276)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{null, !3923}
!3923 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!3924 = !DILocation(line: 13, column: 7, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3920, file: !297, line: 13, column: 7)
!3926 = !DILocation(line: 13, column: 9, scope: !3925)
!3927 = !DILocation(line: 13, column: 7, scope: !3920)
!3928 = !DILocation(line: 14, column: 5, scope: !3925)
!3929 = !DILocation(line: 15, column: 1, scope: !3920)
