# Verification target: Basic Basic Namespaced Digest

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d7f6cc1fc7509d5a1e1c1675dd7bd987a98807a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant18d880d8f385983ab84bbbbccb659156987cab5569356ef514b008b9740f7f7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d7f6cc1fc7509d5a1e1c1675dd7bd987a98807a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant18d880d8f385983ab84bbbbccb659156987cab5569356ef514b008b9740f7f7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant18d880d8f385983ab84bbbbccb659156987cab5569356ef514b008b9740f7f7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Digest](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/digest.md) | 21 | `declaration-track:7e70940d96149b3bf664b2f40553146eda0e1ff370dc5cb9998023ed2aea65f6` |
| 2 | `def` | [empty](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/empty.md) | 27 | `declaration-track:03cf1d5094544b43f17bd4d8545719b9c9f8007aa0d9a307d7b9d5fee3d8c9ae` |
| 3 | `def` | [ofString](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/ofstring.md) | 35 | `declaration-track:77c68c55fbb498ac02fcc1438e9132247b680b3f388ab14efe62aa81727c8cc5` |
| 4 | `structure` | [TextId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/textid.md) | 40 | `declaration-track:ec41515f8b0dcc8d63967ae4d4c169b304babfd11eb5c4f415c957072f7de5b6` |
| 5 | `structure` | [SnapshotId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/snapshotid.md) | 43 | `declaration-track:4cd7f145d7a9545800054268f11a03fa6b372eed1cc9dd4e5eb8eeb9eee6b528` |
| 6 | `structure` | [SourceId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/sourceid.md) | 46 | `declaration-track:13b5bad94917694c052cfb82fb9aac8952d6f20ec071c3aed743e3b27e5f01d5` |
| 7 | `structure` | [EvidenceId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/evidenceid.md) | 49 | `declaration-track:c30c00dd7d516eed6136d390893786d78fbc580c9f7a8d8e955d5ceb068f10f5` |
| 8 | `structure` | [AssertionId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/assertionid.md) | 52 | `declaration-track:2740ce0ba94344f2eefc5f3435fccaa8185701e34efc0922f7ea86c03a0b1368` |
| 9 | `structure` | [ContextId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/contextid.md) | 55 | `declaration-track:f1f37136c9d22213d5bf1340dca3266373de2ee2ec3082b783c6ebf0dfd616b0` |
| 10 | `structure` | [TaskId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/taskid.md) | 58 | `declaration-track:087c4f0e7853b6792ef2438f752cc0652ddc2d55b3d7d6ea94a087594d9fb6ad` |
| 11 | `structure` | [ConceptId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/conceptid.md) | 61 | `declaration-track:853b291e2274c5b25c261142831f2c1202e9c6738bc936c8fe8dde4e344e41c5` |
| 12 | `structure` | [RuleId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/ruleid.md) | 64 | `declaration-track:99d1ed868f36ee7d63227529dd4c31b9233c39cef013b2b706a20596c2722397` |
| 13 | `structure` | [RelationId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/relationid.md) | 67 | `declaration-track:862631f5cf7f9caa92ea5a596915093ec4c719537c3814e9b4e103a6468b0461` |
| 14 | `structure` | [EventId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/eventid.md) | 70 | `declaration-track:b4fb41a712e39ced08d9b6370c2478b127ef4f6625d5997f522e9cf1073202b4` |
| 15 | `structure` | [PhraseNodeId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/phrasenodeid.md) | 73 | `declaration-track:6787ac73f33f60bcfd5636eee1bc2a9320bcf83551037ba5e3bedd6394015141` |
| 16 | `structure` | [NodeId](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/nodeid.md) | 76 | `declaration-track:86ee8705ad0c229494b1829136c14feb3c2aefdfb8c5325ee083c970e307b8cb` |
| 17 | `structure` | [ResourceBudget](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/resourcebudget.md) | 79 | `declaration-track:3a9f9c360ade6668d98169a4669b94cdd7d6a01cccca94552a3f7b94fccdcad3` |
| 18 | `inductive` | [CheckResult](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/checkresult.md) | 85 | `declaration-track:272a85c4209d124f830d435d48a1ce34d1ddd6fb2eb34d6a183f23d3c80f2aba` |
| 19 | `def` | [PairwiseUnique](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/pairwiseunique.md) | 91 | `declaration-track:e15d9f4f8beeea7589361298a73d54fea31617a634313da0ba487daa522b3a38` |
| 20 | `structure` | [SnapshotTransportCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/snapshottransportcertificate.md) | 95 | `declaration-track:2ca3a08df7fde0adac308ebe0064eeedf46b155c2ba5d1771af1b2d1136887d9` |
| 21 | `def` | [SnapshotTransportedTo](../../../../../ComputerScience/AlgorithmsInComputerScience/BasicBasicNamespacedDigest.lean/declarations/snapshottransportedto.md) | 102 | `declaration-track:3d38465d1983d623444764f2b4154fc3c1b9189db67aa58b11756cd376218eb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=333d8fc397497557858cf45ebdf2534299e674fc522a1e97ce87a83a5adb9058 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant18d880d8f385983ab84bbbbccb659156987cab5569356ef514b008b9740f7f7b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant18d880d8f385983ab84bbbbccb659156987cab5569356ef514b008b9740f7f7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
