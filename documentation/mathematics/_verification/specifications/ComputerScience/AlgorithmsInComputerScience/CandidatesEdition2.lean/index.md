# Verification target: Candidates Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "648341eb493d774e470c6454fa6e6aedca36f31c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant93ed50f3b5d538121b5b688ce849c2bce60ae483662a7adc96aaa2e50faaf556.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `648341eb493d774e470c6454fa6e6aedca36f31c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant93ed50f3b5d538121b5b688ce849c2bce60ae483662a7adc96aaa2e50faaf556.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant93ed50f3b5d538121b5b688ce849c2bce60ae483662a7adc96aaa2e50faaf556.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Contexts` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ActualType](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/actualtype.md) | 26 | `declaration-track:62b620e8c74567847e931ffba1daffaa458581f9e91a6b3bb704180cf30880f4` |
| 2 | `def` | [Top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/top.md) | 30 | `declaration-track:7517180a31cc3e13d99fbeec55e8d2b94a6a6230c70da29d3d87545d0a04e681` |
| 3 | `inductive` | [TestedStack](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/testedstack.md) | 34 | `declaration-track:c3e951bbeb7e0b0845e9918b53cb967225a759f963f219f994c460728b6b4536` |
| 4 | `def` | [Ground](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/ground.md) | 40 | `declaration-track:6fbd0c03b85633087dbc878f0267b809d7c0e87e27c25f4b6098c00768423cd0` |
| 5 | `theorem` | [sn](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/sn.md) | 47 | `result-track:0e5007eed97f6d0d6f8eeeecd2b2b1f02e7d1b616ba43efb6d8a0199e3f9a5a6` |
| 6 | `theorem` | [forall_sn](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/forall-sn.md) | 52 | `result-track:875b6d735c208f8dfd336217b85a496c5d6f9c772157d1229649172939018a6e` |
| 7 | `theorem` | [ground_le_top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/ground-le-top.md) | 65 | `result-track:e497d9c5a17894155726e225427db656ea4915e2d97b721e602664b6c92ffa70` |
| 8 | `theorem` | [sort_ground_eq_top](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/sort-ground-eq-top.md) | 69 | `result-track:3f959f8abbb074c6d09ab15794b1566b766e1d4d90f4337d85353c95d6e31c61` |
| 9 | `theorem` | [var_ground](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/var-ground.md) | 77 | `result-track:09334e32c955bc3b7dc06663f68fa8c2177d6f56dbf2c3aa6b2ff2c9707c92f8` |
| 10 | `theorem` | [ground_application](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/ground-application.md) | 80 | `result-track:b1afc74bf9df21187a98eeda5dc5bdbc7a19f662e8755f55c20503e540865c65` |
| 11 | `def` | [ExpansionClosed](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/expansionclosed.md) | 88 | `declaration-track:8e5f0f514158d07852650ea6f4b2b7b7580b96b056fe574454b496f6149cc3ca` |
| 12 | `structure` | [IsCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/iscandidate.md) | 96 | `declaration-track:264b7a1e3217c1435ecf168883a971fbfe9c2b1f06ac13c0a9992c4022b32a2f` |
| 13 | `theorem` | [top_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/top-candidate.md) | 101 | `result-track:3e7c3f47993c8dd03ac845d1ac75ef4ac18b743b17e51c60153164f33deaefb2` |
| 14 | `def` | [Meet](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/meet.md) | 108 | `declaration-track:5d4b7aeef4b3213d40548b406f662cb455b558e964f3f3f42ee9b52fd652d072` |
| 15 | `theorem` | [meet_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/meet-candidate.md) | 111 | `result-track:ccb8a054f487d3d883206c9e55cc8822562831b73ecc7c4d6f45aeb3fcdd18e2` |
| 16 | `def` | [Bottom](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/bottom.md) | 122 | `declaration-track:e71e8dc441d71bd6ec4e7b6453de20b04bba6e484e411e79a9ed852024fc9b8a` |
| 17 | `theorem` | [bottom_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/bottom-candidate.md) | 125 | `result-track:ed4c59a9934abefe75e427a465ef613cd0e67a888b8bdb842cc20278766ca658` |
| 18 | `theorem` | [bottom_le](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/bottom-le.md) | 128 | `result-track:12c0c21ae650c8ee58e2d287080ac4db0f92bcb230e736f3c7d01cf1227abe1d` |
| 19 | `def` | [ProductTest](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/producttest.md) | 132 | `declaration-track:e6274d4ad8806e388514dc6a792b7b6b371e948ebe6206f2b089e538afdfb5bc` |
| 20 | `theorem` | [productTest_candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/producttest-candidate.md) | 136 | `result-track:e15d8973c4590b312a2dab0083161d7bec2e65c7439df1c7b10f91a4b5afed64` |
| 21 | `abbrev` | [Candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/candidate.md) | 180 | `declaration-track:2f011d37c6334f828de59ba1c6eea1325bfca2715998973dadc027ca065dc2c2` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/instance.md) | 183 | `declaration-track:31b075781ce383f14489744ec4d5e7b852a05fb4153e9f43fb852b33cb76c033` |
| 23 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/instance-source-edition-2.md) | 189 | `declaration-track:8e5da28d91dd0c5e57c5a412be8baab8b0d92f0fe03b26c8011fc306f5c5624a` |
| 24 | `def` | [SignedCandidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/signedcandidate.md) | 201 | `declaration-track:52e181bab49d84a41755005a6d43242aa9222be89021aa9fa0688880f34e1a23` |
| 25 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/instance-source-edition-3.md) | 204 | `declaration-track:cda416e4f40ce9d27fa9adaea5e91f79ce4a197a8b3887733c23b48034c3fee0` |
| 26 | `def` | [set](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/set.md) | 214 | `declaration-track:1967633f1e4849a0ee1987f4ddb7cb194249bce9e17ed7ce40e3a85bec72c7b9` |
| 27 | `def` | [wrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/wrap.md) | 219 | `declaration-track:d9d10d1241bc9c45710c78b4414dda274370e1609285c4adbc098c3a3a62c23c` |
| 28 | `theorem` | [set_wrap](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/set-wrap.md) | 223 | `result-track:3a387eb56311ba52b723f6109449b1350c4d399e5bc5fae650adb1c2652c7768` |
| 29 | `theorem` | [candidate](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/candidate-source-edition-2.md) | 227 | `result-track:8c337a932eda56f67150992bfdc9c71e2ef7c2d1c5db935bc4f30c577b9da9e7` |
| 30 | `theorem` | [order](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/order.md) | 231 | `result-track:2a0e6472fbf445041143300360737b0747431afa0c786f821cda9e8ed8791f05` |
| 31 | `theorem` | [ext](../../../../../ComputerScience/AlgorithmsInComputerScience/CandidatesEdition2.lean/declarations/ext.md) | 236 | `result-track:d01ee11fc23394ffa580498e4f2ec00bc2b553e2e82271fc9bed6974e4597a3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2adf7fcde5da143e202c3a7510da9d32d99f468b7f216e009a37ad1f9a90766 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant93ed50f3b5d538121b5b688ce849c2bce60ae483662a7adc96aaa2e50faaf556.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Candidates/Variant93ed50f3b5d538121b5b688ce849c2bce60ae483662a7adc96aaa2e50faaf556.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
