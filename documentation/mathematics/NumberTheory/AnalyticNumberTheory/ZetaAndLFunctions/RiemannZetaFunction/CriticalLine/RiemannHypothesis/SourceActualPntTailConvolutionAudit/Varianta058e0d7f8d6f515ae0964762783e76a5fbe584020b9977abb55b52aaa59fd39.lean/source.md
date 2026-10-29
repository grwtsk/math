# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPntTailConvolutionAudit.Varianta058e0d7f8d6f515ae0964762783e76a5fbe584020b9977abb55b52aaa59fd39

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b559da9d7b0ac0efc3548840e59c754e4375a6b0` · SHA-256 `a058e0d7f8d6f515ae0964762783e76a5fbe584020b9977abb55b52aaa59fd39`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPntTailConvolution
#check RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#print axioms RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#check FormalResearch.RiemannHypothesis.SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#print axioms FormalResearch.RiemannHypothesis.SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#check FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#check FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#print axioms FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#check FormalResearch.RiemannHypothesis.SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print axioms FormalResearch.RiemannHypothesis.SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution.actualCenteredMangoldtLogError
#print FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution.actualMangoldtErrorConvolution
#print FormalResearch.RiemannHypothesis.SourceActualPsiPntTimeDecay.actualRelativePsiTimeError
#print FormalResearch.RiemannHypothesis.SourceMangoldtAbel.mangoldtLogError
#print FormalResearch.RiemannHypothesis.SourceMangoldtAbel.mangoldtLogPrefix
#print FormalResearch.RiemannHypothesis.WeightedPrimeMertens.weightedMangoldt
#print Chebyshev.psi
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66f4ce10425a991eae188748435f866b4d02118e10a90a239a2638ee25829d57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPntTailConvolutionAudit/Varianta058e0d7f8d6f515ae0964762783e76a5fbe584020b9977abb55b52aaa59fd39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
