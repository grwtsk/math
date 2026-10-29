# Verification target: Vec Notation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "864bc4b5024d96d66ffd5a4981f92d2547d6f413",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `864bc4b5024d96d66ffd5a4981f92d2547d6f413`.

Source path: `GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecempty.md) | 53 | `declaration-track:fb15294bd1c1399081cd6c5013255921be316018072b695ee97b4139f17b24f9` |
| 2 | `def` | [vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/veccons.md) | 61 | `declaration-track:ebcdff204fbff3682396f7a1eb10eb499b5ca9d4dab88dfff82356a960087013` |
| 3 | `syntax` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/syntax.md) | 72 | `declaration-track:938c4ecc3c9d4eece5db633853df78d0c36b695553957a8fe1fcce76befaca5a` |
| 4 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/macro-rules.md) | 74 | `declaration-track:feadad1d4866cb00ad6cfcdf144799b953e5acf196e3fe1836e9e1e6abd8ed70` |
| 5 | `def` | [vecConsUnexpander](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecconsunexpander.md) | 81 | `declaration-track:19f56eec61d398815fe8e37c38631a6eb1707f3da135c25b3b4fb1c6db103dd5` |
| 6 | `def` | [vecEmptyUnexpander](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecemptyunexpander.md) | 89 | `declaration-track:68f3c4be50eb4ed41862cadccef00bb84d8e00f2252217a0805af09de67131b6` |
| 7 | `def` | [vecHead](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vechead.md) | 94 | `declaration-track:ed5768ed92506cc5c7ab7c9ce7e3e7f5020b8dec3022f853432121bb579915e1` |
| 8 | `def` | [vecTail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vectail.md) | 98 | `declaration-track:bb0f30ee07c77da03be5caa04c7bf797b52e860ebb4bc71acacf38f1f1ce72bc` |
| 9 | `instance` | [_root_.PiFin.hasRepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/root-pifin-hasrepr.md) | 109 | `declaration-track:b488c85324580efc4d81f7598357f2c3da2df67cc5c401b461a0ed492e93ef3e` |
| 10 | `theorem` | [empty_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/empty-eq.md) | 118 | `result-track:36569a7f4cb7c2e06b0e1f89f298df3b35a99c36e53432ca88dab2242530f01a` |
| 11 | `theorem` | [head_fin_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/head-fin-const.md) | 124 | `result-track:9bd0a16f3c0a0440f9d68ff9099ae3367813da68286c012003a9276e1fc5e2ae` |
| 12 | `theorem` | [cons_val_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-zero-source-edition-2.md) | 128 | `result-track:2fffb4b8dfc8e55ae8cc17f01999d7e2351be5c2a561bcb77e53aedc83d941f4` |
| 13 | `theorem` | [cons_val_zero'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-zero.md) | 131 | `result-track:107d43cf146e86723f8e689f7b77f08c3e4d5c8c7ea9bcd8fbca92d73c79131e` |
| 14 | `theorem` | [cons_val_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-succ.md) | 135 | `result-track:15b5ca6ae51a2f17f56b8ee623fc6cb3250155acb770b8eb2f50613c85bfb3a9` |
| 15 | `theorem` | [cons_val_succ'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-succ-source-edition-2.md) | 139 | `result-track:f95a7c51c21e47c106028378c1df4b38149f1915e4d6299bf36f0728545017cf` |
| 16 | `lemma` | [Fin.cons_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/fin-cons-vecempty.md) | 147 | `result-track:e0d8b8dc5b93ae2e4e94120ee14a18c1cb346939d7f0b1bc247b605bfd2d857c` |
| 17 | `lemma` | [Fin.snoc_vecEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/fin-snoc-vecempty.md) | 151 | `result-track:d989eb25b94e3ea52c6b6ce8ef3c6b81570fcdb929f4cf494cc8926c078c758c` |
| 18 | `lemma` | [Fin.cons_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/fin-cons-veccons.md) | 161 | `result-track:ec8247d2c5a0eb95bf57bc2a54ad8b7ed0c12d5ef9bd9779a69acbf954e02232` |
| 19 | `lemma` | [Fin.snoc_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/fin-snoc-veccons.md) | 167 | `result-track:ed29de1f1a6e5143b07daed1f2a220fe391d4544668512c6a7aa467fde387e30` |
| 20 | `def` | [matchVecConsPrefix](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/matchvecconsprefix.md) | 178 | `declaration-track:12b4556b20ae2b92b5bebf674932652873d91bbb46d8c995dd051541a1efc7fe` |
| 21 | `theorem` | [head_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/head-cons.md) | 224 | `result-track:36b0e182aa42e102380749b8b1efa413206cf3915bc8bfb1caaf43e083768774` |
| 22 | `theorem` | [tail_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/tail-cons.md) | 228 | `result-track:605b04823e4f511cdd2e0d59911b3134275452497c01060e7302615d3e5c528d` |
| 23 | `theorem` | [_root_.Fin.tail_vecCons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/root-fin-tail-veccons.md) | 233 | `result-track:c098a816b0774b0e0f0ad6a7e71a8f3a6bd84158bf598760d93a1c5866c188c5` |
| 24 | `theorem` | [empty_val'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/empty-val.md) | 236 | `result-track:5fcac9d7119611c9cf5631c73e3144312f1df72b53297300b9c58d23daaf5bf9` |
| 25 | `theorem` | [cons_head_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-head-tail.md) | 240 | `result-track:3763c36e3970b75bf2b58419f11e78b8ee4a139af7940572b954281105fe5f19` |
| 26 | `theorem` | [range_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/range-cons.md) | 244 | `result-track:8b05c1dca02784aa8eca12462a0cfb04611664aa8d4bbb316457cb2d89b280bb` |
| 27 | `theorem` | [range_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/range-empty.md) | 248 | `result-track:478c02a1fcb0a511128b6b93e01d8232ee08289c99bd81bab07d620c45c925c1` |
| 28 | `theorem` | [range_cons_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/range-cons-empty.md) | 251 | `result-track:815882738d508937f8b3e50e414bbd6f37a224ea4d3bc10a8d3aaa0c7abc0196` |
| 29 | `theorem` | [range_cons_cons_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/range-cons-cons-empty.md) | 255 | `result-track:8372fb76af10147e6e9b41e03304acb9940c40a69e60fa2ff67e0377634d18c4` |
| 30 | `theorem` | [vecCons_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/veccons-const.md) | 259 | `result-track:fb2608d6c91e803e511d409d0235693be50da8b9f2710b9521a109fb1755bb54` |
| 31 | `theorem` | [vec_single_eq_const](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vec-single-eq-const.md) | 262 | `result-track:a5fe49df6082d851687425bc64fef10899ee3fe9e050c90c8829eb7471fe7a06` |
| 32 | `theorem` | [cons_val_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-one.md) | 271 | `result-track:856d36b0ae060f50f3ddb5bff0f1797036da311310af933281105ea284a936e4` |
| 33 | `theorem` | [cons_val_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-two.md) | 274 | `result-track:53a9cd7aa05885b0dca975a19a0d99955e5ecae6b4413b8c81dff38b8da8a9f5` |
| 34 | `lemma` | [cons_val_three](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-three.md) | 276 | `result-track:a666ee0c10c619e6d4d0314c157bc07e901f6a6e9b9211fd909c035b25759cca` |
| 35 | `lemma` | [cons_val_four](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-four.md) | 280 | `result-track:02f90bdbd1a89a9bd4997358bf4827ca885d7bf34282bf2ad72323eb75114816` |
| 36 | `theorem` | [cons_val_fin_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-val-fin-one.md) | 285 | `result-track:a0bdf1827ab11869667c01a942d3d2b77c9d7b2a419252ae245d22a1aeebd5a9` |
| 37 | `theorem` | [cons_fin_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-fin-one.md) | 289 | `result-track:c99f795e4369130dae647be607471f06389a114e9dc91cf48ff143ee61c4516a` |
| 38 | `theorem` | [vecCons_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/veccons-inj.md) | 293 | `result-track:f95de868917437f7e661ad2e4510874418e9f7f07763ec568fc74fd7c6c41086` |
| 39 | `def` | [_root_.PiFin.mkLiteralQ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/root-pifin-mkliteralq.md) | 298 | `declaration-track:154903cebee44b15fac68c0562665dc604fcb429f181412af8dff06ac811f147` |
| 40 | `instance` | [_root_.PiFin.toExpr](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/root-pifin-toexpr.md) | 313 | `declaration-track:652f6424d0837d2608d6f2ce4ab40fefbaddc97dc0fe30e8ab6397ef7473d1d4` |
| 41 | `def` | [vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecappend.md) | 336 | `declaration-track:6d42b665ab966332b6e1c86567a7ad1c4606694dfb5a01781e1a3026d983700c` |
| 42 | `theorem` | [vecAppend_eq_ite](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecappend-eq-ite.md) | 339 | `result-track:d0ffd37b086d107d4965bb2ce560aa542b0e0030b717c7d6f1c2196d65a2a312` |
| 43 | `theorem` | [vecAppend_apply_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecappend-apply-zero.md) | 349 | `result-track:e86c1d3f38833734ac0bfd19c9084636abadc5062a41421a03d38e4eb925dd30` |
| 44 | `theorem` | [empty_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/empty-vecappend.md) | 354 | `result-track:dfb1fd80d58225ecb65a8c6e2a8dab70c6cd220ef8db0b1b094f81062909b8b9` |
| 45 | `theorem` | [vecAppend_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecappend-empty.md) | 359 | `result-track:2c05af9859abf02738b828bb68d69f72814bdae9b58a22193ec2dadf6143840a` |
| 46 | `theorem` | [cons_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-vecappend.md) | 364 | `result-track:97d28d1cf60763e8e3f2d4d6a3383e2b318f37268cac5b67b050811a55966878` |
| 47 | `def` | [vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecalt0.md) | 380 | `declaration-track:39ebe7d023ef696eaecaa740ec6ce671101e9813542fc143a8bc216eb002d7bb` |
| 48 | `def` | [vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecalt1.md) | 384 | `declaration-track:0ad671e15d788deede8d9563650a3de05392583fea0f172eba99763e20311014` |
| 49 | `theorem` | [vecAlt0_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecalt0-vecappend.md) | 389 | `result-track:58bb4de7f49843110f648eebba7b1fd670103e82de483522ca52c3361a055f51` |
| 50 | `theorem` | [vecAlt1_vecAppend](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vecalt1-vecappend.md) | 401 | `result-track:11113c0fd743373e23cb2a50cace5e94e3405f4f6122cd9cdf8be25db6c719f7` |
| 51 | `theorem` | [vecHead_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vechead-vecalt0.md) | 419 | `result-track:f04433eed11bb3bba84cb6d95a9cff654f21a70c6dad62541fd575c59ecc9d80` |
| 52 | `theorem` | [vecHead_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/vechead-vecalt1.md) | 424 | `result-track:fd8775048190e5fb6690a0149c3a8ccab2e61d0af884f330c57c0cc61504c28d` |
| 53 | `theorem` | [cons_vec_bit0_eq_alt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-vec-bit0-eq-alt0.md) | 427 | `result-track:53d0b2c3fc1b389540a8013c8c156b09845fb4b2c658f78d550890810927e701` |
| 54 | `theorem` | [cons_vec_bit1_eq_alt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-vec-bit1-eq-alt1.md) | 431 | `result-track:baf895ce532bddadfa0d0a272d4bf7db48567dca95db92d0b095702bcf002df9` |
| 55 | `theorem` | [cons_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-vecalt0.md) | 438 | `result-track:d0444240bc408af9f6a96f32211f59e69e402e31e4ea2356eed9c7d7ea1aa99a` |
| 56 | `theorem` | [empty_vecAlt0](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/empty-vecalt0.md) | 448 | `result-track:e56dcc091435322df1c3d2673119cdd4d0124dd27c83dcba732ba80978dd8318` |
| 57 | `theorem` | [cons_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-vecalt1.md) | 452 | `result-track:c97d9f97b2b65ed8f43f6ee44a677e6d9609403709919eed827717d9d607234c` |
| 58 | `theorem` | [empty_vecAlt1](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/empty-vecalt1.md) | 461 | `result-track:17f78fd7d00a0dc19593892074b82ed36e001637725f61ec83c25c0093d351ba` |
| 59 | `lemma` | [const_fin1_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/const-fin1-eq.md) | 466 | `result-track:88c27d57e840dfd17227843da58bc51416b8ed763b3f25435d98bd6c7437392b` |
| 60 | `lemma` | [cons_cons_comp_swap_zero_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-cons-comp-swap-zero-one.md) | 476 | `result-track:1e19f54238660dd349f6ed35eb480b9b378f80a158d17ab1cd4fc14f3e3bfb4a` |
| 61 | `lemma` | [cons_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VecNotationPublic.lean/declarations/cons-swap.md) | 487 | `result-track:49bfe6cb826b7e987a5c500c7989f47f213ec0e80e7d3a1b774fbe5053365be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4d876000c20c13df649e4fd721c4c064ed77d2bbe63e15c749ad8284c766845 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/VecNotation/Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
