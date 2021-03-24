; ModuleID = 'pytorch'
source_filename = "pytorch"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6k-unknown-linux-gnueabihf"

; Function Attrs: nofree norecurse nounwind
define i32 @linear_wrapper(i8** nocapture readonly) local_unnamed_addr #0 {
wrapBB:
  %1 = bitcast i8** %0 to float**
  %2 = load float*, float** %1, align 4
  %3 = getelementptr i8*, i8** %0, i32 1
  %4 = bitcast i8** %3 to float**
  %5 = load float*, float** %4, align 4
  %6 = getelementptr i8*, i8** %0, i32 2
  %7 = bitcast i8** %6 to float**
  %8 = load float*, float** %7, align 4
  %9 = load float, float* %2, align 4, !alias.scope !0, !noalias !3
  %10 = load float, float* %8, align 4, !alias.scope !6, !noalias !7
  %11 = fadd float %9, %10
  store float %11, float* %5, align 4, !alias.scope !8, !noalias !9
  %12 = getelementptr float, float* %2, i32 5
  %13 = load float, float* %12, align 4, !alias.scope !0, !noalias !3
  %14 = getelementptr float, float* %8, i32 5
  %15 = load float, float* %14, align 4, !alias.scope !6, !noalias !7
  %16 = fadd float %13, %15
  %17 = getelementptr float, float* %5, i32 5
  store float %16, float* %17, align 4, !alias.scope !8, !noalias !9
  %18 = getelementptr float, float* %2, i32 10
  %19 = load float, float* %18, align 4, !alias.scope !0, !noalias !3
  %20 = getelementptr float, float* %8, i32 10
  %21 = load float, float* %20, align 4, !alias.scope !6, !noalias !7
  %22 = fadd float %19, %21
  %23 = getelementptr float, float* %5, i32 10
  store float %22, float* %23, align 4, !alias.scope !8, !noalias !9
  %24 = getelementptr float, float* %2, i32 15
  %25 = load float, float* %24, align 4, !alias.scope !0, !noalias !3
  %26 = getelementptr float, float* %8, i32 15
  %27 = load float, float* %26, align 4, !alias.scope !6, !noalias !7
  %28 = fadd float %25, %27
  %29 = getelementptr float, float* %5, i32 15
  store float %28, float* %29, align 4, !alias.scope !8, !noalias !9
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind }

!0 = !{!1}
!1 = distinct !{!1, !2, !"pytorch: argument 0"}
!2 = distinct !{!2, !"pytorch"}
!3 = !{!4, !5}
!4 = distinct !{!4, !2, !"pytorch: argument 1"}
!5 = distinct !{!5, !2, !"pytorch: argument 2"}
!6 = !{!5}
!7 = !{!1, !4}
!8 = !{!4}
!9 = !{!1, !5}