# normalizedSourceBump_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15bf8902-fdd3-74e0-e43c-1c4587d3e4c3",
  "kind": "theorem",
  "lexical_name": "normalizedSourceBump_hasDerivAt",
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
  "slug": "normalizedsourcebump-hasderivat",
  "source": {
    "blob": "d2871a225e8650ceab8fef35f2dcfb68c8d97473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82c56c86d7b29c93e8d1eaf951afa26f61fedcf1a47f59fa6245d64c957634b2",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryNamespacedAlternative6SourceEdition1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15bf8902-fdd3-74e0-e43c-1c4587d3e4c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSourceBump_hasDerivAt (A x : ℝ) (hA : 0 < A) :
    HasDerivAt (normalizedSourceBump A)
      ((Icc (-A) A).indicator (firstInterior A) x / Real.sqrt (sourceNormalization A)) x := by
  unfold normalizedSourceBump
  rw [scaledBump_eq_indicator A hA]
  exact (indicator_hasDerivAt (bumpInterior_hasDerivAt A) (bump_frontier A hA) x).div_const _

/-- The first derivative retains its exact zero extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MeasureAndIntegration/SpectralUnificationOfComputabilityAndAlgebraicSymmetryNamespacedAlternative6SourceEdition1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2871a225e8650ceab8fef35f2dcfb68c8d97473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5c89bba2a8bf924074acd88a5aaca6ae99a62e13cea3307bc7b2297fa4cedb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Varianta99c703f58bddd473d930a9868fe5c95d20a1553a9e6f476e7d3d8f8cb0dc8fa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
