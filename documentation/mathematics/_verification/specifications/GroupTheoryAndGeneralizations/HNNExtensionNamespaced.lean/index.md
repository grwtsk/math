# Verification target: HNNExtension Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d27507a32a8fdf470f3ab7ed7f4a9c7e7c3f898`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.CharZero` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Units` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coprod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Complement` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HNNExtension.con](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/hnnextension-con.md) | 47 | `declaration-track:21a54f25bcb702796e15170b58665cae4da93a37fd16dd6c5ca0946983c0ae34` |
| 2 | `def` | [HNNExtension](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/hnnextension.md) | 57 | `declaration-track:187c3a5441ba0f5c39e1559aa9304528c195f945f38e667eefa64a97243f797c` |
| 3 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance-source-edition-6.md) | 63 | `declaration-track:f15244a0c911cd7e64c108ca9ce48868c95616c3e76bd32536bcb3bdf7fa6aa9` |
| 4 | `def` | [of](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/of.md) | 69 | `declaration-track:5df61475945b0817fb1e6d311159b6334a55208682b892fdd18a0bde4ff501a8` |
| 5 | `def` | [t](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/t.md) | 73 | `declaration-track:124ebbfcd857e24216d562fa6b4f879fea1c75086782fb49aed8c175d410fb82` |
| 6 | `theorem` | [t_mul_of](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/t-mul-of.md) | 76 | `result-track:e32f6329455863a66492781e87114f6efe5cced61a21d86ec2ecbf701a5fc6d7` |
| 7 | `theorem` | [of_mul_t](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/of-mul-t.md) | 80 | `result-track:9a7c444526a51bbc999f2d4a41d89fa44b20c889b7e7e1a7503f183638cec5f5` |
| 8 | `theorem` | [equiv_eq_conj](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/equiv-eq-conj.md) | 84 | `result-track:2bd833ca30cb8ab48641261fc45e51fa331861c28c49c7d9326c538cbb136e41` |
| 9 | `theorem` | [equiv_symm_eq_conj](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/equiv-symm-eq-conj.md) | 88 | `result-track:0d4be310f7401c1539ced76ff4ace7a2eb6aca9366df82ae94c4043ce8e69aa6` |
| 10 | `theorem` | [inv_t_mul_of](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/inv-t-mul-of.md) | 92 | `result-track:822c67e491325190d7cf7301fd0ace3068d44a885e46e446354df4db5cf9abbd` |
| 11 | `theorem` | [of_mul_inv_t](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/of-mul-inv-t.md) | 96 | `result-track:978bd5eef2f96f1757b8cc3b805f19d1bca74207a7273f28690c19bb82af6510` |
| 12 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/lift.md) | 101 | `declaration-track:d210b7ee2225a293cd596513afc1b27be59e1fb3844eb733cee1215e50818f51` |
| 13 | `theorem` | [lift_t](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/lift-t.md) | 108 | `result-track:1ecd621084a9a0c430874b523740c379adf462ee1739f5edef2b458b064a3ed1` |
| 14 | `theorem` | [lift_of](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/lift-of.md) | 113 | `result-track:61bfb9e49346a6581e217e37bf04ef8d4d3b058d0bc17eafba7926f0cf61ba09` |
| 15 | `theorem` | [hom_ext](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/hom-ext.md) | 118 | `result-track:0069e68dd008d77cc44bed7fab425220e5892fefc5bbee6c9abbc5ea004d8ece` |
| 16 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/induction-on.md) | 124 | `result-track:58e560d42cfdb0dbc4cdb6469ecd8f1be40fb7daab4bd56ff8cfe8d942c2aa9c` |
| 17 | `def` | [toSubgroup](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroup.md) | 148 | `declaration-track:ccabcc56cf827757d7464f74b8307d775f6d6b153837f4dc9dac45b71858187f` |
| 18 | `theorem` | [toSubgroup_one](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroup-one.md) | 152 | `result-track:2d6d55a19e5e0097e11870d8e338c2cadda2eadfd64095ed62e832c3b6576d69` |
| 19 | `theorem` | [toSubgroup_neg_one](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroup-neg-one.md) | 155 | `result-track:1cff5c3947d5eabcf969fa6cd32cd44edf6d3e67cd5198f740530bf2440269af` |
| 20 | `def` | [toSubgroupEquiv](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroupequiv.md) | 163 | `declaration-track:9902179cde32276f146252d359037c8b15e2c7f4957e33295685ec9326d28b6e` |
| 21 | `theorem` | [toSubgroupEquiv_one](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroupequiv-one.md) | 169 | `result-track:b58c05ce033b388ea5e0534aad065454c322b3f431370902507eb27b17ba6ea5` |
| 22 | `theorem` | [toSubgroupEquiv_neg_one](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroupequiv-neg-one.md) | 172 | `result-track:04d3cc3f421c032c5cb04a0310af3f50021dbc9ff331cba8eacd1ade09d262c4` |
| 23 | `theorem` | [toSubgroupEquiv_neg_apply](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tosubgroupequiv-neg-apply.md) | 175 | `result-track:f683d7da4b1dfcc478728b38941a33b4139b505338a622bc64e782c5263a0266` |
| 24 | `structure` | [TransversalPair](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/transversalpair.md) | 187 | `declaration-track:9339af081963a504f3e64a2667c21fdbbfea7f5fe6dc960057c01a0ace84e2cf` |
| 25 | `instance` | [TransversalPair.nonempty](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/transversalpair-nonempty.md) | 193 | `declaration-track:644e09d4c9d17ff44c603d997abe39ff1e827786a019150781a3eae0eccffa4b` |
| 26 | `structure` | [ReducedWord](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/reducedword.md) | 200 | `declaration-track:6de501f5f98251b2ddf63741e3787fdd807b5a2497a25267d129fbd943b7e545` |
| 27 | `def` | [ReducedWord.empty](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/reducedword-empty.md) | 212 | `declaration-track:7e930a89cab6e2fbc9686858582109a25072adb91442976f15febf2dedba56c0` |
| 28 | `def` | [ReducedWord.prod](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/reducedword-prod.md) | 219 | `declaration-track:498245bae60d94f0054b36fa7debc80e0de95164f307400f25e076adc8ea6cef` |
| 29 | `structure` | [HNNExtension Namespaced](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/root-grwtsk-foundationslogicandtypetheory-mathematicallogic-transversalp.md) | 227 | `declaration-track:3b665c8efc171ba42f5c879e9e1ff206cddace6fd42272edb163a5ebeae0d60e` |
| 30 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/ext.md) | 235 | `result-track:4a6030bb1741c3c0d219c65b947acfd08fed198e1ce01d3d5dea07f6f8649dac` |
| 31 | `def` | [empty](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/empty.md) | 241 | `declaration-track:7b1f749731d08df111ad6d4b0b0778a440031b7d96b4386154939c6b5009d6be` |
| 32 | `def` | [ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/ofgroup.md) | 250 | `declaration-track:7f5f992f8e894c9c75138167bd488f7f4ececb1c68f78559fddef30cf8b4c8b5` |
| 33 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance-source-edition-5.md) | 256 | `declaration-track:a0bdaea00aaba3537dabc2820a46af394716245f964bec576f5e2945cfdb726b` |
| 34 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance.md) | 258 | `declaration-track:08575954cac92426bb9631b72101a472deb52c8a3835a99a424226f30c9db504` |
| 35 | `theorem` | [group_smul_def](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/group-smul-def.md) | 263 | `result-track:77333a08bf4748def490947c5b3782d8063e5a8db22182f011fbdb97046f7e94` |
| 36 | `theorem` | [group_smul_head](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/group-smul-head.md) | 267 | `result-track:5eef712253fca32654e9d062798b857c180173276b7b455462506683b3025489` |
| 37 | `theorem` | [group_smul_toList](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/group-smul-tolist.md) | 270 | `result-track:7c53526d990b3a8ae9110b3cf76c2298278c7c39bc7294b6e17d1a2463803bbe` |
| 38 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance-source-edition-3.md) | 272 | `declaration-track:910325c4c6172462f4932dd07847f0a5a9aff7f45413492c4c5b0bd5dacbf28b` |
| 39 | `def` | [cons](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/cons.md) | 278 | `declaration-track:36e5e80d18d21deb327d2c9135b6e3e22d06961892d4d0927faf07fc83f78b18` |
| 40 | `def` | [consRecOn](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/consrecon.md) | 296 | `declaration-track:f895422162acbe506c9f8dd1ceafa3fe2da502f90066a2b568ba82bf12d1ba52` |
| 41 | `theorem` | [consRecOn_ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/consrecon-ofgroup.md) | 316 | `result-track:bee4d082be05667896f6b4b3f05382d09aa4923187fdd7b490ead6515726b041` |
| 42 | `theorem` | [consRecOn_cons](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/consrecon-cons.md) | 325 | `result-track:463119f9ae6194ddad69c4c8d22a26522eea3b519afcec74ae390d07e64cc9cb` |
| 43 | `theorem` | [smul_cons](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/smul-cons.md) | 337 | `result-track:230419b5e75af146003a9c181932cf438c369fe310fcc89710497bc0695bc721` |
| 44 | `theorem` | [smul_ofGroup](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/smul-ofgroup.md) | 343 | `result-track:150ca3efed973b71e7dea4573574ee178edd198ad2a8b047dcfff2ccab68c5fd` |
| 45 | `def` | [unitsSMulGroup](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmulgroup.md) | 349 | `declaration-track:c6c15cae62ab7b56489fc6332ea2b69dfeba4cc03297122fa238c5a3040ffc8a` |
| 46 | `theorem` | [unitsSMulGroup_snd](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmulgroup-snd.md) | 354 | `result-track:fa4c194acde8fab9676b07cd403a35113ec7eee500d43820f037c62d362c4bc0` |
| 47 | `def` | [Cancels](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/cancels.md) | 362 | `declaration-track:cd27b1f1e420f8f1d24a63aeca2d3d81848c3d023ccd1a7a7f40ae9c6d95529c` |
| 48 | `def` | [unitsSMulWithCancel](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmulwithcancel.md) | 366 | `declaration-track:0afc7864bda59aac8726f9165187b0691f6b26a7fae655d521eee26fb41274dc` |
| 49 | `def` | [unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmul.md) | 373 | `declaration-track:e59def7cd4c6351b4855d0ecb81739f80bb022897e3b89b14bca3be55320ea33` |
| 50 | `theorem` | [not_cancels_of_cons_hyp](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/not-cancels-of-cons-hyp.md) | 395 | `result-track:4611b25a4b25d3d4d2f4f869e61ad524857df5e507c5ddc79e29af65589aa9ce` |
| 51 | `theorem` | [unitsSMul_cancels_iff](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmul-cancels-iff.md) | 405 | `result-track:b9a107281cb1d80aec33b979a1a9de8f30d2e9d01a875973dcd67905810b6839` |
| 52 | `theorem` | [unitsSMul_neg](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmul-neg.md) | 422 | `result-track:37928358f6eb74db3632376e84bba2fe28e7b0e7cdab3c16bdc39096ba6e1762` |
| 53 | `def` | [unitsSMulEquiv](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmulequiv.md) | 458 | `declaration-track:801c5403e2931c9d7df9b886c52f63141c42539d8f9fbe4b72901b3e4486d45c` |
| 54 | `theorem` | [unitsSMul_one_group_smul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/unitssmul-one-group-smul.md) | 464 | `result-track:229e63168ee8fa778275a732cb390b031a7f13c9b9b69a274d49f4987177fc21` |
| 55 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance-source-edition-4.md) | 492 | `declaration-track:929897260caa5d4f3281d100b4393b74fbb1c04948eef601dceefc989cefadbd` |
| 56 | `theorem` | [prod_group_smul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-group-smul.md) | 500 | `result-track:5557a580dd7479352226b5b99b1efa982f828c9b6acd8829c689433b862cf744` |
| 57 | `theorem` | [of_smul_eq_smul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/of-smul-eq-smul.md) | 504 | `result-track:d439a5374ac41d31c8f2f9c51ca0820f3683eace09c27ecb8ee5f89093359cb7` |
| 58 | `theorem` | [t_smul_eq_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/t-smul-eq-unitssmul.md) | 508 | `result-track:587f56ed2730f54585cf00b9ce33cd68807c5fe8990fb4a29b759fa96432771c` |
| 59 | `theorem` | [t_pow_smul_eq_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/t-pow-smul-eq-unitssmul.md) | 512 | `result-track:e4ab64898c76dc6205683883d03d7e9d69bc5eac00d7db91bc7583359e2f2bc5` |
| 60 | `theorem` | [prod_cons](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-cons.md) | 518 | `result-track:b7e67935f1a5efa82bc2a8cc460f4f32844f62ae3f9d524d38f371755e49877c` |
| 61 | `theorem` | [prod_unitsSMul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-unitssmul.md) | 524 | `result-track:cffd7044bd27d3fc7cea1bd8fade219bf0898dd4f0ae29a97f28695032b8f686` |
| 62 | `theorem` | [prod_empty](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-empty.md) | 556 | `result-track:bfb90494ffa98f96ee1681ec88436f1f993c5a25bfb4ec922fb713f3be348dac` |
| 63 | `theorem` | [prod_smul](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-smul.md) | 560 | `result-track:74a8ed9666a2b96b604ac323d32b87cd88250ef32d89efcedf9ca9dd5f04b05e` |
| 64 | `theorem` | [prod_smul_empty](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-smul-empty.md) | 571 | `result-track:fd8d17a8e750930cb10e02a2cde4b218fff43a191d7d09baf1a619b6f464ada1` |
| 65 | `def` | [equiv](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/equiv.md) | 592 | `declaration-track:64fd7998f0b461ded4be549cce8d54136d9d301179f3b664f24c78cc306ee924` |
| 66 | `theorem` | [prod_injective](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/prod-injective.md) | 598 | `result-track:76154408b4ff40abd9b5b27da0712d4a5d1742d95d8b7779a094b5d888c56fbc` |
| 67 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/instance-source-edition-2.md) | 602 | `declaration-track:2ad162329fd9cbf19194a8015e994a0c8c09d3fba29fc9e39cddcaecea2eac26` |
| 68 | `theorem` | [of_injective](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/of-injective.md) | 609 | `result-track:119d7341a7e5b83ba6ca02d067d71537c4d90ee0514235066748f8263dc50e52` |
| 69 | `theorem` | [exists_normalWord_prod_eq](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/exists-normalword-prod-eq.md) | 619 | `result-track:041e82b702e7c71e7ee8d9d3b576f7a6f329c9e52f8d20335d34737b6985b350` |
| 70 | `theorem` | [map_fst_eq_and_of_prod_eq](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/map-fst-eq-and-of-prod-eq.md) | 677 | `result-track:b93ad3c67da06c0cee1d261a389b72e25d77aa71baf260911cc5f8de4985c25f` |
| 71 | `theorem` | [toList_eq_nil_of_mem_of_range](../../../../GroupTheoryAndGeneralizations/HNNExtensionNamespaced.lean/declarations/tolist-eq-nil-of-mem-of-range.md) | 696 | `result-track:dfa1ff6fa6fbc20da283d2362ecc02570bccfd77501616089240c8fad431d045` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=542214d371ec6e89d76aa7a979c26e3a7cc17641a1636a5e582011610f3e3255 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/HNNExtension/Variant793a3dd6f9f47e272d6f5b8fae5ddb90272307cc7948260ffb675755bb886156.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
