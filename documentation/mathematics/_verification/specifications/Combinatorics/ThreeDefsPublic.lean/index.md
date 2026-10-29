# Verification target: Three Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ThreeDefsPublic.lean/index.md) · [Full source](../../../../Combinatorics/ThreeDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90f54a67c2dc9bff1eaa1aae5bbbb9cd62a12a91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ThreeGPFree](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree.md) | 72 | `declaration-track:a9dc1d0dc9f25a30ce69975cd9a94fa03e5d8f6b812150432ed4fb8a46855e84` |
| 2 | `instance` | [ThreeGPFree.instDecidable](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-instdecidable.md) | 76 | `declaration-track:0e4a57657fd111b274149ec08cee339af8fd35ce4f951ff58030a6c5fd1a6d7d` |
| 3 | `theorem` | [ThreeGPFree.mono](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-mono.md) | 83 | `result-track:0dee37136fd21b9e69b2cb33b8b9f9de8627c6ce738360c7fce87176b284132d` |
| 4 | `theorem` | [threeGPFree_empty](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-empty.md) | 87 | `result-track:1210519ec6e4511cd5e60acfdf806f368703aa9c9668648912c867dab992d669` |
| 5 | `theorem` | [Set.Subsingleton.threeGPFree](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/set-subsingleton-threegpfree.md) | 90 | `result-track:371c7ad4aac9b400298c19a2d9fe3a0a669972b59dc8fb862b75f1fa406350b1` |
| 6 | `theorem` | [threeGPFree_singleton](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-singleton.md) | 94 | `result-track:1154457fdd86daaf6ca69ad855663562944ca579e7d999a8209c85536aa7447d` |
| 7 | `theorem` | [ThreeGPFree.prod](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-prod.md) | 98 | `result-track:a5a244a549854afd631a235c3cc33fe2a93bae888adb41c5de6277556a277e9f` |
| 8 | `theorem` | [threeGPFree_pi](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-pi.md) | 103 | `result-track:e2ca5c315e7ee2c29a557bffa9721e425d28ebec60aa50980276d2bfb92beea4` |
| 9 | `lemma` | [ThreeGPFree.of_image](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-of-image.md) | 116 | `result-track:55a8a8930d377efd481b0185f2ae593303d0a7c18f0b1b6f4799bcabe3b06a93` |
| 10 | `lemma` | [threeGPFree_image](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-image.md) | 125 | `result-track:dab3c7d518456d081db34cd551aa2d044ac469518dccb7a279c349847f74ad95` |
| 11 | `lemma` | [IsMulFreimanHom.threeGPFree](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/ismulfreimanhom-threegpfree.md) | 138 | `result-track:78e4bcfd79b33bc93ffc7c87a919323bd69481f033a831873122afeeb0cbd7e8` |
| 12 | `lemma` | [IsMulFreimanIso.threeGPFree_congr](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/ismulfreimaniso-threegpfree-congr.md) | 145 | `result-track:7add80d2247f1a0772a37915a2104088d62a9b160b24342d2f2e0075171bddd8` |
| 13 | `theorem` | [ThreeGPFree.image'](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-image-source-edition-2.md) | 152 | `result-track:fcf60fbccd20bdc9d5b8226edf4f2fd6778e17e59161d1c099a1af810ba1d377` |
| 14 | `lemma` | [ThreeGPFree.eq_right](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-eq-right.md) | 163 | `result-track:3847be237c37b553b6feb0cf88d162d84bb7cc2133deb80f401f093e0f351478` |
| 15 | `lemma` | [threeGPFree_insert](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-insert.md) | 169 | `result-track:d0602e4724b44cd1d83d13391407a771ef019cd70efb080a6f42a8849221f9b3` |
| 16 | `theorem` | [ThreeGPFree.smul_set](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-smul-set-source-edition-2.md) | 190 | `result-track:4ca09dfe3c4e99459fd553f38e2df6e71a4bc99ca9437358cbbf4fc806e3a4a2` |
| 17 | `lemma` | [threeGPFree_smul_set](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-smul-set-source-edition-3.md) | 194 | `result-track:6f921590f48c922cff960c40f16f8101c9dd2c35ae19dcb659e9f17c4cf391c5` |
| 18 | `theorem` | [threeGPFree_insert_of_lt](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-insert-of-lt.md) | 207 | `result-track:70f9c798740821d9a103eb96d4e18aff00dc4b766b83d29b19d5db58067bf7f3` |
| 19 | `lemma` | [ThreeGPFree.smul_set₀](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-smul-set.md) | 220 | `result-track:435ece74be9f1b10f0c80e40a41afceeacb45ec29599343fdcacf48b0c462dd4` |
| 20 | `theorem` | [threeGPFree_smul_set₀](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-smul-set-source-edition-4.md) | 224 | `result-track:9f39d3b1e00d62b21ac33ae588461f41ed3ffbfdd52bc9f14d8871ae73d4341c` |
| 21 | `theorem` | [threeAPFree_iff_eq_right](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threeapfree-iff-eq-right.md) | 235 | `result-track:50dcdff3957ee163b21b76f6bf83be4544f2a2b1d06598e6dfeee9edda935f8c` |
| 22 | `def` | [mulRothNumber](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber.md) | 262 | `declaration-track:831e9ef81883a58b6d9d8aed750a8af83df3ccd6c9d358730263f48ec31587d0` |
| 23 | `theorem` | [mulRothNumber_le](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-le.md) | 270 | `result-track:349c1b750258eb69d5463505d22c53c39ace08fe3db73a126fded5ee35deb54c` |
| 24 | `theorem` | [mulRothNumber_spec](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-spec.md) | 273 | `result-track:975f3d3074558df8f843432b2f0ada9f64afe1f0157455505269725f90182882` |
| 25 | `theorem` | [ThreeGPFree.le_mulRothNumber](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-le-mulrothnumber.md) | 281 | `result-track:9dc92bc817ae9ffabe64adc9109f8ef477728a2d070df528ac46b1f4b1152972` |
| 26 | `theorem` | [ThreeGPFree.mulRothNumber_eq](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threegpfree-mulrothnumber-eq.md) | 286 | `result-track:b431d081680be2703076b1bba5c9e62c0d3811c77aca0047f50b3538ad8d551e` |
| 27 | `theorem` | [mulRothNumber_empty](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-empty.md) | 291 | `result-track:f6c635c49241438f46f7077c4cade1b6eb2afd638608f51b9d810486be7c8744` |
| 28 | `theorem` | [mulRothNumber_singleton](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-singleton.md) | 295 | `result-track:ee00786eba957cb0ce9d8ea25a9fb953e47c81c831b4424daeb855cd105e95b4` |
| 29 | `theorem` | [mulRothNumber_union_le](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-union-le.md) | 301 | `result-track:a56efc1e986f537f61a0a18727d13e95c16f3d5e00b85d1692f187e40d4ab569` |
| 30 | `theorem` | [le_mulRothNumber_product](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/le-mulrothnumber-product.md) | 313 | `result-track:cd5b0874408a9fa9beb8283bc3358e152a4020a60f83e580e963e768dd381c64` |
| 31 | `theorem` | [mulRothNumber_lt_of_forall_not_threeGPFree](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-lt-of-forall-not-threegpfree.md) | 323 | `result-track:9409d5cbf6e801823886ae8ce74aee5c57c778124a40b0d723b7d7610dc7f723` |
| 32 | `lemma` | [IsMulFreimanHom.mulRothNumber_mono](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/ismulfreimanhom-mulrothnumber-mono.md) | 339 | `result-track:5904fe0ab60f416d3a5a730fc98955f430f3f4998971dd85f4058c681054e0f0` |
| 33 | `lemma` | [IsMulFreimanIso.mulRothNumber_congr](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/ismulfreimaniso-mulrothnumber-congr.md) | 352 | `result-track:098955139bdaf02a46c5e2729468915ab01c640fb601cc5052883fb729b9c438` |
| 34 | `theorem` | [mulRothNumber_map_mul_left](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-map-mul-left.md) | 372 | `result-track:a77f0a3a2c58b8dc5a56b4fe636c1bb3977776c73757f1583bd4f6e20215757c` |
| 35 | `theorem` | [mulRothNumber_map_mul_right](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/mulrothnumber-map-mul-right.md) | 387 | `result-track:10dbb8412251c5c243aafe52a42493d7c8788119ed46b38630b3b8d7708fff85` |
| 36 | `def` | [rothNumberNat](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat.md) | 406 | `declaration-track:2c0eb0d3068b541f776cac480a567dc13ead2360e830f234298acc67460303d5` |
| 37 | `theorem` | [rothNumberNat_def](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat-def.md) | 409 | `result-track:41947405322538b48c289f0ff913e1b7376641595be4ead5d4f0e005261b8c78` |
| 38 | `theorem` | [rothNumberNat_le](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat-le.md) | 412 | `result-track:114b492fcd38b42808c687257e22076776206a6e1f09ad6df8ab54b3e268555b` |
| 39 | `theorem` | [rothNumberNat_spec](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat-spec.md) | 415 | `result-track:a1e19769e0f3094ceb43a46fb39fd724f37fb06e2b13169b38b1c8936edb30cf` |
| 40 | `theorem` | [ThreeAPFree.le_rothNumberNat](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/threeapfree-le-rothnumbernat.md) | 421 | `result-track:2b4750e7fad5246a07e53de8e6e45768cbfac8a1aaba97d76bc658774382a52b` |
| 41 | `theorem` | [rothNumberNat_add_le](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat-add-le.md) | 428 | `result-track:ba205138ca8805b7b56d798849f8f5531e14febebf06f73d7e2a17710558552b` |
| 42 | `theorem` | [rothNumberNat_zero](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/rothnumbernat-zero.md) | 435 | `result-track:09eb09d2d07e299a186e58d1cbd08c714ca173713e8d98af9b48491de75a80a0` |
| 43 | `theorem` | [addRothNumber_Ico](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/addrothnumber-ico.md) | 438 | `result-track:823a3a6827c6c95d2cc75973e947dee8c68418c6e68c51bdceb98da87b73e622` |
| 44 | `lemma` | [Fin.addRothNumber_eq_rothNumberNat](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/fin-addrothnumber-eq-rothnumbernat.md) | 446 | `result-track:a24402041ded1bbe9ddb95cb1aaa6d3b9be83f467a7d77221b784373feb12874` |
| 45 | `lemma` | [Fin.addRothNumber_le_rothNumberNat](../../../../Combinatorics/ThreeDefsPublic.lean/declarations/fin-addrothnumber-le-rothnumbernat.md) | 450 | `result-track:8f226b92a4ae783e23aed43f4db3a1c1fada5da32573b6f02896eccb3873a405` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b01cf555d7893d7366c1fa39756924d529bbd0dbad457a00c8846842155f391 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant3d8601ad6f4f2e220790ef5a736754bbd27fec03e1c50cabb71c0697de008489.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
