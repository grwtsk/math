# actualResidual_sub_centeredPhaseBulk_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e617643-58d4-9c46-7c03-c3a1ad4ce8c3",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_centeredPhaseBulk_abs_le",
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
  "slug": "actualresidual-sub-centeredphasebulk-abs-le",
  "source": {
    "blob": "86c33d3d48265f39daa69a192d053c9b5ac4ebe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 303,
    "line": 274,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b4afeb5dd68a206294f7795f40657fd0b4d277e216140f75144d3ca502d167c",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualCenteredPrimePhaseNamespacedEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e617643-58d4-9c46-7c03-c3a1ad4ce8c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–303.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_centeredPhaseBulk_abs_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    |mertensResidual A - actualCenteredPrimePhaseBulk A c (actualBumpMovingHeight A c)| ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5))) / A ^ 9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualCenteredPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_centeredBulk_add_boundary A c _ hA, add_sub_cancel_left]
  rw [← actualCenteredPrimeLogBulk_real_eq_phaseBulk]
  calc
    _ = |((mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)).re| := by
      simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖(mertensResidual A : ℂ) - actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A)) / A ^ 9 +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualCenteredPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The original residual and full b*S-a*Q integral differ by o(1) along every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../_verification/specifications/NumberTheory/MultiplicativeNumberTheory/AsymptoticResultsOnArithmeticFunctions/SourceActualCenteredPrimePhaseNamespacedEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86c33d3d48265f39daa69a192d053c9b5ac4ebe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ccb558193088fe8a5e449dbafa34f65e232a0c32126bbc76bcfccfc9059cf98 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variant350708d871e9293154569af6f7f188c8420e4d6a4f5a838b9b30634886bf2e37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
