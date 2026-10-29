# Verification target: BDD

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4713dc0127aaa564352d8f43b33439c7314bd713",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4713dc0127aaa564352d8f43b33439c7314bd713`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Enumeration` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BDD](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/bdd.md) | 8 | `declaration-track:152e173383550c245ecd2f7c6ff8bafc5740ed25d383df04c1a51132f3b136c6` |
| 2 | `def` | [eval](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-source-edition-2.md) | 16 | `declaration-track:95c8be2434fc0b9c3b53b6c6027af88bc1f5926e1396f95c5d64bfc38b4a593d` |
| 3 | `def` | [toFormula](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/toformula.md) | 24 | `declaration-track:ee1543ada360ecf7e450ff6bd95fe97a6a9a5abadd6c3f77ce9c22a8b87bc85f` |
| 4 | `def` | [Equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/equivalent.md) | 32 | `declaration-track:32ea6f317f7ea1963b4141ae471f483904c1b73199addc96b6633fc899b2678c` |
| 5 | `def` | [OrderedBelow](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/orderedbelow.md) | 36 | `declaration-track:36657b5dbab40be8966f9a04ed09f22958b005957fa6e47b8f5341754ee31606` |
| 6 | `def` | [OrderedBy](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/orderedby.md) | 44 | `declaration-track:dfc6af7cb3fa154b81eb49a7c7aa6e51ecd7b669ce26f2a3d43e452b83df477d` |
| 7 | `def` | [Reduced](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reduced.md) | 51 | `declaration-track:bfca2c09c53068930c4eea7d578a3e5f2f704c5529471cc4d99045baa70d63d5` |
| 8 | `theorem` | [eval_toFormula](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-toformula.md) | 55 | `result-track:df1e82036353127b21a1b3a0136a9396528ed20543dc7140b7d5e018309fb4fe` |
| 9 | `theorem` | [equivalent_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/equivalent-refl.md) | 66 | `result-track:14ec9a8ad9bb7e9c974139f9dc682e13ff782afa5136f4aca4ff185836680f51` |
| 10 | `theorem` | [equivalent_symm](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/equivalent-symm.md) | 71 | `result-track:ccf125f376764ed1640eba7cf7858d6bd1fc5d87dbd4956368aa0aadb160dd4c` |
| 11 | `theorem` | [equivalent_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/equivalent-trans.md) | 77 | `result-track:8f864cfb61534c7185f07cec94b398558818e76f14d09ebe156dbe4314adb6ad` |
| 12 | `def` | [canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/canonical.md) | 85 | `declaration-track:8895a47694a325a21744931c16d39a41335772d650a5850e1e69a17b2300565d` |
| 13 | `def` | [ReducedOrdered](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducedordered.md) | 96 | `declaration-track:4315005fef542484d7beb3e4a68b0c6efad7877d19a3a1d37bfe13f10f5705fd` |
| 14 | `def` | [ReducedOrderedFor](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducedorderedfor.md) | 103 | `declaration-track:41588b28fd8bf895256e41218492a66753257944692abb48a8027c906cd40bd5` |
| 15 | `theorem` | [canonical_ext](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/canonical-ext.md) | 110 | `result-track:5190651f6203b915773655c524c7c3103a01f952fde86e27d0ec3068911af1ac` |
| 16 | `theorem` | [canonical_reduced](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/canonical-reduced.md) | 133 | `result-track:c48f9d64c63049b1225a2baf6b2746b75487390a1af108e634d51e75c382089f` |
| 17 | `theorem` | [dependsOn_set_tail](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/dependson-set-tail.md) | 153 | `result-track:ac0f83dcc0217711860324e25efc227f73184b6c5de64a601bb1a4786a72add8` |
| 18 | `theorem` | [dependsOn_set_eq](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/dependson-set-eq.md) | 172 | `result-track:7dab88ac0186f3b5263165a56fef52865514af94135f08464a4ed62b9619c7ba` |
| 19 | `theorem` | [eval_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-canonical.md) | 192 | `result-track:abae0030e721407516215c6a9e220d84d01b1b2e38a672d4f7de86316336699f` |
| 20 | `theorem` | [reducedOrdered_extensional](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducedordered-extensional.md) | 247 | `result-track:532bba77de8167b0876e3575482e24a65cea1b5cec12c3902dc230b0a1d21526` |
| 21 | `theorem` | [reducedOrdered_eq_of_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducedordered-eq-of-equivalent.md) | 258 | `result-track:f43135e6e3f5521c6336c58240b4b4f932393a05b25dff3a13178398258bb856` |
| 22 | `theorem` | [reducedOrdered_unique](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducedordered-unique.md) | 268 | `result-track:823bb151ecd99e80d0322342ce1b52580915e705959c36c54be19459fc8e5144` |
| 23 | `structure` | [NodeKey](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/nodekey.md) | 278 | `declaration-track:00b3a0b18141a40feeb4ac26e4645e9b4c5fc304dc6c880ecf6d64fb5e91a8c6` |
| 24 | `abbrev` | [UniqueTable](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/uniquetable.md) | 285 | `declaration-track:681d7b5e12e5461ced19b0060522364d3da35656876fe895abd74b0ec953e711` |
| 25 | `def` | [NodeKey.matches](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/nodekey-matches.md) | 289 | `declaration-track:677ea4db2aaafd107f0ba81fbb550d3a544e10b615aba0afd2301d9a34e3d08a` |
| 26 | `def` | [UniqueTable.contains](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/uniquetable-contains.md) | 297 | `declaration-track:0b899fb2f85e6f87c6cd5384918f5ef216ee92e2e5d3c084f71a954e6bb6a284` |
| 27 | `def` | [mkNode](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/mknode.md) | 312 | `declaration-track:281b9feb71b418bc22d49ae720e450795c3668f21288d2e360c13765c81ecbd7` |
| 28 | `theorem` | [eval_mkNode](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-mknode.md) | 324 | `result-track:e5797e9b3940e572ee77ee43d5367e1df86131669ff2cc0b2e95e66f1ddfd719` |
| 29 | `def` | [reduce](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reduce.md) | 340 | `declaration-track:e43eff96957573327c9e3692ff906a90b42fe88ce69d12bcade34aaa5c09dedd` |
| 30 | `theorem` | [eval_reduce](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-reduce.md) | 347 | `result-track:4515d282fd6ded5cd560d1d2e96a5760fb05501f310087849632710778937368` |
| 31 | `theorem` | [reduced_reduce](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reduced-reduce.md) | 360 | `result-track:ebb862d93f062160493e2a6dc0f0fb2d30cdb891a363c8735c0f18336cf14f26` |
| 32 | `def` | [reduceWithTable](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reducewithtable.md) | 371 | `declaration-track:97fbaf6559dd062cacdbb1c22a5a739d4f071d89d07e49ffe5e9b569f25a93fd` |
| 33 | `theorem` | [eval_reduceWithTable](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-reducewithtable.md) | 379 | `result-track:3785b72210588d5e049cf3c66c28451a65dca0c63fc6956c9d907091e1b3d427` |
| 34 | `def` | [reduceUnique](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/reduceunique.md) | 397 | `declaration-track:bbf00da1dbf65150707e5ffc73d2b74c6b82b5d36c01f1061896c001cd5552d2` |
| 35 | `theorem` | [eval_reduceUnique](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval-reduceunique.md) | 400 | `result-track:394b83e14688e7f0afbb969f68329e62dc86d70c83c8c768a4a9a2824a0e1c02` |
| 36 | `abbrev` | [Pointer](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/pointer.md) | 407 | `declaration-track:c2ee8ccc48c33144c543ea21ebd8b0cae2b3a9a9a0cb954d66bcf416d62fee93` |
| 37 | `inductive` | [Ref](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/ref.md) | 411 | `declaration-track:f93ba2dad4eb321b957e571380ca6c1fded83e30b4105c193fb5001c02606e72` |
| 38 | `structure` | [DagNode](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/dagnode.md) | 417 | `declaration-track:8f167d437fb4520d2de06b4e5cd24d92d3f59ce7be2aebca587923f4966a1b80` |
| 39 | `structure` | [Dag](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/dag.md) | 424 | `declaration-track:56c71bd0cc8efe02885366768b279a8c25040e2d2a35f594e90443480cf71e43` |
| 40 | `def` | [getNode?](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/getnode.md) | 430 | `declaration-track:73a6d1a0390e6ce2a92788b4ca13b0eaaf6da787480911350f99f36750dd867f` |
| 41 | `def` | [fresh](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/fresh.md) | 436 | `declaration-track:b3a8c2d73f21fdaf26479c6a7ceef94777afed50641dcc0284ee9ad48f357fef` |
| 42 | `def` | [push](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/push.md) | 440 | `declaration-track:f71605bb124601d51824f87aa8e3cba38a71ec3f694c6f0db0f33d694de52660` |
| 43 | `def` | [get?](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/get.md) | 449 | `declaration-track:b1d48c91d64146a3f8bddefbe0d2d931aef15334e5f48408d4dd9975f247146f` |
| 44 | `def` | [evalRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/evalref.md) | 456 | `declaration-track:c836c2ec1f6c3df0fc57077c5e24ed65bbf143ac62639048bdc42d98d844401f` |
| 45 | `def` | [eval](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/eval.md) | 471 | `declaration-track:2e434eb687d1422cf3f40f5cb08f837a0d7a7c4be216246c5b07e705eb963add` |
| 46 | `def` | [serializationVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializationversion.md) | 475 | `declaration-track:88a2a0678e2af801c34767bb216e139995c438c5c11bd87dffee991cbc609c4f` |
| 47 | `inductive` | [SerializedRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializedref.md) | 479 | `declaration-track:f0a070cf183b070888bfaba1cb1c75052118538c4b9c6840604da8d682743031` |
| 48 | `structure` | [SerializedNode](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializednode.md) | 485 | `declaration-track:56ccda2781ad65508f5dcbaa58b5228197fb7cbaec859f0ea877080ad6807a8e` |
| 49 | `structure` | [Serialized](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serialized.md) | 497 | `declaration-track:7e174b84bb1e43b6dd000c3991f262fa0b329cdbe807aefc80f3faec0d5e575f` |
| 50 | `structure` | [Snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/snapshot.md) | 503 | `declaration-track:c6718ee4076bb8c3403e3018d4926278b3eda6a673a89f1f6625c500d9035858` |
| 51 | `def` | [serializeRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializeref.md) | 510 | `declaration-track:33e415eade5a3f67b57f9410fcf2b021efed78051978cd457e2ad4db32dd15da` |
| 52 | `def` | [deserializeRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializeref.md) | 515 | `declaration-track:55f374ab8173c555ee06059131c4a7ff1e59b2e4852bdf37415a3fbc91daae16` |
| 53 | `theorem` | [deserializeRef_serializeRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializeref-serializeref.md) | 519 | `result-track:3f991319d64ebcfeb8238cfe6972c48e034bdfe4777c26aa12880e26a8e8bdc8` |
| 54 | `theorem` | [serializeRef_deserializeRef](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializeref-deserializeref.md) | 524 | `result-track:6a992600e1365afc8dbeeca0ba9e706d0012fcf749e2efe7ee253102ca56c8d0` |
| 55 | `def` | [serializeNodeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializenodewith.md) | 530 | `declaration-track:274aa632095ffd10475a56094621265138eaedaefc0830eb1fc64ba761ea70b6` |
| 56 | `def` | [deserializeNodeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializenodewith.md) | 539 | `declaration-track:6a54eb1b9ad8857963512e5306cc18ee0e6711f22a0b4bd628af8da538434218` |
| 57 | `theorem` | [deserializeNodeWith_serializeNodeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializenodewith-serializenodewith.md) | 547 | `result-track:977aec6a04867689d13094584df5f97151c86d0b5d9cef5a824355d0db9e5025` |
| 58 | `def` | [serializeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializewith.md) | 557 | `declaration-track:6aa36a7625f0d3734b35d5bfad53b136a2adf69aceb85f4ac15a3358ff275c34` |
| 59 | `def` | [deserializeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializewith.md) | 565 | `declaration-track:7ffcbd896c5f9498c9a5a8b99908a80606351ddb0999bec4d30d9aadd2a52f08` |
| 60 | `theorem` | [deserializeWith_serializeWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializewith-serializewith.md) | 571 | `result-track:4032b2f0d4948642e608fc6b37a58ccfc0a7a5cdfc3eea0c23e5d6444980877e` |
| 61 | `def` | [serializeSnapshotWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/serializesnapshotwith.md) | 589 | `declaration-track:a9aefd14cd9321254fa9ec9d7b4c15cd4684445adcff6af087027f8464702923` |
| 62 | `def` | [deserializeSnapshotWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializesnapshotwith.md) | 599 | `declaration-track:51e2865bfee0f275bec1696819cee2a7439efeaefd3882750dd58e33547d32df` |
| 63 | `theorem` | [deserializeSnapshotWith_serializeSnapshotWith](../../../../../ComputerScience/AlgorithmsInComputerScience/BDD.lean/declarations/deserializesnapshotwith-serializesnapshotwith.md) | 606 | `result-track:0c35e4495c5d20590b05ffcc5ffd082570f0938b9207b8587bb2454c4051af2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=09b6593413478d6dcaa48b7c25eaaa89870567fec965b05644b240182d3433f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BDD/Variant406b007ec87dc1d5dd69e10e5dddf32975166f185037cb77730e18b20819e3cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
