# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonRadialAdjunctionComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1627e0134c5211e63c626a366b5ba373fe66994",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/index.md) · [Full source](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1627e0134c5211e63c626a366b5ba373fe66994`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonDiskAdjunction`](../../../../GeneralTopology/SurfacePolygonDiskAdjunction.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [radialSourceToAdjunction](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction.md) | 33 | `declaration-track:a0dc252fb09d800b41f272065f4f380313c252aef801e6a82b9d608a4df5b3e3` |
| 2 | `theorem` | [radialSourceToAdjunction_outer](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-outer.md) | 41 | `result-track:a6f49e4cd64cf66f074b76192cc96a999ea668adb9a2cacbae442c0119c021cd` |
| 3 | `theorem` | [radialSourceToAdjunction_zero](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-zero.md) | 53 | `result-track:7792d9df303fcbcbf9b03766840c1eb173bfe3879cd3d2211703e44a83ba9644` |
| 4 | `theorem` | [radialSourceToAdjunction_seam](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-seam.md) | 65 | `result-track:19482fed849cf46aca9b6187a1ce4f38fc9450cc77f8249ab5d8b2a28bde723e` |
| 5 | `theorem` | [radialSourceToAdjunction_outerA](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-outera.md) | 76 | `result-track:beee67f175a12a26d483fd69d80ceeba6ab8eb901b98aea1c6e70d1f0a5b9197` |
| 6 | `theorem` | [radialSourceToAdjunction_outerB](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-outerb.md) | 86 | `result-track:de8de8ee5508f089aea67d17e62c23e0b1065bf7f67718a2e80afcb14b3b1444` |
| 7 | `theorem` | [radialSourceToAdjunction_respects_step](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-respects-step.md) | 98 | `result-track:a81140661e9ea1ba8aa2eb2d0e748c5a5cd52bb050fc81109d80da4ef6c5c029` |
| 8 | `theorem` | [radialSourceToAdjunction_respects_connected](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialsourcetoadjunction-respects-connected.md) | 119 | `result-track:d4b04ee409c75f4cd09473aa03fe173826d2d687036a1c21ee4f6b5147ecf271` |
| 9 | `def` | [radialFillingToAdjunction](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialfillingtoadjunction.md) | 131 | `declaration-track:346047348bbf522815268e69a4bbd810d73e985068bc2b2d47f30604957f9168` |
| 10 | `theorem` | [radialFillingToAdjunction_source](../../../../AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean/declarations/radialfillingtoadjunction-source.md) | 136 | `result-track:0302d22fbef8b649c359bde6e1f7176698006a436712054f737361ecf0ba12b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=597d038b248f50f46c0ec8b5939df221307265cd01e7135852d1cd6098826830 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonRadialAdjunctionComparison.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
