# Verification target: Topology Ultrafilter Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d776db785ac24ba3bc1e105ebb0c47d8661d91cd",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant6d42f3b861a1be290dd2ea90048b3265e9a72cdc47c3d0c76e1abcf0ae667a34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d776db785ac24ba3bc1e105ebb0c47d8661d91cd`.

Source path: `GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant6d42f3b861a1be290dd2ea90048b3265e9a72cdc47c3d0c76e1abcf0ae667a34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ultrafilter/Variant6d42f3b861a1be290dd2ea90048b3265e9a72cdc47c3d0c76e1abcf0ae667a34.lean.json)

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
| 1 | `theorem` | [Ultrafilter.clusterPt_iff](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/ultrafilter-clusterpt-iff.md) | 24 | `result-track:90697e1f542732ce367e43077937fef4d2f2f14354fd4a40d5cf58afd55a3834` |
| 2 | `theorem` | [clusterPt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/clusterpt-iff-ultrafilter.md) | 27 | `result-track:88c75936aec8f5ae985d49350ba6432dfaad1847dd0ac9c60dd11082014d945b` |
| 3 | `theorem` | [mapClusterPt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/mapclusterpt-iff-ultrafilter.md) | 31 | `result-track:434bf47cb5ce0252995fe0cb5a0d516c04251d752e0a6b314d466675fa03cab1` |
| 4 | `theorem` | [isOpen_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/isopen-iff-ultrafilter.md) | 36 | `result-track:07e003033822b3d59058a55199afb13bf4d7c9a49ca24fb5b4f1afe39c67b314` |
| 5 | `theorem` | [mem_closure_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/mem-closure-iff-ultrafilter.md) | 42 | `result-track:b155b08cc6c7975ab7d14317704dc96d0102ba42e00925c494c3fef117c9e082` |
| 6 | `theorem` | [isClosed_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/isclosed-iff-ultrafilter.md) | 46 | `result-track:f8fcfbea078d11cda52fc9689a837761e7a3f039399db578dd77ad9508b495cb` |
| 7 | `theorem` | [continuousAt_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/continuousat-iff-ultrafilter.md) | 52 | `result-track:79a42eb207adfa5cad7bcacb9aabd62fbf4dc251fba611b32ae17ec3cdd2dec0` |
| 8 | `theorem` | [continuous_iff_ultrafilter](../../../../GeneralTopology/TopologyUltrafilterPublic.lean/declarations/continuous-iff-ultrafilter.md) | 56 | `result-track:07592d6ae681f38f726adf598ae92b036c11220753f1fb076974b0499789882a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f050b4558d88e678bd5289c47aa042d02f07fd7ab81c29481f600d91cbbc82e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Ultrafilter/Variant6d42f3b861a1be290dd2ea90048b3265e9a72cdc47c3d0c76e1abcf0ae667a34.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Ultrafilter/Variant6d42f3b861a1be290dd2ea90048b3265e9a72cdc47c3d0c76e1abcf0ae667a34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
