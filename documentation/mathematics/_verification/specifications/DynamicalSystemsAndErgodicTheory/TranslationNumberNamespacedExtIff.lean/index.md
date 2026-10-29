# Verification target: Translation Number Namespaced Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95ea821f39bc037850094907e864039d77a0051c",
  "lexical_observation_count": 134,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95ea821f39bc037850094907e864039d77a0051c`.

Source path: `GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Hom.Iterate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Iterate` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SemiconjSup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CircleDeg1Lift](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/circledeg1lift.md) | 138 | `declaration-track:b578af62a50deff520538185ab24e68df11b6a3f843755220421ca11db03d6e4` |
| 2 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:d1daa5446d03da184ed358cd29699d74a15e4efa52d6aee56660398bb369f431` |
| 3 | `theorem` | [coe_mk](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-mk.md) | 149 | `result-track:27fcd7168733094f3837abf396f7d3eb07076c0bcd5b91ec6fd644b2c6fb6471` |
| 4 | `theorem` | [coe_toOrderHom](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-toorderhom.md) | 154 | `result-track:4a81b2c369dc2f251d923c179227134bd9fd79a3066db0c745a76658f066e874` |
| 5 | `theorem` | [monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/monotone.md) | 156 | `result-track:e696a399684f6c43c7f8997032bacd4a2b17e810962de5342830d242f8d29dc0` |
| 6 | `theorem` | [mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/mono.md) | 159 | `result-track:a116f3542b71e66f944183ab208c6d60f68d9281a474981e3dde9c66d8f1c6a8` |
| 7 | `theorem` | [strictMono_iff_injective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/strictmono-iff-injective.md) | 162 | `result-track:a42a4010a8a73a3ef7aa31db9afbe4f133859abdb21dcfc9c0bac6fba54ff856` |
| 8 | `theorem` | [map_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-add-one.md) | 167 | `result-track:6b38b5c4eeb8f5beb9fd014ea45e6f8f4df0c17abd7d3932e1730bebdaadf139` |
| 9 | `theorem` | [map_one_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-one-add.md) | 172 | `result-track:0b0ae124790039bb97a0e4d670d8dba26a695bfcd45520de42ea5d24270e11bc` |
| 10 | `theorem` | [ext](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/ext.md) | 178 | `result-track:fab98dbc7ed3c6ce9f5e8bc59b19078adde84bf18fa897b180dd454e3922ab45` |
| 11 | `theorem` | [ext_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/ext-iff.md) | 182 | `result-track:a6bb578af0bb92efedb96ab38793b21c86521d9045d983eece9109ea70b0be6c` |
| 12 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/instance-source-edition-2.md) | 186 | `declaration-track:67953e4e19b645daa2a736b48b507fecc4fa8a379b91df3a2e26b7f177a01dbc` |
| 13 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/instance.md) | 195 | `declaration-track:03c7f3d0194c16d810340c023eeff4778323c073783a067fdf913a42c942a259` |
| 14 | `theorem` | [coe_mul](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-mul.md) | 198 | `result-track:6befe88be1d1f38c240d2cd577cec8b174ebc43445e7417b70b97e8f9bc60c85` |
| 15 | `theorem` | [mul_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/mul-apply.md) | 202 | `result-track:a09868c1e3f4003f4da5837d6ec03b9edda7485a45b92405500cd47806fc8d13` |
| 16 | `theorem` | [coe_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-one.md) | 207 | `result-track:0fc13411d682845c921d76b15e5525d404cff0e11878652d9525eec65c30dbd3` |
| 17 | `instance` | [unitsHasCoeToFun](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/unitshascoetofun.md) | 211 | `declaration-track:fe7aa569fd635dd5c955d7cc15e3aaa74f59c3b5f74b04a29eff77327bb6fe9e` |
| 18 | `theorem` | [units_inv_apply_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/units-inv-apply-apply.md) | 218 | `result-track:5fd687407acd3d7bcda64e1d041ca9c4a259d1d2f5c4a17041db79b188020755` |
| 19 | `theorem` | [units_apply_inv_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/units-apply-inv-apply.md) | 223 | `result-track:23bfbe09fcca3807fcb8ec949942f9211faeb0a43966f75b6b538dbf671dc6ff` |
| 20 | `def` | [toOrderIso](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/toorderiso.md) | 228 | `declaration-track:e146a04c465658745c5ac67e8804a9f4152a225b11d8f880e3535c36be84cbb3` |
| 21 | `theorem` | [coe_toOrderIso](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-toorderiso.md) | 240 | `result-track:fa0270b5096318063800b9700b1796b9471696dbe1cd4c8a924ae2f0d95fc3c2` |
| 22 | `theorem` | [coe_toOrderIso_symm](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-toorderiso-symm.md) | 245 | `result-track:0afa8a43290493f2a7a008ca0ea4775c3c4c70db75eb00c3beebd3b84b04b7f1` |
| 23 | `theorem` | [coe_toOrderIso_inv](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-toorderiso-inv.md) | 251 | `result-track:80e97c87bed543ae31e7fa2809a07b8586908e6fa03de2a5519ddb5283ade152` |
| 24 | `theorem` | [isUnit_iff_bijective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/isunit-iff-bijective.md) | 255 | `result-track:f63f8dc0972cb08ee33818e485a5e56e40109a069619115b438e8563897c03c4` |
| 25 | `theorem` | [coe_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/coe-pow.md) | 270 | `result-track:dc5b3d72f02ee72f5e9d865e1cf6b46feac4453be33fc7c924ad82d4697b5559` |
| 26 | `theorem` | [semiconjBy_iff_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/semiconjby-iff-semiconj.md) | 277 | `result-track:6b1bf140017d658e8c12868bd415212ed8e1214a72e53c69406132a6e2706112` |
| 27 | `theorem` | [commute_iff_commute](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-iff-commute.md) | 282 | `result-track:75fc79320b9043c051a728630e2d38158c5ea0bb5849bfcd2a933f733436e054` |
| 28 | `def` | [translate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate.md) | 294 | `declaration-track:e282a769ab14eb1120079b3012101592685283e17050b2c40fa59078f7687184` |
| 29 | `theorem` | [translate_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate-apply.md) | 303 | `result-track:a01758340cc86cfff5da13d84ed59eeda948a677a149181fae29816966d349be` |
| 30 | `theorem` | [translate_inv_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate-inv-apply.md) | 308 | `result-track:6627f3d712398563bb08c9e3827b9bcc5949156cca7bfe583a9cb5daadc76794` |
| 31 | `theorem` | [translate_zpow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate-zpow.md) | 313 | `result-track:617913fc28539253e8edf7c28a13f52c47811927bee7a57d2e94c7459f7e962c` |
| 32 | `theorem` | [translate_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate-pow.md) | 319 | `result-track:bc213ff444c1b8c1d9b5c3f140334b334aef18a499a3235bb0656bd6dccd6b13` |
| 33 | `theorem` | [translate_iterate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translate-iterate.md) | 325 | `result-track:bfc2a8c4f7cf8687cdd7429972bc463c84e91755e656ac52afbbf0ca850a4897` |
| 34 | `theorem` | [commute_nat_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-nat-add.md) | 339 | `result-track:7d49a3541fe722a580cb86c714d52b2d2a37d9f853cc11a3ce7307fc926ac11c` |
| 35 | `theorem` | [commute_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-add-nat.md) | 343 | `result-track:1b579523c7b9f9314588fb9d75bd646cc01630212e890c7f4f338f01ea995a62` |
| 36 | `theorem` | [commute_sub_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-sub-nat.md) | 347 | `result-track:155e59dce33313b03f6117979480df595c9bdcd58d418321397204d427460bfa` |
| 37 | `theorem` | [commute_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-add-int.md) | 352 | `result-track:06231cca1e5680e6133d40d72908bdefa5dbefc38f36d915b8dd5db090d9d3da` |
| 38 | `theorem` | [commute_int_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-int-add.md) | 357 | `result-track:b42eb1466613e60b22aacd1f6393e066b4d503759265ffaa1faa1d85d6c51219` |
| 39 | `theorem` | [commute_sub_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/commute-sub-int.md) | 361 | `result-track:e9eaba16b58fac8c6b421ef8a7e2e5af7838b52571008840ec3b1ee9bdd5f8d1` |
| 40 | `theorem` | [map_int_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-int-add.md) | 367 | `result-track:ffe47379aa3d5d86c0f928465f9b8f93a1b2df3cb39eff0d1f4af34eb7430f26` |
| 41 | `theorem` | [map_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-add-int.md) | 372 | `result-track:dee76605af507c89f963840dc9c4388998c9f8fbd00426d6f16a89fa74fe235f` |
| 42 | `theorem` | [map_sub_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-sub-int.md) | 377 | `result-track:4e11b695c41235a5b20b0c4b8bc849a1c2e45971e2aa098d0cf8a7acbc4aa74c` |
| 43 | `theorem` | [map_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-add-nat.md) | 382 | `result-track:cb83da08806a473581d95c859ca34f7a83c7c4b1aabda3fc72e0dc149388f490` |
| 44 | `theorem` | [map_nat_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-nat-add.md) | 387 | `result-track:c3af415052e2d535162bb54bb311d8ebd9f704e0a9e9138f6fe8076cec54fdfc` |
| 45 | `theorem` | [map_sub_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-sub-nat.md) | 392 | `result-track:6ed62d2857a0d054232e004a699ec1744331a57528f16c228034afe98d03fd1f` |
| 46 | `theorem` | [map_int_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-int-of-map-zero.md) | 396 | `result-track:043e6b24c10fda9ea87e7bae8abc9842a522c55b69e449cc8fedc00b69bfbfd2` |
| 47 | `theorem` | [map_fract_sub_fract_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-fract-sub-fract-eq.md) | 400 | `result-track:fb3cc1cfd0f16a65602763047099e627f505f608f8d49fd52369721db42e09a1` |
| 48 | `instance` | [(anonymous)](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/instance-source-edition-3.md) | 410 | `declaration-track:7d647e6c6a5328a8cc46c6d020b16eb225baab6ccb39f89fc8029e534d813df0` |
| 49 | `theorem` | [sup_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/sup-apply.md) | 432 | `result-track:711eaf90190e7bcdd392b92ae441aaa03dbfe4e76cd4468ac310b55a2ccb6665` |
| 50 | `theorem` | [inf_apply](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/inf-apply.md) | 437 | `result-track:e76f3e471016b24c9471877acc980e821f0b83075c3866cae92b353ad1b723c9` |
| 51 | `theorem` | [iterate_monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-monotone.md) | 441 | `result-track:fc3c4873f6a391311a1a5643363c12a59edf3c755a4672226a8e30a99f2493ec` |
| 52 | `theorem` | [iterate_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-mono.md) | 445 | `result-track:cb751756cb97ba11ca1f3e13f2bbedbb18430c36165bd0f4e2a5f0d34825e61e` |
| 53 | `theorem` | [pow_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/pow-mono.md) | 449 | `result-track:8fdad37533224023bf1302cde1126e39dbe6cdb58cda089da9b5dc8b2475627d` |
| 54 | `theorem` | [pow_monotone](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/pow-monotone.md) | 453 | `result-track:b8eb16d368e6e3fdecac30d609d1ec63c4e9690aa0f24c825f91ce0a45206fdf` |
| 55 | `theorem` | [map_le_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-le-of-map-zero.md) | 466 | `result-track:893dc73f87ac472a8031365e85ea57071cfdf414051fa7d6a898550940b69b6a` |
| 56 | `theorem` | [map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-map-zero-le.md) | 472 | `result-track:4831c99c23a2fa82f524a0ad8cbb41178441835bf9b73bd58af1ff15a8b73c03` |
| 57 | `theorem` | [floor_map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/floor-map-map-zero-le.md) | 476 | `result-track:1a963d8c749c16701d506c6f5910e26d418f95a3d6a917affa290fa36bcb6f93` |
| 58 | `theorem` | [ceil_map_map_zero_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/ceil-map-map-zero-le.md) | 482 | `result-track:ab5c0d271841357d187d8ffc5d32ca6da401cb0ca55a5d04c8cbc5120a003e99` |
| 59 | `theorem` | [map_map_zero_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-map-zero-lt.md) | 488 | `result-track:9789eb0f440df02fbbda578a9e7d0b0d6ca9c68439691fe7dfabdd6bdb655a5a` |
| 60 | `theorem` | [le_map_of_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-map-of-map-zero.md) | 495 | `result-track:585b0d0cbb2da8ef22d24b447470a59516ae3e8bf1c9725745c778b5b045b1d8` |
| 61 | `theorem` | [le_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-map-map-zero.md) | 501 | `result-track:636c735e6fd40486a3b59c41e230e634ae94300579b96f71cbe912ce9d071743` |
| 62 | `theorem` | [le_floor_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-floor-map-map-zero.md) | 505 | `result-track:820c42c4cff230e80cf99e70acdffa1b4905775038a3c1ed9ac9a018eede6e73` |
| 63 | `theorem` | [le_ceil_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-ceil-map-map-zero.md) | 511 | `result-track:389d11115894b9fad267a32c3cac9a483ca22c9fdfc26244954606782d52e66d` |
| 64 | `theorem` | [lt_map_map_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/lt-map-map-zero.md) | 517 | `result-track:686850fcd75b5b7e1e29cbe7cab5191a54e67b30d79b19ede510ec0032e0eb73` |
| 65 | `theorem` | [dist_map_map_zero_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/dist-map-map-zero-lt.md) | 524 | `result-track:c4de87e5865c26298034f5bd06352b35bb8296b317a00426a068ed788b47dc48` |
| 66 | `theorem` | [dist_map_zero_lt_of_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/dist-map-zero-lt-of-semiconj.md) | 529 | `result-track:304a3a3ab176b4a4cc34524e25f83d2fd0e1ac6aa6ddf33c15ba1fe150963746` |
| 67 | `theorem` | [dist_map_zero_lt_of_semiconjBy](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/dist-map-zero-lt-of-semiconjby.md) | 540 | `result-track:699e5f261f4966a765dbcc405a8cc6543785fadd037e6cc16f42870eb03978e3` |
| 68 | `theorem` | [tendsto_atBot](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-atbot.md) | 549 | `result-track:41c81bc40beeca6796520eb94b24dfa916231c40e017cd0d3be714597a13a4a3` |
| 69 | `theorem` | [tendsto_atTop](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-attop.md) | 555 | `result-track:70551cca92129ae923bf6d360d324a95f5a6f99982c1147f33fb396f074b4e22` |
| 70 | `theorem` | [continuous_iff_surjective](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/continuous-iff-surjective.md) | 561 | `result-track:3eecd538e697a5b6beff6674cf0accc257a4d9e4481ca9cd0b2a19bb8d94c157` |
| 71 | `theorem` | [iterate_le_of_map_le_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-le-of-map-le-add-int.md) | 576 | `result-track:520e3e6bdd6935c734de33c6518f0675c6f217f1674349a7809b35fd7c221b2d` |
| 72 | `theorem` | [le_iterate_of_add_int_le_map](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-iterate-of-add-int-le-map.md) | 582 | `result-track:76426b39804b9fbf2fe41ba711bfca40a33041be0c1663bc85c3251ea2eda48f` |
| 73 | `theorem` | [iterate_eq_of_map_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-eq-of-map-eq-add-int.md) | 588 | `result-track:8e92dda87cc7946e4b8198f24cf478118af8a74fe45b05a19483d81a5c33ca1f` |
| 74 | `theorem` | [iterate_pos_le_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-pos-le-iff.md) | 593 | `result-track:6ff4ff472548628f698ba32ce2d477a61c9c657a5f71b8e70acea3482b03507b` |
| 75 | `theorem` | [iterate_pos_lt_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-pos-lt-iff.md) | 599 | `result-track:71c1fc9e214eecfe0ed54bf76f124eee9ab87495f0056d38375a85fc4eaa4445` |
| 76 | `theorem` | [iterate_pos_eq_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/iterate-pos-eq-iff.md) | 605 | `result-track:b469e032951600f4e6ac91cdcfc821ae2541fd2f314b6a0486ed7b1e5b3a5aed` |
| 77 | `theorem` | [le_iterate_pos_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-iterate-pos-iff.md) | 611 | `result-track:e860ae9d1fb5e0ce10346c165e40aeb97e23eb4055c5a16866342a1e33785b17` |
| 78 | `theorem` | [lt_iterate_pos_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/lt-iterate-pos-iff.md) | 616 | `result-track:734a538affca332051779cc80643504aaa9bd350773f885c35b37450e40147b5` |
| 79 | `theorem` | [mul_floor_map_zero_le_floor_iterate_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/mul-floor-map-zero-le-floor-iterate-zero.md) | 621 | `result-track:3373b1191d29a23e499f3cafdc25cf0dba3c03ce9040b9eef6818ea7e630cad6` |
| 80 | `def` | [transnumAuxSeq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/transnumauxseq.md) | 634 | `declaration-track:c6dcd452399ab506ce02144a737d9f126b29b5656ced0089562d65ab4e5841c5` |
| 81 | `def` | [translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber.md) | 641 | `declaration-track:9c7975d2781d99d13519363b99d0dff01c874af0db11d6eb6a54f1a567a7f455` |
| 82 | `theorem` | [transnumAuxSeq_def](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/transnumauxseq-def.md) | 652 | `result-track:2a82c6d881c362a1433d0a2fc3c84bea8fe41fb48f23ebc398ccfcab39b212b3` |
| 83 | `theorem` | [translationNumber_eq_of_tendsto_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-tendsto-aux.md) | 656 | `result-track:2b77650dc761a216d7396c425743a0e936e625bf7867cf5b53ecdd9f95fdb658` |
| 84 | `theorem` | [translationNumber_eq_of_tendsto₀](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-tendsto.md) | 661 | `result-track:a5942edd065941fe19b568810d0f1f6aff8d9f74b14b71197ac90d21dcef5c11` |
| 85 | `theorem` | [translationNumber_eq_of_tendsto₀'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-tendsto-source-edition-2.md) | 668 | `result-track:cd712d7942a6562e4ce15b43d2e4947cb9c0d0a3df56be12b81be53e224a5b93` |
| 86 | `theorem` | [transnumAuxSeq_zero](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/transnumauxseq-zero.md) | 673 | `result-track:93391b10c16edcce5f34a21226e787afd96cf221a1f288c979cb14fa4d066732` |
| 87 | `theorem` | [transnumAuxSeq_dist_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/transnumauxseq-dist-lt.md) | 676 | `result-track:693daf67f11409df97082e035987b37533d0c723b9f78713d465e3739ad67785` |
| 88 | `theorem` | [tendsto_translationNumber_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translationnumber-aux.md) | 687 | `result-track:bd3dfb7d2bf26657ec05037dcee8aacaba54a1f6ee02df07ae6ca1c3dd75933c` |
| 89 | `theorem` | [dist_map_zero_translationNumber_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/dist-map-zero-translationnumber-le.md) | 691 | `result-track:2017180c7cbdb644363855e7253ea9ad95c41a3220271a90bb6c1b17fb49ecca` |
| 90 | `theorem` | [tendsto_translationNumber_of_dist_bounded_aux](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translationnumber-of-dist-bounded-aux.md) | 697 | `result-track:e1d51c543b2be68642bb1f7f05691bc0ba9f054f7e44492dd88736b575612803` |
| 91 | `theorem` | [translationNumber_eq_of_dist_bounded](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-dist-bounded.md) | 710 | `result-track:da8469150f01d2080e4f3cbbe08b5496a07b0e31460cb7fd831f6c1546fb7a99` |
| 92 | `theorem` | [translationNumber_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-one.md) | 717 | `result-track:b92fdbfef4a27db10d9f5760f8fd33af66527fb425783450f8bf1e281027a71f` |
| 93 | `theorem` | [translationNumber_eq_of_semiconjBy](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-semiconjby.md) | 721 | `result-track:10650262bd055ae4719fdb3ed687f5115956cb2237eed6272bd71e791a958c50` |
| 94 | `theorem` | [translationNumber_eq_of_semiconj](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-of-semiconj.md) | 727 | `result-track:243b836183e6b539eed92b173f693ef729fdacff3d0d6e56cca7f74e54cb129a` |
| 95 | `theorem` | [translationNumber_mul_of_commute](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-mul-of-commute.md) | 732 | `result-track:580842df21e029ed7accd04ccbdeab26b9eeb08fe9fb3d84457f36ab0ffaae4f` |
| 96 | `theorem` | [translationNumber_units_inv](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-units-inv.md) | 744 | `result-track:c2761ec220576cc0d20645b14fd19a3d3dcdf7793dfc00c623b499ec8f0d6544` |
| 97 | `theorem` | [translationNumber_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-pow.md) | 750 | `result-track:a4d9d5c5acd6434cca61d3701a924a59bdca795a3a1217c4b5442b21f82dbb32` |
| 98 | `theorem` | [translationNumber_zpow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-zpow.md) | 758 | `result-track:e047698bf2656464bf4e6211292853cc0577c2004f3138caf8381f497bdaf86d` |
| 99 | `theorem` | [translationNumber_conj_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-conj-eq-source-edition-2.md) | 764 | `result-track:4dd7dff65c80b974405e8268574a76bc88fc70abb283fef5addad27e48e3c709` |
| 100 | `theorem` | [translationNumber_conj_eq'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-conj-eq.md) | 770 | `result-track:34fa669d00ca3f5d5656d04e0ffcd031ef34fc113f14e83a2fd4c124fd401f33` |
| 101 | `theorem` | [dist_pow_map_zero_mul_translationNumber_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/dist-pow-map-zero-mul-translationnumber-le.md) | 775 | `result-track:083ff329016e19062c6a918d75cf3beaa6a1f0df7f2f2c1004f46b72fdba073d` |
| 102 | `theorem` | [tendsto_translation_number₀'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translation-number.md) | 780 | `result-track:0b96b2be54e2f8b27741038eaa284e8a5cad67ee489fe7c67ecd14f7e605f6fa` |
| 103 | `theorem` | [tendsto_translation_number₀](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translation-number-source-edition-2.md) | 793 | `result-track:5977273724dcd02f2232d773e13e7b067ac482f24b9ea67e7f4d45dfa94f0d96` |
| 104 | `theorem` | [tendsto_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translationnumber.md) | 799 | `result-track:190971ec62f2e71e9e635667cef0bb52aad52d8f7c083eb8d4bbeb669a869340` |
| 105 | `theorem` | [tendsto_translation_number'](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/tendsto-translation-number-source-edition-3.md) | 806 | `result-track:c0bc27027dfdd629f960de333b84f762c081beee637e0b73781bb1e0572b7b53` |
| 106 | `theorem` | [translationNumber_mono](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-mono.md) | 811 | `result-track:1e449379b40d29cdcaa2231dcda58c464c18c07f9b428a278c4102f3bbf02f83` |
| 107 | `theorem` | [translationNumber_translate](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-translate.md) | 816 | `result-track:8bf1d03317df23a59033787c6b5474d043051971fd5e490ba4d7dfee35311a26` |
| 108 | `theorem` | [translationNumber_le_of_le_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-le-of-le-add.md) | 822 | `result-track:a144bd7ef92fd24a125e87832c570c3488d8d5de892eca5f5d07485c543a31ee` |
| 109 | `theorem` | [le_translationNumber_of_add_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-translationnumber-of-add-le.md) | 826 | `result-track:e8aaf54c1d79f0bf3dfef89c42e53618252db558ecc43643b06c0e258f50d47e` |
| 110 | `theorem` | [translationNumber_le_of_le_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-le-of-le-add-int.md) | 830 | `result-track:044dff78db51a96d6400c22aa0d9435f709ac5da0aa13e33c817e7c08e2bdc39` |
| 111 | `theorem` | [translationNumber_le_of_le_add_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-le-of-le-add-nat.md) | 836 | `result-track:ede34607d532073d3f1a993297661ef1fa2e6f1c1476c525ee5c66f59f038a29` |
| 112 | `theorem` | [le_translationNumber_of_add_int_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-translationnumber-of-add-int-le.md) | 840 | `result-track:2bdb8f1a027baf9d15bd0efc2a9a994814b01df328c97e14465a374e34a6da12` |
| 113 | `theorem` | [le_translationNumber_of_add_nat_le](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/le-translationnumber-of-add-nat-le.md) | 846 | `result-track:a9c813510ead7ac56f7441bbfddcd7bc9373ad74d7a02ce3694416390521f68c` |
| 114 | `theorem` | [translationNumber_of_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-of-eq-add-int.md) | 852 | `result-track:1cf384ecc5c29536d086930deedc51f75a1712d9a99ea4cc147a9aadc7529b97` |
| 115 | `theorem` | [floor_sub_le_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/floor-sub-le-translationnumber.md) | 857 | `result-track:9141bf765875e8e00f9db7093575a89bb565dc56ae746e4ea25c645e3930783a` |
| 116 | `theorem` | [translationNumber_le_ceil_sub](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-le-ceil-sub.md) | 861 | `result-track:5620d56570dd39130305d31015be5df9c218f5d347c0db8e97b2b73424a8e9a3` |
| 117 | `theorem` | [map_lt_of_translationNumber_lt_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-lt-of-translationnumber-lt-int.md) | 865 | `result-track:44baca452aa3a8d5c1e96cb3f8a1b3598f7eedc9a3c9ee5074eb07d36d2cf6fc` |
| 118 | `theorem` | [map_lt_of_translationNumber_lt_nat](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-lt-of-translationnumber-lt-nat.md) | 869 | `result-track:0216e6b436cdaf9919e939e819d9157a47e410bd809da5cc1cfdd45a61ece1a3` |
| 119 | `theorem` | [map_lt_add_floor_translationNumber_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-lt-add-floor-translationnumber-add-one.md) | 873 | `result-track:1a4c52ecbf13c0830b363b9d374272656ff42d2a870083f8902d86b5d5c6a81e` |
| 120 | `theorem` | [map_lt_add_translationNumber_add_one](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/map-lt-add-translationnumber-add-one.md) | 881 | `result-track:b08dc5f29f335bf0e0b71191db76917b43b3849a3c9ac543a69b6bc188b4d42f` |
| 121 | `theorem` | [lt_map_of_int_lt_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/lt-map-of-int-lt-translationnumber.md) | 887 | `result-track:c98526bfbd27a756517711ebfd4a37e42dfacb9b185f6e2c33489083941cd10f` |
| 122 | `theorem` | [lt_map_of_nat_lt_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/lt-map-of-nat-lt-translationnumber.md) | 891 | `result-track:21c614a4d4c411f281245a5778d123db92bd53853067858ca13c173ee11a4af9` |
| 123 | `theorem` | [translationNumber_of_map_pow_eq_add_int](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-of-map-pow-eq-add-int.md) | 898 | `result-track:31d6fee326a8c56382cc270f5169e0688e908f594738c29b472955dfb4a117fe` |
| 124 | `theorem` | [forall_map_sub_of_Icc](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/forall-map-sub-of-icc.md) | 907 | `result-track:2c928d686028e16b870c65011ffe118e65155b0d7e590f15df4afaaa39c077e6` |
| 125 | `theorem` | [translationNumber_lt_of_forall_lt_add](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-lt-of-forall-lt-add.md) | 912 | `result-track:3e4c1b34193a0ff05bdcbf47be57db0bbc4b5de946b1ecc57dae999cfcc584fc` |
| 126 | `theorem` | [lt_translationNumber_of_forall_add_lt](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/lt-translationnumber-of-forall-add-lt.md) | 923 | `result-track:56f242e999a6954cc6ebc58656eb2184405fc6ed43d6caa791f5b7ca06783230` |
| 127 | `theorem` | [exists_eq_add_translationNumber](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/exists-eq-add-translationnumber.md) | 936 | `result-track:db16ad760cf65e3bd47c31d56d6f79395c127f08a936fb47a2d7cbc6a97ce900` |
| 128 | `theorem` | [translationNumber_eq_int_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-int-iff.md) | 946 | `result-track:75257ea142a4daa3477d27027dd7327aed370b38f08b2ce9e77ffe7ac2c0f366` |
| 129 | `theorem` | [continuous_pow](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/continuous-pow.md) | 956 | `result-track:b69558c144f19d508e3eda18525af79d2361917c4cdb9075b0630d06a763902b` |
| 130 | `theorem` | [translationNumber_eq_rat_iff](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/translationnumber-eq-rat-iff.md) | 961 | `result-track:f16b3798b60d6237b22e50b055107ee51aa96ceb6c62b7316e5ac5ab88b86a53` |
| 131 | `theorem` | [semiconj_of_group_action_of_forall_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/semiconj-of-group-action-of-forall-translationnumber-eq.md) | 974 | `result-track:57e107f4e0e4ccc1a3ba6e4a40a2ea21a6c440ecf395d28b97eecbeac6ea05f1` |
| 132 | `theorem` | [units_semiconj_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/units-semiconj-of-translationnumber-eq.md) | 1011 | `result-track:42fe27eb57dec1a0eba5338658ed9a8cfe593c3572ab29c6893c7a5b89e98c7d` |
| 133 | `theorem` | [semiconj_of_isUnit_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/semiconj-of-isunit-of-translationnumber-eq.md) | 1024 | `result-track:3d29072f66b863d7c6863f3a2a9d5aaa4a8c7b2580b886d2047092a640b4edb7` |
| 134 | `theorem` | [semiconj_of_bijective_of_translationNumber_eq](../../../../DynamicalSystemsAndErgodicTheory/TranslationNumberNamespacedExtIff.lean/declarations/semiconj-of-bijective-of-translationnumber-eq.md) | 1033 | `result-track:f2c27cf19baabd762b396daffdae90af078acf79757503b1c0e06307e93c3655` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e58396c0bb68ba581515496657b3d16dbc7e01966b8ca534cf7164d1a96f0b47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/TranslationNumber/Variant4169d5e1c8ea0ffce83c2853f0a2cffc11ef637bf9d1caa91f8a6f33467aceb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
