# Verification target: Core Namespaced Valuation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6314296db1f5e9aa1590c209ca4595b732273d3",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant5f683975f655b46b0735a411a4f61aa52ed292cf18a0fbc1e83082643449950b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6314296db1f5e9aa1590c209ca4595b732273d3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant5f683975f655b46b0735a411a4f61aa52ed292cf18a0fbc1e83082643449950b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant5f683975f655b46b0735a411a4f61aa52ed292cf18a0fbc1e83082643449950b.lean.json)

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
| 1 | `abbrev` | [Valuation](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valuation.md) | 16 | `declaration-track:eaeb9a30d0d5ba24b8ff9a60e93cfea64e6c0a4dfc2839e07a4b59f6cb3a96c6` |
| 2 | `inductive` | [Formula](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/formula.md) | 19 | `declaration-track:3f4fdad6b2170d59f8c918143f4f0ad7357ded365c2fe916bae7b004bb36191b` |
| 3 | `def` | [const](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/const.md) | 35 | `declaration-track:42ad29ab9526d9fa9a08312db0fee857bd5a48437ad826fb0d58d572e404e932` |
| 4 | `def` | [eval](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval.md) | 40 | `declaration-track:248bb08441f30629fbd7820144d3b897436b7040babafd39c41707a15028bfce` |
| 5 | `theorem` | [eval_var](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-var.md) | 50 | `result-track:8eccb6328fcac078970a771595e41e4268e33a480025da655004f5e65a5270b7` |
| 6 | `theorem` | [eval_falsum](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-falsum.md) | 53 | `result-track:ebb87d26158f90656298eb00ceb6fccef89048c6b74a9086082b6af3d75a55ce` |
| 7 | `theorem` | [eval_truth](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-truth.md) | 56 | `result-track:3ed24ae671ddad2f1014bc1d13a4cf2a1ddf52b4dc6b8de517b14b69d4e7e870` |
| 8 | `theorem` | [eval_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-neg.md) | 59 | `result-track:de5825905e53453d1291abb6fb2b63e5db20b54e133c6427dcd94a0d6caebfa4` |
| 9 | `theorem` | [eval_conj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-conj.md) | 62 | `result-track:a6a8323f7780a803018df8878f6adb746def19fe09f957632d31b380ba26ed17` |
| 10 | `theorem` | [eval_disj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-disj.md) | 65 | `result-track:5da998dc780538fe312e15f9de6e3c10c33d8600857eb37c99c7f206084d39dd` |
| 11 | `theorem` | [eval_impl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-impl.md) | 68 | `result-track:449b3e40e325e3354e8b52a4ac3e2cd8a577477050dc758cec13d2e2b1d231a5` |
| 12 | `theorem` | [eval_eqv](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-eqv.md) | 71 | `result-track:f7bb448b9ad13dff144b2faa1a4b0c27f191931ecf9b7925611d58bbe559b0ec` |
| 13 | `theorem` | [eval_const](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-const.md) | 74 | `result-track:4fcfd65e09a70edece0e7e4bc83d798cd4914172842a4cc3036ead01d89a8f72` |
| 14 | `def` | [mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/mapatoms.md) | 79 | `declaration-track:59763a3679bd32d15f46b6150d4759eba87dee94f93c9707ca2150cde6e68b6e` |
| 15 | `theorem` | [mapAtoms_const](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/mapatoms-const.md) | 89 | `result-track:86199a32d6f743e58e8e684029d0e689ea95b5db7576c15f4354b5cb61ba7abc` |
| 16 | `theorem` | [mapAtoms_id](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/mapatoms-id.md) | 93 | `result-track:6b8efdcdd9d6abe650e588d68fa41b254286e58a2ebabe50f097e84c4c8b06ae` |
| 17 | `theorem` | [mapAtoms_comp](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/mapatoms-comp.md) | 105 | `result-track:be2d24c5adc8c02845fe49ded5fc17eebdb9e838b6ea2d60e62c6f83f3373dcb` |
| 18 | `theorem` | [eval_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-mapatoms.md) | 117 | `result-track:e63788d1bcfb05bcc0f38e39a1e1d5501a7ce07e82b5d969f023eef395581af7` |
| 19 | `def` | [atoms](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/atoms.md) | 130 | `declaration-track:88c8954cfbbb6333f7ba5612107ecb7c7ff661c3803091b67e008d26a3d33678` |
| 20 | `def` | [size](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/size.md) | 141 | `declaration-track:38d9f8a12db0d606093f0142fa111f2cbd216b7e3f3536a6abe197b464111ae8` |
| 21 | `def` | [depth](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/depth.md) | 152 | `declaration-track:d1bff4d076a6fca178148a30585e6f4ca58f34a1bdb249ddb14bb22deb741ab0` |
| 22 | `theorem` | [size_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/size-mapatoms.md) | 162 | `result-track:28201adc33bd632396b871274dd4bae02caa18a5f27cbddc9b705d8ea4b7a81e` |
| 23 | `theorem` | [depth_mapAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/depth-mapatoms.md) | 174 | `result-track:0f30eb4dd84729584d51875bb904dd3e64b8b8d6e8e44fb5f790845f988c3c8e` |
| 24 | `theorem` | [eval_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/eval-congr.md) | 187 | `result-track:232c8e4982a995b52dd53ff6e3b6285aeba2b1e661123fc087e21bbf6164d7af` |
| 25 | `def` | [Satisfies](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/satisfies.md) | 200 | `declaration-track:87b9afec1d41b550c55fc4983ed95a3855f092884bbc29159947d9bc610c1b72` |
| 26 | `def` | [Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid.md) | 204 | `declaration-track:16518608fc433028469a281457eb63eeb2e4bbcf50c03397fc9e3b9562e54877` |
| 27 | `def` | [Satisfiable](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/satisfiable.md) | 208 | `declaration-track:c4a77feafaef04f128353ccca695d6e6cdc72ae136e05b199610f46754d70367` |
| 28 | `def` | [Unsatisfiable](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/unsatisfiable.md) | 212 | `declaration-track:95346db9d2e38e32c89399fffcbef4f835b44d343616a2cfa8cc184de0a2ca52` |
| 29 | `def` | [Entails](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/entails.md) | 216 | `declaration-track:e0a5f5f0a7eef8c121bb021a9d9da14a577b0957efb573bbc0a77490775865d2` |
| 30 | `def` | [Equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent.md) | 220 | `declaration-track:7219b4e1c6b7d46e6d9b02d5fc37217651f56c245ac2da7097a269ec6d34eec4` |
| 31 | `theorem` | [equivalent_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-refl.md) | 223 | `result-track:affd59648dbeeb0656fc5fc3a253e7eac500d324ef34f424068896f4768f541e` |
| 32 | `theorem` | [equivalent_symm](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-symm.md) | 228 | `result-track:ec3671e39b93ba0ef960d7f33526308579ba259e25bf564738b0876df9461c91` |
| 33 | `theorem` | [equivalent_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-trans.md) | 233 | `result-track:274f652889085f0dbe8049502463e779abdc41435513052de1556a6b786e15a9` |
| 34 | `theorem` | [entails_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/entails-refl.md) | 239 | `result-track:c6bb28ae6d0ed86eb0f60211b2c32faa09730c6ce78d66cf19b934952763a107` |
| 35 | `theorem` | [entails_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/entails-trans.md) | 244 | `result-track:219b3dd428e094e130132a4615bfa82834f08c30276e61083946ac6d97a791f0` |
| 36 | `theorem` | [entails_of_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/entails-of-equivalent.md) | 250 | `result-track:d11efc6fdd030d650713a97ab8ef71db3001c20a6879ec949dd0b4c34e49beb1` |
| 37 | `theorem` | [valid_of_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-of-equivalent.md) | 256 | `result-track:6e8c751e7792d004c671eb57778fa325d943369a0cd102d35393d18e68995756` |
| 38 | `theorem` | [satisfiable_of_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/satisfiable-of-equivalent.md) | 262 | `result-track:643cd0c6b66f6da4581dfa1a34477aa5ac3bfdc571a6a6306598af836184e12f` |
| 39 | `theorem` | [unsatisfiable_of_equivalent](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/unsatisfiable-of-equivalent.md) | 270 | `result-track:c1bc0ca809a6838f2d2e0f50a5e5ef8762fa12faad0e3aca7b68de1cc058c5e0` |
| 40 | `theorem` | [equivalent_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-neg.md) | 276 | `result-track:99cd097b07914f5d3ac6375f5f5dcf3f70fa86c1f5e2fbdbf8fd302ab734e8cf` |
| 41 | `theorem` | [equivalent_conj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-conj.md) | 281 | `result-track:254baa9c124635a3632c7d5f75ff9f740f4e9054a164028cf7a669a21d2a28b8` |
| 42 | `theorem` | [equivalent_disj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-disj.md) | 287 | `result-track:51d9646b6e8dc69681d85147e19878a0e76f86ffe79eb4db70156f9eb726ddc3` |
| 43 | `theorem` | [equivalent_impl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-impl.md) | 293 | `result-track:bd5e1d11d0695fbff1e71eba268037b399c5d9b5281426559ec50db363f8f7a6` |
| 44 | `theorem` | [equivalent_eqv](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-eqv.md) | 299 | `result-track:51d2185c6f0425e0f3aeacb6385d73f30a15b4d5439c195f2354e42da6967446` |
| 45 | `theorem` | [valid_truth](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-truth.md) | 305 | `result-track:76361e62575d6ceaa536f03f8e5b4cc0c0d12292d68c545ed267639d2011c0ff` |
| 46 | `theorem` | [unsatisfiable_falsum](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/unsatisfiable-falsum.md) | 310 | `result-track:b800072836380a8ca89eaccaaa9e6e30af544bb62038274a984f4e69b5ecc07e` |
| 47 | `theorem` | [satisfiable_truth](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/satisfiable-truth.md) | 315 | `result-track:0b3c772ad65065d1d22ddd7edf3892d8997e4663ab2220ebe39640ee1e9fa7fc` |
| 48 | `theorem` | [not_satisfiable_falsum](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/not-satisfiable-falsum.md) | 319 | `result-track:0f724bd06e022257cc825dec86af56b1020ebcba4762e2c72e8a3385c1ef1145` |
| 49 | `theorem` | [satisfiable_of_valid](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/satisfiable-of-valid.md) | 325 | `result-track:73a4df64e8fbdfd60be12847cfa1f6c91bb1fbfd5c5c760dd268e25d333f716a` |
| 50 | `theorem` | [valid_neg_of_unsatisfiable](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-neg-of-unsatisfiable.md) | 329 | `result-track:28fc489049b321be04b1533b9e4bbc89cf501dcee7a13e6d723f3ca9b8fe7751` |
| 51 | `theorem` | [unsatisfiable_of_valid_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/unsatisfiable-of-valid-neg.md) | 334 | `result-track:931611180c838a77d1f1e01fec54ad7d66dcdaf4e02cc3bc32f79fdbcf95e087` |
| 52 | `theorem` | [valid_neg_iff_unsatisfiable](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-neg-iff-unsatisfiable.md) | 344 | `result-track:a03d09dda3fe4ab2dbf8496868a1a2c9f23db8d007d679c2791d2c7e41f16f72` |
| 53 | `theorem` | [unsatisfiable_iff_not_satisfiable](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/unsatisfiable-iff-not-satisfiable.md) | 352 | `result-track:2fef1b06e6008bb45f20525b4973008d1f930855805b03cec171f0c6b2352163` |
| 54 | `theorem` | [valid_iff_not_satisfiable_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-iff-not-satisfiable-neg.md) | 366 | `result-track:e2a1d17f28c85669ad44e774e3c09c9255afb5f7096700db371566bac8c5b4b2` |
| 55 | `theorem` | [equivalent_double_neg](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-double-neg.md) | 381 | `result-track:aff953df28f455bc12cf2c85a47212ef43d959c30b948467202e93e31448aaf6` |
| 56 | `theorem` | [equivalent_conj_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-conj-comm.md) | 386 | `result-track:d13aa10ad9ebdf070f935f5986090307decde7996fbe512caf79cf345f1d9711` |
| 57 | `theorem` | [equivalent_disj_comm](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-disj-comm.md) | 391 | `result-track:fbb05ff1be263335824f58d86aa4a8ecb8c1a57c78adb18d316fe38cac47c029` |
| 58 | `theorem` | [equivalent_conj_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-conj-assoc.md) | 396 | `result-track:11ad4db468bd8c8e0a2c73ba17613a528fe6dcb951dd8178c27605605c9ee14d` |
| 59 | `theorem` | [equivalent_disj_assoc](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-disj-assoc.md) | 404 | `result-track:dfe9ab322c3d7e4d1ea44547ba59cebc6ba5c5d5b703ae1f983c2af660d66ffc` |
| 60 | `theorem` | [equivalent_impl_disj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-impl-disj.md) | 412 | `result-track:4e1b6b0bb28f2cc44e8b1e9b86e7c248146a5114e040807efc8ffcd3ffc326d0` |
| 61 | `theorem` | [equivalent_deMorgan_conj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-demorgan-conj.md) | 417 | `result-track:87100271055c611afad36b1c026a3c4052faa1b4d3265da26c193818cca69039` |
| 62 | `theorem` | [equivalent_deMorgan_disj](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/equivalent-demorgan-disj.md) | 422 | `result-track:8d751973bb3682ae118b5c72358d43debd60342a12f75d2916a0a05d7a053d15` |
| 63 | `theorem` | [valid_impl_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-impl-refl.md) | 427 | `result-track:abfe06d2903fd0d8f38a61d7ab08442afe52daaadbebbbe4fa799c0d50a8a286` |
| 64 | `theorem` | [valid_eqv_refl](../../../../../ComputerScience/AlgorithmsInComputerScience/CoreNamespacedValuation.lean/declarations/valid-eqv-refl.md) | 432 | `result-track:7c7bda7f6384f166463786fb1f5826d56264e67368bc40d33b43b7c92de21244` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b25f6825fe95a6588d0af1daaa4af5bd7537c0a25ccf4b9e2a800cd860a049c3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant5f683975f655b46b0735a411a4f61aa52ed292cf18a0fbc1e83082643449950b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Variant5f683975f655b46b0735a411a4f61aa52ed292cf18a0fbc1e83082643449950b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
