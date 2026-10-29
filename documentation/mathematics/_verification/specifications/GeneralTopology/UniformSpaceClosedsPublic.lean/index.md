# Verification target: Uniform Space Closeds Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02ff56e1bbd12b4113503553480f6178b41fae92",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02ff56e1bbd12b4113503553480f6178b41fae92`.

Source path: `GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.UniformSpace.Compact` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/hausdorffentourage.md) | 34 | `declaration-track:2ebcb84ed35ac6dffe1f55dc63fa34b418fd46aafdb7ffe097c41cfa7cd28dc3` |
| 2 | `theorem` | [mem_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/mem-hausdorffentourage.md) | 37 | `result-track:844a2102da6ea8cf544447c8f19bc6ad61397d0f3c4c1e24254f4d5b80009322` |
| 3 | `theorem` | [hausdorffEntourage_mono](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/hausdorffentourage-mono.md) | 42 | `result-track:15f7bf9a34694a4227582387bc9cba2fd2f40a4b76e201e4caa6ea14a55bc232` |
| 4 | `theorem` | [monotone_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/monotone-hausdorffentourage.md) | 47 | `result-track:90ca3a46535cead67e4bdb8012cb8211206cacef5f32cb52d203e1acef170517` |
| 5 | `theorem` | [hausdorffEntourage_id](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/hausdorffentourage-id.md) | 51 | `result-track:d65b8a1095cc6ae29454d8f4c383121bb3e59b87af3be063007733f41830eb7d` |
| 6 | `instance` | [isRefl_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isrefl-hausdorffentourage.md) | 54 | `declaration-track:20a13b5df8deac59ed2d23d267f9abea19fdf84375943977f087f3f12078d5eb` |
| 7 | `theorem` | [inv_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/inv-hausdorffentourage.md) | 59 | `result-track:92634ef019b42bccef9ba79cf6ec2daabb7a472e6396857d51120ed63a29bf24` |
| 8 | `instance` | [isSymm_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/issymm-hausdorffentourage.md) | 63 | `declaration-track:a83d9421cc97b65092ffe81964f3ffcb1af0f1cf319697de445bab3c6d83130d` |
| 9 | `theorem` | [hausdorffEntourage_comp](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/hausdorffentourage-comp.md) | 67 | `result-track:30eec3627ebc85642574784b18f679dc344656a626dc8a79af04dfeefc65a2c8` |
| 10 | `instance` | [isTrans_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/istrans-hausdorffentourage.md) | 84 | `declaration-track:fdfde91dc99f14f2babcff0ff9c39fd6db7e5cc02e9fee31fb8820417719049c` |
| 11 | `theorem` | [singleton_mem_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/singleton-mem-hausdorffentourage.md) | 89 | `result-track:b692c610f1f262643d5265847998bea8a51275a1af5e97693591d80dc9f96bce` |
| 12 | `theorem` | [union_mem_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/union-mem-hausdorffentourage.md) | 93 | `result-track:c3c5a9434797a6531f8c65064a0d24a2ff2df6de3d375d458e302014b5cf805d` |
| 13 | `theorem` | [TotallyBounded.exists_prodMk_finset_mem_hausdorffEntourage](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-exists-prodmk-finset-mem-hausdorffentourage.md) | 98 | `result-track:e1b992659e6da1a15ce23f0aaf5f1bb278743fde25eb0d80a63adc584a1ec959` |
| 14 | `theorem` | [prod_mem_hausdorffEntourage_entourageProd](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/prod-mem-hausdorffentourage-entourageprod.md) | 110 | `result-track:d4530237ce0201636b85e38d1ab2a57e27d71ce6a16c5cbdf1153d6be2859fc3` |
| 15 | `abbrev` | [UniformSpace.hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformspace-hausdorff.md) | 125 | `declaration-track:3c417f14ca3b13996633a4ef6015b62d8b1d4964423be6e952b6a99e034f2580` |
| 16 | `theorem` | [Filter.HasBasis.uniformity_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/filter-hasbasis-uniformity-hausdorff.md) | 144 | `result-track:13500a93ab17e34bc47b46e2417b79fefb24ec4e5babbd0f654def38e9f241f4` |
| 17 | `theorem` | [isOpen_inter_nonempty_of_isOpen](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isopen-inter-nonempty-of-isopen.md) | 151 | `result-track:2279279c384b56db9f129d07bac78e2e1c6667033ecfb1ac2ed49fca7f1a76a8` |
| 18 | `theorem` | [_root_.IsClosed.powerset_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-isclosed-powerset-hausdorff.md) | 164 | `result-track:a7b4dc6230085fce6f1aaae6472e47fd400f8a7dc6219ea23b04fe35751650c2` |
| 19 | `theorem` | [isClopen_singleton_empty](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclopen-singleton-empty.md) | 169 | `result-track:7596f0e9d3c504819f57d72ed697cbc2a034c5dae03ae9310ebaf9480e40075a` |
| 20 | `theorem` | [isUniformEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-singleton-source-edition-2.md) | 177 | `result-track:1d0e9d631c47b420682a060068a126b89373a1b98b8b697d8f35b46f5f173044` |
| 21 | `theorem` | [isClosedEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosedembedding-singleton.md) | 185 | `result-track:8719b6f8fba1eee681d274dc49206da6921c1ef8b1def77797f73f1230ed9bd3` |
| 22 | `theorem` | [uniformContinuous_union](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-union.md) | 193 | `result-track:47d16d0dd386c4eb61c1d4e6bcf50979daf4d686d4f00b333ad96fb85a6819e3` |
| 23 | `theorem` | [uniformContinuous_prod](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-prod-source-edition-2.md) | 198 | `result-track:49e212598774f963598aa838ebbdccd86cb2efb53660022d51a656e1b6d89c14` |
| 24 | `theorem` | [uniformContinuous_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-closure-source-edition-2.md) | 204 | `result-track:dcd7eac6e46b44dd6daaa9e5d51bb4ffb0f572c01cb83a7e8ef72a4d5c5d869e` |
| 25 | `theorem` | [continuous_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-closure-source-edition-2.md) | 216 | `result-track:0e04d6b3537ba355f889323e5988efbe501ac92183104ee1c6fe1c57a1aa1545` |
| 26 | `theorem` | [isUniformInducing_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniforminducing-closure-source-edition-2.md) | 219 | `result-track:bfb987636f35a23290c076940f2cf64ecd5677136d090aa002379c74d1989859` |
| 27 | `theorem` | [nhds_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/nhds-closure.md) | 231 | `result-track:780de16158e848be0d7dc878bfc3980523888aacbb9334a7b72ea8ae2d3790aa` |
| 28 | `theorem` | [isClosed_setOfPred_totallyBounded](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosed-setofpred-totallybounded.md) | 234 | `result-track:25539c849498b7a5cb209bed6b13c3fcd65540c0a085877003eaa2bf820b851e` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-5.md) | 249 | `declaration-track:810488f3f0f920b0b6599c0fa0ebc1795d265940c2e508e227e83bd0373a5b74` |
| 30 | `theorem` | [UniformContinuous.image_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-image-hausdorff.md) | 258 | `result-track:be386dc058f6c4ed74bd3474e625de7cc0d4f024767bd9fec46b0b6dd8768840` |
| 31 | `theorem` | [IsUniformInducing.image_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniforminducing-image-hausdorff.md) | 268 | `result-track:c259bfa0d762a62c2d2bb6a51af9216e42ee5f7a6c52bed769b85391f3572993` |
| 32 | `theorem` | [IsUniformEmbedding.image_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-image-hausdorff.md) | 280 | `result-track:b33d71a856f775fe23ab79ce9332393e4d6c7b3c4ff7328c677c4d01ba8d7102` |
| 33 | `theorem` | [TotallyBounded.powerset_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-powerset-hausdorff.md) | 286 | `result-track:5ccbca9cba81bbc015c0377c2e31777862950c1df3ec4881cf8dbd28f7024c6f` |
| 34 | `theorem` | [TotallyBounded.nhds_vietoris_le_nhds_hausdorff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-nhds-vietoris-le-nhds-hausdorff.md) | 299 | `result-track:f6c7ad64cd95348a27d73b0eb6f4f0975a74aba6a3aa3b40be715dd8d25b5e87` |
| 35 | `theorem` | [IsCompact.nhds_hausdorff_eq_nhds_vietoris](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/iscompact-nhds-hausdorff-eq-nhds-vietoris.md) | 320 | `result-track:288c88e2ad1d5d536b4492a931554335799da766060f378d1e0aa82539caf296` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-11.md) | 334 | `declaration-track:f30ee16c0ad56bc9b4a187c064a9413b02f7dae8143d47bafdd5a021514d3f0e` |
| 37 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformspace-source-edition-3.md) | 348 | `declaration-track:b2a5834a447921c3daa74154384e78f3eb717c9d36f7300b9bc00ecaeef9d77d` |
| 38 | `theorem` | [uniformity_def](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformity-def-source-edition-2.md) | 351 | `result-track:1a3712d0a59878954660c2df97c2016b27718aa2fa8ae3c6d5c6e72bd7d113c9` |
| 39 | `theorem` | [_root_.Filter.HasBasis.uniformity_closeds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-filter-hasbasis-uniformity-closeds.md) | 355 | `result-track:f4a4a4996d04770498f358d32678e2fbe4f07cc6425bcdaa8aa0819a6a456579` |
| 40 | `theorem` | [isUniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-coe-source-edition-2.md) | 360 | `result-track:2a8fe1856600ed56354c6e38e4443e76ac369fd296210ef8ad58d287345efc6b` |
| 41 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-coe-source-edition-3.md) | 364 | `result-track:cc7153071fda54d4d3862dfc225dde7f72a716c61e320dbca4fdf5c639b33bdd` |
| 42 | `theorem` | [isOpen_inter_nonempty_of_isOpen](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isopen-inter-nonempty-of-isopen-source-edition-2.md) | 367 | `result-track:df433e9917301c2045e48cec3142800102bbf63ccf02dcabfe86aab41e1170c7` |
| 43 | `theorem` | [isClosed_subsets_of_isClosed](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosed-subsets-of-isclosed.md) | 371 | `result-track:7e0fe01e7a7409a0076839e42050cc51486b4e96681183d3df22731aeb9dac08` |
| 44 | `theorem` | [isClopen_singleton_bot](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclopen-singleton-bot.md) | 375 | `result-track:8122545e5850d02498face55993dfab8a061a28d02d3414b9b715fc725f10e3f` |
| 45 | `theorem` | [totallyBounded_subsets_of_totallyBounded](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-subsets-of-totallybounded-source-edition-3.md) | 379 | `result-track:fb1a4984886c7a43288ca14b3460b27602319840a5ec6ab559d2ca647439b846` |
| 46 | `theorem` | [isClosed_setOfPred_totallyBounded](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosed-setofpred-totallybounded-source-edition-2.md) | 383 | `result-track:60be878ebd8b53b83517cb01d4d16c141dc68c61ae325267203c01cee5346745` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-4.md) | 389 | `declaration-track:310d060afe936e42bfb5a354f935fa2f77b405e1380bcb098a0ddee4c3ebf59f` |
| 48 | `theorem` | [isUniformEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-singleton.md) | 396 | `result-track:127acb910f9ce12f02667af06d8d786d4b724a3f96a12abc223874e0fc5f805b` |
| 49 | `theorem` | [uniformContinuous_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-singleton.md) | 399 | `result-track:a84fb11662aa7925951d23dac44529a6cd0bea8b850c76ddb6fa1ffd434dfebf` |
| 50 | `theorem` | [isEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isembedding-singleton.md) | 403 | `result-track:e0a3aa89ef5ec729b3ee666df7cd7c0aad290d23c196eb106e5b0daef800322f` |
| 51 | `theorem` | [continuous_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-singleton.md) | 407 | `result-track:8d1cab8dcf78151f93c1cbf4918db9cc9a1379402c2983b6d0d412bf6ba6f183` |
| 52 | `theorem` | [isClosedEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosedembedding-singleton-source-edition-2.md) | 411 | `result-track:cdf11206e9e7aa82e061a37b58012b15779bababefa667951a13ca670e22766e` |
| 53 | `theorem` | [discreteUniformity_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/discreteuniformity-iff-source-edition-2.md) | 419 | `result-track:94c93f2afdf9ff47ac38cabfe80f2a32cc9fa8a479f2d5cf7405fb2dde369578` |
| 54 | `theorem` | [uniformContinuous_sup](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-sup-source-edition-3.md) | 424 | `result-track:97da5fc20f5bd70ae7c8dc237eaa10d6baf58ffa61cd155d83833ed87d3b0deb` |
| 55 | `theorem` | [_root_.UniformContinuous.sup_closeds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-sup-closeds.md) | 429 | `result-track:8bd174cb15935908b27f998486b4688f5c685a843a18ce980f501e48b8d01a4c` |
| 56 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-2.md) | 434 | `declaration-track:160e19884527485175ce4bbce8b3938f3c9be319816c3ab3527673f456d8820e` |
| 57 | `theorem` | [uniformContinuous_prod](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-prod-source-edition-4.md) | 437 | `result-track:94ab3e488ae7b4e3b09540eba0ba386ed7f95426c62653f7f4f51f4b0c4f6fe7` |
| 58 | `theorem` | [_root_.UniformContinuous.prod_closeds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-prod-closeds.md) | 442 | `result-track:9f56ba6c41b8aad0378138af76b636b9174e1f81be44948777e67041f6bf5ce3` |
| 59 | `theorem` | [continuous_prod](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-prod.md) | 448 | `result-track:0a909da4d53a797f003f0707998cbc33972102dbad42b5a0d5b8d4daf62a3d97` |
| 60 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-3.md) | 451 | `declaration-track:29cf5a5094d995a27b820fa5c034f5b39112b509144f320c9a6bf2cd68d0084b` |
| 61 | `theorem` | [isUniformInducing_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniforminducing-closure.md) | 462 | `result-track:375eb3d5217430ec8df5542bf84ebf32176e40ddf6f87293cdb0b5ac32b6e98f` |
| 62 | `theorem` | [uniformContinuous_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-closure.md) | 466 | `result-track:3bd0f9c7966b0f0c87f303347d338a10fee832e197628b643fb1c5becc091e51` |
| 63 | `theorem` | [continuous_closure](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-closure.md) | 470 | `result-track:0d7fba9bf7f98309d74f69a0c310ebca9e1a16168c4ba06d1e95e9a2a56eccf8` |
| 64 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-6.md) | 473 | `declaration-track:817d2011c5ea38514b68298911b758959cec2f40d518548ac5f563b3aafa6491` |
| 65 | `theorem` | [compactSpace_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/compactspace-iff.md) | 478 | `result-track:43ab3d4a7ee20e974c91bd1bc8553233323c9f94db4bbd880ce1115116ba95cc` |
| 66 | `theorem` | [noncompactSpace_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/noncompactspace-iff.md) | 491 | `result-track:c907c9e46cd9e0a4526278875374ae67b1acb6e41ef6ea4dd373fe6b7b3278ef` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-10.md) | 494 | `declaration-track:edabdebd34e5e24a2bcc9f56a2e66dff1640a4bf93d3146281d10ef0c5f82f7e` |
| 68 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformspace-source-edition-2.md) | 501 | `declaration-track:64254a6686120dcb536c20cdd0d51dccfc3743243226c13f17d5f401ee718ac5` |
| 69 | `theorem` | [uniformity_def](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformity-def-source-edition-3.md) | 505 | `result-track:28d7c537800b3b634fa2aa761a53cd59d342666cc9997fdfb35144a9eed0c332` |
| 70 | `theorem` | [_root_.Filter.HasBasis.uniformity_compacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-filter-hasbasis-uniformity-compacts.md) | 509 | `result-track:636e3fc8f42d0d61633fb3ac298e88a21d08268e1027e639d9f8363f6a4c4fbf` |
| 71 | `theorem` | [isUniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-coe-source-edition-3.md) | 514 | `result-track:ef45c146108e664498c7d916a43bf2f973637504eb2aaf09da677d6b229fd0d6` |
| 72 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-coe.md) | 518 | `result-track:253e1fa078e3066e57b48dd8a8d5e3c46b4f846a17d69fae0344d9bb1b3b057b` |
| 73 | `theorem` | [isUniformEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-tocloseds.md) | 521 | `result-track:983a833404651d04dc44df70d4ed4c4ebef7fc2c75cf4e4f982f42ce41d1bb3f` |
| 74 | `theorem` | [uniformContinuous_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-tocloseds.md) | 525 | `result-track:34a5436b387ab95666c0e51814b6ef043a5fd1a766ede56917153c35ed892ba8` |
| 75 | `theorem` | [isEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isembedding-tocloseds-source-edition-2.md) | 529 | `result-track:ecdbe064d98b538ca8e01f221539f4cd238b980bcbdc6de7a2e67c96bb699ff1` |
| 76 | `theorem` | [continuous_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-tocloseds.md) | 533 | `result-track:a05923262cfb48ccab412ba4d0bfb309c17f69bb098dc1eb23722e8265d4c5b0` |
| 77 | `theorem` | [isClosedEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosedembedding-tocloseds.md) | 537 | `result-track:5e4e9a43bd2d20648860eec507a3398079a1ef66b3327257766d2f281ad4e746` |
| 78 | `theorem` | [totallyBounded_subsets_of_totallyBounded](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-subsets-of-totallybounded.md) | 546 | `result-track:12b39d9e827e516a69d84e7137f7b9ac66137022e9dd46ddc8d6ccac6ca9acbc` |
| 79 | `theorem` | [isUniformEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-singleton-source-edition-4.md) | 550 | `result-track:fbaa337fffeb1f6103ca19934c61d14db6aa02daafa6a31890bf7dfcdb755803` |
| 80 | `theorem` | [uniformContinuous_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-singleton-source-edition-2.md) | 553 | `result-track:b697936c3b1f0c5ea74c2c2d4fc6356800b3f76fabe5fcb1bc2db2496bef1631` |
| 81 | `theorem` | [uniformContinuous_sup](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-sup.md) | 556 | `result-track:3e2f2133d7b65c5023e86d560337c63dbcf748e10a92f0e2240350396a084a90` |
| 82 | `theorem` | [_root_.UniformContinuous.sup_compacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-sup-compacts.md) | 562 | `result-track:f48cde3de80412cc4787060390a84db7fd9ae29b57fc840189cebf5cef353020` |
| 83 | `theorem` | [uniformContinuous_prod](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-prod-source-edition-3.md) | 567 | `result-track:8cdb9bb9afeec4115cb50dd067426c0c63cfa2b67ea7ca7d5c15a90c14a1d2c7` |
| 84 | `theorem` | [_root_.UniformContinuous.prod_compacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-prod-compacts.md) | 573 | `result-track:852daaa0629c97cbbc94c86a866730c242453d5d39d9c9932049b958fa352064` |
| 85 | `theorem` | [_root_.UniformContinuous.compacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-compacts-map.md) | 578 | `result-track:9e1bd34fccc5402a9645b29fb20b51cbf8b50d98670b88d848b883d21e8b48a4` |
| 86 | `theorem` | [_root_.IsUniformInducing.compacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-isuniforminducing-compacts-map.md) | 582 | `result-track:b7433c2d7fb8b3ca9c4e9ccbb997e6cbe47abf8d6607be0fba4563cec1e04d35` |
| 87 | `theorem` | [_root_.IsUniformEmbedding.compacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-isuniformembedding-compacts-map.md) | 587 | `result-track:5e10987b506c11614c21fe82f05c5ab09c25f54a46d40b1c0e0ae6fcae7aa60b` |
| 88 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-9.md) | 592 | `declaration-track:d4b7a5107d2e663a17993078db99eaa5f9e9de705e41b1ba109a26b93cd65048` |
| 89 | `theorem` | [discreteUniformity_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/discreteuniformity-iff.md) | 596 | `result-track:357e70f5eef1b04bd73a33d08f0ef61724d14c0395f69f9272b41fd94595c272` |
| 90 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-8.md) | 599 | `declaration-track:bd534170261885a4ba921d299e3b910c39d1e70ea61676a85624950f93d8b068` |
| 91 | `instance` | [uniformSpace](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformspace.md) | 649 | `declaration-track:25eb30e42394ebed5abcb64c151460c123823d21f2c0b7fc6fef521eb90de82a` |
| 92 | `theorem` | [uniformity_def](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformity-def.md) | 653 | `result-track:163bd37fab86c5e838fd59148f997ccd3cb287d0fee4dd71cd4defc7e01e97c4` |
| 93 | `theorem` | [_root_.Filter.HasBasis.uniformity_nonemptyCompacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-filter-hasbasis-uniformity-nonemptycompacts.md) | 657 | `result-track:3e1c07c2c126f71269a48f935a2b770dad248ebf718bbb36e126b8ce892d6bd5` |
| 94 | `theorem` | [isUniformEmbedding_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-coe.md) | 663 | `result-track:20db94f65fb695cad736fbfb9d3ee84a88f957cc580460818043ee26452d584c` |
| 95 | `theorem` | [uniformContinuous_coe](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-coe-source-edition-2.md) | 667 | `result-track:4847c698db311b5fc6ac9b10d6341fc0261c5fe9e7d38e5d40cee6f579747155` |
| 96 | `theorem` | [isUniformEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-tocloseds-source-edition-2.md) | 670 | `result-track:cf6c2b65ef8061985592161f62ded18b93c42eca10aa13c0c273f5f89b56289b` |
| 97 | `theorem` | [uniformContinuous_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-tocloseds-source-edition-2.md) | 674 | `result-track:b2e999d95bc029877b0e40ab22fa6cd333c3ec754fe26d37c550a4c9feb5f357` |
| 98 | `theorem` | [isEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isembedding-tocloseds.md) | 678 | `result-track:3a0ad3543b691f594573a35b8b231bf39995262d1f597262f0ae713acd0d5b56` |
| 99 | `theorem` | [continuous_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/continuous-tocloseds-source-edition-2.md) | 682 | `result-track:e987bc2d4762d5f0ddd343405592db5b2b04a53002a1712c9d235533fcb0867e` |
| 100 | `theorem` | [isClosedEmbedding_toCloseds](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isclosedembedding-tocloseds-source-edition-2.md) | 686 | `result-track:5ff15172e7e7ea0c978cc39f9f56de8c41b72cf370fa65dee25e524b0cd31560` |
| 101 | `theorem` | [isUniformEmbedding_toCompacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-tocompacts.md) | 690 | `result-track:df1eb520d31e1a5b593e705cb5b82e6023c3e80681cb965a9e32af7eb0c25526` |
| 102 | `theorem` | [uniformContinuous_toCompacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-tocompacts.md) | 694 | `result-track:4526a1530ced462a4d44969ed2349c9cef72f9b38a3491d8b869d5129b1fa2d9` |
| 103 | `theorem` | [totallyBounded_subsets_of_totallyBounded](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/totallybounded-subsets-of-totallybounded-source-edition-2.md) | 697 | `result-track:80c81bbf6371a00f9c8e4697ca135ad2c60c10c1e46b484832031d69fc1b74fb` |
| 104 | `theorem` | [isUniformEmbedding_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/isuniformembedding-singleton-source-edition-3.md) | 701 | `result-track:6f118ef14b01422c221765a36c37774a4393c8e3f8e3640595b9883c7e47e78e` |
| 105 | `theorem` | [uniformContinuous_singleton](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-singleton-source-edition-3.md) | 704 | `result-track:ef221d3a4883b1bc1b2e1d015a85b79814182396ec7b60f66f756663debd3dd0` |
| 106 | `theorem` | [uniformContinuous_sup](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-sup-source-edition-2.md) | 707 | `result-track:643c556839d0018874a7af9d6399595e245a35ca466d2a4607a98147d5cd6cc2` |
| 107 | `theorem` | [_root_.UniformContinuous.sup_nonemptyCompacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-sup-nonemptycompacts.md) | 713 | `result-track:4d7a5f0c427c2e4d1f60977e26ff4eb47f8793de2bbcfe616f2cf5e4a84a03be` |
| 108 | `theorem` | [uniformContinuous_prod](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/uniformcontinuous-prod.md) | 718 | `result-track:0635bd0d812a2e26ac8885d0aea6877267b5273929f5f2bab438a804c5b085e3` |
| 109 | `theorem` | [_root_.UniformContinuous.prod_nonemptyCompacts](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-prod-nonemptycompacts.md) | 724 | `result-track:1c998a9675e7048da9a988ddfe1eb0f0f6812624a1b6425146d2d2097e0336af` |
| 110 | `theorem` | [_root_.UniformContinuous.nonemptyCompacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-uniformcontinuous-nonemptycompacts-map.md) | 729 | `result-track:825f77857f18060397da8db39db37a6a1eab32429a2ed395b6703728e34171fe` |
| 111 | `theorem` | [_root_.IsUniformInducing.nonemptyCompacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-isuniforminducing-nonemptycompacts-map.md) | 733 | `result-track:5a8ab2a39deab7b8b2e844ad1d432c274d5dcd1e029642a14a21b376b20d2f81` |
| 112 | `theorem` | [_root_.IsUniformEmbedding.nonemptyCompacts_map](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-isuniformembedding-nonemptycompacts-map.md) | 738 | `result-track:c133e5d8a6ed80d7e20bb58da192c87a11f915922194cf15f865474ba8ac790f` |
| 113 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance.md) | 743 | `declaration-track:0d13402006eaf6a449763b26a21fc2e2f3dc9fa38a2a2ebd7dc31fc73747578c` |
| 114 | `theorem` | [discreteUniformity_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/discreteuniformity-iff-source-edition-3.md) | 747 | `result-track:af01ae566a27c024897eeee0787b77a4a49562cc07854558a23a41988d7d116b` |
| 115 | `instance` | [(anonymous)](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/instance-source-edition-7.md) | 750 | `declaration-track:8fe0a70e66d403e370e7dd3b8b75609b4a55969d9ea4cbdbbceeb32df460ddbc` |
| 116 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/completespace-iff.md) | 754 | `result-track:451ae8fca74184add8b3c18b90334b35d74492a4a22d4a0cb76cdbacbcb0a934` |
| 117 | `theorem` | [_root_.TopologicalSpace.Compacts.completeSpace_iff](../../../../GeneralTopology/UniformSpaceClosedsPublic.lean/declarations/root-topologicalspace-compacts-completespace-iff.md) | 765 | `result-track:a40eb6f918aac7a19a083563a5fe6c46f94af5f4d527d80ecdfb78dc5d1f1b07` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfdfc608b434b27cc3033b4c0d27f39a3020cc2d2297e06bbd4e1889fb464699 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Closeds/Variant4f1514ae9343264ab854273121a323cbb0f0d2241c0f398d7c4317e2adeb27aa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
