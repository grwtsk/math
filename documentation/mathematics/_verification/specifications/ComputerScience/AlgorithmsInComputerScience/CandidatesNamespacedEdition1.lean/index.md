# Verification target: Candidates Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06d451d1a2fee44544ca231744696fa84e4b432d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variantba2e2915d5b00777c93a1b0869a11fa9ed503253dc83500bb31247f4d9ffa9a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06d451d1a2fee44544ca231744696fa84e4b432d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variantba2e2915d5b00777c93a1b0869a11fa9ed503253dc83500bb31247f4d9ffa9a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variantba2e2915d5b00777c93a1b0869a11fa9ed503253dc83500bb31247f4d9ffa9a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Contexts` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ActualType](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/actualtype.md) | 34 | `declaration-track:381c2c8c7c7853e54e1273e43fbb332fae8b0860abe1a5f891d9f9a1489aaa09` |
| 2 | `def` | [Top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/top.md) | 37 | `declaration-track:16f3c6aab6724f219d28a3048748a870629c54cf7ab91e682001bbb077248a8a` |
| 3 | `inductive` | [TestedStack](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/testedstack.md) | 41 | `declaration-track:bc3c237e202aed719eb972135c6c653d1799a99beaa58563cedb5984d1d6e1f4` |
| 4 | `def` | [Ground](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/ground.md) | 46 | `declaration-track:7190d649e18c8de790f8bdf8623b4ceb2f7ec3cd663ee30e9efa1e0261c1de67` |
| 5 | `theorem` | [sn](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/sn.md) | 53 | `result-track:4fb55f2aa9231e0ce369bcdd22315a7e42fbbaf8c33addb13be11e22be5f4d04` |
| 6 | `theorem` | [forall_sn](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/forall-sn.md) | 58 | `result-track:602dfd5efff34a31087e26abc4c5464245ec99b135e0a97f3759eb98eb9d9d23` |
| 7 | `theorem` | [ground_le_top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/ground-le-top.md) | 71 | `result-track:12e6dc78af79d6744c8f232919633a322a029bb7dff792c4c142d320c13d0d2e` |
| 8 | `theorem` | [sort_ground_eq_top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/sort-ground-eq-top.md) | 75 | `result-track:786fd066f84f3c6f6aee6d55719b361a56ce43f8ccee421ae242544f5c4f7620` |
| 9 | `theorem` | [var_ground](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/var-ground.md) | 83 | `result-track:9374a0d1e6ca1ccc1593b8fd3089f1b35d262baaf1ac341115236bbcaddd20af` |
| 10 | `theorem` | [ground_application](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/ground-application.md) | 86 | `result-track:3b6c49b154a032e137ddb56a040aaaad88bb989089b913f7e87cdbe6a049a570` |
| 11 | `def` | [ExpansionClosed](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/expansionclosed.md) | 94 | `declaration-track:532c67a2ed4a41fa84bc85f51455368e3c96fbd03a026a83a21c98b2e01600e7` |
| 12 | `structure` | [IsCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/iscandidate.md) | 101 | `declaration-track:36b690edc89ac7e85ca49abcd3480b006ee9f8c3771637ad2bef400bf170c45e` |
| 13 | `theorem` | [top_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/top-candidate.md) | 106 | `result-track:d00aaf70276de30493c2f45842a15a1b1f2d9979f6be130fd6beb9ffdaf94fd4` |
| 14 | `def` | [Meet](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/meet.md) | 113 | `declaration-track:8fa40c3c6d4bd845dc523ffea76b764e0259e9b3dc6ee66d2ce0d96ad0f606f1` |
| 15 | `theorem` | [meet_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/meet-candidate.md) | 116 | `result-track:052ca4d3b7d115d23417430ff2a6da4e6a784ea9f39a0d9dd1ca430bf80583aa` |
| 16 | `def` | [Bottom](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/bottom.md) | 126 | `declaration-track:a9add82868f8690b078494320f6a9b95b9649ad861f4ddfa13ec66a5301844f7` |
| 17 | `theorem` | [bottom_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/bottom-candidate.md) | 129 | `result-track:1cb66f91fd2d8e036ebc4880f601295d50888a8d18e7db18117aa047e3cc4858` |
| 18 | `theorem` | [bottom_le](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/bottom-le.md) | 132 | `result-track:5130128850d9b3966a2d5ce9e6df0c28b79301c592c9e3934e3949fe94593dff` |
| 19 | `def` | [ProductTest](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/producttest.md) | 136 | `declaration-track:e7add818a5d62d417b32450f3fdcfc0cbd3ad5762739bd5747cd27b8d1eeceea` |
| 20 | `theorem` | [productTest_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/producttest-candidate.md) | 140 | `result-track:a9b8f58e37942d9f545a9b780d45e8146ac1b913eac10aedf8962f15eb3d735d` |
| 21 | `abbrev` | [Candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/candidate.md) | 183 | `declaration-track:1e8507088b4cc0c912b68677d2998c294bd55540098aec5369e5baefd856cb31` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:7d83222beebc17fc5c4f0459ca63852bd7bb61fa92230930ee15882ca06ddb90` |
| 23 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/instance-source-edition-3.md) | 192 | `declaration-track:d4e7bee51b1a4ec95bcfa8aa343db9ef99beb2a27ed7f09f128e09637ec9c445` |
| 24 | `def` | [SignedCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/signedcandidate.md) | 204 | `declaration-track:d316bec44c51ff654d1a0eedeacd32a550f9465010ebeeb815be1861953673d3` |
| 25 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/instance.md) | 207 | `declaration-track:798fd395bcbd62428ffdfef1691f0ce42b0919c5031d40ae4a14ad9d5efa9765` |
| 26 | `def` | [set](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/set.md) | 216 | `declaration-track:0f4e6948dc395df7697559ae2a969b90525d987a36f10ea4f591b1350a7a58fb` |
| 27 | `def` | [wrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/wrap.md) | 220 | `declaration-track:fd44541de97881b2fdf668d3c8dcb43dbc345644f57c40bc5adb0204d08a5055` |
| 28 | `theorem` | [set_wrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/set-wrap.md) | 224 | `result-track:a44725812280d4ca6fa1837b6d69cbad8bc62fbb4048bb8e3cacc1dabcb91014` |
| 29 | `theorem` | [candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/candidate-source-edition-2.md) | 228 | `result-track:4af8a5de7d1d78b2d5c57702e26bbd6ba53e705a316de70efed57d1d21341d6e` |
| 30 | `theorem` | [order](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/order.md) | 232 | `result-track:0b14aa7de79d083482ff3b5eeb78d8f4dab2894753d680d0e6bc425b256c1259` |
| 31 | `theorem` | [ext](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesNamespacedEdition1.lean/declarations/ext.md) | 237 | `result-track:c580a43447045aa1f955fe2ed93cd5b26e9212e73d1d103f85a6c473fb4cd1c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c91d8b2fb9bcbb3b2885d9e3448338ecc1870cc90130140bf1ba74a3f0877915 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variantba2e2915d5b00777c93a1b0869a11fa9ed503253dc83500bb31247f4d9ffa9a5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variantba2e2915d5b00777c93a1b0869a11fa9ed503253dc83500bb31247f4d9ffa9a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
