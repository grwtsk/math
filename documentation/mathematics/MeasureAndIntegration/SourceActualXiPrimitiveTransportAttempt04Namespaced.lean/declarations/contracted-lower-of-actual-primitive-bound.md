# contracted_lower_of_actual_primitive_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1275bb8c-b23a-6383-4e77-ed67873e258d",
  "kind": "theorem",
  "lexical_name": "contracted_lower_of_actual_primitive_bound",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "documentation/mathematics/_support/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "contracted-lower-of-actual-primitive-bound",
  "source": {
    "blob": "c2a83c890c2f52b664b4f91360dbafd27b4333cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt04/Variantaf1fc455e9d25fccb281076dd232a33f85d0a8383d2ebf09a03e4a3def516322.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16c8c6707e3d1d6da9fd0839556277fc9387d1b8a9137ace3976e13b3d268e36",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt04Namespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1275bb8c-b23a-6383-4e77-ed67873e258d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contracted_lower_of_actual_primitive_bound (H A : ℝ) (hH : 0 ≤ H) (hA : 91 ≤ A)
    (hF : ∀ t : ℝ, Real.log 2 ≤ t → |actualXiLogPrimitive t| ≤ H) :
    -((11 / 2 : ℝ) * H) ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y := by
  have hp : 0 < A := by linarith
  have hL : Real.log (2 : ℝ) ≤ 2 * A := by
    linarith [Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)]
  have hd := (actual_fullXiLogWeight_deriv_continuous hp).intervalIntegrable
    (Real.log 2) (2 * A)
  have hf := (actualXiLogPrimitive_absolutelyContinuous (2 * A)).continuousOn
  have hprod := hd.continuousOn_mul hf
  have hb : (∫ t in Real.log 2..2 * A,
      |actualXiLogPrimitive t * deriv (fullXiLogWeight A) t|) ≤
      ∫ t in Real.log 2..2 * A, H * |deriv (fullXiLogWeight A) t| := by
    apply intervalIntegral.integral_mono_on hL hprod.abs (hd.abs.const_mul H)
    intro t ht
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (hF t ht.1) (abs_nonneg _)
  rw [intervalIntegral.integral_const_mul] at hb
  have hn := intervalIntegral.abs_integral_le_integral_abs
    (f := fun t => actualXiLogPrimitive t * deriv (fullXiLogWeight A) t) hL
  have hc := actual_fullXi_signed_primitive_derivative_cost hA
  rw [actual_contracted_pairing_eq_primitive_IBP A (by linarith)]
  nlinarith [abs_le.mp hn]

end FormalResearch.RiemannHypothesis.SourceActualXiPrimitiveTransport
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SourceActualXiPrimitiveTransportAttempt04Namespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt04/Variantaf1fc455e9d25fccb281076dd232a33f85d0a8383d2ebf09a03e4a3def516322.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2a83c890c2f52b664b4f91360dbafd27b4333cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=403dd5e44458836ba7a9a1eb2d67494bd41d75f3a57865cebf1f9480f2708f92 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPrimitiveTransportAttempt04/Variantaf1fc455e9d25fccb281076dd232a33f85d0a8383d2ebf09a03e4a3def516322.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
