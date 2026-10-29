# phase_distance_near

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c762ba6-2ba8-163f-5e5b-b870ebdd9521",
  "kind": "theorem",
  "lexical_name": "phase_distance_near",
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
  "slug": "phase-distance-near",
  "source": {
    "blob": "60c0dad4b528c5b7d891471eaf3a9165f758695d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 19,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caf17469221d6ed9fd60ea03a4d1cb2d8ebc388c22f82792054129d0eb339e7b",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactNearestIntegerReturnFromTheExternalTwoLogInput.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c762ba6-2ba8-163f-5e5b-b870ebdd9521`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phase_distance_near {δ : ℝ} (hδ : 0 ≤ δ)
    (hnear : δ * Real.log 3 ≤ Real.pi) :
    2 * logLength / Real.pi * δ ≤ phaseDistance δ 0 := by
  have hl2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
  have hl3 : 0 ≤ Real.log (3 : ℝ) := Real.log_nonneg (by norm_num)
  have h23 : Real.log (2 : ℝ) ≤ Real.log 3 := Real.log_le_log (by norm_num) (by norm_num)
  have h2 := chord_lower_on_pi (x := δ * Real.log 2)
    (by rw [abs_of_nonneg (mul_nonneg hδ hl2)]; nlinarith)
  have h3 := chord_lower_on_pi (x := δ * Real.log 3)
    (by rw [abs_of_nonneg (mul_nonneg hδ hl3)]; exact hnear)
  rw [abs_of_nonneg (mul_nonneg hδ hl2)] at h2
  rw [abs_of_nonneg (mul_nonneg hδ hl3)] at h3
  have hs2 := pow_le_pow_left₀ (by positivity) h2 2
  have hs3 := pow_le_pow_left₀ (by positivity) h3 2
  apply (sq_le_sq₀ (mul_nonneg (div_nonneg (mul_nonneg (by norm_num) logLength_positive.le)
    Real.pi_pos.le) hδ) (show 0 ≤ phaseDistance δ 0 from norm_nonneg _)).mp
  rw [phase_distance_sq_chords]
  have he : (2 * logLength / Real.pi * δ) ^ 2 =
      (2 * (δ * Real.log 2) / Real.pi) ^ 2 + (2 * (δ * Real.log 3) / Real.pi) ^ 2 := by
    simp only [mul_pow, div_pow]
    rw [logLength_square]
    ring
  rw [he]
  exact add_le_add hs2 hs3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ExactNearestIntegerReturnFromTheExternalTwoLogInput.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60c0dad4b528c5b7d891471eaf3a9165f758695d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=851aee3b5db88c61b79a1116a9fb597ac5377ad23c996c69c39933917d6e145f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MatveevPhaseBridge/Variant03045a36fd91095287a568da21ae86a582173b3d4757105d20c08aac8adceeb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
