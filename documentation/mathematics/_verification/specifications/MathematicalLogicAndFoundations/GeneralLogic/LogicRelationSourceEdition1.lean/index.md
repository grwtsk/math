# Verification target: Logic Relation Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bdcfecfb98bbd9049f933a5e5286c9465df952a2",
  "lexical_observation_count": 119,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bdcfecfb98bbd9049f933a5e5286c9465df952a2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Use` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.MkIffOfInductiveProp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.SimpRw` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Defs.Unbundled` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsRefl.reflexive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/isrefl-reflexive.md) | 55 | `result-track:0b9a043afff9ea97304cf612eb51c7d292624c132a2af32abd27426e57cbb11b` |
| 2 | `theorem` | [Reflexive.rel_of_ne_imp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-rel-of-ne-imp.md) | 59 | `result-track:a4f90bd63e4823de0820d19ebb74518632ab0ea931ae7454f2584a6a1be06392` |
| 3 | `theorem` | [Reflexive.ne_imp_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-ne-imp-iff.md) | 67 | `result-track:04c331ac189fe78f4f5bec563913d48622c5c6fcc5c1c03727a7726d45e5e48c` |
| 4 | `theorem` | [reflexive_ne_imp_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-ne-imp-iff-source-edition-2.md) | 72 | `result-track:e9af61b2de06d6f04f6e16f99575248b291b16ede08e732b1c8495729228f1a6` |
| 5 | `theorem` | [Symmetric.iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric-iff.md) | 75 | `result-track:5a56c1b8ae9111da1a2e358adbe8b23af97a537867280e4ec069e6d20d46df0a` |
| 6 | `theorem` | [Symmetric.flip_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric-flip-eq.md) | 78 | `result-track:629f26d9fb68fcc73fe59bcf6f985a0f84852f9c93db6faed31393226d04d6f0` |
| 7 | `theorem` | [Symmetric.swap_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric-swap-eq.md) | 81 | `result-track:24832c3e85b0bb424106884789e95515a3e549aaa7eee212d916e16a4d699c4a` |
| 8 | `theorem` | [flip_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/flip-eq-iff.md) | 84 | `result-track:056b9f51718849dd40ed9325d23d3ab16ad93da1929b0dbf6921d4e4ba3521a9` |
| 9 | `theorem` | [swap_eq_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/swap-eq-iff.md) | 87 | `result-track:44dc75c4b8eaee94ebe40eaa13176267372644988f32668e16af63f0aee261e5` |
| 10 | `theorem` | [Reflexive.comap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-comap.md) | 96 | `result-track:d4550e7d1191bb2e785a68ddc345713eddac670944738c9aacef1f4f251fe444` |
| 11 | `theorem` | [Symmetric.comap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric-comap.md) | 98 | `result-track:1dc33901f16191e61dafac9605c17ef427b6eed25e85e5961822918d38ed9e8a` |
| 12 | `theorem` | [Transitive.comap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transitive-comap.md) | 100 | `result-track:d42ac92e36fcce29ef9bbbec6d5f79c558069061ba05f4174e73ad9ac5bb3cb1` |
| 13 | `theorem` | [Equivalence.comap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/equivalence-comap.md) | 103 | `result-track:3415a26e947935f1967df39a040c0101674c45591fe6c98fb8ad08d0df480460` |
| 14 | `def` | [Comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/comp.md) | 118 | `declaration-track:9dc8c34dd66a03cd99498fa34a9bfcba7697555a65bc49c1f2bf54dcfa3101e4` |
| 15 | `theorem` | [comp_eq_fun](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/comp-eq-fun.md) | 125 | `result-track:8bbdbbcab8d347a04a6d808160b5ff0517da26236a1a01f0275a91bf08b40b03` |
| 16 | `theorem` | [comp_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/comp-eq.md) | 130 | `result-track:932b510fe93643c533bca06b8bb8a08c49bea5123240637e94ef0bd87fc7be7c` |
| 17 | `theorem` | [fun_eq_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/fun-eq-comp.md) | 133 | `result-track:149af95756ddd07adbd51237ce2d936dbd4ce370c3206da96ec23f719f5ba7a3` |
| 18 | `theorem` | [eq_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/eq-comp.md) | 138 | `result-track:95b8a1a4b3445fd95fefe7f5e993b2b55deba5c74e19ae9af342918a803b2c20` |
| 19 | `theorem` | [iff_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/iff-comp.md) | 141 | `result-track:4a797aabec8497e2a56f8afcca1c04cd016d9e823c6f334d6ecc308b2796f5be` |
| 20 | `theorem` | [comp_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/comp-iff.md) | 146 | `result-track:378c87e9ea5ccfeb8ca54e929ced8867ae6b1b08eaa0b5f846b87b5129280a3c` |
| 21 | `theorem` | [comp_assoc](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/comp-assoc.md) | 150 | `result-track:747572f11b6188473ab4ea249bc7f8ee9a6b68a858e27cb061a8a842affa6d5e` |
| 22 | `theorem` | [flip_comp](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/flip-comp.md) | 157 | `result-track:7a6170c0c0742ec5135395ac92c0e17a0d545d73486248d93dd66ea16832cb56` |
| 23 | `def` | [Fibration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/fibration.md) | 173 | `declaration-track:46966c964dc811d68d30ae04ad7e656d800b20db4c9b69c46c916708753e93d9` |
| 24 | `theorem` | [_root_.Acc.of_fibration](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/root-acc-of-fibration.md) | 180 | `result-track:484860ed99d49b72fdef7c2b87d536d2144f936674f0b4aa950e603f80f97bca` |
| 25 | `theorem` | [_root_.Acc.of_downward_closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/root-acc-of-downward-closed.md) | 186 | `result-track:01b7d490eb0697dc1fccf6e57cd27481505744d9a180d11f4f424398ed829449` |
| 26 | `def` | [Map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map.md) | 202 | `declaration-track:28602f83841dc26861960f24e9a1f054489f083ff6909b1811251529111130a5` |
| 27 | `lemma` | [map_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-apply.md) | 205 | `result-track:d3ec847fa93d4a1cbae589a3b49b9880df1aa030c055241e148a0ff8b8a7dad7` |
| 28 | `lemma` | [map_map](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-map.md) | 207 | `result-track:2ae70f060b1ae0fd5c894cdada5c026b1fecf898fe4c94c02b29d491a34ea4da` |
| 29 | `lemma` | [map_apply_apply](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-apply-apply.md) | 216 | `result-track:0a51d9e5c6a562435fd4307510983fa64eb8c620a5d48f60a12b3ac065707407` |
| 30 | `lemma` | [map_id_id](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-id-id.md) | 219 | `result-track:10f3ac28202138529cc16ea26567a35f9a815bbdee7aeeffbc17e0b7f53cbf13` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-5.md) | 221 | `declaration-track:7d8f71c605c0590c63ba65070401fc2159c2825de4644db49b988a5429db1526` |
| 32 | `lemma` | [map_reflexive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-reflexive.md) | 224 | `result-track:901d418762852bcf64517107cb91b097854fca9fcf9c8642f628c69a727e8960` |
| 33 | `lemma` | [map_symmetric](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-symmetric.md) | 230 | `result-track:17ef4011a5388cfd3cbaa6bdb2accf708c03adf52de8a797bc0d81e362f89e5e` |
| 34 | `lemma` | [map_transitive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-transitive.md) | 234 | `result-track:e7929f0e64066f4d5653e153902963a29c13bfdf0529d23880a9af98e20b5164` |
| 35 | `lemma` | [map_equivalence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-equivalence.md) | 240 | `result-track:2836d559a0ecce51dcbf78e4d4c63c0eb804a8880c52aa1502052ee83426e78f` |
| 36 | `lemma` | [map_mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/map-mono.md) | 248 | `result-track:97807a89f431e6f58111f92a4e8219540792264d184d1beb7cec25b9b8cb9301` |
| 37 | `inductive` | [ReflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen.md) | 258 | `declaration-track:2476799663a8e3ff3fc629a8e5e59c6e5a067cfbd07ca83a335bb347711e2c30` |
| 38 | `inductive` | [ReflGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflgen.md) | 266 | `declaration-track:b71eccd21280a3e7076dccf181aeb228fc687357471e5a28db9821011dd6d6bc` |
| 39 | `inductive` | [EqvGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/eqvgen.md) | 273 | `declaration-track:e816a0d52970b50e10d01995084550f6b7bb9c726ed230ed87fbd0444ab40d90` |
| 40 | `theorem` | [to_reflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/to-refltransgen.md) | 284 | `result-track:15f756ed00fb048d1a61bffcdf8c1b90758ca96f3f9144f8606ca786a79d09e5` |
| 41 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/mono.md) | 288 | `result-track:3cab761564dc0645ff8b1ac51b438796a4c52bf8c7bfb47adb46afc386ddcb56` |
| 42 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-7.md) | 292 | `declaration-track:e099b2d0b703634e7e0de3c0a6f2e76398f11209abff6d41ab230b2d7553ce24` |
| 43 | `theorem` | [trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/trans.md) | 300 | `result-track:de85464670cfb2aaf38e13489333763427edb0fe226dd9c4da25f5bc03f89ab5` |
| 44 | `theorem` | [single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/single.md) | 305 | `result-track:d93e69de076010574803a4fb799df8942dbf89ff6b1cecddacbdd705e26a14eb` |
| 45 | `theorem` | [head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head-source-edition-3.md) | 308 | `result-track:fa2ca61a41bf773382fb36dda601b7ce45f67cf3aec8110170f804f364d3bb73` |
| 46 | `theorem` | [symmetric](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric.md) | 313 | `result-track:8c17ed62a069859dc36a5d47b2984f143d6b7bde2ae02d4ab04ec2395b732dde` |
| 47 | `theorem` | [cases_tail](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/cases-tail.md) | 319 | `result-track:559ee64d84de0706b1c5b4bb0c1c6b7270fd452b420b0f4a490dcfa9107f3250` |
| 48 | `theorem` | [head_induction_on](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head-induction-on.md) | 323 | `result-track:04b6e36d5067a3dcd59b6da8cdc3085bd280fac8cf02f3b1822ed5b68f4d5a75` |
| 49 | `theorem` | [trans_induction_on](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/trans-induction-on-source-edition-2.md) | 334 | `result-track:806778027e54c7dea096dd8cb5199ca154896c52dc634a2554068b5a400b77cc` |
| 50 | `theorem` | [cases_head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/cases-head.md) | 342 | `result-track:41ccf9356688e76d1c66399872dcc0a3f20283c88b9f8f3fc6db4da8bba73bd1` |
| 51 | `theorem` | [cases_head_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/cases-head-iff.md) | 349 | `result-track:eb1e68ae9c5421ca9a8d5c23b3fa1e7dacce6c1fdeb60d606220b825ae0dfe9f` |
| 52 | `theorem` | [total_of_right_unique](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/total-of-right-unique.md) | 355 | `result-track:8d75a2a1a2e5cead9516d340f34bae213bf85e3ff60eba6de0b6f0e01c41451c` |
| 53 | `theorem` | [to_reflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/to-refltransgen-source-edition-2.md) | 371 | `result-track:54107dbc8348648ebbd1b2b1e9f808834dc48294b8b2929093e816561537a3e9` |
| 54 | `theorem` | [trans_left](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/trans-left.md) | 376 | `result-track:8ee0faed5af2031d40cecf63afeda6cdfc3f8f14733511c08cb7e255ce421612` |
| 55 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-3.md) | 381 | `declaration-track:4731b88c1578e194d870f6de38fc30824f24c811200de4ef89ad102272c7a822` |
| 56 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-2.md) | 386 | `declaration-track:44f2b3a5e2795d16a9b9d00aa729cf237e6a4992f0ad4c307611ee5e608dc980` |
| 57 | `theorem` | [head'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head.md) | 389 | `result-track:4c452a5f28b9acf93bb75ed6d20d55abf7ed005f7638d9a545019706d9c06a2c` |
| 58 | `theorem` | [tail'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/tail.md) | 392 | `result-track:8651bcea895643cd6e2df2083919e0765acf5f05ba064c41d870332f9d861261` |
| 59 | `theorem` | [head](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head-source-edition-2.md) | 397 | `result-track:dbe8889551341ff507b9dcc4fff57b3103987815cf01999ad8c9dffd731f670c` |
| 60 | `theorem` | [head_induction_on](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head-induction-on-source-edition-2.md) | 401 | `result-track:3fc24f1e4736873c1401812b142c5f7f88e63344057915ef213626aa1b64dd73` |
| 61 | `theorem` | [trans_induction_on](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/trans-induction-on.md) | 412 | `result-track:351c1b893640f128303223e89728a327f55c073358920afa52f07e75c7b0beb5` |
| 62 | `theorem` | [trans_right](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/trans-right.md) | 420 | `result-track:60cc81f5339d1fb488d701caa12ed2698225b50f92aa7bf43223b77a8f0ab3a3` |
| 63 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-8.md) | 425 | `declaration-track:fbf2458c5f0915974b83503dd937aa85c46026a6551f9308dd1af5e762b19701` |
| 64 | `theorem` | [tail'_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/tail-iff.md) | 428 | `result-track:0586ec2ea1b82bff4757cd1d78fb38a5314b2b1b00b348a768a92b239a82dc95` |
| 65 | `theorem` | [head'_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/head-iff.md) | 434 | `result-track:eeab78c5e884f143608519ef30f8f7583298b4e228f02ae7b35da01a9098cca8` |
| 66 | `lemma` | [reflGen_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflgen-eq-self.md) | 447 | `result-track:f827fbce5679d50ea2be5386434577ea3dc7ce8fb1436b04c2bdb86213046311` |
| 67 | `lemma` | [reflexive_reflGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-reflgen.md) | 451 | `result-track:8ba5c9d17b1e7c6da149873da04ee4b5d91afddc3bc75611570eac6852501fd3` |
| 68 | `lemma` | [reflGen_minimal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflgen-minimal.md) | 453 | `result-track:245cd587125777537848663d94134d8a6b6323eacf5f950487b3a034971493bf` |
| 69 | `theorem` | [transGen_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-eq-self.md) | 461 | `result-track:9febfb14fe9e8fd1539de49e7d1d3602c24264b5129ef40ff1be2adf4c059227` |
| 70 | `theorem` | [transitive_transGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transitive-transgen.md) | 468 | `result-track:7c84c7fee9a5c765bc1986082273dde3c9b7eff599f11290d8af8eae1f905de9` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance.md) | 470 | `declaration-track:21a2c04e6f24c277a85530a63ce682e1e6bf8aaaafb79377904aaf3397a22a51` |
| 72 | `theorem` | [transGen_idem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-idem.md) | 473 | `result-track:26a1f98d82d74bdf4dc5c5ea40f368fcbfd2bb802b68a7ecee41eb5c4062fd55` |
| 73 | `theorem` | [TransGen.lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-lift.md) | 476 | `result-track:468eac35a85f1441b6c72c6558ecdfd4ea26101e3bdf481b627235ee35ad4d37` |
| 74 | `theorem` | [TransGen.lift'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-lift-source-edition-2.md) | 482 | `result-track:7b8cbe3979721915420bde015b93030483fbc0daf1ed1a510a7bee557411a738` |
| 75 | `theorem` | [TransGen.closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-closed-source-edition-2.md) | 487 | `result-track:36c23af1c1dc99b717991515bc6c2bcd6c777702d2d71e531078adc9280e3a4a` |
| 76 | `lemma` | [TransGen.closed'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-closed.md) | 491 | `result-track:20df164c645d18e5dbb4c7ee201accc7291a332ff54a6cd8f1b16ab902b056de` |
| 77 | `theorem` | [TransGen.mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-mono.md) | 495 | `result-track:013df78bf72adcf6947c4d589d3214a0f9cd4acf8c933eb95dc94190d51b8f91` |
| 78 | `lemma` | [transGen_minimal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-minimal.md) | 499 | `result-track:f3cdedfca2573ae6e65e245ff39bb230e28da5dcb10734335cf934e8ac916d76` |
| 79 | `theorem` | [TransGen.swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-swap.md) | 503 | `result-track:9882e384c5714749dfd7027c621724bd0385a3eea1b9da2cbc45e3ccbfbb331d` |
| 80 | `theorem` | [transGen_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-swap-source-edition-2.md) | 508 | `result-track:ad42954a6dc12a96d9c83c911ffb0d04306859977d86f9ae6b6f27020b1ab9f4` |
| 81 | `theorem` | [reflTransGen_iff_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-iff-eq.md) | 517 | `result-track:1a659cefcb10f57df49110eab8a074872e48f1ef5ca7ffd3effcc8258d76e86c` |
| 82 | `theorem` | [reflTransGen_iff_eq_or_transGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-iff-eq-or-transgen.md) | 520 | `result-track:488134fa713399f708d4961095dca13630a612270c676dadea642a55c4b0d9f0` |
| 83 | `theorem` | [ReflTransGen.lift](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-lift-source-edition-2.md) | 529 | `result-track:ccc9578aeedbe8fe2e405514187aa24d68d3fe5396ceead89a370c3d5bb6f0c2` |
| 84 | `theorem` | [ReflTransGen.mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-mono.md) | 533 | `result-track:5f7ca239b736da47921673af57f2da786d8b446cff81725e46ae3c4629e26f3a` |
| 85 | `theorem` | [reflTransGen_eq_self](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-eq-self.md) | 537 | `result-track:190bd9a57d38102b8854ebb891d05df7b952122c3d4c96f3054014750e0578fe` |
| 86 | `lemma` | [reflTransGen_minimal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-minimal.md) | 544 | `result-track:73828d8a51ca4383890b8f30119d6797038fbc433c261ac4adf57cd86f79a7f1` |
| 87 | `theorem` | [reflexive_reflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-refltransgen.md) | 548 | `result-track:2254088b1d176437b6e867822ba1d40940e4e6cddecc89ada1f796c07bad6ff5` |
| 88 | `theorem` | [transitive_reflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transitive-refltransgen.md) | 550 | `result-track:205b2e9bf61e716f1324c4c6a637a79e94e88ffeb7cb3e01cef634ed20e41c45` |
| 89 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-4.md) | 552 | `declaration-track:62c78b76fea7b7302da3c12b97b6eed8cd240b6e2296e54d8cc5323d6d05fb71` |
| 90 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/instance-source-edition-6.md) | 555 | `declaration-track:b90cf519727a3c539ceb235e85e2a66ce6f650388f5a6df86d87e3c7549ce843` |
| 91 | `theorem` | [reflTransGen_idem](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-idem.md) | 558 | `result-track:1aba2b3da08b8bfdc91b729fdb6dbc83aee28b3ba023d2b0719e18149b693139` |
| 92 | `theorem` | [ReflTransGen.lift'](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-lift.md) | 561 | `result-track:2ba75807658429846e66913c4d2ed29c38415cec649e6b8bad1f34eb6533c084` |
| 93 | `theorem` | [reflTransGen_closed](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-closed.md) | 566 | `result-track:72cf9e03a81f92cde46c100be43ee02b56ad16d1efb47b722ce61182cbd29a76` |
| 94 | `theorem` | [ReflTransGen.swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-swap.md) | 570 | `result-track:8fa419ab6673cede767480637c20a960c916f9555b14231e9941902d9405c908` |
| 95 | `theorem` | [reflTransGen_swap](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-swap-source-edition-2.md) | 575 | `result-track:c3bccccf402308200124a2fe6f4ba63aadd8e0ee038114d939eaed510f5e7884` |
| 96 | `lemma` | [reflGen_transGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflgen-transgen.md) | 578 | `result-track:3c057758c2c56335c68e5b680987b550cf59b1d35e3653bfb5be3178b9968dbd` |
| 97 | `lemma` | [transGen_reflGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transgen-reflgen.md) | 582 | `result-track:7f4e5b7452fdc2f249c7e6136e0644fca62081c0fb02ae94859781e634aa940f` |
| 98 | `lemma` | [reflTransGen_reflGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-reflgen.md) | 591 | `result-track:88fd081967658bc987995d6739d36b6920637639b984965907e141cf67f61c33` |
| 99 | `lemma` | [reflTransGen_transGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-transgen.md) | 594 | `result-track:a234c2a01c9e906c73f459201f467dee6ec4ffc17a0c8c7a8357f854abc92955` |
| 100 | `lemma` | [reflTransGen_eq_transGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-eq-transgen.md) | 597 | `result-track:da9aa35e48729d75170a89c0620c403ea74d8f94c8f2014b6c8b7ee86720c8a8` |
| 101 | `lemma` | [reflTransGen_eq_reflGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-eq-reflgen.md) | 601 | `result-track:571e76ccfd4845851fc465c8e0c0840509c61da9d3cb0cb5625d240cf7d4c4da` |
| 102 | `theorem` | [is_equivalence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/is-equivalence.md) | 611 | `result-track:39756e2da20755382f881977e04fc7d5f1d7354a93fcc44f705a6d448eb253ba` |
| 103 | `def` | [setoid](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/setoid.md) | 618 | `declaration-track:9a2fd970cad3b3e0304f3f12915b05992e5f552cd315f89da9d8c65285d9a442` |
| 104 | `theorem` | [mono](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/mono-source-edition-2.md) | 621 | `result-track:948746444ef22878d6ea4fbef689ceb41e7de5590eb29ac8d1a40d9dfe08305f` |
| 105 | `def` | [Join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/join.md) | 638 | `declaration-track:91316ee891569c57d2cb182a3df8625bc46bfa10a46c4da49ee343e20465dbf6` |
| 106 | `theorem` | [church_rosser](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/church-rosser.md) | 645 | `result-track:115f327ae5b9968210af712dc68706257b3aa73699ece74cdc7fbbd079c44f60` |
| 107 | `theorem` | [join_of_single](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/join-of-single.md) | 668 | `result-track:bdad2da3919f8b313c14dc449b17e1fcb7eaa4a05e7c45586e129ae15c51986a` |
| 108 | `theorem` | [symmetric_join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/symmetric-join.md) | 671 | `result-track:f909acd68ada7670de38692cd3a9fee35ca3d2ab3093cdba75aa0710fd115714` |
| 109 | `theorem` | [reflexive_join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/reflexive-join.md) | 673 | `result-track:9417b933228cc4dc3965b80c71e2addb84903ffe8337f86edc9c10875fb83dfe` |
| 110 | `theorem` | [transitive_join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/transitive-join.md) | 675 | `result-track:87eb22f07c24e9d1b44a4cffda924da369f83e995c1de7c6de4daf048373040d` |
| 111 | `theorem` | [equivalence_join](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/equivalence-join.md) | 681 | `result-track:bf57cf59925b4c5b2886c5c92cbebcf21d8734a6fcf64bab42211a41dcb3f87a` |
| 112 | `theorem` | [equivalence_join_reflTransGen](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/equivalence-join-refltransgen.md) | 685 | `result-track:46f1f348a562d73db54f10c38d73f43441a7159fca6ed25ecc6cf390bebaa966` |
| 113 | `theorem` | [join_of_equivalence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/join-of-equivalence.md) | 690 | `result-track:465546c687f3b3ea79a82eae055dc9279f5a3210d9b6c85d72dddc29df2e3d14` |
| 114 | `theorem` | [reflTransGen_of_transitive_reflexive](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-of-transitive-reflexive.md) | 694 | `result-track:c6cbbea8f4cf115a9cdbcbb2ebc8fc95a55d2bda3a86dc7f227a7a69f386060f` |
| 115 | `theorem` | [reflTransGen_of_equivalence](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/refltransgen-of-equivalence.md) | 700 | `result-track:e486c8fd80ca9e9eb6ea3d1ed6cf3bc6f81393ec3940715fedd17d0511d8ad6f` |
| 116 | `theorem` | [Quot.eqvGen_exact](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/quot-eqvgen-exact.md) | 714 | `result-track:ada73a82a5fdb41845ed911cd846a4c5c089c2e42c25b0ed7e7380cb456b5265` |
| 117 | `theorem` | [Quot.eqvGen_sound](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/quot-eqvgen-sound.md) | 718 | `result-track:7c02a29c830958cfa265351fd1d6161c58e884004b81cc4b974a3bb7f3cb437b` |
| 118 | `theorem` | [Equivalence.eqvGen_iff](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/equivalence-eqvgen-iff.md) | 726 | `result-track:b293b5f50c21056834ee63af548ffe8188b6066f7063eeadf71280d8e6d9a460` |
| 119 | `theorem` | [Equivalence.eqvGen_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LogicRelationSourceEdition1.lean/declarations/equivalence-eqvgen-eq.md) | 737 | `result-track:225c359b51c490aad780e911cc5299b4202963f7e056b85a1c94820321f10e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d2c631634a9b5067257eeee9a82513750bd9f0c7cad3e88296eab23260c563b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Relation/Variant4a77fcf4cb7ec148c3c074987aebf792f0562e4a861ce0a069e1a3044813327c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
