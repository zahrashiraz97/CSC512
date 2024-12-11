; ModuleID = 'inputs/input.c'
source_filename = "inputs/input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@game_table = internal global [9 x i8] zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [41 x i8] c"***************************************\0A\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [41 x i8] c"*************TIC TAC TOE***************\0A\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [43 x i8] c"***********1. YOU vs COMPUTER ***********\0A\00", align 1, !dbg !15
@.str.3 = private unnamed_addr constant [41 x i8] c"***********2. YOU vs PLAYER ***********\0A\00", align 1, !dbg !20
@.str.4 = private unnamed_addr constant [41 x i8] c"***********3.EXIT *********************\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [21 x i8] c"Enter your choice : \00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [20 x i8] c"THANK YOU and EXIT!\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [15 x i8] c"Next game ? : \00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [28 x i8] c"Enter 1 \E2\80\93 YES and 0 - NO \00", align 1, !dbg !44
@stdin = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"Invalid move, Enter number 1 - 9: \00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [34 x i8] c"Already allocated, Enter number: \00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [4 x i8] c"%c \00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [35 x i8] c"Where would you like to place 'x' \00", align 1, !dbg !69
@.str.15 = private unnamed_addr constant [9 x i8] c"YOU WIN\0A\00", align 1, !dbg !71
@.str.16 = private unnamed_addr constant [10 x i8] c"YOU LOSE\0A\00", align 1, !dbg !76
@.str.17 = private unnamed_addr constant [7 x i8] c"\0ADRAW \00", align 1, !dbg !81
@.str.18 = private unnamed_addr constant [34 x i8] c"\0A Computer placed at %d position\0A\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [47 x i8] c"PLAYER1 - where would you like to place 'x' : \00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [47 x i8] c"PLAYER2 - where would you like to place 'o' : \00", align 1, !dbg !93
@.str.21 = private unnamed_addr constant [14 x i8] c"Player 1 WIN\0A\00", align 1, !dbg !95
@.str.22 = private unnamed_addr constant [14 x i8] c"Player 2 WIN\0A\00", align 1, !dbg !100

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !110 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %5 = call i64 @time(ptr noundef null) #5, !dbg !115
  %6 = trunc i64 %5 to i32, !dbg !116
  call void @srand(i32 noundef %6) #5, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %2, metadata !118, metadata !DIExpression()), !dbg !119
  store i32 0, ptr %2, align 4, !dbg !119
  br label %7, !dbg !120

7:                                                ; preds = %36, %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !121, metadata !DIExpression()), !dbg !123
  store i32 0, ptr %3, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %4, metadata !124, metadata !DIExpression()), !dbg !126
  store i32 0, ptr %4, align 4, !dbg !126
  br label %8, !dbg !127

8:                                                ; preds = %15, %7
  %9 = load i32, ptr %4, align 4, !dbg !128
  %10 = icmp slt i32 %9, 9, !dbg !130
  br i1 %10, label %11, label %18, !dbg !131

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4, !dbg !132
  %13 = sext i32 %12 to i64, !dbg !133
  %14 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %13, !dbg !133
  store i8 42, ptr %14, align 1, !dbg !134
  br label %15, !dbg !133

15:                                               ; preds = %11
  %16 = load i32, ptr %4, align 4, !dbg !135
  %17 = add nsw i32 %16, 1, !dbg !135
  store i32 %17, ptr %4, align 4, !dbg !135
  br label %8, !dbg !136, !llvm.loop !137

18:                                               ; preds = %8
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !140
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1), !dbg !141
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str), !dbg !142
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2), !dbg !143
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.3), !dbg !144
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.4), !dbg !145
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.5), !dbg !146
  %26 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %3), !dbg !147
  %27 = load i32, ptr %3, align 4, !dbg !148
  switch i32 %27, label %30 [
    i32 1, label %28
    i32 2, label %29
  ], !dbg !149

28:                                               ; preds = %18
  call void @singlemode(), !dbg !150
  br label %32, !dbg !152

29:                                               ; preds = %18
  call void @doublemode(), !dbg !153
  br label %32, !dbg !154

30:                                               ; preds = %18
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.7), !dbg !155
  br label %32, !dbg !156

32:                                               ; preds = %30, %29, %28
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.8), !dbg !157
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.9), !dbg !158
  %35 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %2), !dbg !159
  br label %36, !dbg !160

36:                                               ; preds = %32
  %37 = load i32, ptr %2, align 4, !dbg !161
  %38 = icmp eq i32 %37, 1, !dbg !162
  br i1 %38, label %7, label %39, !dbg !160, !llvm.loop !163

39:                                               ; preds = %36
  ret i32 0, !dbg !165
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @printf(ptr noundef, ...) #3

declare i32 @__isoc99_scanf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_placex() #0 !dbg !166 {
  %1 = alloca [50 x i8], align 16
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !167, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata ptr %2, metadata !172, metadata !DIExpression()), !dbg !173
  br label %3, !dbg !174

3:                                                ; preds = %0, %14, %21, %43
  %4 = getelementptr inbounds [50 x i8], ptr %1, i64 0, i64 0, !dbg !175
  %5 = load ptr, ptr @stdin, align 8, !dbg !177
  %6 = call ptr @fgets(ptr noundef %4, i32 noundef 49, ptr noundef %5), !dbg !178
  %7 = getelementptr inbounds [50 x i8], ptr %1, i64 0, i64 0, !dbg !179
  %8 = call i64 @strlen(ptr noundef %7) #6, !dbg !181
  %9 = icmp ugt i64 %8, 2, !dbg !182
  br i1 %9, label %14, label %10, !dbg !183

10:                                               ; preds = %3
  %11 = getelementptr inbounds [50 x i8], ptr %1, i64 0, i64 0, !dbg !184
  %12 = call i64 @strlen(ptr noundef %11) #6, !dbg !185
  %13 = icmp eq i64 %12, 0, !dbg !186
  br i1 %13, label %14, label %17, !dbg !187

14:                                               ; preds = %10, %3
  %15 = load ptr, ptr @stderr, align 8, !dbg !188
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.10), !dbg !190
  br label %3, !dbg !191, !llvm.loop !192

17:                                               ; preds = %10
  %18 = getelementptr inbounds [50 x i8], ptr %1, i64 0, i64 0, !dbg !194
  %19 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %18, ptr noundef @.str.6, ptr noundef %2) #5, !dbg !196
  %20 = icmp ne i32 %19, 1, !dbg !197
  br i1 %20, label %21, label %24, !dbg !198

21:                                               ; preds = %17
  %22 = load ptr, ptr @stderr, align 8, !dbg !199
  %23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.10), !dbg !201
  br label %3, !dbg !202, !llvm.loop !192

24:                                               ; preds = %17
  %25 = load i32, ptr %2, align 4, !dbg !203
  %26 = sub nsw i32 %25, 1, !dbg !205
  %27 = sext i32 %26 to i64, !dbg !206
  %28 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %27, !dbg !206
  %29 = load i8, ptr %28, align 1, !dbg !206
  %30 = sext i8 %29 to i32, !dbg !206
  %31 = icmp eq i32 %30, 120, !dbg !207
  br i1 %31, label %43, label %32, !dbg !208

32:                                               ; preds = %24
  %33 = load i32, ptr %2, align 4, !dbg !209
  %34 = sub nsw i32 %33, 1, !dbg !210
  %35 = sext i32 %34 to i64, !dbg !211
  %36 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %35, !dbg !211
  %37 = load i8, ptr %36, align 1, !dbg !211
  %38 = sext i8 %37 to i32, !dbg !212
  %39 = icmp eq i32 %38, 111, !dbg !213
  br i1 %39, label %43, label %40, !dbg !214

40:                                               ; preds = %32
  %41 = load i32, ptr %2, align 4, !dbg !215
  %42 = icmp eq i32 %41, 0, !dbg !216
  br i1 %42, label %43, label %46, !dbg !217

43:                                               ; preds = %40, %32, %24
  %44 = load ptr, ptr @stderr, align 8, !dbg !218
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.11), !dbg !220
  br label %3, !dbg !221, !llvm.loop !192

46:                                               ; preds = %40
  %47 = load i32, ptr %2, align 4, !dbg !222
  ret i32 %47, !dbg !223
}

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkwin() #0 !dbg !224 {
  %1 = alloca i32, align 4
  %2 = load i8, ptr @game_table, align 1, !dbg !225
  %3 = sext i8 %2 to i32, !dbg !225
  %4 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !227
  %5 = sext i8 %4 to i32, !dbg !227
  %6 = icmp eq i32 %3, %5, !dbg !228
  br i1 %6, label %7, label %40, !dbg !229

7:                                                ; preds = %0
  %8 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !230
  %9 = sext i8 %8 to i32, !dbg !230
  %10 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !231
  %11 = sext i8 %10 to i32, !dbg !231
  %12 = icmp eq i32 %9, %11, !dbg !232
  br i1 %12, label %13, label %40, !dbg !233

13:                                               ; preds = %7
  %14 = load i8, ptr @game_table, align 1, !dbg !234
  %15 = sext i8 %14 to i32, !dbg !234
  %16 = icmp eq i32 %15, 120, !dbg !237
  br i1 %16, label %17, label %26, !dbg !238

17:                                               ; preds = %13
  %18 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !239
  %19 = sext i8 %18 to i32, !dbg !239
  %20 = icmp eq i32 %19, 120, !dbg !240
  br i1 %20, label %21, label %26, !dbg !241

21:                                               ; preds = %17
  %22 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !242
  %23 = sext i8 %22 to i32, !dbg !242
  %24 = icmp eq i32 %23, 120, !dbg !243
  br i1 %24, label %25, label %26, !dbg !244

25:                                               ; preds = %21
  store i32 -1, ptr %1, align 4, !dbg !245
  br label %321, !dbg !245

26:                                               ; preds = %21, %17, %13
  %27 = load i8, ptr @game_table, align 1, !dbg !247
  %28 = sext i8 %27 to i32, !dbg !247
  %29 = icmp eq i32 %28, 111, !dbg !249
  br i1 %29, label %30, label %39, !dbg !250

30:                                               ; preds = %26
  %31 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !251
  %32 = sext i8 %31 to i32, !dbg !251
  %33 = icmp eq i32 %32, 111, !dbg !252
  br i1 %33, label %34, label %39, !dbg !253

34:                                               ; preds = %30
  %35 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !254
  %36 = sext i8 %35 to i32, !dbg !254
  %37 = icmp eq i32 %36, 111, !dbg !255
  br i1 %37, label %38, label %39, !dbg !256

38:                                               ; preds = %34
  store i32 -2, ptr %1, align 4, !dbg !257
  br label %321, !dbg !257

39:                                               ; preds = %34, %30, %26
  br label %320, !dbg !259

40:                                               ; preds = %7, %0
  %41 = load i8, ptr @game_table, align 1, !dbg !260
  %42 = sext i8 %41 to i32, !dbg !260
  %43 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !262
  %44 = sext i8 %43 to i32, !dbg !262
  %45 = icmp eq i32 %42, %44, !dbg !263
  br i1 %45, label %46, label %79, !dbg !264

46:                                               ; preds = %40
  %47 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !265
  %48 = sext i8 %47 to i32, !dbg !265
  %49 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !266
  %50 = sext i8 %49 to i32, !dbg !266
  %51 = icmp eq i32 %48, %50, !dbg !267
  br i1 %51, label %52, label %79, !dbg !268

52:                                               ; preds = %46
  %53 = load i8, ptr @game_table, align 1, !dbg !269
  %54 = sext i8 %53 to i32, !dbg !269
  %55 = icmp eq i32 %54, 120, !dbg !272
  br i1 %55, label %56, label %65, !dbg !273

56:                                               ; preds = %52
  %57 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !274
  %58 = sext i8 %57 to i32, !dbg !274
  %59 = icmp eq i32 %58, 120, !dbg !275
  br i1 %59, label %60, label %65, !dbg !276

60:                                               ; preds = %56
  %61 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !277
  %62 = sext i8 %61 to i32, !dbg !277
  %63 = icmp eq i32 %62, 120, !dbg !278
  br i1 %63, label %64, label %65, !dbg !279

64:                                               ; preds = %60
  store i32 -1, ptr %1, align 4, !dbg !280
  br label %321, !dbg !280

65:                                               ; preds = %60, %56, %52
  %66 = load i8, ptr @game_table, align 1, !dbg !282
  %67 = sext i8 %66 to i32, !dbg !282
  %68 = icmp eq i32 %67, 111, !dbg !284
  br i1 %68, label %69, label %78, !dbg !285

69:                                               ; preds = %65
  %70 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !286
  %71 = sext i8 %70 to i32, !dbg !286
  %72 = icmp eq i32 %71, 111, !dbg !287
  br i1 %72, label %73, label %78, !dbg !288

73:                                               ; preds = %69
  %74 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !289
  %75 = sext i8 %74 to i32, !dbg !289
  %76 = icmp eq i32 %75, 111, !dbg !290
  br i1 %76, label %77, label %78, !dbg !291

77:                                               ; preds = %73
  store i32 -2, ptr %1, align 4, !dbg !292
  br label %321, !dbg !292

