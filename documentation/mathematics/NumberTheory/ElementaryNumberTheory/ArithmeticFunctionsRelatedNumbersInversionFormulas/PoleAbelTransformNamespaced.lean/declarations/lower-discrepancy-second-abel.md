# lower_discrepancy_second_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edbb2d22-fdd2-fd2a-830a-5f3bdb2d33e9",
  "kind": "theorem",
  "lexical_name": "lower_discrepancy_second_abel",
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
  "slug": "lower-discrepancy-second-abel",
  "source": {
    "blob": "a7591c27a10789f3c567253d2d32e766216b951c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 366,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01aa58c81a7cb5d791f1e9e0a6653ff36be43861215c925c44ab3f21279ff8c6",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edbb2d22-fdd2-fd2a-830a-5f3bdb2d33e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 366–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lower_discrepancy_second_abel (A : ℝ) (f : C(ℝ, ℝ))
    (hF : ContDiff ℝ 2 (logarithmicAbelTest f))
    (hFB : logarithmicAbelTest f (2 * A) = 0)
    (hF'B : deriv (logarithmicAbelTest f) (2 * A) = 0) :
    lowerPowerDiscrepancy A f = ∫ t in (0 : ℝ)..2 * A,
      lowerAbelPrimitive A t * deriv (deriv (logarithmicAbelTest f)) t := by
  classical
  have hi := finite_second_abel_identity (lowerPowerInventory A) (fun n ↦ Real.log n)
    ArithmeticFunction.vonMangoldt (logarithmicAbelTest f) hF (2 * A)
    (fun n hn ↦ ⟨(lower_inventory_log_bounds A n hn).1.le,
      (lower_inventory_log_bounds A n hn).2.le⟩) hFB hF'B
  have hs : (∑ n ∈ lowerPowerInventory A,
      ArithmeticFunction.vonMangoldt n * logarithmicAbelTest f (Real.log n)) =
      ∑ n ∈ lowerPowerInventory A, primeWeight n * f (Real.log n) := by
    apply Finset.sum_congr rfl
    intro n hn
    have hnp := EstimateTailReduction.mem_primeIndices_iff A n |>.mp (Finset.mem_filter.mp hn).1
    rw [logarithmic_abel_test_log f n (by omega)]
    unfold primeWeight
    ring
  simp_rw [exponential_logarithmic_abel_test] at hi
  rw [hs] at hi
  exact hi

/-- A `C¹` function vanishing on the right half-line also has a zero derivative at its endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PoleAbelTransformNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean#L366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7591c27a10789f3c567253d2d32e766216b951c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00a0ca692aa581d8ad4cf7715672d1e46ebdc44e4e111ad94156794ff90b8b9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PoleAbelTransform/Variantbc3b7d08039ee4d77b29e2b8a0b6aaa7c9fd5f9ddd276d73307f415c4b30b981.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
