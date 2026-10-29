# octahedralTopologyExport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:21cfe164383f165b7915ce81763f225c07a641cab0f23c9d2e9a2f2a62032d20",
  "kind": "def",
  "lexical_name": "octahedralTopologyExport",
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
  "slug": "octahedraltopologyexport",
  "source": {
    "blob": "3cf20f7a056212366a9f1e03193f61e2ad486bdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 522,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1cf021ffdfd2949156d72e38a7a8e282c0d54086a2334e88f9dcf39dc2bd575f",
  "verification": {
    "reference": "documentation/mathematics/_verification/specifications/ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:21cfe164383f165b7915ce81763f225c07a641cab0f23c9d2e9a2f2a62032d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def octahedralTopologyExport : OctahedralTopologyExport :=
  { schema := "surface-foundry.octahedral-sphere.v1"
    topologyObjectId := "boolean.cube.prismatic-geometry.octahedral-sphere"
    dimension := 2
    vertices := octahedralVertices.map octahedralVertexExport
    edges := octahedralEdges.map octahedralEdgeExport
    faces := octahedralFaces.map octahedralFaceExport
    charts := octahedralVertices.map octahedralRenderingChartExport
    eulerCharacteristic := 2
    closedOrientedSurface := true
    chartCoverComplete := true
    authorityBoundary :=
      "This is a finite oriented octahedral 2-sphere topology and exact unit-vector realization. It does not construct an analytic sphere, prismatic cohomology, or theorem authority."
    projectionLoss :=
      "A request-time cell field is aggregated onto eight octahedral faces. Cell-scale position, chart-scale variation, and analytic completion are not preserved by this projection." }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/AlgorithmsInComputerScience/OctahedralSphereNamespaced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf20f7a056212366a9f1e03193f61e2ad486bdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d8f8bc1d17f0998d170bf4de0c19b11cb7d4a5b1629220a3b752202cbe4a06d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralSphere/Variant7245f6aeeba6532bde47da12a4d40f76e5087de5b509158d37067113a9e6e750.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
