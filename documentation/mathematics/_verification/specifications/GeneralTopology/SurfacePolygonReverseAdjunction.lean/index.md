# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseAdjunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c044ecd8e7064595fbb15a6a695a1f6d762d7e7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseAdjunction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/index.md) · [Full source](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c044ecd8e7064595fbb15a6a695a1f6d762d7e7`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseAdjunction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonReverseAdjunction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonReverseCone`](../../../../GeneralTopology/SurfacePolygonReverseCone.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cornerProductTopology_eq_bot](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/cornerproducttopology-eq-bot.md) | 17 | `result-track:3acc80061c96aec961072e512c71b3ef952d357324cd76223442d8acd433631e` |
| 2 | `theorem` | [reverse_boundary_commutes](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/reverse-boundary-commutes.md) | 24 | `result-track:3383d7e71c98126f0d5633f6edc4dace57ec680af63dddb52e1bb0fd42855e77` |
| 3 | `def` | [adjunctionToFilling](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/adjunctiontofilling.md) | 35 | `declaration-track:6f13704f2a11198f436a2d893ed473b02a2f6bf48d798076dde013b27888a7b0` |
| 4 | `theorem` | [adjunctionToFilling_continuous](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/adjunctiontofilling-continuous.md) | 40 | `result-track:5255e21fad18e95b8562564f1d74f6030eee12b87870961666eaed66f2a221d5` |
| 5 | `theorem` | [adjunctionToFilling_skeleton](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/adjunctiontofilling-skeleton.md) | 57 | `result-track:5c4bb78a3097363d692b18e4fac42a42df491ab55c74596c9a53505408537917` |
| 6 | `theorem` | [adjunctionToFilling_disk](../../../../GeneralTopology/SurfacePolygonReverseAdjunction.lean/declarations/adjunctiontofilling-disk.md) | 63 | `result-track:11b3ee7f681e4fc28a4362c56ab737a73ecc91c794d0981dc8832fb42ac94efc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dcd35728d2122fbae93ccda9116dfee774c7084330d3f02e011ae5bf874d14d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SurfacePolygonReverseAdjunction.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SurfacePolygonReverseAdjunction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
