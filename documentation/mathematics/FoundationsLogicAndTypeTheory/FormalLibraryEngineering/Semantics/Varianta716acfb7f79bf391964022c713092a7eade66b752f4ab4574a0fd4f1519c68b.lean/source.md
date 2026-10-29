# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Semantics.Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9649e92f66363caedc3c95f6ce50037cd1fd838` · SHA-256 `d81584cc987438dbbeeef85b081f9fb38ba721b7c4ba963fc8cc3404ad5d9751`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CubicIntegralWitness.Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CubicIntegralWitness.Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"d787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Polynomial/Semantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.Interval

/-!
# Certified cubic interval values

The coefficients and interval endpoints are type indices.  A witness stores
only the proposed value and the proof that it is the genuine interval
integral; no second cubic carrier or mutable correctness flag is introduced.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CubicIntegralWitness.Variantd787d7254364c2a3f2df17001225d1359686a5b361900a81ea1f747bd84d14c4

namespace Mathematics.Polynomial

open scoped Interval

/--
One proof-bearing value of the interval integral of a canonical real cubic.
The six real parameters are indices, so a witness cannot be rebound to another
cubic or interval.
-/
structure CubicIntegralWitness
    (a b c d lower upper : ℝ) : Type where
  value : ℝ
  value_eq_integral :
    value = ∫ x in lower..upper, (cubic a b c d).eval x

/-- The witness's defining equality, exposed as the source-facing theorem. -/
theorem CubicIntegralWitness.correct
    {a b c d lower upper : ℝ}
    (witness : CubicIntegralWitness a b c d lower upper) :
    witness.value = ∫ x in lower..upper, (cubic a b c d).eval x :=
  witness.value_eq_integral

/--
The source corpus's endpoint-difference expression is recovered from the
genuine integral by the fundamental theorem of calculus.
-/
theorem CubicIntegralWitness.correct_endpointDifference
    {a b c d lower upper : ℝ}
    (witness : CubicIntegralWitness a b c d lower upper) :
    witness.value =
      cubicPotentialDifference a b c d lower upper := by
  rw [witness.value_eq_integral, intervalIntegral_cubic]

/-- The canonical endpoint difference constructs a certified witness. -/
noncomputable def cubicIntegralWitness
    (a b c d lower upper : ℝ) :
    CubicIntegralWitness a b c d lower upper where
  value := cubicPotentialDifference a b c d lower upper
  value_eq_integral := (intervalIntegral_cubic a b c d lower upper).symm

@[simp] theorem cubicIntegralWitness_value
    (a b c d lower upper : ℝ) :
    (cubicIntegralWitness a b c d lower upper).value =
      cubicPotentialDifference a b c d lower upper :=
  rfl

end Mathematics.Polynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5552a785f70efaa9044b540243739e71f9c15a6c41b04dd15841d0deab291934 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Semantics/Varianta716acfb7f79bf391964022c713092a7eade66b752f4ab4574a0fd4f1519c68b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
