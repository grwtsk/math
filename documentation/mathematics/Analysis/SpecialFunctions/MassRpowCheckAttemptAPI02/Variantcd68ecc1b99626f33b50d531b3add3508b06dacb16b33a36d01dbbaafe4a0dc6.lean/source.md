# Complete source: GRWTSK.Analysis.SpecialFunctions.MassRpowCheckAttemptAPI02.Variantcd68ecc1b99626f33b50d531b3add3508b06dacb16b33a36d01dbbaafe4a0dc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f6dfd992f271447e213cce71d70cc8cac7a6e19` · SHA-256 `66394403b01b8b2df38d414ad2db4ead541056becdd2beab92835dcc7c7b3b22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.Gamma.Variant866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.Gamma.Variant866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/primitive_envelope/MassRpowCheck-attemptAPI02.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic

namespace GRWTSK.Analysis.SpecialFunctions.Gamma.Variant866c44a8cf52c1a1ad14bafb4e960ff3a97a87fe44fd5b5d60cf126377336ab1

set_option autoImplicit false
open MeasureTheory Set
noncomputable section
example (n : ℕ) :
    (∫ y : ℝ in Ioi 0,y^n*Real.exp (-y/2))=(2:ℝ)^(n+1)*(n.factorial:ℝ) := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a:=(n:ℝ)+1) (r:=(1/2:ℝ)) (by positivity) (by norm_num)
  simp only [add_sub_cancel_right] at h
  simp_rw [Real.rpow_natCast (n:=n)] at h
  trace_state
  sorry
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eabee20ed6fa5e8f1fd7a79fbac59a46c5131eb0cc6b65b67da4d30603f9aa54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/MassRpowCheckAttemptAPI02/Variantcd68ecc1b99626f33b50d531b3add3508b06dacb16b33a36d01dbbaafe4a0dc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
