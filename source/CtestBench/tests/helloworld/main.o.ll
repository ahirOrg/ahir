; ModuleID = 'main.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32"
target triple = "i386-pc-linux-gnu"

@.str = private constant [7 x i8] c"inpipe\00"
@.str1 = private constant [8 x i8] c"midpipe\00"
@.str2 = private constant [8 x i8] c"outpipe\00"

define i32 @foo(i32 %a) nounwind {
  %1 = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  %2 = call i32 @read_uint32(i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0))
  store i32 %2, i32* %b, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %b, align 4
  %5 = add nsw i32 %3, %4
  call void @write_uint32(i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0), i32 %5)
  %6 = load i32* %1, align 4
  ret i32 %6
}

declare i32 @read_uint32(i8*)

declare void @write_uint32(i8*, i32)

define i32 @bar(i32 %a) nounwind {
  %1 = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %a, i32* %1, align 4
  %2 = call i32 @read_uint32(i8* getelementptr inbounds ([8 x i8]* @.str1, i32 0, i32 0))
  store i32 %2, i32* %b, align 4
  %3 = load i32* %1, align 4
  %4 = load i32* %b, align 4
  %5 = add nsw i32 %3, %4
  call void @write_uint32(i8* getelementptr inbounds ([8 x i8]* @.str2, i32 0, i32 0), i32 %5)
  %6 = load i32* %1, align 4
  ret i32 %6
}