78:                                               ; preds = %73, %69, %65
  br label %319, !dbg !294

79:                                               ; preds = %46, %40
  %80 = load i8, ptr @game_table, align 1, !dbg !295
  %81 = sext i8 %80 to i32, !dbg !295
  %82 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !297
  %83 = sext i8 %82 to i32, !dbg !297
  %84 = icmp eq i32 %81, %83, !dbg !298
  br i1 %84, label %85, label %118, !dbg !299

85:                                               ; preds = %79
  %86 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !300
  %87 = sext i8 %86 to i32, !dbg !300
  %88 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !301
  %89 = sext i8 %88 to i32, !dbg !301
  %90 = icmp eq i32 %87, %89, !dbg !302
  br i1 %90, label %91, label %118, !dbg !303

91:                                               ; preds = %85
  %92 = load i8, ptr @game_table, align 1, !dbg !304
  %93 = sext i8 %92 to i32, !dbg !304
  %94 = icmp eq i32 %93, 120, !dbg !307
  br i1 %94, label %95, label %104, !dbg !308

95:                                               ; preds = %91
  %96 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !309
  %97 = sext i8 %96 to i32, !dbg !309
  %98 = icmp eq i32 %97, 120, !dbg !310
  br i1 %98, label %99, label %104, !dbg !311

99:                                               ; preds = %95
  %100 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !312
  %101 = sext i8 %100 to i32, !dbg !312
  %102 = icmp eq i32 %101, 120, !dbg !313
  br i1 %102, label %103, label %104, !dbg !314

103:                                              ; preds = %99
  store i32 -1, ptr %1, align 4, !dbg !315
  br label %321, !dbg !315

104:                                              ; preds = %99, %95, %91
  %105 = load i8, ptr @game_table, align 1, !dbg !317
  %106 = sext i8 %105 to i32, !dbg !317
  %107 = icmp eq i32 %106, 111, !dbg !319
  br i1 %107, label %108, label %117, !dbg !320

108:                                              ; preds = %104
  %109 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !321
  %110 = sext i8 %109 to i32, !dbg !321
  %111 = icmp eq i32 %110, 111, !dbg !322
  br i1 %111, label %112, label %117, !dbg !323

112:                                              ; preds = %108
  %113 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !324
  %114 = sext i8 %113 to i32, !dbg !324
  %115 = icmp eq i32 %114, 111, !dbg !325
  br i1 %115, label %116, label %117, !dbg !326

116:                                              ; preds = %112
  store i32 -2, ptr %1, align 4, !dbg !327
  br label %321, !dbg !327

117:                                              ; preds = %112, %108, %104
  br label %318, !dbg !329

118:                                              ; preds = %85, %79
  %119 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !330
  %120 = sext i8 %119 to i32, !dbg !330
  %121 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !332
  %122 = sext i8 %121 to i32, !dbg !332
  %123 = icmp eq i32 %120, %122, !dbg !333
  br i1 %123, label %124, label %157, !dbg !334

124:                                              ; preds = %118
  %125 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !335
  %126 = sext i8 %125 to i32, !dbg !335
  %127 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !336
  %128 = sext i8 %127 to i32, !dbg !336
  %129 = icmp eq i32 %126, %128, !dbg !337
  br i1 %129, label %130, label %157, !dbg !338

130:                                              ; preds = %124
  %131 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !339
  %132 = sext i8 %131 to i32, !dbg !339
  %133 = icmp eq i32 %132, 120, !dbg !342
  br i1 %133, label %134, label %143, !dbg !343

134:                                              ; preds = %130
  %135 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !344
  %136 = sext i8 %135 to i32, !dbg !344
  %137 = icmp eq i32 %136, 120, !dbg !345
  br i1 %137, label %138, label %143, !dbg !346

138:                                              ; preds = %134
  %139 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !347
  %140 = sext i8 %139 to i32, !dbg !347
  %141 = icmp eq i32 %140, 120, !dbg !348
  br i1 %141, label %142, label %143, !dbg !349

142:                                              ; preds = %138
  store i32 -1, ptr %1, align 4, !dbg !350
  br label %321, !dbg !350

143:                                              ; preds = %138, %134, %130
  %144 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 3), align 1, !dbg !352
  %145 = sext i8 %144 to i32, !dbg !352
  %146 = icmp eq i32 %145, 111, !dbg !354
  br i1 %146, label %147, label %156, !dbg !355

147:                                              ; preds = %143
  %148 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !356
  %149 = sext i8 %148 to i32, !dbg !356
  %150 = icmp eq i32 %149, 111, !dbg !357
  br i1 %150, label %151, label %156, !dbg !358

151:                                              ; preds = %147
  %152 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !359
  %153 = sext i8 %152 to i32, !dbg !359
  %154 = icmp eq i32 %153, 111, !dbg !360
  br i1 %154, label %155, label %156, !dbg !361

155:                                              ; preds = %151
  store i32 -2, ptr %1, align 4, !dbg !362
  br label %321, !dbg !362

156:                                              ; preds = %151, %147, %143
  br label %317, !dbg !364

157:                                              ; preds = %124, %118
  %158 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !365
  %159 = sext i8 %158 to i32, !dbg !365
  %160 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !367
  %161 = sext i8 %160 to i32, !dbg !367
  %162 = icmp eq i32 %159, %161, !dbg !368
  br i1 %162, label %163, label %196, !dbg !369

163:                                              ; preds = %157
  %164 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !370
  %165 = sext i8 %164 to i32, !dbg !370
  %166 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !371
  %167 = sext i8 %166 to i32, !dbg !371
  %168 = icmp eq i32 %165, %167, !dbg !372
  br i1 %168, label %169, label %196, !dbg !373

169:                                              ; preds = %163
  %170 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !374
  %171 = sext i8 %170 to i32, !dbg !374
  %172 = icmp eq i32 %171, 120, !dbg !377
  br i1 %172, label %173, label %182, !dbg !378

173:                                              ; preds = %169
  %174 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !379
  %175 = sext i8 %174 to i32, !dbg !379
  %176 = icmp eq i32 %175, 120, !dbg !380
  br i1 %176, label %177, label %182, !dbg !381

177:                                              ; preds = %173
  %178 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !382
  %179 = sext i8 %178 to i32, !dbg !382
  %180 = icmp eq i32 %179, 120, !dbg !383
  br i1 %180, label %181, label %182, !dbg !384

181:                                              ; preds = %177
  store i32 -1, ptr %1, align 4, !dbg !385
  br label %321, !dbg !385

182:                                              ; preds = %177, %173, %169
  %183 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !387
  %184 = sext i8 %183 to i32, !dbg !387
  %185 = icmp eq i32 %184, 111, !dbg !389
  br i1 %185, label %186, label %195, !dbg !390

186:                                              ; preds = %182
  %187 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !391
  %188 = sext i8 %187 to i32, !dbg !391
  %189 = icmp eq i32 %188, 111, !dbg !392
  br i1 %189, label %190, label %195, !dbg !393

190:                                              ; preds = %186
  %191 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !394
  %192 = sext i8 %191 to i32, !dbg !394
  %193 = icmp eq i32 %192, 111, !dbg !395
  br i1 %193, label %194, label %195, !dbg !396

194:                                              ; preds = %190
  store i32 -2, ptr %1, align 4, !dbg !397
  br label %321, !dbg !397

195:                                              ; preds = %190, %186, %182
  br label %316, !dbg !399

196:                                              ; preds = %163, %157
  %197 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !400
  %198 = sext i8 %197 to i32, !dbg !400
  %199 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !402
  %200 = sext i8 %199 to i32, !dbg !402
  %201 = icmp eq i32 %198, %200, !dbg !403
  br i1 %201, label %202, label %235, !dbg !404

202:                                              ; preds = %196
  %203 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !405
  %204 = sext i8 %203 to i32, !dbg !405
  %205 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !406
  %206 = sext i8 %205 to i32, !dbg !406
  %207 = icmp eq i32 %204, %206, !dbg !407
  br i1 %207, label %208, label %235, !dbg !408

208:                                              ; preds = %202
  %209 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !409
  %210 = sext i8 %209 to i32, !dbg !409
  %211 = icmp eq i32 %210, 120, !dbg !412
  br i1 %211, label %212, label %221, !dbg !413

212:                                              ; preds = %208
  %213 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !414
  %214 = sext i8 %213 to i32, !dbg !414
  %215 = icmp eq i32 %214, 120, !dbg !415
  br i1 %215, label %216, label %221, !dbg !416

216:                                              ; preds = %212
  %217 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !417
  %218 = sext i8 %217 to i32, !dbg !417
  %219 = icmp eq i32 %218, 120, !dbg !418
  br i1 %219, label %220, label %221, !dbg !419

220:                                              ; preds = %216
  store i32 -1, ptr %1, align 4, !dbg !420
  br label %321, !dbg !420

221:                                              ; preds = %216, %212, %208
  %222 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 1), align 1, !dbg !422
  %223 = sext i8 %222 to i32, !dbg !422
  %224 = icmp eq i32 %223, 111, !dbg !424
  br i1 %224, label %225, label %234, !dbg !425

225:                                              ; preds = %221
  %226 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !426
  %227 = sext i8 %226 to i32, !dbg !426
  %228 = icmp eq i32 %227, 111, !dbg !427
  br i1 %228, label %229, label %234, !dbg !428

229:                                              ; preds = %225
  %230 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 7), align 1, !dbg !429
  %231 = sext i8 %230 to i32, !dbg !429
  %232 = icmp eq i32 %231, 111, !dbg !430
  br i1 %232, label %233, label %234, !dbg !431

233:                                              ; preds = %229
  store i32 -2, ptr %1, align 4, !dbg !432
  br label %321, !dbg !432

234:                                              ; preds = %229, %225, %221
  br label %315, !dbg !434

235:                                              ; preds = %202, %196
  %236 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !435
  %237 = sext i8 %236 to i32, !dbg !435
  %238 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !437
  %239 = sext i8 %238 to i32, !dbg !437
  %240 = icmp eq i32 %237, %239, !dbg !438
  br i1 %240, label %241, label %274, !dbg !439

241:                                              ; preds = %235
  %242 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !440
  %243 = sext i8 %242 to i32, !dbg !440
  %244 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !441
  %245 = sext i8 %244 to i32, !dbg !441
  %246 = icmp eq i32 %243, %245, !dbg !442
  br i1 %246, label %247, label %274, !dbg !443

247:                                              ; preds = %241
  %248 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !444
  %249 = sext i8 %248 to i32, !dbg !444
  %250 = icmp eq i32 %249, 120, !dbg !447
  br i1 %250, label %251, label %260, !dbg !448

251:                                              ; preds = %247
  %252 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !449
  %253 = sext i8 %252 to i32, !dbg !449
  %254 = icmp eq i32 %253, 120, !dbg !450
  br i1 %254, label %255, label %260, !dbg !451

255:                                              ; preds = %251
  %256 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !452
  %257 = sext i8 %256 to i32, !dbg !452
  %258 = icmp eq i32 %257, 120, !dbg !453
  br i1 %258, label %259, label %260, !dbg !454

259:                                              ; preds = %255
  store i32 -1, ptr %1, align 4, !dbg !455
  br label %321, !dbg !455

260:                                              ; preds = %255, %251, %247
  %261 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !457
  %262 = sext i8 %261 to i32, !dbg !457
  %263 = icmp eq i32 %262, 111, !dbg !459
  br i1 %263, label %264, label %273, !dbg !460

264:                                              ; preds = %260
  %265 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 5), align 1, !dbg !461
  %266 = sext i8 %265 to i32, !dbg !461
  %267 = icmp eq i32 %266, 111, !dbg !462
  br i1 %267, label %268, label %273, !dbg !463

268:                                              ; preds = %264
  %269 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 8), align 1, !dbg !464
  %270 = sext i8 %269 to i32, !dbg !464
  %271 = icmp eq i32 %270, 111, !dbg !465
  br i1 %271, label %272, label %273, !dbg !466

272:                                              ; preds = %268
  store i32 -2, ptr %1, align 4, !dbg !467
  br label %321, !dbg !467

273:                                              ; preds = %268, %264, %260
  br label %314, !dbg !469

274:                                              ; preds = %241, %235
  %275 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !470
  %276 = sext i8 %275 to i32, !dbg !470
  %277 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !472
  %278 = sext i8 %277 to i32, !dbg !472
  %279 = icmp eq i32 %276, %278, !dbg !473
  br i1 %279, label %280, label %313, !dbg !474

280:                                              ; preds = %274
  %281 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !475
  %282 = sext i8 %281 to i32, !dbg !475
  %283 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !476
  %284 = sext i8 %283 to i32, !dbg !476
  %285 = icmp eq i32 %282, %284, !dbg !477
  br i1 %285, label %286, label %313, !dbg !478

286:                                              ; preds = %280
  %287 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !479
  %288 = sext i8 %287 to i32, !dbg !479
  %289 = icmp eq i32 %288, 120, !dbg !482
  br i1 %289, label %290, label %299, !dbg !483

