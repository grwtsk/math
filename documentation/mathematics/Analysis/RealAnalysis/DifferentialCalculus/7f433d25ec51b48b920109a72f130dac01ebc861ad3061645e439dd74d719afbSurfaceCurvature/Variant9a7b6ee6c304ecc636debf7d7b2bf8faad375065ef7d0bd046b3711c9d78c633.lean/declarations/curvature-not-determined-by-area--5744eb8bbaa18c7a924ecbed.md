# curvature_not_determined_by_area

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05d885a5-74a2-c511-f1f2-0044b46451ef",
  "kind": "theorem",
  "lexical_name": "curvature_not_determined_by_area",
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
  "slug": "curvature-not-determined-by-area--5744eb8bbaa18c7a924ecbed",
  "source": {
    "blob": "c56e1199f0ff5477de6aa0273aad1c313f9fff8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 274,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5744eb8bbaa18c7a924ecbed16f6bd0f2145411126fe6a395eb525eb88c8f3af",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d885a5-74a2-c511-f1f2-0044b46451ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem curvature_not_determined_by_area :
    ¬DescendsThrough (fun state => patchArea (chartFamily state) parameterMeasure)
      (fun state => sumCurvature (levelFamily state) (axis 0)) :=
  descent_obstruction_not_descends areaCurvatureObstruction


/-- The plane patch has genuine derivatives, nondegenerate tangents, and integrable area. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c56e1199f0ff5477de6aa0273aad1c313f9fff8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7b51c2b6f3c4e587958b99ba3151270b88f4638d921243b9e4c1a00d07bbcbfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/7f433d25ec51b48b920109a72f130dac01ebc861ad3061645e439dd74d719afbSurfaceCurvature/Variant9a7b6ee6c304ecc636debf7d7b2bf8faad375065ef7d0bd046b3711c9d78c633.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
