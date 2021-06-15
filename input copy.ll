@.str.46 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1
define void @platform_main_end(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i64 0, i64 0), i32 %5)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2