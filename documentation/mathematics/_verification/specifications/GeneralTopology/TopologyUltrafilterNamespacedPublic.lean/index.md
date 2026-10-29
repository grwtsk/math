# Verification target: Topology Ultrafilter Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cafe5fae867861948a8692de0f9a48e9b899671",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantbdd417b2b884cb1c75aba5b785572cc492cf6285ae4a23d935d392f903ed7a06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cafe5fae867861948a8692de0f9a48e9b899671`.

Source path: `GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantbdd417b2b884cb1c75aba5b785572cc492cf6285ae4a23d935d392f903ed7a06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ultrafilter/Variantbdd417b2b884cb1c75aba5b785572cc492cf6285ae4a23d935d392f903ed7a06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ultrafilter.clusterPt_iff](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/ultrafilter-clusterpt-iff.md) | 32 | `result-track:60de652b346dc24e1a5c4cc8b5fa9d75f631ed37b83a2b918919d8b0044454a5` |
| 2 | `theorem` | [clusterPt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/clusterpt-iff-ultrafilter.md) | 35 | `result-track:a43b8b0a22b42d69a5a7ccf0297099774f0c593c9f42bbdf361ec37862a52dd2` |
| 3 | `theorem` | [mapClusterPt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/mapclusterpt-iff-ultrafilter.md) | 39 | `result-track:7ae875bc85582b2b9fd177f628b44cbb471062dabe153b315cebad6f7438c12c` |
| 4 | `theorem` | [isOpen_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/isopen-iff-ultrafilter.md) | 44 | `result-track:a2ee3c138168d90fce50709538aced3750d9a306a515e2e1cf9303846bda34e4` |
| 5 | `theorem` | [mem_closure_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/mem-closure-iff-ultrafilter.md) | 50 | `result-track:c6e33f61a1d3ef23e73f79c6cd294767c4f675e18118300abcb51f2e614aa976` |
| 6 | `theorem` | [isClosed_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/isclosed-iff-ultrafilter.md) | 54 | `result-track:8f76e7f4468e93442751669578534e2ecdd633a2ff311f273bb9a9353b5b46e4` |
| 7 | `theorem` | [continuousAt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/continuousat-iff-ultrafilter.md) | 60 | `result-track:bfcb3fd960108aef541c2665ee548aeddae5ead3a689b08664883d3db6da69bd` |
| 8 | `theorem` | [continuous_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterNamespacedPublic.lean/declarations/continuous-iff-ultrafilter.md) | 64 | `result-track:a55b422bed551e61c51e45a11534cb733c925f99a774a1a01b8ab3d1a2883183` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=90b051f4faa28e033a6bef0056362291b51768ea1e9f948cbb544ff596d50015 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantbdd417b2b884cb1c75aba5b785572cc492cf6285ae4a23d935d392f903ed7a06.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Ultrafilter/Variantbdd417b2b884cb1c75aba5b785572cc492cf6285ae4a23d935d392f903ed7a06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
