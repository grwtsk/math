# Exp Remainder Probe Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65192c9513e7445abc367751f23cb3b860db4974` · SHA-256 `501baa24597ac6480cb9c11435e81458decb6aefc1a01a01670e7e3db9b822dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/damped-divisor-core/ExpRemainderProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.ExpDeriv
import Mathlib.Tactic

namespace GRWTSK.Analysis.ExpNegativeRemainder.Variant9a8af6ed53ee9ea891961e5ede2641eff5d81c8d2b504accd0426a701a5464e6

set_option autoImplicit false
private theorem exp_negative_remainder (u : ℝ) (hu : 0 ≤ u) :
    |Real.exp (-u) - 1 + u| ≤ u ^ 2 := by
  have hnon : 0 ≤ Real.exp (-u) - 1 + u := by
    linarith [Real.add_one_le_exp (-u)]
  rw [abs_of_nonneg hnon]
  have hpos : 0 < 1 + u := by positivity
  have he : Real.exp (-u) ≤ 1 / (1 + u) := by
    rw [Real.exp_neg, ← one_div]
    exact one_div_le_one_div_of_le hpos (by linarith [Real.add_one_le_exp u])
  have hr : 1 / (1 + u) ≤ 1 - u + u ^ 2 := by
    apply (div_le_iff₀ hpos).mpr
    nlinarith [pow_nonneg hu 3]
  linarith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=789a6368bdb5fcc9b11d3346f5662ec0cd0acc39ece46599cff427318015e147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ExpRemainderProbe/Variant268850cc5c2fb0e8370fe02a18cd46c6868c1d4362c82755b5b48ade83d138b9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
