# Verification target: Imo2024 Q5 Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9034f450ecae0936b1f28e8c38199e491c1a891a",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9034f450ecae0936b1f28e8c38199e491c1a891a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean.json)

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
| 1 | `abbrev` | [Cell](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/cell.md) | 56 | `declaration-track:6bba54be351141e6cc3e5ef7cd5593828bc7f087f775c50f040476cdba79aad5` |
| 2 | `abbrev` | [InteriorRow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/interiorrow.md) | 59 | `declaration-track:5acd9a837cd5e2e866cb67c9365cb88ba6d77a99d176437fb2557e69d94d963b` |
| 3 | `abbrev` | [MonsterData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata.md) | 62 | `declaration-track:1d424b18994539a2fc346e4014b1c491e80563462c8e2dbeac4dbf659b24dc35` |
| 4 | `def` | [MonsterData.monsterCells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-monstercells.md) | 65 | `declaration-track:33d6908e30e04254d95550c80984aab955cecb0f95b7bfabf5d46ffe644bf6d0` |
| 5 | `def` | [Adjacent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/adjacent.md) | 70 | `declaration-track:d203166237bdc4c696610b4a2b0bfee790f7e23ca02dd6d2849957cae74a6229` |
| 6 | `structure` | [Path](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path.md) | 74 | `declaration-track:1cb86e13243ad4af5b52981490c5f16067d8123a78405719578f594197f25e63` |
| 7 | `def` | [Path.firstMonster](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-firstmonster.md) | 83 | `declaration-track:22b10c6b7e5fe569694a5ccbb1719e03e8b53d049dca94d61d5e28a9e92f7f05` |
| 8 | `abbrev` | [Strategy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy.md) | 88 | `declaration-track:e6cd230177efc0e2120bdebaf643a0d69e1432fce5cbb74110fb20b40f72ec08` |
| 9 | `def` | [Strategy.play](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play.md) | 91 | `declaration-track:9831d0145e06ca10d0dc8ab04f5963288b4e85e6ffb813bfe4cdb36ad8ad9305` |
| 10 | `def` | [Strategy.WinsIn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-winsin.md) | 97 | `declaration-track:3fd66fd783ac1a793b90e57de1bfdb69715b5ed3a07cb35e9acca589f1ddcfc3` |
| 11 | `def` | [Strategy.ForcesWinIn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-forceswinin.md) | 101 | `declaration-track:6387f95b5a0de00a274e3d3601434a28787d66fdce777f848935f9d4a624151a` |
| 12 | `def` | [Cell.reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/cell-reflect.md) | 107 | `declaration-track:eff1efbcd99e548402c70f8cf6e78d8ad56cd4ac7861c986387ffa0435d679db` |
| 13 | `def` | [row1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/row1.md) | 112 | `declaration-track:a56955a12b5004b42c51412b9b7f6cd89e2d65c102458ddf57042e33eae893f8` |
| 14 | `lemma` | [coe_coe_row1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/coe-coe-row1.md) | 118 | `result-track:375e73c086bdacdf0821b9c94f3bcecab4d7fbca268ece3edc2b6b96eec19984` |
| 15 | `def` | [row2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/row2.md) | 122 | `declaration-track:c2d2bc85747129f15579e2ae0375e3eb9e5161514c46af066325d3ada57bcee1` |
| 16 | `def` | [MonsterData.reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-reflect.md) | 130 | `declaration-track:4b1705367b8269308134583bd37a6af38408378bc5aaa66065627a045e61437d` |
| 17 | `lemma` | [MonsterData.reflect_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-reflect-reflect.md) | 135 | `result-track:f817d98660840fdce5b4e127712e21e9b513afb9068c67f7d87f206f2aff982a` |
| 18 | `lemma` | [MonsterData.notMem_monsterCells_of_fst_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-notmem-monstercells-of-fst-eq-zero.md) | 139 | `result-track:40cf3d70f5703fd7fcb4b21edac2acbf2032a3b6a9408387f41487010b713346` |
| 19 | `lemma` | [MonsterData.le_N_of_mem_monsterCells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-le-n-of-mem-monstercells.md) | 143 | `result-track:46efb6ced296053188a3f73b2c0f620c8d3d6c322ac58721351d69f08c7eb53c` |
| 20 | `lemma` | [MonsterData.mk_mem_monsterCells_iff_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-mk-mem-monstercells-iff-of-le.md) | 150 | `result-track:4afd086709220e08a84f0feb0ae765ace766a6af2606a973e2bd09cac30fc452` |
| 21 | `lemma` | [MonsterData.mem_monsterCells_iff_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-mem-monstercells-iff-of-le.md) | 160 | `result-track:9834c45e1809f9acf8ff86217f4e00c92e2ff3063705ce9ac23a38d75b41233a` |
| 22 | `lemma` | [MonsterData.mk_mem_monsterCells_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata-mk-mem-monstercells-iff.md) | 165 | `result-track:98e00c65457a12b6bace2d646002e4dae2e7c6fb45632fed339109319dbcc81b` |
| 23 | `lemma` | [Adjacent.le_of_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/adjacent-le-of-lt.md) | 176 | `result-track:ebef88560beec10a4e10065b06f23247318ac89e6bae8dec73d4118fcf47195b` |
| 24 | `lemma` | [Path.exists_mem_fst_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-exists-mem-fst-eq.md) | 183 | `result-track:05e1b41d9a81b53c7aff879f56b124c0279ef563ca0f503e1ba507c6f94cf5dd` |
| 25 | `lemma` | [Path.exists_mem_le_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-exists-mem-le-fst.md) | 206 | `result-track:eb2ec59d42b2d4cb5532fbdb1c31917f88dcf8a7a15729fc497c8ebae2541498` |
| 26 | `def` | [Path.findFstEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-findfsteq.md) | 211 | `declaration-track:8c8f18534b2ae99584de1c2fd755f8f6506df0369e0a2bec3fd9ed82c4fb2d59` |
| 27 | `lemma` | [Path.find_eq_some_findFstEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-find-eq-some-findfsteq.md) | 214 | `result-track:f1ad43ced2a037a104ed04bd8fc8cc32d83da6c3ba7907b3b23a0e4ac681268b` |
| 28 | `lemma` | [Path.findFstEq_mem_cells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-findfsteq-mem-cells.md) | 219 | `result-track:d55ea180c7318c777ec291d9d2eabd9a25a66b763960e3d328a3bba301fa69bd` |
| 29 | `lemma` | [Path.findFstEq_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-findfsteq-fst.md) | 222 | `result-track:38941aa7ba588e96d59af50dfe08d7f484a132276ed3397216f097dbe615a563` |
| 30 | `lemma` | [find?_eq_eq_find?_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/find-eq-eq-find-le.md) | 226 | `result-track:d491ee83a99402f2f3402afe1b9fe3d7d6de995ab3a39b14eb9b59f1b7bf4553` |
| 31 | `lemma` | [Path.findFstEq_eq_find?_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-findfsteq-eq-find-le.md) | 246 | `result-track:622f28ab091561e32995179ec924e976d0adae874f54454c8037313e78a802d9` |
| 32 | `lemma` | [Path.firstMonster_isSome](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-firstmonster-issome.md) | 254 | `result-track:9fcf47b1d29b600f5e28f767fa2ed878f22d2f5dfe70feef6520d1eb191ed466` |
| 33 | `lemma` | [Path.firstMonster_eq_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-firstmonster-eq-none.md) | 259 | `result-track:8783378cc8078e9860c46e7475034cf09e91cc1bed69e7a0e5532133d3f38e6a` |
| 34 | `lemma` | [Path.one_lt_length_cells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-one-lt-length-cells.md) | 264 | `result-track:d7973b0d3f8471231f01725979d210144df711ef77fa720d294bcd6e069a6fec` |
| 35 | `def` | [Path.tail](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-tail.md) | 278 | `declaration-track:17ad76399ffd72feba00f3ba2aa74d26de658ae3931017c4c8965cfc0ada32aa` |
| 36 | `lemma` | [Path.tail_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-tail-induction.md) | 299 | `result-track:11119840e16b6a1b308831c61cec898a167cf5a168d62274df799ac0c5c64df4` |
| 37 | `lemma` | [Path.tail_findFstEq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-tail-findfsteq.md) | 312 | `result-track:be72f6cbee888b1776bb5779e5188f71a3e3d42d7b111e5d9839caad5e8b19f3` |
| 38 | `lemma` | [Path.tail_firstMonster](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-tail-firstmonster.md) | 325 | `result-track:6bc43938c966188156c62a8390c70c25592e5448baa28d90762d8473fb03a86a` |
| 39 | `lemma` | [Path.firstMonster_eq_of_findFstEq_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-firstmonster-eq-of-findfsteq-mem.md) | 337 | `result-track:488fa260ef6fc97c0e07d4c0aec9d0320ded1eea8681b236b5775a61e74f5104` |
| 40 | `lemma` | [Path.findFstEq_fst_sub_one_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-findfsteq-fst-sub-one-mem.md) | 373 | `result-track:1fd7dbcf78cc4f249f0317952c9c688685786ae5505f2ab91f5b8c6bcf465cd6` |
| 41 | `lemma` | [Path.mem_of_firstMonster_eq_some](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-mem-of-firstmonster-eq-some.md) | 405 | `result-track:ab9e5e9e0604efe86ff2ce97e8f5172e91acc752b5a05398c883276c1e69f604` |
| 42 | `def` | [Path.ofFn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-offn.md) | 414 | `declaration-track:a1fbd0351158f4af0c8817423baf2905aa2d2cac8f2e01bba9ec7be108b76053` |
| 43 | `lemma` | [Path.ofFn_cells](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-offn-cells.md) | 428 | `result-track:3ded87e13ce4ad23a44db8f3a2ec22faf207d627cdd2838c953b5ec0b74e8362` |
| 44 | `lemma` | [Path.ofFn_firstMonster_eq_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-offn-firstmonster-eq-none.md) | 435 | `result-track:6542e3570c1d06c5ba52c99bea546985c7a168ed4877c2385aa75682eeda5a84` |
| 45 | `def` | [Path.reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-reflect.md) | 441 | `declaration-track:56bca6a146de61e581c4f4f5db5ed02b53ea155ed357203971edf8d3b4a93c84` |
| 46 | `lemma` | [Path.firstMonster_reflect](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path-firstmonster-reflect.md) | 457 | `result-track:a5e7dcbc360d8b584a4add89f1cccc2449cd44a1249a16c85ec16c3ecc332198` |
| 47 | `lemma` | [Strategy.play_comp_castLE](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play-comp-castle.md) | 472 | `result-track:5b81f15ff28d376060b4ff2d2182d5b85e5e56766e87724959f039dcdf2f3318` |
| 48 | `lemma` | [Strategy.play_apply_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play-apply-of-le.md) | 481 | `result-track:a02e6bb110c079b5a1df01fd87c74b29d339bfc591154daec01c06d7136a3f74` |
| 49 | `lemma` | [Strategy.play_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play-zero.md) | 486 | `result-track:83ef581d001bf776edcdba7751f6b3f66dd2061ed152d6c86b6fdae85f2319aa` |
| 50 | `lemma` | [Strategy.play_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play-one.md) | 492 | `result-track:a0d479266aadfa732bcd7a081a5c685f61a5f73c5ba220a872f6a8df1305bbd6` |
| 51 | `lemma` | [Strategy.play_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-play-two.md) | 503 | `result-track:d5621ababe4027a143c71e2410986ed45b04b63e7c206930f7833835dd6cbe7d` |
| 52 | `lemma` | [Strategy.WinsIn.mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-winsin-mono.md) | 520 | `result-track:f1dc14ab450bd9a63c6c3420ad35f2a5d7d0d7d197af183b4cfd7967e6a47541` |
| 53 | `lemma` | [Strategy.ForcesWinIn.mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-forceswinin-mono.md) | 526 | `result-track:58ec6b71c85be7fe73e3a16a3fb95d61ed3bd970714c9c301a5a43fdaaf4026e` |
| 54 | `def` | [baseMonsterData](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/basemonsterdata.md) | 535 | `declaration-track:201ec25ee509e82de8a9f45769a2b9bf6e39fe5c7faf954bfe11ef561201fbab` |
| 55 | `def` | [monsterData12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata12.md) | 546 | `declaration-track:679eeb2f18246b041d2646504084092dfea95bfd366363d25dd86a811cb3146f` |
| 56 | `lemma` | [monsterData12_apply_row2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/monsterdata12-apply-row2.md) | 550 | `result-track:50c7f7289f5796835900c0ba7c8c9819d17664aa826879d793de042a0cd8ba8e` |
| 57 | `lemma` | [row1_mem_monsterCells_monsterData12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/row1-mem-monstercells-monsterdata12.md) | 560 | `result-track:2cb7527751cd6a36f9a4b90bf6c861a53260d14e61600593ac6124dbf028cb23` |
| 58 | `lemma` | [row2_mem_monsterCells_monsterData12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/row2-mem-monstercells-monsterdata12.md) | 564 | `result-track:12650f4e5a8c0f037d051f513423f175516697fd30293332fa03fda31cb0130e` |
| 59 | `lemma` | [Strategy.not_forcesWinIn_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-not-forceswinin-two.md) | 569 | `result-track:f80a0d4530f21e6ba4689075b5a7707dec406af4b9ea4e607c2fa069e6f73642` |
| 60 | `lemma` | [Strategy.ForcesWinIn.three_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/strategy-forceswinin-three-le.md) | 599 | `result-track:bd5c5b33f89d237d47a5dfa084781637a1cc4900ec125ba60de5f1f69f46982a` |
| 61 | `def` | [fn0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn0.md) | 608 | `declaration-track:d305f6793ee1694fbe6b66535f08f055819ff7a5693741ce291a93386562d0c9` |
| 62 | `lemma` | [injective_fn0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/injective-fn0.md) | 613 | `result-track:98513eb8ee2debcde42316e45491e596eb982ffe371067a42d05c70f645e5054` |
| 63 | `def` | [path0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path0.md) | 619 | `declaration-track:df5a0ad943b8bb44cb8839340e49aa27f9cf946a9b53bc7c50c9885ddd563de7` |
| 64 | `def` | [fn1OfNotEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn1ofnotedge.md) | 628 | `declaration-track:4115b3601ac8d409d3ea9b465e8f714df8e76934a005a58353b762ab2f53d3e2` |
| 65 | `def` | [path1OfNotEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path1ofnotedge.md) | 634 | `declaration-track:0d35e26fb35c0b33128607689beb7e6af5f6dbecd9a4bca33921e37e17dee7b1` |
| 66 | `def` | [fn2OfNotEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn2ofnotedge.md) | 646 | `declaration-track:0e41d6a0a7bb45cff8deaf94e84c1f32bd03047a7694358f642a8d8ab95698d8` |
| 67 | `def` | [path2OfNotEdge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2ofnotedge.md) | 652 | `declaration-track:f3d85af3c93d9ac20787d1e085913669759a9c73cd05e2ee3be8f3edb0445849` |
| 68 | `def` | [fn1OfEdge0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn1ofedge0.md) | 663 | `declaration-track:c8e2339ba714b697e1c0946a1d8bd04334da614627547086f3d2b2e4da289c4d` |
| 69 | `def` | [path1OfEdge0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path1ofedge0.md) | 669 | `declaration-track:a9d081c25162af886d6974a9a377ce66a285e12fb39fa532c7fed3ad27799ee2` |
| 70 | `def` | [path1OfEdgeN](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path1ofedgen.md) | 679 | `declaration-track:b1431b6fd1c2a8f8e7b61cb6c4772f0a0b379406af451353086567231519b136` |
| 71 | `def` | [fn2OfEdge0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn2ofedge0.md) | 685 | `declaration-track:b56b445b915ddad723ffb4cbda36ce9496284a36be93854a2f87b16b012dc0fd` |
| 72 | `lemma` | [fn2OfEdge0_apply_eq_fn1OfEdge0_apply_of_lt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/fn2ofedge0-apply-eq-fn1ofedge0-apply-of-lt.md) | 691 | `result-track:d20059cde7fdf2d2abda34ace1ae46ce1eb2ae9c1f2bd9a6a6fdfedb90ff7121` |
| 73 | `def` | [path2OfEdge0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2ofedge0.md) | 698 | `declaration-track:31d207e36850507312661a82dbd186474f968898ffb826ff4750e1cdde80b230` |
| 74 | `def` | [path2OfEdge0Def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2ofedge0def.md) | 711 | `declaration-track:605fae73eda8467b1f78e9fe4785c548412ee94ae57debe03ef9651303a00fde` |
| 75 | `def` | [path2OfEdgeNDef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2ofedgendef.md) | 717 | `declaration-track:d5494058e3022dd2b9b67a2328517f936e09221fccd21c7cf2f0a24ebbd5edae` |
| 76 | `def` | [path1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path1.md) | 722 | `declaration-track:8028dfc2db191e24cb03c6a93f4836c7377bc5d7702a54e5f4d3c2b611d159d6` |
| 77 | `def` | [path2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2.md) | 729 | `declaration-track:5cfcac200e0e59bad043edd4ca7f2c139746de8f4cf5df9659cabc216a6ca866` |
| 78 | `def` | [winningStrategy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy.md) | 735 | `declaration-track:6f15a4ba8437b1ff291caca9bb3c8a32a377c1d5e0a3a82feb9b773234d93a55` |
| 79 | `lemma` | [path0_firstMonster_eq_apply_row1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path0-firstmonster-eq-apply-row1.md) | 741 | `result-track:0ff2b881357dfc29f3636dd86b4ed41ab57c542834bf0d430a16349be65a5de3` |
| 80 | `lemma` | [winningStrategy_play_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one.md) | 773 | `result-track:28691a2626619125543c66a281880ef76fc462954482c060a58da66ef4903aa2` |
| 81 | `lemma` | [winningStrategy_play_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-two.md) | 779 | `result-track:2df018e4d90c74ef78978eb2235357347ea5c7c236e048c2d63065869105b5d7` |
| 82 | `lemma` | [path1_firstMonster_of_not_edge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path1-firstmonster-of-not-edge.md) | 786 | `result-track:295a0411718ad999a9140a8f6427923623faf10c80afb0d0618305e871bf424b` |
| 83 | `lemma` | [path2_firstMonster_of_not_edge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2-firstmonster-of-not-edge.md) | 825 | `result-track:4a5d58268a335d33a282627f7342f5ffd6f5292ca6325501a1b7d448127ee285` |
| 84 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_not_edge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-not-edge.md) | 863 | `result-track:7c3628da81e7dbb8d1070e146ca11efb8cb8d588771cb679e3e71b1fe4841a43` |
| 85 | `lemma` | [path2OfEdge0_firstMonster_eq_none_of_path1OfEdge0_firstMonster_eq_some](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/path2ofedge0-firstmonster-eq-none-of-path1ofedge0-firstmonster-eq-some.md) | 884 | `result-track:f5100ac2089fb14d29e34f8021fd4f3e3f522e3de2fa6027ca59fa7a2f25b647` |
| 86 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-edge-zero.md) | 925 | `result-track:cf1d1d7b0235ac9f4218348429db89f6738b14d167673d1277dba02c2c588e7f` |
| 87 | `lemma` | [winningStrategy_play_one_of_edge_N](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one-of-edge-n.md) | 970 | `result-track:7b695ea5eda2965b24ebba4106419cb387a7966c59623136034096d3e464d906` |
| 88 | `lemma` | [winningStrategy_play_two_of_edge_N](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-two-of-edge-n.md) | 985 | `result-track:c9cce9f64f8b19cb4004c67e7ccf5bf55fc9d01b9a99a2ebe42d26b87336570f` |
| 89 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none_of_edge_N](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none-of-edge-n.md) | 1008 | `result-track:74fd433e8847a3c6e3320dd4842d1d9b9356b6c95643fa21a40e91ef47b102ea` |
| 90 | `lemma` | [winningStrategy_play_one_eq_none_or_play_two_eq_none](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-play-one-eq-none-or-play-two-eq-none.md) | 1021 | `result-track:6777aa86818361b168f11dc56251f7ff836dccd33defce61d77de72f6dff2fa5` |
| 91 | `lemma` | [winningStrategy_forcesWinIn_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/winningstrategy-forceswinin-three.md) | 1030 | `result-track:7f9c926c7b11f7fd364e6c1557ae8e82f3241874b1d4a1233a50b8943686cc37` |
| 92 | `def` | [answer](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/answer.md) | 1044 | `declaration-track:f56aabe4ad283cfadf4153b4b2f7d362125bc0ede583fcca681792851a712973` |
| 93 | `theorem` | [result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Imo2024Q5Public.lean/declarations/result.md) | 1047 | `result-track:c3142f032d95a36cd652bc6a929967db8f5f5caaf3289d59ae3f41c487467141` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=49adc6a16dc26a943e1e9649623ccf41ed7dff7d4109d4dfa0bd5168a452b0f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Imo2024Q5/Variant8fe9b29f09594de097ad2f2f0b36b2097c14c39894debf8482db1fe7e75a1175.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
