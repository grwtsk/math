# Verification target: WSeq Relation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `180c51a648a169e3bf100d5cb658df48a180f8e8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.WSeq.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiftRelO](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrelo.md) | 33 | `declaration-track:84e8634fc38a66557999e082af6825d3829825acacf3a1552712633d21ba46de` |
| 2 | `theorem` | [LiftRelO.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrelo-imp.md) | 40 | `result-track:d15956ee909d4b1e3dc3c2393075a2bccd7cf76d1da19f3470794f5c019f6da0` |
| 3 | `theorem` | [LiftRelO.imp_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrelo-imp-right.md) | 47 | `result-track:eb91f2fd197bb321b0d370046a18b4b3047703cf939a5cfc764b3d3c494aca46` |
| 4 | `theorem` | [LiftRelO.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrelo-swap.md) | 51 | `result-track:b662a988f593e70d9af926906846b019abe76a85a8a9a84ebc9fc7ab377031ae` |
| 5 | `def` | [BisimO](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/bisimo.md) | 58 | `declaration-track:fe8a16df275d048998cb88f9b4135f2bd00bae97b1174db891191d5bcb114c10` |
| 6 | `theorem` | [BisimO.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/bisimo-imp.md) | 61 | `result-track:a9aa83f72b5f8c72e97c0298e58f4b9cefc0066d8799a8014d1ec7774d00e682` |
| 7 | `def` | [LiftRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel.md) | 68 | `declaration-track:050323712d6a418475fb44ab3f904c9074b6a99d5d7a548f6bfdd3070b91a1d1` |
| 8 | `theorem` | [liftRel_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-destruct.md) | 72 | `result-track:99ec160fd09bfa453c7d1d06a588d57bf7e0a79413046b75f4eb1e299a92014e` |
| 9 | `theorem` | [liftRel_destruct_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-destruct-iff.md) | 79 | `result-track:bcafd29f9fef9abb3a3571f344037260fc8f74c76a347714ac506e140250a869` |
| 10 | `theorem` | [LiftRel.swap_lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-swap-lem.md) | 95 | `result-track:178ef90b020c188c1b55d0e37f6c7e4aa2505f0c4ae72c96f73ecb552e614e10` |
| 11 | `theorem` | [LiftRel.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-swap.md) | 101 | `result-track:45ade2a409dce5a119510b73675aaeb313e211ec8e21594d20bdeabce04fb2e3` |
| 12 | `theorem` | [LiftRel.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-refl.md) | 104 | `result-track:5635a9f815f5b005784f5e55c5af2a12868c02ed31a9821f010d1eef29185613` |
| 13 | `theorem` | [LiftRel.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-symm.md) | 115 | `result-track:9aa4c0ea98684e6bd09f9ab76cd9e82b050069f844be2bccb6d0ce1ba31872d2` |
| 14 | `theorem` | [LiftRel.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-trans.md) | 118 | `result-track:54bbe6de72c774a34b453c8910651ddbb27618bfb6a209edb51f14ac45dfabf2` |
| 15 | `theorem` | [LiftRel.equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-equiv.md) | 149 | `result-track:61d912eed510fd0d92f69263b468e208373e0ee3b3897537fdbdd74ac49ce74e` |
| 16 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv.md) | 156 | `declaration-track:7f7f9ef838ccd773ef30e2e8ae950340e929dd9f9db182a5082402adfa70be1a` |
| 17 | `theorem` | [Equiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv-refl.md) | 162 | `result-track:b572314e21d68bf3339ceb46ad7197e376cb7902ef94d47328fcc9559a612d20` |
| 18 | `theorem` | [Equiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv-symm.md) | 166 | `result-track:65818916f33548c8824b9e2ab94a281c0a5c94a0a910372bf7e10105c849e6f2` |
| 19 | `theorem` | [Equiv.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv-trans.md) | 170 | `result-track:672e30fe1ab40dbf6b05e6b3186950cc2b18252957bd88269b844336944c6c0d` |
| 20 | `theorem` | [Equiv.equivalence](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv-equivalence.md) | 173 | `result-track:f15958b8ad9b412c1cc100e0fa6bf62f8c89a1fc093b14b6f9d16e325444f840` |
| 21 | `theorem` | [destruct_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/destruct-congr.md) | 176 | `result-track:b62b03d3ca101aa1343b8770312b3ff5d339dc88946c46e22e99a08688ad5e68` |
| 22 | `theorem` | [destruct_congr_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/destruct-congr-iff.md) | 180 | `result-track:88cd586248efba73c36b5798331c5378da45a6abda98ab4b76541065afea8265` |
| 23 | `theorem` | [liftRel_dropn_destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-dropn-destruct.md) | 186 | `result-track:d133c5cd47d5d3b828ca64d3315c49b37fce8ae30cdd8524c1e061302a0d90be` |
| 24 | `theorem` | [exists_of_liftRel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/exists-of-liftrel-left.md) | 198 | `result-track:fc2c12bde3a797008e75ca31524d2fee28912c3f036aaa759807f35a6570e741` |
| 25 | `theorem` | [exists_of_liftRel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/exists-of-liftrel-right.md) | 205 | `result-track:44a24af2e571b779520ad96eb3212b57cab460079661852b42077513c6f4a09d` |
| 26 | `theorem` | [liftRel_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-nil.md) | 209 | `result-track:262e4df3225c41b93538c84d3daedd66f303baee94f61eb451d66c9610a35bc0` |
| 27 | `theorem` | [liftRel_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-cons.md) | 213 | `result-track:65a872c65fb1ad1dc913ca94039e2c370a86b678375a2095c0bc68698f873e94` |
| 28 | `theorem` | [liftRel_think_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-think-left.md) | 218 | `result-track:a6a1a895df79a0812600ec1c2e7aba9971d5dec6f546d66970399e78ec2ed4f7` |
| 29 | `theorem` | [liftRel_think_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-think-right.md) | 222 | `result-track:16b398f3a0aa0e0338472ae3951d4b32208aaa7103c91f6d52b0ea12483071eb` |
| 30 | `theorem` | [cons_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/cons-congr.md) | 225 | `result-track:f4af97cd3847d387f4827a1eae00a68cc3e930cb2ec0ab7c74cfdd67170d05fa` |
| 31 | `theorem` | [think_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/think-equiv.md) | 228 | `result-track:2aee6212fad927284c92ce748ccc977cd855e0c30c5884849cdc47904a343217` |
| 32 | `theorem` | [think_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/think-congr.md) | 230 | `result-track:24ffc5d9585ece5bc37a3e27013f44b5f2006b009ae3aaaf751d995d6d3971e1` |
| 33 | `theorem` | [head_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/head-congr.md) | 233 | `result-track:ac2a11e42f475ba4d4c7714df0cb4ad706190875365fa31369e4601ef3983306` |
| 34 | `theorem` | [flatten_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/flatten-equiv.md) | 253 | `result-track:9f36da218f87c7f648237eda29810a08cca3caf03fbb753dc116a4f561f6bc51` |
| 35 | `theorem` | [liftRel_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-flatten.md) | 260 | `result-track:23e1f4785a2ed052ee7a0e47cf2bb97c083fd49f15658540a927fb83d47d94cd` |
| 36 | `theorem` | [flatten_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/flatten-congr.md) | 271 | `result-track:24c3fe8ac6e8620deea4c20da8441b3f52163524936f23a953587a9522fcbf7a` |
| 37 | `theorem` | [tail_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/tail-congr.md) | 275 | `result-track:d2654597b695f92985f1c2fe8234e475bb649c77dbb9f39ebad1b9c5df151675` |
| 38 | `theorem` | [dropn_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/dropn-congr.md) | 289 | `result-track:cfd3109ef33549e1729a705e71523b890d422aedf3692d819a7b139d3a42a269` |
| 39 | `theorem` | [get?_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/get-congr.md) | 292 | `result-track:07f3cf3972d55d042069da5fbea674b908fe89f3d25a598f7bc5511cd611b039` |
| 40 | `theorem` | [mem_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/mem-congr.md) | 295 | `result-track:2c947228b0a7e3769e512f703a14973eed1bcee8758174c60addefed182e2d5b` |
| 41 | `theorem` | [Equiv.ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/equiv-ext.md) | 301 | `result-track:e0b0e82b2fc4de507dab8395ad1ccfd7e9341c57e3b4e7b07a34c9da90d4a428` |
| 42 | `theorem` | [liftRel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-map.md) | 323 | `result-track:5cf2ff4b37bf28c0acb44722923854413d98858b55b6841f6bd569e57651ad71` |
| 43 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/map-congr.md) | 341 | `result-track:12b36ed4c357eb4552da8d64d1f4ba84180f0db3872c94622fa9f4277330aa71` |
| 44 | `theorem` | [liftRel_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-append.md) | 344 | `result-track:dc9763c382d4a1109786346a7b9d07a3925103395313454e1b91873864dff1e3` |
| 45 | `theorem` | [liftRel_join.lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-join-lem.md) | 370 | `result-track:15e856c85e7531a4e6e5428a89741ce5b4e39c4bc8401e25b826e61ea44fce52` |
| 46 | `theorem` | [liftRel_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-join.md) | 421 | `result-track:58526aec4cdc2b8bd3832f247b3ff43760c3d3d070244c29ca510a5da10e764c` |
| 47 | `theorem` | [join_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/join-congr.md) | 447 | `result-track:5b86d52cce0fbfd92b4eff85087246a85da086a3f376e6479cb184b58181d889` |
| 48 | `theorem` | [liftRel_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/liftrel-bind.md) | 450 | `result-track:337819fe1ad4b20f0c86ddf8365849d24755b12dd9620cffa69b1d02bd8f88ac` |
| 49 | `theorem` | [bind_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/bind-congr.md) | 455 | `result-track:315d5d6cdf6fe1184fe211c1749075dc746f00bdb84e8e89f5173f87400be2b5` |
| 50 | `theorem` | [join_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/join-ret.md) | 460 | `result-track:dc5f646e6d1100dc19acbd87ca763eaf53ec413c445200be74ce23f4ebf34968` |
| 51 | `theorem` | [join_map_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/join-map-ret.md) | 463 | `result-track:67b8fd676f1bb6cc341b4bf65d277bcd67814f421cc1215b9fee205028cc6e33` |
| 52 | `theorem` | [join_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/join-append.md) | 478 | `result-track:6fd89ce58d7b5a40d399257cc6459d01f520ca0be8c298435f54e7eef0847d3e` |
| 53 | `theorem` | [bind_ret](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/bind-ret.md) | 509 | `result-track:4227a9bc0221a48bc7b7c7d9c18e74813a9369415a16f31fb3cb8e1a698e00d3` |
| 54 | `theorem` | [ret_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/ret-bind.md) | 515 | `result-track:9f6aa6a3f32f096a4740cf83a3dbc24046991530ef2f1bbe16f37215ca520944` |
| 55 | `theorem` | [join_join](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/join-join.md) | 518 | `result-track:e137ec061f797b4b5742c9c8a1d256fee5b7f28f282aadc8697a6e45cb5df0cc` |
| 56 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqRelation.lean/declarations/bind-assoc.md) | 553 | `result-track:70efc06670b3461112974a1f0893b468f0e11e194b5aed848887aef380c1d041` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc2a83f817c09ab7749a284e45b08d056d7aa3de1c3b6bbf20a0aa73f1a1fb64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