290:                                              ; preds = %286
  %291 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !484
  %292 = sext i8 %291 to i32, !dbg !484
  %293 = icmp eq i32 %292, 120, !dbg !485
  br i1 %293, label %294, label %299, !dbg !486

294:                                              ; preds = %290
  %295 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !487
  %296 = sext i8 %295 to i32, !dbg !487
  %297 = icmp eq i32 %296, 120, !dbg !488
  br i1 %297, label %298, label %299, !dbg !489

298:                                              ; preds = %294
  store i32 -1, ptr %1, align 4, !dbg !490
  br label %321, !dbg !490

299:                                              ; preds = %294, %290, %286
  %300 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 2), align 1, !dbg !492
  %301 = sext i8 %300 to i32, !dbg !492
  %302 = icmp eq i32 %301, 111, !dbg !494
  br i1 %302, label %303, label %312, !dbg !495

303:                                              ; preds = %299
  %304 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 4), align 1, !dbg !496
  %305 = sext i8 %304 to i32, !dbg !496
  %306 = icmp eq i32 %305, 111, !dbg !497
  br i1 %306, label %307, label %312, !dbg !498

307:                                              ; preds = %303
  %308 = load i8, ptr getelementptr inbounds ([9 x i8], ptr @game_table, i64 0, i64 6), align 1, !dbg !499
  %309 = sext i8 %308 to i32, !dbg !499
  %310 = icmp eq i32 %309, 111, !dbg !500
  br i1 %310, label %311, label %312, !dbg !501

311:                                              ; preds = %307
  store i32 -2, ptr %1, align 4, !dbg !502
  br label %321, !dbg !502

312:                                              ; preds = %307, %303, %299
  br label %313, !dbg !504

313:                                              ; preds = %312, %280, %274
  br label %314

314:                                              ; preds = %313, %273
  br label %315

315:                                              ; preds = %314, %234
  br label %316

316:                                              ; preds = %315, %195
  br label %317

317:                                              ; preds = %316, %156
  br label %318

318:                                              ; preds = %317, %117
  br label %319

319:                                              ; preds = %318, %78
  br label %320

320:                                              ; preds = %319, %39
  store i32 0, ptr %1, align 4, !dbg !505
  br label %321, !dbg !505

321:                                              ; preds = %320, %311, %298, %272, %259, %233, %220, %194, %181, %155, %142, %116, %103, %77, %64, %38, %25
  %322 = load i32, ptr %1, align 4, !dbg !506
  ret i32 %322, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlemode() #0 !dbg !507 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata ptr %2, metadata !512, metadata !DIExpression()), !dbg !513
  store i32 0, ptr %2, align 4, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %3, metadata !514, metadata !DIExpression()), !dbg !515
  store i32 0, ptr %3, align 4, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %4, metadata !516, metadata !DIExpression()), !dbg !518
  store i32 0, ptr %4, align 4, !dbg !518
  br label %10, !dbg !519

10:                                               ; preds = %31, %0
  %11 = load i32, ptr %4, align 4, !dbg !520
  %12 = icmp slt i32 %11, 3, !dbg !522
  br i1 %12, label %13, label %34, !dbg !523

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %5, metadata !524, metadata !DIExpression()), !dbg !527
  store i32 0, ptr %5, align 4, !dbg !527
  br label %14, !dbg !528

14:                                               ; preds = %26, %13
  %15 = load i32, ptr %5, align 4, !dbg !529
  %16 = icmp slt i32 %15, 3, !dbg !531
  br i1 %16, label %17, label %29, !dbg !532

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4, !dbg !533
  %19 = sext i32 %18 to i64, !dbg !535
  %20 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %19, !dbg !535
  %21 = load i8, ptr %20, align 1, !dbg !535
  %22 = sext i8 %21 to i32, !dbg !535
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %22), !dbg !536
  %24 = load i32, ptr %2, align 4, !dbg !537
  %25 = add nsw i32 %24, 1, !dbg !537
  store i32 %25, ptr %2, align 4, !dbg !537
  br label %26, !dbg !538

26:                                               ; preds = %17
  %27 = load i32, ptr %5, align 4, !dbg !539
  %28 = add nsw i32 %27, 1, !dbg !539
  store i32 %28, ptr %5, align 4, !dbg !539
  br label %14, !dbg !540, !llvm.loop !541

29:                                               ; preds = %14
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !543
  br label %31, !dbg !544

31:                                               ; preds = %29
  %32 = load i32, ptr %4, align 4, !dbg !545
  %33 = add nsw i32 %32, 1, !dbg !545
  store i32 %33, ptr %4, align 4, !dbg !545
  br label %10, !dbg !546, !llvm.loop !547

34:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %6, metadata !549, metadata !DIExpression()), !dbg !551
  store i32 1, ptr %6, align 4, !dbg !551
  br label %35, !dbg !552

35:                                               ; preds = %96, %34
  %36 = load i32, ptr %6, align 4, !dbg !553
  %37 = icmp slt i32 %36, 10, !dbg !555
  br i1 %37, label %38, label %99, !dbg !556

38:                                               ; preds = %35
  store i32 0, ptr %2, align 4, !dbg !557
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.14), !dbg !559
  %40 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %1), !dbg !560
  %41 = load i32, ptr %1, align 4, !dbg !561
  call void @placex(i32 noundef %41), !dbg !562
  %42 = load i32, ptr %3, align 4, !dbg !563
  %43 = icmp slt i32 %42, 4, !dbg !565
  br i1 %43, label %44, label %45, !dbg !566

44:                                               ; preds = %38
  call void @place(), !dbg !567
  br label %45, !dbg !569

45:                                               ; preds = %44, %38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !570, metadata !DIExpression()), !dbg !572
  store i32 0, ptr %7, align 4, !dbg !572
  br label %46, !dbg !573

46:                                               ; preds = %67, %45
  %47 = load i32, ptr %7, align 4, !dbg !574
  %48 = icmp slt i32 %47, 3, !dbg !576
  br i1 %48, label %49, label %70, !dbg !577

49:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %8, metadata !578, metadata !DIExpression()), !dbg !581
  store i32 0, ptr %8, align 4, !dbg !581
  br label %50, !dbg !582

50:                                               ; preds = %62, %49
  %51 = load i32, ptr %8, align 4, !dbg !583
  %52 = icmp slt i32 %51, 3, !dbg !585
  br i1 %52, label %53, label %65, !dbg !586

53:                                               ; preds = %50
  %54 = load i32, ptr %2, align 4, !dbg !587
  %55 = sext i32 %54 to i64, !dbg !589
  %56 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %55, !dbg !589
  %57 = load i8, ptr %56, align 1, !dbg !589
  %58 = sext i8 %57 to i32, !dbg !589
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %58), !dbg !590
  %60 = load i32, ptr %2, align 4, !dbg !591
  %61 = add nsw i32 %60, 1, !dbg !591
  store i32 %61, ptr %2, align 4, !dbg !591
  br label %62, !dbg !592

62:                                               ; preds = %53
  %63 = load i32, ptr %8, align 4, !dbg !593
  %64 = add nsw i32 %63, 1, !dbg !593
  store i32 %64, ptr %8, align 4, !dbg !593
  br label %50, !dbg !594, !llvm.loop !595

65:                                               ; preds = %50
  %66 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !597
  br label %67, !dbg !598

67:                                               ; preds = %65
  %68 = load i32, ptr %7, align 4, !dbg !599
  %69 = add nsw i32 %68, 1, !dbg !599
  store i32 %69, ptr %7, align 4, !dbg !599
  br label %46, !dbg !600, !llvm.loop !601

70:                                               ; preds = %46
  %71 = load i32, ptr %3, align 4, !dbg !603
  %72 = add nsw i32 %71, 1, !dbg !603
  store i32 %72, ptr %3, align 4, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %9, metadata !604, metadata !DIExpression()), !dbg !605
  %73 = call i32 @checkwin(), !dbg !606
  store i32 %73, ptr %9, align 4, !dbg !605
  %74 = load i32, ptr %9, align 4, !dbg !607
  %75 = icmp eq i32 %74, -1, !dbg !609
  br i1 %75, label %79, label %76, !dbg !610

76:                                               ; preds = %70
  %77 = load i32, ptr %9, align 4, !dbg !611
  %78 = icmp eq i32 %77, -2, !dbg !612
  br i1 %78, label %79, label %90, !dbg !613

79:                                               ; preds = %76, %70
  %80 = load i32, ptr %9, align 4, !dbg !614
  %81 = icmp eq i32 %80, -1, !dbg !617
  br i1 %81, label %82, label %84, !dbg !618

82:                                               ; preds = %79
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str.15), !dbg !619
  br label %84, !dbg !621

84:                                               ; preds = %82, %79
  %85 = load i32, ptr %9, align 4, !dbg !622
  %86 = icmp eq i32 %85, -2, !dbg !624
  br i1 %86, label %87, label %89, !dbg !625

87:                                               ; preds = %84
  %88 = call i32 (ptr, ...) @printf(ptr noundef @.str.16), !dbg !626
  br label %89, !dbg !628

89:                                               ; preds = %87, %84
  br label %99, !dbg !629

90:                                               ; preds = %76
  %91 = load i32, ptr %3, align 4, !dbg !630
  %92 = icmp eq i32 %91, 4, !dbg !632
  br i1 %92, label %93, label %95, !dbg !633

93:                                               ; preds = %90
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.17), !dbg !634
  br label %99, !dbg !636

95:                                               ; preds = %90
  br label %96, !dbg !637

96:                                               ; preds = %95
  %97 = load i32, ptr %6, align 4, !dbg !638
  %98 = add nsw i32 %97, 1, !dbg !638
  store i32 %98, ptr %6, align 4, !dbg !638
  br label %35, !dbg !639, !llvm.loop !640

99:                                               ; preds = %93, %89, %35
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @placex(i32 noundef %0) #0 !dbg !643 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata ptr %3, metadata !648, metadata !DIExpression()), !dbg !649
  store i32 0, ptr %3, align 4, !dbg !649
  %6 = load i32, ptr %2, align 4, !dbg !650
  %7 = icmp sge i32 %6, 1, !dbg !652
  br i1 %7, label %8, label %36, !dbg !653

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !dbg !654
  %10 = icmp sle i32 %9, 9, !dbg !655
  br i1 %10, label %11, label %36, !dbg !656

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4, !dbg !657
  %13 = sub nsw i32 %12, 1, !dbg !660
  %14 = sext i32 %13 to i64, !dbg !661
  %15 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %14, !dbg !661
  %16 = load i8, ptr %15, align 1, !dbg !661
  %17 = sext i8 %16 to i32, !dbg !661
  %18 = icmp ne i32 %17, 120, !dbg !662
  br i1 %18, label %19, label %32, !dbg !663

19:                                               ; preds = %11
  %20 = load i32, ptr %2, align 4, !dbg !664
  %21 = sub nsw i32 %20, 1, !dbg !665
  %22 = sext i32 %21 to i64, !dbg !666
  %23 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %22, !dbg !666
  %24 = load i8, ptr %23, align 1, !dbg !666
  %25 = sext i8 %24 to i32, !dbg !666
  %26 = icmp ne i32 %25, 111, !dbg !667
  br i1 %26, label %27, label %32, !dbg !668

27:                                               ; preds = %19
  %28 = load i32, ptr %2, align 4, !dbg !669
  %29 = sub nsw i32 %28, 1, !dbg !671
  %30 = sext i32 %29 to i64, !dbg !672
  %31 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %30, !dbg !672
  store i8 120, ptr %31, align 1, !dbg !673
  br label %35, !dbg !674

32:                                               ; preds = %19, %11
  call void @llvm.dbg.declare(metadata ptr %4, metadata !675, metadata !DIExpression()), !dbg !677
  %33 = call i32 @check_placex(), !dbg !678
  store i32 %33, ptr %4, align 4, !dbg !677
  %34 = load i32, ptr %4, align 4, !dbg !679
  call void @placex(i32 noundef %34), !dbg !680
  br label %35

35:                                               ; preds = %32, %27
  br label %39, !dbg !681

36:                                               ; preds = %8, %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !682, metadata !DIExpression()), !dbg !684
  %37 = call i32 @check_placex(), !dbg !685
  store i32 %37, ptr %5, align 4, !dbg !684
  %38 = load i32, ptr %5, align 4, !dbg !686
  call void @placex(i32 noundef %38), !dbg !687
  br label %39

39:                                               ; preds = %36, %35
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @place() #0 !dbg !689 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !691
  %2 = call i32 @rand() #5, !dbg !692
  %3 = srem i32 %2, 9, !dbg !693
  store i32 %3, ptr %1, align 4, !dbg !691
  %4 = load i32, ptr %1, align 4, !dbg !694
  %5 = icmp sge i32 %4, 0, !dbg !696
  br i1 %5, label %6, label %29, !dbg !697

6:                                                ; preds = %0
  %7 = load i32, ptr %1, align 4, !dbg !698
  %8 = sext i32 %7 to i64, !dbg !701
  %9 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %8, !dbg !701
  %10 = load i8, ptr %9, align 1, !dbg !701
  %11 = sext i8 %10 to i32, !dbg !701
  %12 = icmp ne i32 %11, 120, !dbg !702
  br i1 %12, label %13, label %27, !dbg !703

