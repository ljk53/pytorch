; ModuleID = 'pytorch'
source_filename = "pytorch"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

; Function Attrs: nofree norecurse nounwind
define i32 @linear_wrapper(i8** nocapture readonly) local_unnamed_addr #0 {
wrapBB:
  %1 = bitcast i8** %0 to float**
  %2 = load float*, float** %1, align 8
  %3 = getelementptr i8*, i8** %0, i64 1
  %4 = bitcast i8** %3 to float**
  %5 = load float*, float** %4, align 8
  %6 = getelementptr i8*, i8** %0, i64 2
  %7 = bitcast i8** %6 to float**
  %8 = load float*, float** %7, align 8
  %9 = bitcast float* %2 to <8 x float>*
  %10 = load <8 x float>, <8 x float>* %9, align 4, !alias.scope !0, !noalias !3
  %11 = bitcast float* %8 to <8 x float>*
  %12 = load <8 x float>, <8 x float>* %11, align 4, !alias.scope !6, !noalias !7
  %13 = fadd <8 x float> %10, %12
  %14 = bitcast float* %5 to <8 x float>*
  store <8 x float> %13, <8 x float>* %14, align 4, !alias.scope !8, !noalias !9
  %15 = getelementptr float, float* %2, i64 8
  %16 = getelementptr float, float* %8, i64 8
  %17 = getelementptr float, float* %5, i64 8
  %18 = bitcast float* %15 to <8 x float>*
  %19 = load <8 x float>, <8 x float>* %18, align 4, !alias.scope !0, !noalias !3
  %20 = bitcast float* %16 to <8 x float>*
  %21 = load <8 x float>, <8 x float>* %20, align 4, !alias.scope !6, !noalias !7
  %22 = fadd <8 x float> %19, %21
  %23 = bitcast float* %17 to <8 x float>*
  store <8 x float> %22, <8 x float>* %23, align 4, !alias.scope !8, !noalias !9
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
