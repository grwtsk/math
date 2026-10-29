# Source Actual Sharp Zero Tail Review — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d34698ac619280d8f7299cc106fc97632a5c1fa2` · SHA-256 `ad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualSharpZeroTail
#check RH16ActualSharpZeroTail.pole_norm_joint_strip_le
#print axioms RH16ActualSharpZeroTail.pole_norm_joint_strip_le
#check RH16ActualSharpZeroTail.actual_bump_complete_endpoint_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_complete_endpoint_norm_le
#check RH16ActualSharpZeroTail.endpointScale
#print axioms RH16ActualSharpZeroTail.endpointScale
#check RH16ActualSharpZeroTail.endpointScale_pos
#print axioms RH16ActualSharpZeroTail.endpointScale_pos
#check RH16ActualSharpZeroTail.endpointScale_antitone
#print axioms RH16ActualSharpZeroTail.endpointScale_antitone
#check RH16ActualSharpZeroTail.actual_bump_endpoint_scale_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_endpoint_scale_norm_le
#check RH16ActualSharpZeroTail.exp_pair_le_of_abs_le
#print axioms RH16ActualSharpZeroTail.exp_pair_le_of_abs_le
#check RH16ActualSharpZeroTail.endpointScale_three_sixty_four_lt
#print axioms RH16ActualSharpZeroTail.endpointScale_three_sixty_four_lt
#check RH16ActualSharpZeroTail.actual_bump_strip_high_norm_le
#print axioms RH16ActualSharpZeroTail.actual_bump_strip_high_norm_le
#check RH16ActualSharpZeroTail.exp_neg_large_le
#print axioms RH16ActualSharpZeroTail.exp_neg_large_le
#check RH16ActualSharpZeroTail.actualInitialPrimeMellin_sharp_strip_norm_le
#print axioms RH16ActualSharpZeroTail.actualInitialPrimeMellin_sharp_strip_norm_le
#check RH16ActualSharpZeroTail.actualZeroHeightTail_sharp_norm_bound
#print axioms RH16ActualSharpZeroTail.actualZeroHeightTail_sharp_norm_bound
open FormalResearch.RiemannHypothesis
open SourceActualPrimeBumpDictionary SourceActualZeroTailCount
open SourceActualZeroTailBudget SourceActualInitialPrimeContour
open SourceActualBumpMellinLineBudget
#check actualInitialPrimeMellin_eq_bumpMellinWeight
#print axioms actualInitialPrimeMellin_eq_bumpMellinWeight
#check actualZeroSixTail_count_bound
#print axioms actualZeroSixTail_count_bound
#print actualZeroHeightTail
#print actualZeroSixTail
#print actualInitialPrimeMellin
#print bumpMellinWeight
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b5ac7522b5ec0584ea1505aa5dec82e7a7f967d57b91f439783b4eccf72d4f47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSharpZeroTailReview/Variantad3d4b5ee8485af917efe2ab5d37b1053fa1ce776d89ad5f9fa136137381f5cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