13:                                               ; preds = %6
  %14 = load i32, ptr %1, align 4, !dbg !704
  %15 = sext i32 %14 to i64, !dbg !705
  %16 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %15, !dbg !705
  %17 = load i8, ptr %16, align 1, !dbg !705
  %18 = sext i8 %17 to i32, !dbg !705
  %19 = icmp ne i32 %18, 111, !dbg !706
  br i1 %19, label %20, label %27, !dbg !707

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4, !dbg !708
  %22 = sext i32 %21 to i64, !dbg !710
  %23 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %22, !dbg !710
  store i8 111, ptr %23, align 1, !dbg !711
  %24 = load i32, ptr %1, align 4, !dbg !712
  %25 = add nsw i32 %24, 1, !dbg !713
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i32 noundef %25), !dbg !714
  br label %28, !dbg !715

27:                                               ; preds = %13, %6
  call void @place(), !dbg !716
  br label %28

28:                                               ; preds = %27, %20
  br label %29, !dbg !718

29:                                               ; preds = %28, %0
  ret void, !dbg !719
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doublemode() #0 !dbg !720 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata ptr %2, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata ptr %3, metadata !725, metadata !DIExpression()), !dbg !726
  store i32 0, ptr %3, align 4, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %4, metadata !727, metadata !DIExpression()), !dbg !728
  store i32 0, ptr %4, align 4, !dbg !728
  call void @llvm.dbg.declare(metadata ptr %5, metadata !729, metadata !DIExpression()), !dbg !731
  store i32 0, ptr %5, align 4, !dbg !731
  br label %11, !dbg !732

11:                                               ; preds = %32, %0
  %12 = load i32, ptr %5, align 4, !dbg !733
  %13 = icmp slt i32 %12, 3, !dbg !735
  br i1 %13, label %14, label %35, !dbg !736

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %6, metadata !737, metadata !DIExpression()), !dbg !740
  store i32 0, ptr %6, align 4, !dbg !740
  br label %15, !dbg !741

15:                                               ; preds = %27, %14
  %16 = load i32, ptr %6, align 4, !dbg !742
  %17 = icmp slt i32 %16, 3, !dbg !744
  br i1 %17, label %18, label %30, !dbg !745

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4, !dbg !746
  %20 = sext i32 %19 to i64, !dbg !748
  %21 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %20, !dbg !748
  %22 = load i8, ptr %21, align 1, !dbg !748
  %23 = sext i8 %22 to i32, !dbg !748
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %23), !dbg !749
  %25 = load i32, ptr %3, align 4, !dbg !750
  %26 = add nsw i32 %25, 1, !dbg !750
  store i32 %26, ptr %3, align 4, !dbg !750
  br label %27, !dbg !751

27:                                               ; preds = %18
  %28 = load i32, ptr %6, align 4, !dbg !752
  %29 = add nsw i32 %28, 1, !dbg !752
  store i32 %29, ptr %6, align 4, !dbg !752
  br label %15, !dbg !753, !llvm.loop !754

30:                                               ; preds = %15
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !756
  br label %32, !dbg !757

32:                                               ; preds = %30
  %33 = load i32, ptr %5, align 4, !dbg !758
  %34 = add nsw i32 %33, 1, !dbg !758
  store i32 %34, ptr %5, align 4, !dbg !758
  br label %11, !dbg !759, !llvm.loop !760

35:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !762, metadata !DIExpression()), !dbg !764
  store i32 1, ptr %7, align 4, !dbg !764
  br label %36, !dbg !765

36:                                               ; preds = %100, %35
  %37 = load i32, ptr %7, align 4, !dbg !766
  %38 = icmp slt i32 %37, 10, !dbg !768
  br i1 %38, label %39, label %103, !dbg !769

39:                                               ; preds = %36
  store i32 0, ptr %3, align 4, !dbg !770
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.19), !dbg !772
  %41 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %1), !dbg !773
  %42 = load i32, ptr %1, align 4, !dbg !774
  call void @placex(i32 noundef %42), !dbg !775
  %43 = load i32, ptr %4, align 4, !dbg !776
  %44 = icmp slt i32 %43, 4, !dbg !778
  br i1 %44, label %45, label %49, !dbg !779

45:                                               ; preds = %39
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.20), !dbg !780
  %47 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef @.str.6, ptr noundef %2), !dbg !782
  %48 = load i32, ptr %2, align 4, !dbg !783
  call void @placey(i32 noundef %48), !dbg !784
  br label %49, !dbg !785

49:                                               ; preds = %45, %39
  call void @llvm.dbg.declare(metadata ptr %8, metadata !786, metadata !DIExpression()), !dbg !788
  store i32 0, ptr %8, align 4, !dbg !788
  br label %50, !dbg !789

50:                                               ; preds = %71, %49
  %51 = load i32, ptr %8, align 4, !dbg !790
  %52 = icmp slt i32 %51, 3, !dbg !792
  br i1 %52, label %53, label %74, !dbg !793

53:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %9, metadata !794, metadata !DIExpression()), !dbg !797
  store i32 0, ptr %9, align 4, !dbg !797
  br label %54, !dbg !798

54:                                               ; preds = %66, %53
  %55 = load i32, ptr %9, align 4, !dbg !799
  %56 = icmp slt i32 %55, 3, !dbg !801
  br i1 %56, label %57, label %69, !dbg !802

57:                                               ; preds = %54
  %58 = load i32, ptr %3, align 4, !dbg !803
  %59 = sext i32 %58 to i64, !dbg !805
  %60 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %59, !dbg !805
  %61 = load i8, ptr %60, align 1, !dbg !805
  %62 = sext i8 %61 to i32, !dbg !805
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %62), !dbg !806
  %64 = load i32, ptr %3, align 4, !dbg !807
  %65 = add nsw i32 %64, 1, !dbg !807
  store i32 %65, ptr %3, align 4, !dbg !807
  br label %66, !dbg !808

66:                                               ; preds = %57
  %67 = load i32, ptr %9, align 4, !dbg !809
  %68 = add nsw i32 %67, 1, !dbg !809
  store i32 %68, ptr %9, align 4, !dbg !809
  br label %54, !dbg !810, !llvm.loop !811

69:                                               ; preds = %54
  %70 = call i32 (ptr, ...) @printf(ptr noundef @.str.13), !dbg !813
  br label %71, !dbg !814

71:                                               ; preds = %69
  %72 = load i32, ptr %8, align 4, !dbg !815
  %73 = add nsw i32 %72, 1, !dbg !815
  store i32 %73, ptr %8, align 4, !dbg !815
  br label %50, !dbg !816, !llvm.loop !817

74:                                               ; preds = %50
  %75 = load i32, ptr %4, align 4, !dbg !819
  %76 = add nsw i32 %75, 1, !dbg !819
  store i32 %76, ptr %4, align 4, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %10, metadata !820, metadata !DIExpression()), !dbg !821
  %77 = call i32 @checkwin(), !dbg !822
  store i32 %77, ptr %10, align 4, !dbg !821
  %78 = load i32, ptr %10, align 4, !dbg !823
  %79 = icmp eq i32 %78, -1, !dbg !825
  br i1 %79, label %83, label %80, !dbg !826

80:                                               ; preds = %74
  %81 = load i32, ptr %10, align 4, !dbg !827
  %82 = icmp eq i32 %81, -2, !dbg !828
  br i1 %82, label %83, label %94, !dbg !829

83:                                               ; preds = %80, %74
  %84 = load i32, ptr %10, align 4, !dbg !830
  %85 = icmp eq i32 %84, -1, !dbg !833
  br i1 %85, label %86, label %88, !dbg !834

86:                                               ; preds = %83
  %87 = call i32 (ptr, ...) @printf(ptr noundef @.str.21), !dbg !835
  br label %88, !dbg !837

88:                                               ; preds = %86, %83
  %89 = load i32, ptr %10, align 4, !dbg !838
  %90 = icmp eq i32 %89, -2, !dbg !840
  br i1 %90, label %91, label %93, !dbg !841

91:                                               ; preds = %88
  %92 = call i32 (ptr, ...) @printf(ptr noundef @.str.22), !dbg !842
  br label %93, !dbg !844

93:                                               ; preds = %91, %88
  br label %103, !dbg !845

94:                                               ; preds = %80
  %95 = load i32, ptr %4, align 4, !dbg !846
  %96 = icmp eq i32 %95, 4, !dbg !848
  br i1 %96, label %97, label %99, !dbg !849

97:                                               ; preds = %94
  %98 = call i32 (ptr, ...) @printf(ptr noundef @.str.17), !dbg !850
  br label %103, !dbg !852

99:                                               ; preds = %94
  br label %100, !dbg !853

100:                                              ; preds = %99
  %101 = load i32, ptr %7, align 4, !dbg !854
  %102 = add nsw i32 %101, 1, !dbg !854
  store i32 %102, ptr %7, align 4, !dbg !854
  br label %36, !dbg !855, !llvm.loop !856

103:                                              ; preds = %97, %93, %36
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @placey(i32 noundef %0) #0 !dbg !859 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !860, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.declare(metadata ptr %3, metadata !862, metadata !DIExpression()), !dbg !863
  store i32 0, ptr %3, align 4, !dbg !863
  %6 = load i32, ptr %2, align 4, !dbg !864
  %7 = icmp sge i32 %6, 1, !dbg !866
  br i1 %7, label %8, label %36, !dbg !867

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !dbg !868
  %10 = icmp sle i32 %9, 9, !dbg !869
  br i1 %10, label %11, label %36, !dbg !870

11:                                               ; preds = %8
  %12 = load i32, ptr %2, align 4, !dbg !871
  %13 = sub nsw i32 %12, 1, !dbg !874
  %14 = sext i32 %13 to i64, !dbg !875
  %15 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %14, !dbg !875
  %16 = load i8, ptr %15, align 1, !dbg !875
  %17 = sext i8 %16 to i32, !dbg !875
  %18 = icmp ne i32 %17, 120, !dbg !876
  br i1 %18, label %19, label %32, !dbg !877

19:                                               ; preds = %11
  %20 = load i32, ptr %2, align 4, !dbg !878
  %21 = sub nsw i32 %20, 1, !dbg !879
  %22 = sext i32 %21 to i64, !dbg !880
  %23 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %22, !dbg !880
  %24 = load i8, ptr %23, align 1, !dbg !880
  %25 = sext i8 %24 to i32, !dbg !880
  %26 = icmp ne i32 %25, 111, !dbg !881
  br i1 %26, label %27, label %32, !dbg !882

27:                                               ; preds = %19
  %28 = load i32, ptr %2, align 4, !dbg !883
  %29 = sub nsw i32 %28, 1, !dbg !885
  %30 = sext i32 %29 to i64, !dbg !886
  %31 = getelementptr inbounds [9 x i8], ptr @game_table, i64 0, i64 %30, !dbg !886
  store i8 111, ptr %31, align 1, !dbg !887
  br label %35, !dbg !888

32:                                               ; preds = %19, %11
  call void @llvm.dbg.declare(metadata ptr %4, metadata !889, metadata !DIExpression()), !dbg !891
  %33 = call i32 @check_placex(), !dbg !892
  store i32 %33, ptr %4, align 4, !dbg !891
  %34 = load i32, ptr %4, align 4, !dbg !893
  call void @placex(i32 noundef %34), !dbg !894
  br label %35

35:                                               ; preds = %32, %27
  br label %39, !dbg !895

36:                                               ; preds = %8, %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !896, metadata !DIExpression()), !dbg !898
  %37 = call i32 @check_placex(), !dbg !899
  store i32 %37, ptr %5, align 4, !dbg !898
  %38 = load i32, ptr %5, align 4, !dbg !900
  call void @placex(i32 noundef %38), !dbg !901
  br label %39

