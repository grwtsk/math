# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.SourceActualPntTailConvolutionAuditV3.Variant61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83b487709ed3d95f04622db1a679406a9cfcca42` · SHA-256 `61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPntTailConvolution
open FormalResearch.RiemannHypothesis
#check RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#print axioms RH16ActualPntTailConvolution.actualRelativePsiTimeError_total_eq_neg_gamma_sub_one
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_eq_neg_tail
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_abs_le
#check RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#print axioms RH16ActualPntTailConvolution.actualMangoldtErrorConvolution_one_pnt_majorant
#check SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#print axioms SourceActualMertensPntRate.actualCenteredMangoldtLogError_eq_delta_sub_tail
#check SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#print axioms SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_eq_one_convolution
#check SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#print axioms SourceActualPsiPntTimeDecay.actualRelativePsiTimeError_isBigO
#check SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print axioms SourceActualMertensGammaCalibration.actualPntMertensLimit_eq_neg_gamma
#print SourceActualXiErrorConvolution.actualCenteredMangoldtLogError
#print SourceActualXiErrorConvolution.actualMangoldtErrorConvolution
#print SourceActualPsiPntTimeDecay.actualRelativePsiTimeError
#print SourceMangoldtAbel.mangoldtLogError
#print SourceMangoldtAbel.mangoldtLogPrefix
#print WeightedPrimeMertens.weightedMangoldt
#print Chebyshev.psi
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=83baf612ae41d69b254dc3a573955df589a262c6c07300318721613d023d5298 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/SourceActualPntTailConvolutionAuditV3/Variant61def8c6e627d239064aa81181634ed344bb5f46375f24c8b4c987e5e0e89330.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
