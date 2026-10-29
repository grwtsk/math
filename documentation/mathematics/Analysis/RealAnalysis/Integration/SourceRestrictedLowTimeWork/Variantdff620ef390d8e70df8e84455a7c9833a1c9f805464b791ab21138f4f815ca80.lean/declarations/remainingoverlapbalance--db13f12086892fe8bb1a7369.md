# remainingOverlapBalance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:512273fba82677e3f5d0c46c1341073fa87c5a88279eecb660cc72ee0866bc16",
  "kind": "def",
  "lexical_name": "remainingOverlapBalance",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "remainingoverlapbalance--db13f12086892fe8bb1a7369",
  "source": {
    "blob": "ebb6dc470fa9cd478358b053e8ff6be1c5ba786a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db13f12086892fe8bb1a7369452a8ea8dabd986c22e2ddb5dc2fda76ed7ea327",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:512273fba82677e3f5d0c46c1341073fa87c5a88279eecb660cc72ee0866bc16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def remainingOverlapBalance (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    SourceJointMangoldtWork.jointMangoldtTestProfile A t) -
  mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    SourceJointMangoldtWork.jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  (∫ v in discreteOverlapWindow A, actualMixedWorkDensity A v) -
  SourceVaughanHankel.centeredDeletedDiagonal A -
  SourceSamplingLedger.independentMainTerm A +
  (let U := vaughanCutoff A
   let N := sourceKernelCutoff A
   let K := N / (U + 1)
   let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
   let R : ℕ → ℝ := fun k => ∑ m ∈ longInventory A,
     ArithmeticFunction.vonMangoldt m *
       EstimatePlainKernel.sourcePlainWeight A ((m * k : ℕ) : ℝ)
   B K * R K)

/-- The actual PRIVATE39 L1 kernel remains integrable after any spatial restriction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebb6dc470fa9cd478358b053e8ff6be1c5ba786a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f71c766ce650e2dd5e6bc3e77e80a42d0986401ffab2e58a291cb5dc31375266 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceRestrictedLowTimeWork/Variantdff620ef390d8e70df8e84455a7c9833a1c9f805464b791ab21138f4f815ca80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
