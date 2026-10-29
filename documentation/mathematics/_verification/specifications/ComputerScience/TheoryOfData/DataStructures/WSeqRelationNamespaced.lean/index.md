# Verification target: WSeq Relation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0bc9d078b276e9a874538a523cadcdc74cb0520",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0bc9d078b276e9a874538a523cadcdc74cb0520`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiftRelO](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrelo.md) | 41 | `declaration-track:e1557c71a2dcd981313199aa51fe977119a39af677401c27af86380d2bfcae03` |
| 2 | `theorem` | [LiftRelO.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrelo-imp.md) | 48 | `result-track:a06410841bdafc73d57d5de395459fc3e88cc6f3d1d3bd63db1ce62ba05afbed` |
| 3 | `theorem` | [LiftRelO.imp_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrelo-imp-right.md) | 55 | `result-track:ab58197f3dde3825ec676fe0865b7548385fba1917d27d09c3430ef4156329a8` |
| 4 | `theorem` | [LiftRelO.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrelo-swap.md) | 59 | `result-track:b8ad0a576b9dbefdb8664c604a8fb63f21f0c3d2bc6ff52db27c7d27fe7386d1` |
| 5 | `def` | [BisimO](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/bisimo.md) | 66 | `declaration-track:2d15c997e94b74687ca00a6615a06cace501fe148198c946416abef10261e63e` |
| 6 | `theorem` | [BisimO.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/bisimo-imp.md) | 69 | `result-track:93bdde7bc6808c77da3e06be83da36c36c41b48bb37ecd0089e3563579ebc1d7` |
| 7 | `def` | [LiftRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel.md) | 76 | `declaration-track:f4611eae1cdd5a0f50b4e3f81688237a5c1e55fc7f4ef354f02411be101af32c` |
| 8 | `theorem` | [liftRel_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-destruct.md) | 80 | `result-track:1bd619f08fb358ae1d2054b0c1d47b96ebbb272b772bdf2d3f5c5e5d004e6115` |
| 9 | `theorem` | [liftRel_destruct_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-destruct-iff.md) | 87 | `result-track:e050a7bacb47960993417c3dd4d91c5cfc6801826147a6302fe3d00d4215374b` |
| 10 | `theorem` | [LiftRel.swap_lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-swap-lem.md) | 103 | `result-track:0d31025392bb79b9549eef781e5e81dfc55dd327f7914c860615bc078ea28d45` |
| 11 | `theorem` | [LiftRel.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-swap.md) | 109 | `result-track:e3d6d30fcf223d90efa04931bf72112a3b1c3a97850483862011f19ba93bba2c` |
| 12 | `theorem` | [LiftRel.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-refl.md) | 112 | `result-track:81af10b0ffad6155284b8c4d8f2439ee6dca4d8ffbe8c79293e6abca9687abe7` |
| 13 | `theorem` | [LiftRel.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-symm.md) | 123 | `result-track:e02be4c4d7631997ec4eea415fb7dde44019b3fdc73a4c23867a233c3f3d1ecb` |
| 14 | `theorem` | [LiftRel.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-trans.md) | 126 | `result-track:89ad84523fb288ab6052165aea9c2522ec44b84ea3af8ac30d87ef6f854a052c` |
| 15 | `theorem` | [LiftRel.equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-equiv.md) | 157 | `result-track:1533259bfa69c66a854a8cf87620e769fab1d1d709feb3d062f766d575997fb2` |
| 16 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv.md) | 164 | `declaration-track:3fb80bc16f2a25e79976ba8a194f22bbf20f4d0290fbf0131072086358d4bfc8` |
| 17 | `theorem` | [Equiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv-refl.md) | 170 | `result-track:03e2ad9176e15502d6947dcd6de7961cf67e109a9d0841b128b391fc69a0561d` |
| 18 | `theorem` | [Equiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv-symm.md) | 174 | `result-track:df11d22e6cc00a820c8c182fe72d259875350df9725e55fe780b7303ad36ea94` |
| 19 | `theorem` | [Equiv.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv-trans.md) | 178 | `result-track:7a8f58ab167d0b975e2e53fd1db778f6d973a7947eff39ff9f03bf8b3cac55f7` |
| 20 | `theorem` | [Equiv.equivalence](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv-equivalence.md) | 181 | `result-track:42184c32e73a739dbe9c1d877ddc638fc2f7b3a13f5be684e4ced6ba1b4ab595` |
| 21 | `theorem` | [destruct_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/destruct-congr.md) | 184 | `result-track:2db7c61d867105811bd0d07af36854d86be23bbf347881ae7e7675ab43d9a616` |
| 22 | `theorem` | [destruct_congr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/destruct-congr-iff.md) | 188 | `result-track:7dd9cfdf5f672923fc05bed5d91f405f281c0d3cd221af8b7f4ed3ddf675e721` |
| 23 | `theorem` | [liftRel_dropn_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-dropn-destruct.md) | 194 | `result-track:c9bb19f1a1e8e7dd3d74fe08b2edc431a5546601d58effee39a8b207dbff5bf4` |
| 24 | `theorem` | [exists_of_liftRel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/exists-of-liftrel-left.md) | 206 | `result-track:fdbba7eb71b03bbcc25834912bfbb31c66a521cb6627458eb1f426cc82daefaf` |
| 25 | `theorem` | [exists_of_liftRel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/exists-of-liftrel-right.md) | 213 | `result-track:0a6099f32dfe74a697172845164d0ea5fb7f57a25bc6965c02b5e6b5a3e87bcc` |
| 26 | `theorem` | [liftRel_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-nil.md) | 217 | `result-track:449d88162d8c7681c1438ad4e3ff77c267d7350edbdb0f7c9513a69d083349cd` |
| 27 | `theorem` | [liftRel_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-cons.md) | 221 | `result-track:b0da691558cc2e6598dfcd87771076ff24e80db303576f81fd6de5dfe793f80c` |
| 28 | `theorem` | [liftRel_think_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-think-left.md) | 226 | `result-track:effc9b95166e5cd0bedbec8910e13762dca718cd8de0c85c068af27263f79e5f` |
| 29 | `theorem` | [liftRel_think_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-think-right.md) | 230 | `result-track:9e91c87d64a237c09b2f06260730ce467c774e6c88babfd97975a461165bca4b` |
| 30 | `theorem` | [cons_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/cons-congr.md) | 233 | `result-track:49fd1d99fbc62e4529defd7e7892ca0b49e41882f289b1b5b4cbc6f9085f2584` |
| 31 | `theorem` | [think_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/think-equiv.md) | 236 | `result-track:e0d788218efded15590fbf3f3d9e71753df799682d2cf6d7191aa0b80e27418a` |
| 32 | `theorem` | [think_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/think-congr.md) | 238 | `result-track:5bd2ee51483d85a0cdd834d5de3c1c9a38cf1520ec83c77a9e771e5786d14438` |
| 33 | `theorem` | [head_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/head-congr.md) | 241 | `result-track:c75ff90d73419f1adb6eaa83e30570f67ed87179481917d22783df22663cc156` |
| 34 | `theorem` | [flatten_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/flatten-equiv.md) | 261 | `result-track:86091bdf40c57a6d39e26a21419c73b404b08d7ce72ad1ec7f3cc4c6b211ee5e` |
| 35 | `theorem` | [liftRel_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-flatten.md) | 268 | `result-track:15923dfff6265c5d9a697e8c99d66d80878c9a558c9a82c5b136b72c8b5b18a6` |
| 36 | `theorem` | [flatten_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/flatten-congr.md) | 279 | `result-track:6f6fc3671178890bad9993cda7a73a35a9a96f32e93a7be7a4570b3711e62b54` |
| 37 | `theorem` | [tail_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/tail-congr.md) | 283 | `result-track:d643635b73197f39ced7211b5f46de21f5a109644d40f9d83eb29741c0f36bad` |
| 38 | `theorem` | [dropn_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/dropn-congr.md) | 297 | `result-track:dc72ae5df505ed583d9a9e78ad1e78b33c4cbdc141e8405d667a76b5edb3f849` |
| 39 | `theorem` | [get?_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/get-congr.md) | 300 | `result-track:9d1279b796e55b9c065d403e5e7ad2dde8dc07eba9c0d48ed0853ca1a63f2531` |
| 40 | `theorem` | [mem_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/mem-congr.md) | 303 | `result-track:a0f6ea9031e9ad432b666a02ccd83de9bdeef0302e9dd1c8016979bec2fba8fb` |
| 41 | `theorem` | [Equiv.ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/equiv-ext.md) | 309 | `result-track:1a9b8eacb59a2c270b457c5b6089b36803a8093b2dc35a4eaee12ddf37584a79` |
| 42 | `theorem` | [liftRel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-map.md) | 331 | `result-track:937dab2cd5452b0e1a3e27f2544dc2ea6aa6d148d35ae24e807d75a873f4c4c9` |
| 43 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/map-congr.md) | 349 | `result-track:732a220a6493c35ba6600bdaf2ad8c13ca36588e2469cb977b906fa4e045712d` |
| 44 | `theorem` | [liftRel_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-append.md) | 352 | `result-track:23ea1b5f2c660c4ee6f492b251ed0e7953ae8362afac971c64281f178b7f9120` |
| 45 | `theorem` | [liftRel_join.lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-join-lem.md) | 378 | `result-track:7c81a14a97baa1a8fc392fde84b064858f6d60f29b327292ae0c0b6750f6534e` |
| 46 | `theorem` | [liftRel_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-join.md) | 429 | `result-track:72ba84a709df9d45f3f3ffe02cbb48bb22cd3164ec07cab97d8394f750296a85` |
| 47 | `theorem` | [join_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/join-congr.md) | 455 | `result-track:49569807e26be548888d8ba28c50d8c30add95bc78fb1c4cf158d2365b73c2de` |
| 48 | `theorem` | [liftRel_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/liftrel-bind.md) | 458 | `result-track:3912805d1e4b2aec5dcc59baf185577aadcc3f2f66a50d23ffb33468a04b216d` |
| 49 | `theorem` | [bind_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/bind-congr.md) | 463 | `result-track:c923c3e262a43428b4f8986eb88a325bbbce7b340bbee15f563c786f3b9cd6fb` |
| 50 | `theorem` | [join_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/join-ret.md) | 468 | `result-track:b4757c273934a3289ef4763d8a3f0643e4e351fe14c4beec30a5b4e3b9fb2a5d` |
| 51 | `theorem` | [join_map_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/join-map-ret.md) | 471 | `result-track:36846d22dd045c3983a53db7642d99b39b6d0972c2e6585e466985d12d74acae` |
| 52 | `theorem` | [join_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/join-append.md) | 486 | `result-track:f4ec060424b9fd7ca6dde09ec9e6e99ad38bb044efe010a194b663ea80e7a2d1` |
| 53 | `theorem` | [bind_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/bind-ret.md) | 517 | `result-track:b8671b0f770de19a6a6831b12c94194fd31cb4b489e4a5fe3ac1a8152086c2ab` |
| 54 | `theorem` | [ret_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/ret-bind.md) | 523 | `result-track:3e7b2d6cb6fb913bd5d30d3928c763ea4b9e529616ccec5e60df8a4d9792ea1e` |
| 55 | `theorem` | [join_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/join-join.md) | 526 | `result-track:85ac5b112ff13eb1956c8c507cf81c9e3d6667006b38a8341dfdbe7f793844e4` |
| 56 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelationNamespaced.lean/declarations/bind-assoc.md) | 561 | `result-track:fccaba41995a6fc1d8fb36df97d2218804d41a47d2ce8c73c0b243bd65b2da4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=80e3d9cd33239592aa785c5d6ebd7c3d6abb3d0725cbca306795110cdde40f64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant3077026d604bab59b6dfb25f4fce1beb4ffe334b7fb95dcb2eb94503841cbdab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
