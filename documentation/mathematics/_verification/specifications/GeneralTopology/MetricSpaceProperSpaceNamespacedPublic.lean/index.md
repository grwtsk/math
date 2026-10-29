# Verification target: Metric Space Proper Space Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b9977ccc4e26a20fba9067d169d9ae33ce16599",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ProperSpace/Variant3c6a33b6d034c2867c77133000edf6ec45e1400ec4e5b6278b37c1f0897e81b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b9977ccc4e26a20fba9067d169d9ae33ce16599`.

Source path: `GRWTSK/Topology/GeneralTopology/ProperSpace/Variant3c6a33b6d034c2867c77133000edf6ec45e1400ec4e5b6278b37c1f0897e81b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ProperSpace/Variant3c6a33b6d034c2867c77133000edf6ec45e1400ec4e5b6278b37c1f0897e81b2.lean.json)

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
| 1 | `class` | [ProperSpace](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/properspace.md) | 47 | `declaration-track:4f5f114d52803edd9049200fe89fd2eabfe2336a976a5b8c534903dd7a24ae3e` |
| 2 | `theorem` | [isCompact_sphere](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/iscompact-sphere.md) | 55 | `result-track:73a07363d20e4e5337c31c45e6424f9da631ce0e41bc94c045e8d39af0ba07ad` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 61 | `declaration-track:af8576de9561c52ef1e48640d43dd3d37c15ed16fbfa0149b0d9df717d996cb9` |
| 4 | `instance` | [Metric.sphere.compactSpace](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/metric-sphere-compactspace.md) | 66 | `declaration-track:c31a20c2393e894ad40cef6bd7c4bb8c440014d47eb72c94e044c486f9650149` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 74 | `declaration-track:21e1fcbb2a99d8e0b48481ca8f5a4de477e68f8762ba5366f0a58aa1ed56d4c8` |
| 6 | `theorem` | [ProperSpace.of_isCompact_closedBall_of_le](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/properspace-of-iscompact-closedball-of-le.md) | 85 | `result-track:139a6abb67592656783ab85bce0808ceaff4f079362380552a48dde3883ee418` |
| 7 | `theorem` | [ProperSpace.of_seq_closedBall](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/properspace-of-seq-closedball.md) | 92 | `result-track:7063471e33f3c01d2b08a96018f567394f8666783e40826edd5be03c74250de0` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 101 | `declaration-track:927ee25378a7ef34aa508b25197db8d85b193a6bd0ec45fd213413a18fb8f3b5` |
| 9 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 106 | `declaration-track:80edcdcf28ff5e636c7e364467292b9be212e73db0ed6282b23f449350c99ebf` |
| 10 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 112 | `declaration-track:f6e815209affa8641646382fd0fcdf6ba2f948fc2d3c493374d187a865f4b3ac` |
| 11 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance.md) | 125 | `declaration-track:01b23ec2ae659a2757858d3a58a8f4b12c6d84e462c580cfc7e0b27bb0659bb0` |
| 12 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 129 | `declaration-track:ffa6cd3f2b59417adf0a5f352eecb63ddef600ad33b34ab8537aee821be6036f` |
| 13 | `instance` | [prod_properSpace](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/prod-properspace.md) | 132 | `declaration-track:98cf380e01aa7ffc52df1d6dd9323ad5d4d597d0ed565eac0e7a4d586ba6b9d6` |
| 14 | `instance` | [pi_properSpace](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/pi-properspace.md) | 140 | `declaration-track:e122ed5fd2dd2d5f0267aa55f3705861a4ac99676edd7f55f280801c3757d860` |
| 15 | `lemma` | [ProperSpace.of_isClosed](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/properspace-of-isclosed.md) | 148 | `result-track:8d482b8d6457d2d69bbfa31360684a818b6b75669f8b911ab782506d699a77aa` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 157 | `declaration-track:60b7a33ce17266656685a384657fc408402fbd800f677c6cbdb312de8bbf45f2` |
| 17 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 158 | `declaration-track:32d881f32a693b3767ea1a26dede22f7ec2036511cb490c22f9339411d0c3aca` |
| 18 | `instance` | [(anonymous)](../../../../GeneralTopology/MetricSpaceProperSpaceNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 159 | `declaration-track:f4018e7ca28edace8d55ac8a153fa20f17c06fc62333a6516881570286367c19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=828bf7c31c7366ee28946ad17ee5dff92a0000ff880bd6a7f2a5aaa06f04924a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ProperSpace/Variant3c6a33b6d034c2867c77133000edf6ec45e1400ec4e5b6278b37c1f0897e81b2.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ProperSpace/Variant3c6a33b6d034c2867c77133000edf6ec45e1400ec4e5b6278b37c1f0897e81b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
