# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Experiments.Variant84dc7bc75f72f5e23c8a19e593b3dd2d52cd7a2789db12d95af0dc221f01c926

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6e750791b89c3b99e4073013541a949407b47d5` · SHA-256 `677f3ae0a0fe9ef226af9f886122f8cc8baf1dd615276743623f08d138409312`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Realization.Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Realization.Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac","mathematical_subject":"Analysis.Integration","original_sha256":"07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/bridge-normalization/Experiments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SUCAS.Realization
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

namespace GRWTSK.Analysis.RealAnalysis.Integration.Realization.Variant07d86c47ecdff216ea22f82fe2430ff11fa2af6ec63dae7b892b6689a8fc0dac

open MeasureTheory Set
open FormalResearch.SUCAS.Realization
open FormalResearch.RiemannHypothesis.SourcePairing

example : (∫ x : ℝ in (-1)..1, ((1 - x ^ 2) ^ 4) ^ 2) = (65536 / 109395 : ℝ) := by
  have expand : (fun x : ℝ ↦ ((1 - x ^ 2) ^ 4) ^ 2) =
      (fun x ↦ 1 - 8*x^2 + 28*x^4 - 56*x^6 + 70*x^8 - 56*x^10 + 28*x^12 - 8*x^14 + x^16) := by
    funext x; ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
    intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a47cc92cff62b417a847cc4559b6a7e4dff441476ef4717a4a68c1b0806cc557 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Experiments/Variant84dc7bc75f72f5e23c8a19e593b3dd2d52cd7a2789db12d95af0dc221f01c926.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
