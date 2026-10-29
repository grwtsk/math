# Verification target: Indicator Function Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b50bad7c89222d63f6c115624f30f8c35f2a33d8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b50bad7c89222d63f6c115624f30f8c35f2a33d8`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/mulindicator-eventuallyeq.md) | 34 | `result-track:91d44379e67649958a51a520768448746e8b7a9540f23bb4c14e0030807c9eca` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/mulindicator-union-eventuallyeq.md) | 48 | `result-track:0bf00a392a34f275033e6004f9d62054da42949f5957abbae0a93b86d3c9223f` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/mulindicator-eventuallyle-mulindicator.md) | 59 | `result-track:097e343c70eb6ea7af59cfb1ba36a64c691e32a62e4b2ab0079033d1f944bdc4` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/monotone-mulindicator-eventuallyeq-iunion.md) | 66 | `result-track:1e0c15e13c5b3004eb23a3168e47aac4edef4886230dc1b29bf8e872fdb8ab43` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/monotone-tendsto-mulindicator.md) | 72 | `result-track:fc4a162a5a196b81cf7ee48631aa4c2bb3a07103920a14d163186b24a6d70e64` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/antitone-mulindicator-eventuallyeq-iinter.md) | 78 | `result-track:51d50b8d1bb3f9ca472ae5831b53dd6f67fd0df64d44548b284d2315b643ed75` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/antitone-tendsto-mulindicator.md) | 84 | `result-track:8a277e95efd79a6fb8b95778050fd39cf3e592b0c4e53aa74dbf6a73eb07df6b` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/mulindicator-biunion-finset-eventuallyeq.md) | 90 | `result-track:7fb94b28d4dae1d2de1681603f3c94e438d56b2d7d5f1ddcf89c2dee46bb6a32` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/tendsto-mulindicator-biunion-finset.md) | 98 | `result-track:48f06ee8d4e4dfd5aacbdecbf4f523fe5cfa3b17e855d073f52caac7402e20a1` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-eventuallyeq-mulsupport.md) | 104 | `result-track:1ace14b99d0f257a45d2360663cf331af27423e1969d70d505ff10c6f8395c0c` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-eventuallyeq-mulindicator.md) | 110 | `result-track:7c881e73e6ff06ec0654ae35bca03a7750fec9cb2cc90cada68b5242d646fd19` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-eventuallyeq-mulindicator-one.md) | 115 | `result-track:9bfaaca813fa94a366f60e5a07d72c62f949bf77b19d6718fe5aca3f15509980` |
| 13 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-eventuallyeqset-of-mulindicator.md) | 120 | `result-track:b60df40abde3fd88ffaec1a0ec1bcfd15dddb39a2f49c7f8b7fddd0adf224fe2` |
| 14 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator_const](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-eventuallyeqset-of-mulindicator-const.md) | 132 | `result-track:e5c536d1e684fc2f6fdaa5357e066d68effd43e838376c9f24d7019a4459e315` |
| 15 | `theorem` | [Filter.mulIndicator_const_eventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/IndicatorFunctionPublic.lean/declarations/filter-mulindicator-const-eventuallyeq.md) | 140 | `result-track:2ff4ebffa19d28238488d9b7567a09ad2ce330c92da25324c826ca6c28e488ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59db134efaa0abf93b8eadefddf58b5c482af5884861d2a499e47febe560465b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