39:                                               ; preds = %36, %35
  ret void, !dbg !902
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "game_table", scope: !2, file: !3, line: 30, type: !73, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "inputs/input.c", directory: "/home/zshiraz/CSC512_part1_submission/FirstPart", checksumkind: CSK_MD5, checksum: "28703ff362d7d2a974cc710a5fbe9d10")
!4 = !{!5}
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !13, !15, !20, !22, !24, !29, !34, !39, !44, !49, !54, !0, !59, !64, !69, !71, !76, !81, !86, !88, !93, !95, !100}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !3, line: 49, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 328, elements: !11)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DISubrange(count: 41)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !9, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !17, isLocal: true, isDefinition: true)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 344, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 43)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !3, line: 53, type: !9, isLocal: true, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !9, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 21)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 24, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 20)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 15)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 224, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 28)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 280, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 35)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 237, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 272, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 34)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 4)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 2)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !51, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 72, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 9)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 137, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 80, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 10)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 56, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 7)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !56, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 376, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 47)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !90, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !3, line: 206, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 14)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !3, line: 210, type: !97, isLocal: true, isDefinition: true)
!102 = !{i32 7, !"Dwarf Version", i32 5}
!103 = !{i32 2, !"Debug Info Version", i32 3}
!104 = !{i32 1, !"wchar_size", i32 4}
!105 = !{i32 8, !"PIC Level", i32 2}
!106 = !{i32 7, !"PIE Level", i32 2}
!107 = !{i32 7, !"uwtable", i32 2}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"Ubuntu clang version 17.0.6 (++20231209124227+6009708b4367-1~exp1~20231209124336.77)"}
!110 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 37, type: !111, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!111 = !DISubroutineType(types: !112)
!112 = !{!113}
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{}
!115 = !DILocation(line: 39, column: 26, scope: !110)
!116 = !DILocation(line: 39, column: 12, scope: !110)
!117 = !DILocation(line: 39, column: 5, scope: !110)
!118 = !DILocalVariable(name: "l", scope: !110, file: !3, line: 40, type: !113)
!119 = !DILocation(line: 40, column: 9, scope: !110)
!120 = !DILocation(line: 41, column: 5, scope: !110)
!121 = !DILocalVariable(name: "n", scope: !122, file: !3, line: 43, type: !113)
!122 = distinct !DILexicalBlock(scope: !110, file: !3, line: 42, column: 5)
!123 = !DILocation(line: 43, column: 13, scope: !122)
!124 = !DILocalVariable(name: "i", scope: !125, file: !3, line: 46, type: !113)
!125 = distinct !DILexicalBlock(scope: !122, file: !3, line: 46, column: 9)
!126 = !DILocation(line: 46, column: 18, scope: !125)
!127 = !DILocation(line: 46, column: 14, scope: !125)
!128 = !DILocation(line: 46, column: 25, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !3, line: 46, column: 9)
!130 = !DILocation(line: 46, column: 27, scope: !129)
!131 = !DILocation(line: 46, column: 9, scope: !125)
!132 = !DILocation(line: 46, column: 48, scope: !129)
!133 = !DILocation(line: 46, column: 37, scope: !129)
!134 = !DILocation(line: 46, column: 51, scope: !129)
!135 = !DILocation(line: 46, column: 33, scope: !129)
!136 = !DILocation(line: 46, column: 9, scope: !129)
!137 = distinct !{!137, !131, !138, !139}
!138 = !DILocation(line: 46, column: 53, scope: !125)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !DILocation(line: 49, column: 9, scope: !122)
!141 = !DILocation(line: 50, column: 9, scope: !122)
!142 = !DILocation(line: 51, column: 9, scope: !122)
!143 = !DILocation(line: 52, column: 9, scope: !122)
!144 = !DILocation(line: 53, column: 9, scope: !122)
!145 = !DILocation(line: 54, column: 9, scope: !122)
!146 = !DILocation(line: 55, column: 9, scope: !122)
!147 = !DILocation(line: 56, column: 9, scope: !122)
!148 = !DILocation(line: 58, column: 17, scope: !122)
!149 = !DILocation(line: 58, column: 9, scope: !122)
!150 = !DILocation(line: 62, column: 13, scope: !151)
!151 = distinct !DILexicalBlock(scope: !122, file: !3, line: 60, column: 9)
!152 = !DILocation(line: 63, column: 13, scope: !151)
!153 = !DILocation(line: 65, column: 13, scope: !151)
!154 = !DILocation(line: 66, column: 13, scope: !151)
!155 = !DILocation(line: 68, column: 13, scope: !151)
!156 = !DILocation(line: 69, column: 9, scope: !151)
!157 = !DILocation(line: 71, column: 9, scope: !122)
!158 = !DILocation(line: 72, column: 9, scope: !122)
!159 = !DILocation(line: 73, column: 9, scope: !122)
!160 = !DILocation(line: 75, column: 5, scope: !122)
!161 = !DILocation(line: 75, column: 14, scope: !110)
!162 = !DILocation(line: 75, column: 16, scope: !110)
!163 = distinct !{!163, !120, !164, !139}
!164 = !DILocation(line: 75, column: 20, scope: !110)
!165 = !DILocation(line: 77, column: 5, scope: !110)
!166 = distinct !DISubprogram(name: "check_placex", scope: !3, file: !3, line: 223, type: !111, scopeLine: 223, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !114)
!167 = !DILocalVariable(name: "input", scope: !166, file: !3, line: 224, type: !168)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 400, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 50)
!171 = !DILocation(line: 224, column: 7, scope: !166)
!172 = !DILocalVariable(name: "n1", scope: !166, file: !3, line: 225, type: !113)
!173 = !DILocation(line: 225, column: 6, scope: !166)
!174 = !DILocation(line: 226, column: 2, scope: !166)
!175 = !DILocation(line: 227, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !166, file: !3, line: 226, column: 11)
!177 = !DILocation(line: 227, column: 18, scope: !176)
!178 = !DILocation(line: 227, column: 3, scope: !176)
!179 = !DILocation(line: 228, column: 15, scope: !180)
!180 = distinct !DILexicalBlock(scope: !176, file: !3, line: 228, column: 8)
!181 = !DILocation(line: 228, column: 8, scope: !180)
!182 = !DILocation(line: 228, column: 22, scope: !180)
!183 = !DILocation(line: 228, column: 26, scope: !180)
!184 = !DILocation(line: 228, column: 36, scope: !180)
!185 = !DILocation(line: 228, column: 29, scope: !180)
!186 = !DILocation(line: 228, column: 44, scope: !180)
!187 = !DILocation(line: 228, column: 8, scope: !176)
!188 = !DILocation(line: 229, column: 12, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !3, line: 228, column: 49)
!190 = !DILocation(line: 229, column: 4, scope: !189)
!191 = !DILocation(line: 230, column: 4, scope: !189)
!192 = distinct !{!192, !174, !193}
!193 = !DILocation(line: 241, column: 2, scope: !166)
!194 = !DILocation(line: 232, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !176, file: !3, line: 232, column: 6)
!196 = !DILocation(line: 232, column: 6, scope: !195)
!197 = !DILocation(line: 232, column: 29, scope: !195)
!198 = !DILocation(line: 232, column: 6, scope: !176)
!199 = !DILocation(line: 233, column: 12, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 232, column: 34)
!201 = !DILocation(line: 233, column: 4, scope: !200)
!202 = !DILocation(line: 234, column: 4, scope: !200)
!203 = !DILocation(line: 236, column: 19, scope: !204)
!204 = distinct !DILexicalBlock(scope: !176, file: !3, line: 236, column: 7)
!205 = !DILocation(line: 236, column: 21, scope: !204)
!206 = !DILocation(line: 236, column: 8, scope: !204)
!207 = !DILocation(line: 236, column: 25, scope: !204)
!208 = !DILocation(line: 236, column: 33, scope: !204)
!209 = !DILocation(line: 236, column: 48, scope: !204)
!210 = !DILocation(line: 236, column: 50, scope: !204)
!211 = !DILocation(line: 236, column: 37, scope: !204)
!212 = !DILocation(line: 236, column: 36, scope: !204)
!213 = !DILocation(line: 236, column: 55, scope: !204)
!214 = !DILocation(line: 236, column: 62, scope: !204)
!215 = !DILocation(line: 236, column: 66, scope: !204)
!216 = !DILocation(line: 236, column: 68, scope: !204)
!217 = !DILocation(line: 236, column: 7, scope: !176)
!218 = !DILocation(line: 237, column: 12, scope: !219)
!219 = distinct !DILexicalBlock(scope: !204, file: !3, line: 236, column: 74)
!220 = !DILocation(line: 237, column: 4, scope: !219)
!221 = !DILocation(line: 238, column: 4, scope: !219)
!222 = !DILocation(line: 240, column: 10, scope: !176)
!223 = !DILocation(line: 240, column: 3, scope: !176)
!224 = distinct !DISubprogram(name: "checkwin", scope: !3, file: !3, line: 334, type: !111, scopeLine: 335, spFlags: DISPFlagDefinition, unit: !2)
!225 = !DILocation(line: 336, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !3, line: 336, column: 9)
!227 = !DILocation(line: 336, column: 26, scope: !226)
!228 = !DILocation(line: 336, column: 23, scope: !226)
!229 = !DILocation(line: 336, column: 40, scope: !226)
!230 = !DILocation(line: 336, column: 43, scope: !226)
!231 = !DILocation(line: 336, column: 60, scope: !226)
!232 = !DILocation(line: 336, column: 57, scope: !226)
!233 = !DILocation(line: 336, column: 9, scope: !224)
!234 = !DILocation(line: 338, column: 13, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 338, column: 13)
!236 = distinct !DILexicalBlock(scope: !226, file: !3, line: 337, column: 5)
!237 = !DILocation(line: 338, column: 27, scope: !235)
!238 = !DILocation(line: 338, column: 34, scope: !235)
!239 = !DILocation(line: 338, column: 37, scope: !235)
!240 = !DILocation(line: 338, column: 51, scope: !235)
!241 = !DILocation(line: 338, column: 58, scope: !235)
!242 = !DILocation(line: 339, column: 13, scope: !235)
!243 = !DILocation(line: 339, column: 27, scope: !235)
!244 = !DILocation(line: 338, column: 13, scope: !236)
!245 = !DILocation(line: 341, column: 13, scope: !246)
!246 = distinct !DILexicalBlock(scope: !235, file: !3, line: 340, column: 9)
!247 = !DILocation(line: 344, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !3, line: 344, column: 13)
!249 = !DILocation(line: 344, column: 27, scope: !248)
!250 = !DILocation(line: 344, column: 34, scope: !248)
!251 = !DILocation(line: 344, column: 37, scope: !248)
!252 = !DILocation(line: 344, column: 51, scope: !248)
!253 = !DILocation(line: 344, column: 58, scope: !248)
!254 = !DILocation(line: 345, column: 13, scope: !248)
!255 = !DILocation(line: 345, column: 27, scope: !248)
!256 = !DILocation(line: 344, column: 13, scope: !236)
!257 = !DILocation(line: 347, column: 13, scope: !258)
!258 = distinct !DILexicalBlock(scope: !248, file: !3, line: 346, column: 9)
!259 = !DILocation(line: 349, column: 5, scope: !236)
!260 = !DILocation(line: 350, column: 14, scope: !261)
!261 = distinct !DILexicalBlock(scope: !226, file: !3, line: 350, column: 14)
!262 = !DILocation(line: 350, column: 31, scope: !261)
!263 = !DILocation(line: 350, column: 28, scope: !261)
!264 = !DILocation(line: 350, column: 45, scope: !261)
!265 = !DILocation(line: 350, column: 48, scope: !261)
!266 = !DILocation(line: 350, column: 65, scope: !261)
!267 = !DILocation(line: 350, column: 62, scope: !261)
!268 = !DILocation(line: 350, column: 14, scope: !226)
!269 = !DILocation(line: 352, column: 13, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 352, column: 13)
!271 = distinct !DILexicalBlock(scope: !261, file: !3, line: 351, column: 5)
!272 = !DILocation(line: 352, column: 27, scope: !270)
!273 = !DILocation(line: 352, column: 34, scope: !270)
!274 = !DILocation(line: 352, column: 37, scope: !270)
!275 = !DILocation(line: 352, column: 51, scope: !270)
!276 = !DILocation(line: 352, column: 58, scope: !270)
!277 = !DILocation(line: 353, column: 13, scope: !270)
!278 = !DILocation(line: 353, column: 27, scope: !270)
!279 = !DILocation(line: 352, column: 13, scope: !271)
!280 = !DILocation(line: 355, column: 13, scope: !281)
!281 = distinct !DILexicalBlock(scope: !270, file: !3, line: 354, column: 9)
!282 = !DILocation(line: 358, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !3, line: 358, column: 13)
!284 = !DILocation(line: 358, column: 27, scope: !283)
!285 = !DILocation(line: 358, column: 34, scope: !283)
!286 = !DILocation(line: 358, column: 37, scope: !283)
!287 = !DILocation(line: 358, column: 51, scope: !283)
!288 = !DILocation(line: 358, column: 58, scope: !283)
!289 = !DILocation(line: 359, column: 13, scope: !283)
!290 = !DILocation(line: 359, column: 27, scope: !283)
!291 = !DILocation(line: 358, column: 13, scope: !271)
!292 = !DILocation(line: 361, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !3, line: 360, column: 9)
!294 = !DILocation(line: 363, column: 5, scope: !271)
!295 = !DILocation(line: 364, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !261, file: !3, line: 364, column: 14)
!297 = !DILocation(line: 364, column: 31, scope: !296)
!298 = !DILocation(line: 364, column: 28, scope: !296)
!299 = !DILocation(line: 364, column: 45, scope: !296)
!300 = !DILocation(line: 364, column: 48, scope: !296)
!301 = !DILocation(line: 364, column: 65, scope: !296)
!302 = !DILocation(line: 364, column: 62, scope: !296)
!303 = !DILocation(line: 364, column: 14, scope: !261)
!304 = !DILocation(line: 366, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 366, column: 13)
!306 = distinct !DILexicalBlock(scope: !296, file: !3, line: 365, column: 5)
!307 = !DILocation(line: 366, column: 27, scope: !305)
!308 = !DILocation(line: 366, column: 34, scope: !305)
!309 = !DILocation(line: 366, column: 37, scope: !305)
!310 = !DILocation(line: 366, column: 51, scope: !305)
!311 = !DILocation(line: 366, column: 58, scope: !305)
!312 = !DILocation(line: 367, column: 13, scope: !305)
!313 = !DILocation(line: 367, column: 27, scope: !305)
!314 = !DILocation(line: 366, column: 13, scope: !306)
!315 = !DILocation(line: 369, column: 13, scope: !316)
!316 = distinct !DILexicalBlock(scope: !305, file: !3, line: 368, column: 9)
!317 = !DILocation(line: 372, column: 13, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !3, line: 372, column: 13)
!319 = !DILocation(line: 372, column: 27, scope: !318)
!320 = !DILocation(line: 372, column: 34, scope: !318)
!321 = !DILocation(line: 372, column: 37, scope: !318)
!322 = !DILocation(line: 372, column: 51, scope: !318)
!323 = !DILocation(line: 372, column: 58, scope: !318)
!324 = !DILocation(line: 373, column: 13, scope: !318)
!325 = !DILocation(line: 373, column: 27, scope: !318)
!326 = !DILocation(line: 372, column: 13, scope: !306)
!327 = !DILocation(line: 375, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !3, line: 374, column: 9)
!329 = !DILocation(line: 377, column: 5, scope: !306)
!330 = !DILocation(line: 378, column: 14, scope: !331)
!331 = distinct !DILexicalBlock(scope: !296, file: !3, line: 378, column: 14)
!332 = !DILocation(line: 378, column: 31, scope: !331)
!333 = !DILocation(line: 378, column: 28, scope: !331)
!334 = !DILocation(line: 378, column: 45, scope: !331)
!335 = !DILocation(line: 378, column: 48, scope: !331)
!336 = !DILocation(line: 378, column: 65, scope: !331)
!337 = !DILocation(line: 378, column: 62, scope: !331)
!338 = !DILocation(line: 378, column: 14, scope: !296)
!339 = !DILocation(line: 380, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !341, file: !3, line: 380, column: 13)
!341 = distinct !DILexicalBlock(scope: !331, file: !3, line: 379, column: 5)
!342 = !DILocation(line: 380, column: 27, scope: !340)
!343 = !DILocation(line: 380, column: 34, scope: !340)
!344 = !DILocation(line: 380, column: 37, scope: !340)
!345 = !DILocation(line: 380, column: 51, scope: !340)
!346 = !DILocation(line: 380, column: 58, scope: !340)
!347 = !DILocation(line: 381, column: 13, scope: !340)
!348 = !DILocation(line: 381, column: 27, scope: !340)
!349 = !DILocation(line: 380, column: 13, scope: !341)
!350 = !DILocation(line: 383, column: 13, scope: !351)
!351 = distinct !DILexicalBlock(scope: !340, file: !3, line: 382, column: 9)
!352 = !DILocation(line: 386, column: 13, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !3, line: 386, column: 13)
!354 = !DILocation(line: 386, column: 27, scope: !353)
!355 = !DILocation(line: 386, column: 34, scope: !353)
!356 = !DILocation(line: 386, column: 37, scope: !353)
!357 = !DILocation(line: 386, column: 51, scope: !353)
!358 = !DILocation(line: 386, column: 58, scope: !353)
!359 = !DILocation(line: 387, column: 13, scope: !353)
!360 = !DILocation(line: 387, column: 27, scope: !353)
!361 = !DILocation(line: 386, column: 13, scope: !341)
!362 = !DILocation(line: 389, column: 13, scope: !363)
!363 = distinct !DILexicalBlock(scope: !353, file: !3, line: 388, column: 9)
!364 = !DILocation(line: 391, column: 5, scope: !341)
!365 = !DILocation(line: 392, column: 14, scope: !366)
!366 = distinct !DILexicalBlock(scope: !331, file: !3, line: 392, column: 14)
!367 = !DILocation(line: 392, column: 31, scope: !366)
!368 = !DILocation(line: 392, column: 28, scope: !366)
!369 = !DILocation(line: 392, column: 45, scope: !366)
!370 = !DILocation(line: 392, column: 48, scope: !366)
!371 = !DILocation(line: 392, column: 65, scope: !366)
!372 = !DILocation(line: 392, column: 62, scope: !366)
!373 = !DILocation(line: 392, column: 14, scope: !331)
!374 = !DILocation(line: 394, column: 13, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 394, column: 13)
!376 = distinct !DILexicalBlock(scope: !366, file: !3, line: 393, column: 5)
!377 = !DILocation(line: 394, column: 27, scope: !375)
!378 = !DILocation(line: 394, column: 34, scope: !375)
!379 = !DILocation(line: 394, column: 37, scope: !375)
!380 = !DILocation(line: 394, column: 51, scope: !375)
!381 = !DILocation(line: 394, column: 58, scope: !375)
!382 = !DILocation(line: 395, column: 13, scope: !375)
!383 = !DILocation(line: 395, column: 27, scope: !375)
!384 = !DILocation(line: 394, column: 13, scope: !376)
!385 = !DILocation(line: 397, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !375, file: !3, line: 396, column: 9)
!387 = !DILocation(line: 400, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !376, file: !3, line: 400, column: 13)
!389 = !DILocation(line: 400, column: 27, scope: !388)
!390 = !DILocation(line: 400, column: 34, scope: !388)
!391 = !DILocation(line: 400, column: 37, scope: !388)
!392 = !DILocation(line: 400, column: 51, scope: !388)
!393 = !DILocation(line: 400, column: 58, scope: !388)
!394 = !DILocation(line: 401, column: 13, scope: !388)
!395 = !DILocation(line: 401, column: 27, scope: !388)
!396 = !DILocation(line: 400, column: 13, scope: !376)
!397 = !DILocation(line: 403, column: 13, scope: !398)
!398 = distinct !DILexicalBlock(scope: !388, file: !3, line: 402, column: 9)
!399 = !DILocation(line: 405, column: 5, scope: !376)
!400 = !DILocation(line: 406, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !366, file: !3, line: 406, column: 14)
!402 = !DILocation(line: 406, column: 31, scope: !401)
!403 = !DILocation(line: 406, column: 28, scope: !401)
!404 = !DILocation(line: 406, column: 45, scope: !401)
!405 = !DILocation(line: 406, column: 48, scope: !401)
!406 = !DILocation(line: 406, column: 65, scope: !401)
!407 = !DILocation(line: 406, column: 62, scope: !401)
!408 = !DILocation(line: 406, column: 14, scope: !366)
!409 = !DILocation(line: 408, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 408, column: 13)
!411 = distinct !DILexicalBlock(scope: !401, file: !3, line: 407, column: 5)
!412 = !DILocation(line: 408, column: 27, scope: !410)
!413 = !DILocation(line: 408, column: 34, scope: !410)
!414 = !DILocation(line: 408, column: 37, scope: !410)
!415 = !DILocation(line: 408, column: 51, scope: !410)
!416 = !DILocation(line: 408, column: 58, scope: !410)
!417 = !DILocation(line: 409, column: 13, scope: !410)
!418 = !DILocation(line: 409, column: 27, scope: !410)
!419 = !DILocation(line: 408, column: 13, scope: !411)
!420 = !DILocation(line: 411, column: 13, scope: !421)
!421 = distinct !DILexicalBlock(scope: !410, file: !3, line: 410, column: 9)
!422 = !DILocation(line: 414, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !411, file: !3, line: 414, column: 13)
!424 = !DILocation(line: 414, column: 27, scope: !423)
!425 = !DILocation(line: 414, column: 34, scope: !423)
!426 = !DILocation(line: 414, column: 37, scope: !423)
!427 = !DILocation(line: 414, column: 51, scope: !423)
!428 = !DILocation(line: 414, column: 58, scope: !423)
!429 = !DILocation(line: 415, column: 13, scope: !423)
!430 = !DILocation(line: 415, column: 27, scope: !423)
!431 = !DILocation(line: 414, column: 13, scope: !411)
!432 = !DILocation(line: 417, column: 13, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !3, line: 416, column: 9)
!434 = !DILocation(line: 419, column: 5, scope: !411)
!435 = !DILocation(line: 420, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !401, file: !3, line: 420, column: 14)
!437 = !DILocation(line: 420, column: 31, scope: !436)
!438 = !DILocation(line: 420, column: 28, scope: !436)
!439 = !DILocation(line: 420, column: 45, scope: !436)
!440 = !DILocation(line: 420, column: 48, scope: !436)
!441 = !DILocation(line: 420, column: 65, scope: !436)
!442 = !DILocation(line: 420, column: 62, scope: !436)
!443 = !DILocation(line: 420, column: 14, scope: !401)
!444 = !DILocation(line: 422, column: 13, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 422, column: 13)
!446 = distinct !DILexicalBlock(scope: !436, file: !3, line: 421, column: 5)
!447 = !DILocation(line: 422, column: 27, scope: !445)
!448 = !DILocation(line: 422, column: 34, scope: !445)
!449 = !DILocation(line: 422, column: 37, scope: !445)
!450 = !DILocation(line: 422, column: 51, scope: !445)
!451 = !DILocation(line: 422, column: 58, scope: !445)
!452 = !DILocation(line: 423, column: 13, scope: !445)
!453 = !DILocation(line: 423, column: 27, scope: !445)
!454 = !DILocation(line: 422, column: 13, scope: !446)
!455 = !DILocation(line: 425, column: 13, scope: !456)
!456 = distinct !DILexicalBlock(scope: !445, file: !3, line: 424, column: 9)
!457 = !DILocation(line: 428, column: 13, scope: !458)
!458 = distinct !DILexicalBlock(scope: !446, file: !3, line: 428, column: 13)
!459 = !DILocation(line: 428, column: 27, scope: !458)
!460 = !DILocation(line: 428, column: 34, scope: !458)
!461 = !DILocation(line: 428, column: 37, scope: !458)
!462 = !DILocation(line: 428, column: 51, scope: !458)
!463 = !DILocation(line: 428, column: 58, scope: !458)
!464 = !DILocation(line: 429, column: 13, scope: !458)
!465 = !DILocation(line: 429, column: 27, scope: !458)
!466 = !DILocation(line: 428, column: 13, scope: !446)
!467 = !DILocation(line: 431, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !458, file: !3, line: 430, column: 9)
!469 = !DILocation(line: 433, column: 5, scope: !446)
!470 = !DILocation(line: 434, column: 14, scope: !471)
!471 = distinct !DILexicalBlock(scope: !436, file: !3, line: 434, column: 14)
!472 = !DILocation(line: 434, column: 31, scope: !471)
!473 = !DILocation(line: 434, column: 28, scope: !471)
!474 = !DILocation(line: 434, column: 45, scope: !471)
!475 = !DILocation(line: 434, column: 48, scope: !471)
!476 = !DILocation(line: 434, column: 65, scope: !471)
!477 = !DILocation(line: 434, column: 62, scope: !471)
!478 = !DILocation(line: 434, column: 14, scope: !436)
!479 = !DILocation(line: 436, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 436, column: 13)
!481 = distinct !DILexicalBlock(scope: !471, file: !3, line: 435, column: 5)
!482 = !DILocation(line: 436, column: 27, scope: !480)
!483 = !DILocation(line: 436, column: 34, scope: !480)
!484 = !DILocation(line: 436, column: 37, scope: !480)
!485 = !DILocation(line: 436, column: 51, scope: !480)
!486 = !DILocation(line: 436, column: 58, scope: !480)
!487 = !DILocation(line: 437, column: 13, scope: !480)
!488 = !DILocation(line: 437, column: 27, scope: !480)
!489 = !DILocation(line: 436, column: 13, scope: !481)
!490 = !DILocation(line: 439, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !480, file: !3, line: 438, column: 9)
!492 = !DILocation(line: 442, column: 13, scope: !493)
!493 = distinct !DILexicalBlock(scope: !481, file: !3, line: 442, column: 13)
!494 = !DILocation(line: 442, column: 27, scope: !493)
!495 = !DILocation(line: 442, column: 34, scope: !493)
!496 = !DILocation(line: 442, column: 37, scope: !493)
!497 = !DILocation(line: 442, column: 51, scope: !493)
!498 = !DILocation(line: 442, column: 58, scope: !493)
!499 = !DILocation(line: 443, column: 13, scope: !493)
!500 = !DILocation(line: 443, column: 27, scope: !493)
!501 = !DILocation(line: 442, column: 13, scope: !481)
!502 = !DILocation(line: 445, column: 13, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !3, line: 444, column: 9)
!504 = !DILocation(line: 447, column: 5, scope: !481)
!505 = !DILocation(line: 448, column: 5, scope: !224)
!506 = !DILocation(line: 449, column: 1, scope: !224)
!507 = distinct !DISubprogram(name: "singlemode", scope: !3, file: !3, line: 85, type: !508, scopeLine: 86, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!508 = !DISubroutineType(types: !509)
!509 = !{null}
!510 = !DILocalVariable(name: "m", scope: !507, file: !3, line: 87, type: !113)
!511 = !DILocation(line: 87, column: 9, scope: !507)
!512 = !DILocalVariable(name: "k", scope: !507, file: !3, line: 88, type: !113)
!513 = !DILocation(line: 88, column: 9, scope: !507)
!514 = !DILocalVariable(name: "table_fill_count", scope: !507, file: !3, line: 89, type: !113)
!515 = !DILocation(line: 89, column: 9, scope: !507)
!516 = !DILocalVariable(name: "i", scope: !517, file: !3, line: 91, type: !113)
!517 = distinct !DILexicalBlock(scope: !507, file: !3, line: 91, column: 5)
!518 = !DILocation(line: 91, column: 14, scope: !517)
!519 = !DILocation(line: 91, column: 10, scope: !517)
!520 = !DILocation(line: 91, column: 21, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 91, column: 5)
!522 = !DILocation(line: 91, column: 23, scope: !521)
!523 = !DILocation(line: 91, column: 5, scope: !517)
!524 = !DILocalVariable(name: "j", scope: !525, file: !3, line: 93, type: !113)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 93, column: 9)
!526 = distinct !DILexicalBlock(scope: !521, file: !3, line: 92, column: 5)
!527 = !DILocation(line: 93, column: 18, scope: !525)
!528 = !DILocation(line: 93, column: 14, scope: !525)
!529 = !DILocation(line: 93, column: 25, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !3, line: 93, column: 9)
!531 = !DILocation(line: 93, column: 27, scope: !530)
!532 = !DILocation(line: 93, column: 9, scope: !525)
!533 = !DILocation(line: 95, column: 38, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !3, line: 94, column: 9)
!535 = !DILocation(line: 95, column: 27, scope: !534)
!536 = !DILocation(line: 95, column: 13, scope: !534)
!537 = !DILocation(line: 96, column: 14, scope: !534)
!538 = !DILocation(line: 97, column: 9, scope: !534)
!539 = !DILocation(line: 93, column: 33, scope: !530)
!540 = !DILocation(line: 93, column: 9, scope: !530)
!541 = distinct !{!541, !532, !542, !139}
!542 = !DILocation(line: 97, column: 9, scope: !525)
!543 = !DILocation(line: 99, column: 9, scope: !526)
!544 = !DILocation(line: 100, column: 5, scope: !526)
!545 = !DILocation(line: 91, column: 29, scope: !521)
!546 = !DILocation(line: 91, column: 5, scope: !521)
!547 = distinct !{!547, !523, !548, !139}
!548 = !DILocation(line: 100, column: 5, scope: !517)
!549 = !DILocalVariable(name: "x", scope: !550, file: !3, line: 102, type: !113)
!550 = distinct !DILexicalBlock(scope: !507, file: !3, line: 102, column: 5)
!551 = !DILocation(line: 102, column: 14, scope: !550)
!552 = !DILocation(line: 102, column: 10, scope: !550)
!553 = !DILocation(line: 102, column: 21, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !3, line: 102, column: 5)
!555 = !DILocation(line: 102, column: 23, scope: !554)
!556 = !DILocation(line: 102, column: 5, scope: !550)
!557 = !DILocation(line: 104, column: 11, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 103, column: 5)
!559 = !DILocation(line: 106, column: 9, scope: !558)
!560 = !DILocation(line: 107, column: 9, scope: !558)
!561 = !DILocation(line: 109, column: 16, scope: !558)
!562 = !DILocation(line: 109, column: 9, scope: !558)
!563 = !DILocation(line: 110, column: 12, scope: !564)
!564 = distinct !DILexicalBlock(scope: !558, file: !3, line: 110, column: 12)
!565 = !DILocation(line: 110, column: 28, scope: !564)
!566 = !DILocation(line: 110, column: 12, scope: !558)
!567 = !DILocation(line: 112, column: 11, scope: !568)
!568 = distinct !DILexicalBlock(scope: !564, file: !3, line: 111, column: 9)
!569 = !DILocation(line: 113, column: 9, scope: !568)
!570 = !DILocalVariable(name: "i", scope: !571, file: !3, line: 115, type: !113)
!571 = distinct !DILexicalBlock(scope: !558, file: !3, line: 115, column: 9)
!572 = !DILocation(line: 115, column: 18, scope: !571)
!573 = !DILocation(line: 115, column: 14, scope: !571)
!574 = !DILocation(line: 115, column: 25, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !3, line: 115, column: 9)
!576 = !DILocation(line: 115, column: 27, scope: !575)
!577 = !DILocation(line: 115, column: 9, scope: !571)
!578 = !DILocalVariable(name: "j", scope: !579, file: !3, line: 117, type: !113)
!579 = distinct !DILexicalBlock(scope: !580, file: !3, line: 117, column: 13)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 116, column: 9)
!581 = !DILocation(line: 117, column: 22, scope: !579)
!582 = !DILocation(line: 117, column: 18, scope: !579)
!583 = !DILocation(line: 117, column: 29, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !3, line: 117, column: 13)
!585 = !DILocation(line: 117, column: 31, scope: !584)
!586 = !DILocation(line: 117, column: 13, scope: !579)
!587 = !DILocation(line: 119, column: 42, scope: !588)
!588 = distinct !DILexicalBlock(scope: !584, file: !3, line: 118, column: 13)
!589 = !DILocation(line: 119, column: 31, scope: !588)
!590 = !DILocation(line: 119, column: 17, scope: !588)
!591 = !DILocation(line: 120, column: 18, scope: !588)
!592 = !DILocation(line: 122, column: 13, scope: !588)
!593 = !DILocation(line: 117, column: 37, scope: !584)
!594 = !DILocation(line: 117, column: 13, scope: !584)
!595 = distinct !{!595, !586, !596, !139}
!596 = !DILocation(line: 122, column: 13, scope: !579)
!597 = !DILocation(line: 124, column: 13, scope: !580)
!598 = !DILocation(line: 125, column: 9, scope: !580)
!599 = !DILocation(line: 115, column: 33, scope: !575)
!600 = !DILocation(line: 115, column: 9, scope: !575)
!601 = distinct !{!601, !577, !602, !139}
!602 = !DILocation(line: 125, column: 9, scope: !571)
!603 = !DILocation(line: 126, column: 25, scope: !558)
!604 = !DILocalVariable(name: "o", scope: !558, file: !3, line: 127, type: !113)
!605 = !DILocation(line: 127, column: 13, scope: !558)
!606 = !DILocation(line: 127, column: 17, scope: !558)
!607 = !DILocation(line: 129, column: 13, scope: !608)
!608 = distinct !DILexicalBlock(scope: !558, file: !3, line: 129, column: 13)
!609 = !DILocation(line: 129, column: 15, scope: !608)
!610 = !DILocation(line: 129, column: 21, scope: !608)
!611 = !DILocation(line: 129, column: 24, scope: !608)
!612 = !DILocation(line: 129, column: 26, scope: !608)
!613 = !DILocation(line: 129, column: 13, scope: !558)
!614 = !DILocation(line: 131, column: 17, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 131, column: 17)
!616 = distinct !DILexicalBlock(scope: !608, file: !3, line: 130, column: 9)
!617 = !DILocation(line: 131, column: 19, scope: !615)
!618 = !DILocation(line: 131, column: 17, scope: !616)
!619 = !DILocation(line: 133, column: 17, scope: !620)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 132, column: 13)
!621 = !DILocation(line: 134, column: 13, scope: !620)
!622 = !DILocation(line: 135, column: 17, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !3, line: 135, column: 17)
!624 = !DILocation(line: 135, column: 19, scope: !623)
!625 = !DILocation(line: 135, column: 17, scope: !616)
!626 = !DILocation(line: 137, column: 17, scope: !627)
!627 = distinct !DILexicalBlock(scope: !623, file: !3, line: 136, column: 13)
!628 = !DILocation(line: 138, column: 13, scope: !627)
!629 = !DILocation(line: 140, column: 13, scope: !616)
!630 = !DILocation(line: 143, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !558, file: !3, line: 143, column: 13)
!632 = !DILocation(line: 143, column: 29, scope: !631)
!633 = !DILocation(line: 143, column: 13, scope: !558)
!634 = !DILocation(line: 145, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !631, file: !3, line: 144, column: 9)
!636 = !DILocation(line: 146, column: 13, scope: !635)
!637 = !DILocation(line: 148, column: 5, scope: !558)
!638 = !DILocation(line: 102, column: 30, scope: !554)
!639 = !DILocation(line: 102, column: 5, scope: !554)
!640 = distinct !{!640, !556, !641, !139}
!641 = !DILocation(line: 148, column: 5, scope: !550)
!642 = !DILocation(line: 149, column: 1, scope: !507)
!643 = distinct !DISubprogram(name: "placex", scope: !3, file: !3, line: 255, type: !644, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !113}
!646 = !DILocalVariable(name: "m", arg: 1, scope: !643, file: !3, line: 255, type: !113)
!647 = !DILocation(line: 255, column: 17, scope: !643)
!648 = !DILocalVariable(name: "n1", scope: !643, file: !3, line: 257, type: !113)
!649 = !DILocation(line: 257, column: 9, scope: !643)
!650 = !DILocation(line: 258, column: 9, scope: !651)
!651 = distinct !DILexicalBlock(scope: !643, file: !3, line: 258, column: 9)
!652 = !DILocation(line: 258, column: 11, scope: !651)
!653 = !DILocation(line: 258, column: 16, scope: !651)
!654 = !DILocation(line: 258, column: 19, scope: !651)
!655 = !DILocation(line: 258, column: 21, scope: !651)
!656 = !DILocation(line: 258, column: 9, scope: !643)
!657 = !DILocation(line: 260, column: 24, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 260, column: 13)
!659 = distinct !DILexicalBlock(scope: !651, file: !3, line: 259, column: 5)
!660 = !DILocation(line: 260, column: 26, scope: !658)
!661 = !DILocation(line: 260, column: 13, scope: !658)
!662 = !DILocation(line: 260, column: 31, scope: !658)
!663 = !DILocation(line: 260, column: 38, scope: !658)
!664 = !DILocation(line: 260, column: 52, scope: !658)
!665 = !DILocation(line: 260, column: 54, scope: !658)
!666 = !DILocation(line: 260, column: 41, scope: !658)
!667 = !DILocation(line: 260, column: 59, scope: !658)
!668 = !DILocation(line: 260, column: 13, scope: !659)
!669 = !DILocation(line: 262, column: 24, scope: !670)
!670 = distinct !DILexicalBlock(scope: !658, file: !3, line: 261, column: 9)
!671 = !DILocation(line: 262, column: 26, scope: !670)
!672 = !DILocation(line: 262, column: 13, scope: !670)
!673 = !DILocation(line: 262, column: 31, scope: !670)
!674 = !DILocation(line: 263, column: 9, scope: !670)
!675 = !DILocalVariable(name: "n", scope: !676, file: !3, line: 266, type: !113)
!676 = distinct !DILexicalBlock(scope: !658, file: !3, line: 265, column: 9)
!677 = !DILocation(line: 266, column: 8, scope: !676)
!678 = !DILocation(line: 266, column: 12, scope: !676)
!679 = !DILocation(line: 267, column: 11, scope: !676)
!680 = !DILocation(line: 267, column: 4, scope: !676)
!681 = !DILocation(line: 269, column: 5, scope: !659)
!682 = !DILocalVariable(name: "n", scope: !683, file: !3, line: 272, type: !113)
!683 = distinct !DILexicalBlock(scope: !651, file: !3, line: 271, column: 5)
!684 = !DILocation(line: 272, column: 7, scope: !683)
!685 = !DILocation(line: 272, column: 11, scope: !683)
!686 = !DILocation(line: 273, column: 10, scope: !683)
!687 = !DILocation(line: 273, column: 3, scope: !683)
!688 = !DILocation(line: 275, column: 1, scope: !643)
!689 = distinct !DISubprogram(name: "place", scope: !3, file: !3, line: 281, type: !508, scopeLine: 282, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!690 = !DILocalVariable(name: "e", scope: !689, file: !3, line: 284, type: !113)
!691 = !DILocation(line: 284, column: 9, scope: !689)
!692 = !DILocation(line: 284, column: 13, scope: !689)
!693 = !DILocation(line: 284, column: 20, scope: !689)
!694 = !DILocation(line: 286, column: 9, scope: !695)
!695 = distinct !DILexicalBlock(scope: !689, file: !3, line: 286, column: 9)
!696 = !DILocation(line: 286, column: 11, scope: !695)
!697 = !DILocation(line: 286, column: 9, scope: !689)
!698 = !DILocation(line: 288, column: 24, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 288, column: 13)
!700 = distinct !DILexicalBlock(scope: !695, file: !3, line: 287, column: 5)
!701 = !DILocation(line: 288, column: 13, scope: !699)
!702 = !DILocation(line: 288, column: 27, scope: !699)
!703 = !DILocation(line: 288, column: 34, scope: !699)
!704 = !DILocation(line: 288, column: 48, scope: !699)
!705 = !DILocation(line: 288, column: 37, scope: !699)
!706 = !DILocation(line: 288, column: 51, scope: !699)
!707 = !DILocation(line: 288, column: 13, scope: !700)
!708 = !DILocation(line: 290, column: 24, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !3, line: 289, column: 9)
!710 = !DILocation(line: 290, column: 13, scope: !709)
!711 = !DILocation(line: 290, column: 27, scope: !709)
!712 = !DILocation(line: 291, column: 59, scope: !709)
!713 = !DILocation(line: 291, column: 61, scope: !709)
!714 = !DILocation(line: 291, column: 13, scope: !709)
!715 = !DILocation(line: 292, column: 9, scope: !709)
!716 = !DILocation(line: 295, column: 13, scope: !717)
!717 = distinct !DILexicalBlock(scope: !699, file: !3, line: 294, column: 9)
!718 = !DILocation(line: 297, column: 5, scope: !700)
!719 = !DILocation(line: 298, column: 1, scope: !689)
!720 = distinct !DISubprogram(name: "doublemode", scope: !3, file: !3, line: 156, type: !508, scopeLine: 157, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!721 = !DILocalVariable(name: "m", scope: !720, file: !3, line: 158, type: !113)
!722 = !DILocation(line: 158, column: 9, scope: !720)
!723 = !DILocalVariable(name: "e1", scope: !720, file: !3, line: 159, type: !113)
!724 = !DILocation(line: 159, column: 9, scope: !720)
!725 = !DILocalVariable(name: "k", scope: !720, file: !3, line: 160, type: !113)
!726 = !DILocation(line: 160, column: 9, scope: !720)
!727 = !DILocalVariable(name: "doublemode_table_count", scope: !720, file: !3, line: 161, type: !113)
!728 = !DILocation(line: 161, column: 9, scope: !720)
!729 = !DILocalVariable(name: "i", scope: !730, file: !3, line: 163, type: !113)
!730 = distinct !DILexicalBlock(scope: !720, file: !3, line: 163, column: 5)
!731 = !DILocation(line: 163, column: 14, scope: !730)
!732 = !DILocation(line: 163, column: 10, scope: !730)
!733 = !DILocation(line: 163, column: 21, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !3, line: 163, column: 5)
!735 = !DILocation(line: 163, column: 23, scope: !734)
!736 = !DILocation(line: 163, column: 5, scope: !730)
!737 = !DILocalVariable(name: "j", scope: !738, file: !3, line: 165, type: !113)
!738 = distinct !DILexicalBlock(scope: !739, file: !3, line: 165, column: 9)
!739 = distinct !DILexicalBlock(scope: !734, file: !3, line: 164, column: 5)
!740 = !DILocation(line: 165, column: 18, scope: !738)
!741 = !DILocation(line: 165, column: 14, scope: !738)
!742 = !DILocation(line: 165, column: 25, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 165, column: 9)
!744 = !DILocation(line: 165, column: 27, scope: !743)
!745 = !DILocation(line: 165, column: 9, scope: !738)
!746 = !DILocation(line: 167, column: 38, scope: !747)
!747 = distinct !DILexicalBlock(scope: !743, file: !3, line: 166, column: 9)
!748 = !DILocation(line: 167, column: 27, scope: !747)
!749 = !DILocation(line: 167, column: 13, scope: !747)
!750 = !DILocation(line: 168, column: 14, scope: !747)
!751 = !DILocation(line: 169, column: 9, scope: !747)
!752 = !DILocation(line: 165, column: 33, scope: !743)
!753 = !DILocation(line: 165, column: 9, scope: !743)
!754 = distinct !{!754, !745, !755, !139}
!755 = !DILocation(line: 169, column: 9, scope: !738)
!756 = !DILocation(line: 171, column: 9, scope: !739)
!757 = !DILocation(line: 172, column: 5, scope: !739)
!758 = !DILocation(line: 163, column: 29, scope: !734)
!759 = !DILocation(line: 163, column: 5, scope: !734)
!760 = distinct !{!760, !736, !761, !139}
!761 = !DILocation(line: 172, column: 5, scope: !730)
!762 = !DILocalVariable(name: "x", scope: !763, file: !3, line: 173, type: !113)
!763 = distinct !DILexicalBlock(scope: !720, file: !3, line: 173, column: 5)
!764 = !DILocation(line: 173, column: 14, scope: !763)
!765 = !DILocation(line: 173, column: 10, scope: !763)
!766 = !DILocation(line: 173, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !3, line: 173, column: 5)
!768 = !DILocation(line: 173, column: 23, scope: !767)
!769 = !DILocation(line: 173, column: 5, scope: !763)
!770 = !DILocation(line: 175, column: 11, scope: !771)
!771 = distinct !DILexicalBlock(scope: !767, file: !3, line: 174, column: 5)
!772 = !DILocation(line: 177, column: 9, scope: !771)
!773 = !DILocation(line: 178, column: 9, scope: !771)
!774 = !DILocation(line: 180, column: 16, scope: !771)
!775 = !DILocation(line: 180, column: 9, scope: !771)
!776 = !DILocation(line: 181, column: 12, scope: !777)
!777 = distinct !DILexicalBlock(scope: !771, file: !3, line: 181, column: 12)
!778 = !DILocation(line: 181, column: 34, scope: !777)
!779 = !DILocation(line: 181, column: 12, scope: !771)
!780 = !DILocation(line: 183, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 182, column: 9)
!782 = !DILocation(line: 184, column: 9, scope: !781)
!783 = !DILocation(line: 186, column: 16, scope: !781)
!784 = !DILocation(line: 186, column: 9, scope: !781)
!785 = !DILocation(line: 187, column: 9, scope: !781)
!786 = !DILocalVariable(name: "i", scope: !787, file: !3, line: 189, type: !113)
!787 = distinct !DILexicalBlock(scope: !771, file: !3, line: 189, column: 9)
!788 = !DILocation(line: 189, column: 18, scope: !787)
!789 = !DILocation(line: 189, column: 14, scope: !787)
!790 = !DILocation(line: 189, column: 25, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !3, line: 189, column: 9)
!792 = !DILocation(line: 189, column: 27, scope: !791)
!793 = !DILocation(line: 189, column: 9, scope: !787)
!794 = !DILocalVariable(name: "j", scope: !795, file: !3, line: 191, type: !113)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 191, column: 13)
!796 = distinct !DILexicalBlock(scope: !791, file: !3, line: 190, column: 9)
!797 = !DILocation(line: 191, column: 22, scope: !795)
!798 = !DILocation(line: 191, column: 18, scope: !795)
!799 = !DILocation(line: 191, column: 29, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !3, line: 191, column: 13)
!801 = !DILocation(line: 191, column: 31, scope: !800)
!802 = !DILocation(line: 191, column: 13, scope: !795)
!803 = !DILocation(line: 193, column: 42, scope: !804)
!804 = distinct !DILexicalBlock(scope: !800, file: !3, line: 192, column: 13)
!805 = !DILocation(line: 193, column: 31, scope: !804)
!806 = !DILocation(line: 193, column: 17, scope: !804)
!807 = !DILocation(line: 194, column: 18, scope: !804)
!808 = !DILocation(line: 195, column: 13, scope: !804)
!809 = !DILocation(line: 191, column: 37, scope: !800)
!810 = !DILocation(line: 191, column: 13, scope: !800)
!811 = distinct !{!811, !802, !812, !139}
!812 = !DILocation(line: 195, column: 13, scope: !795)
!813 = !DILocation(line: 197, column: 13, scope: !796)
!814 = !DILocation(line: 198, column: 9, scope: !796)
!815 = !DILocation(line: 189, column: 33, scope: !791)
!816 = !DILocation(line: 189, column: 9, scope: !791)
!817 = distinct !{!817, !793, !818, !139}
!818 = !DILocation(line: 198, column: 9, scope: !787)
!819 = !DILocation(line: 199, column: 31, scope: !771)
!820 = !DILocalVariable(name: "o", scope: !771, file: !3, line: 200, type: !113)
!821 = !DILocation(line: 200, column: 13, scope: !771)
!822 = !DILocation(line: 200, column: 17, scope: !771)
!823 = !DILocation(line: 202, column: 13, scope: !824)
!824 = distinct !DILexicalBlock(scope: !771, file: !3, line: 202, column: 13)
!825 = !DILocation(line: 202, column: 15, scope: !824)
!826 = !DILocation(line: 202, column: 21, scope: !824)
!827 = !DILocation(line: 202, column: 24, scope: !824)
!828 = !DILocation(line: 202, column: 26, scope: !824)
!829 = !DILocation(line: 202, column: 13, scope: !771)
!830 = !DILocation(line: 204, column: 17, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 204, column: 17)
!832 = distinct !DILexicalBlock(scope: !824, file: !3, line: 203, column: 9)
!833 = !DILocation(line: 204, column: 19, scope: !831)
!834 = !DILocation(line: 204, column: 17, scope: !832)
!835 = !DILocation(line: 206, column: 17, scope: !836)
!836 = distinct !DILexicalBlock(scope: !831, file: !3, line: 205, column: 13)
!837 = !DILocation(line: 207, column: 13, scope: !836)
!838 = !DILocation(line: 208, column: 17, scope: !839)
!839 = distinct !DILexicalBlock(scope: !832, file: !3, line: 208, column: 17)
!840 = !DILocation(line: 208, column: 19, scope: !839)
!841 = !DILocation(line: 208, column: 17, scope: !832)
!842 = !DILocation(line: 210, column: 17, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !3, line: 209, column: 13)
!844 = !DILocation(line: 211, column: 13, scope: !843)
!845 = !DILocation(line: 213, column: 13, scope: !832)
!846 = !DILocation(line: 215, column: 13, scope: !847)
!847 = distinct !DILexicalBlock(scope: !771, file: !3, line: 215, column: 13)
!848 = !DILocation(line: 215, column: 35, scope: !847)
!849 = !DILocation(line: 215, column: 13, scope: !771)
!850 = !DILocation(line: 217, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !847, file: !3, line: 216, column: 9)
!852 = !DILocation(line: 218, column: 13, scope: !851)
!853 = !DILocation(line: 220, column: 5, scope: !771)
!854 = !DILocation(line: 173, column: 30, scope: !767)
!855 = !DILocation(line: 173, column: 5, scope: !767)
!856 = distinct !{!856, !769, !857, !139}
!857 = !DILocation(line: 220, column: 5, scope: !763)
!858 = !DILocation(line: 221, column: 1, scope: !720)
!859 = distinct !DISubprogram(name: "placey", scope: !3, file: !3, line: 306, type: !644, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !114)
!860 = !DILocalVariable(name: "e1", arg: 1, scope: !859, file: !3, line: 306, type: !113)
!861 = !DILocation(line: 306, column: 17, scope: !859)
!862 = !DILocalVariable(name: "n1", scope: !859, file: !3, line: 308, type: !113)
!863 = !DILocation(line: 308, column: 9, scope: !859)
!864 = !DILocation(line: 309, column: 9, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !3, line: 309, column: 9)
!866 = !DILocation(line: 309, column: 12, scope: !865)
!867 = !DILocation(line: 309, column: 17, scope: !865)
!868 = !DILocation(line: 309, column: 20, scope: !865)
!869 = !DILocation(line: 309, column: 23, scope: !865)
!870 = !DILocation(line: 309, column: 9, scope: !859)
!871 = !DILocation(line: 311, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 311, column: 13)
!873 = distinct !DILexicalBlock(scope: !865, file: !3, line: 310, column: 5)
!874 = !DILocation(line: 311, column: 27, scope: !872)
!875 = !DILocation(line: 311, column: 13, scope: !872)
!876 = !DILocation(line: 311, column: 32, scope: !872)
!877 = !DILocation(line: 311, column: 39, scope: !872)
!878 = !DILocation(line: 311, column: 53, scope: !872)
!879 = !DILocation(line: 311, column: 56, scope: !872)
!880 = !DILocation(line: 311, column: 42, scope: !872)
!881 = !DILocation(line: 311, column: 61, scope: !872)
!882 = !DILocation(line: 311, column: 13, scope: !873)
!883 = !DILocation(line: 313, column: 24, scope: !884)
!884 = distinct !DILexicalBlock(scope: !872, file: !3, line: 312, column: 9)
!885 = !DILocation(line: 313, column: 27, scope: !884)
!886 = !DILocation(line: 313, column: 13, scope: !884)
!887 = !DILocation(line: 313, column: 32, scope: !884)
!888 = !DILocation(line: 314, column: 9, scope: !884)
!889 = !DILocalVariable(name: "n", scope: !890, file: !3, line: 317, type: !113)
!890 = distinct !DILexicalBlock(scope: !872, file: !3, line: 316, column: 9)
!891 = !DILocation(line: 317, column: 8, scope: !890)
!892 = !DILocation(line: 317, column: 12, scope: !890)
!893 = !DILocation(line: 318, column: 11, scope: !890)
!894 = !DILocation(line: 318, column: 4, scope: !890)
!895 = !DILocation(line: 320, column: 5, scope: !873)
!896 = !DILocalVariable(name: "n", scope: !897, file: !3, line: 323, type: !113)
!897 = distinct !DILexicalBlock(scope: !865, file: !3, line: 322, column: 5)
!898 = !DILocation(line: 323, column: 7, scope: !897)
!899 = !DILocation(line: 323, column: 11, scope: !897)
!900 = !DILocation(line: 324, column: 10, scope: !897)
!901 = !DILocation(line: 324, column: 3, scope: !897)
!902 = !DILocation(line: 326, column: 1, scope: !859)
