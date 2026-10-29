# actualPeriodicPhysicalCellProfile_contDiffOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bfbbc1b-176e-1d7d-d92c-d7900323e9fb",
  "kind": "theorem",
  "lexical_name": "actualPeriodicPhysicalCellProfile_contDiffOn",
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
  "slug": "actualperiodicphysicalcellprofile-contdiffon",
  "source": {
    "blob": "65d454e686eb8e570122f37e9255f1cdea992243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant555074c261d044d5ee5bdd37a49a3a641c2edb70d7c6678e8ceaa589404b9fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9405b926940c89dfed69a98cb279643cb3b8fc5a8c82bea7c9c6949745d41511",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/RootActualPeriodicPhysicalCellEdition2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfbbc1b-176e-1d7d-d92c-d7900323e9fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodicPhysicalCellProfile_contDiffOn {A l : ℝ} (hA : 0 < A)
    (hl : 0 < l) (b t : ℝ) :
    ContDiffOn ℝ 1 (actualPeriodicPhysicalCellProfile A t) (Icc l b) := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 : ContDiff ℝ 1 (iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 1 (hc.of_le (by norm_num))
  have h3 : ContDiff ℝ 1 (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A)) := by
    rw [iteratedDeriv_eq_iterate]
    exact ContDiff.iterate_deriv' 1 3 (hc.of_le (by norm_num))
  have ht : ContDiff ℝ 1 (actualTwistedTimeDensity A t) := by
    unfold actualTwistedTimeDensity
    fun_prop
  have hp (x : ℝ) (hx : x ∈ Icc l b) : x ≠ 0 := (hl.trans_le hx.1).ne'
  have hg : ContDiffOn ℝ 1 Real.log (Icc l b) := contDiffOn_id.log hp
  exact (ht.comp_contDiffOn hg).div contDiffOn_id hp

/-- The source test vanishes only past its true closed upper support, including seam jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/RootActualPeriodicPhysicalCellEdition2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant555074c261d044d5ee5bdd37a49a3a641c2edb70d7c6678e8ceaa589404b9fae.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65d454e686eb8e570122f37e9255f1cdea992243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=54ca8dec6bd3ebd200326846d1d17ccb691f9b36378b8504cc620b51a257954b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualPeriodicPhysicalCell/Variant555074c261d044d5ee5bdd37a49a3a641c2edb70d7c6678e8ceaa589404b9fae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
