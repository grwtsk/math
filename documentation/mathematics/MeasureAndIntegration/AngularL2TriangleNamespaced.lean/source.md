# Angular L2 Triangle Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `326441d24d3292cb975b817d941d333b742d9d0d` · SHA-256 `dc37a0cdd8574109cadd06f73b896781b4ebd849f7ae42ccbc4592d2b8b9d209`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SqrtNormalizedIntegralEqNorm.Variant2463c69803d5304c0ee33904a8e92cf66a7f0e8435871c429292b653c358e529","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2463c69803d5304c0ee33904a8e92cf66a7f0e8435871c429292b653c358e529","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SqrtNormalizedIntegralEqNorm.Variant2463c69803d5304c0ee33904a8e92cf66a7f0e8435871c429292b653c358e529","mathematical_subject":"Analysis.Integration","original_sha256":"2463c69803d5304c0ee33904a8e92cf66a7f0e8435871c429292b653c358e529","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/controller-realization/AngularL2Triangle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel

/-! The angularly normalized triangle inequality for genuine full-line L2 functions. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.SqrtNormalizedIntegralEqNorm.Variant2463c69803d5304c0ee33904a8e92cf66a7f0e8435871c429292b653c358e529

set_option autoImplicit false
namespace AngularL2TriangleScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourceComparison.FullLinePlancherel
noncomputable section

/-- The angular square-integral norm equals the scaled norm of the admitted full-line vector. -/
theorem sqrt_normalized_integral_eq_norm (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ := by
  rw [← norm_sq_toLp f hf, Real.sqrt_mul (by positivity), Real.sqrt_sq (norm_nonneg _)]

/-- Minkowski's inequality retains the complete angular square integrals of both summands. -/
theorem sqrt_normalized_integral_add_le (f g : ℝ → ℂ)
    (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) := by
  have hs := sqrt_normalized_integral_eq_norm (f + g) (hf.add hg)
  simp only [Pi.add_apply] at hs
  rw [hs,
    sqrt_normalized_integral_eq_norm f hf, sqrt_normalized_integral_eq_norm g hg]
  rw [MemLp.toLp_add hf hg]
  calc
    Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f + hg.toLp g‖ ≤
        Real.sqrt (1 / (2 * Real.pi)) * (‖hf.toLp f‖ + ‖hg.toLp g‖) :=
      mul_le_mul_of_nonneg_left (norm_add_le _ _) (Real.sqrt_nonneg _)
    _ = _ := mul_add _ _ _

end
end AngularL2TriangleScratch
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32186b8a98e8b1ae7cb195db432c7345b33a1892c83365742d24c354542ca71e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AngularL2Triangle/Variantf7fd110d0cc6f5a94662c1954ca64e61497dbf2594d0506e943b60a31a3f7b72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
