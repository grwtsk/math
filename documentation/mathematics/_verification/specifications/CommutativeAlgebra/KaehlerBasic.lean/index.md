# Verification target: Kaehler Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4861ef74136948550d0ab4656c7b667851555876",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/KaehlerBasic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/KaehlerBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4861ef74136948550d0ab4656c7b667851555876`.

Source path: `GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Derivation.ToSquareZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Cotangent` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsTensorProduct` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.EssentialFiniteness` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Exact` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.RightExactness` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [KaehlerDifferential.ideal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-ideal.md) | 59 | `declaration-track:36f9da11c8eaf323d7f86adedee4001fa548399068645ca615182a5b12914c37` |
| 2 | `theorem` | [KaehlerDifferential.one_smul_sub_smul_one_mem_ideal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-one-smul-sub-smul-one-mem-ideal.md) | 64 | `result-track:2e374f3371cd83df5646dffd6139f4f5b7ccdecfdb48bc9bc4b263b4888a9b92` |
| 3 | `def` | [Derivation.tensorProductTo](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-tensorproductto.md) | 71 | `declaration-track:4b808f66f5c821eb24249af1a8d95ef963572d937996880d6318e29f727f23d5` |
| 4 | `theorem` | [Derivation.tensorProductTo_tmul](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-tensorproductto-tmul.md) | 74 | `result-track:932f80c335ad5e3b1d3ed13d26ba10d21156c96fb590671d33e9780ff7195230` |
| 5 | `theorem` | [Derivation.tensorProductTo_mul](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-tensorproductto-mul.md) | 77 | `result-track:d561bd0d5c2e47fb6e140d2c582987b4c3aad21c469efcb0aab50cd822bb249c` |
| 6 | `theorem` | [KaehlerDifferential.submodule_span_range_eq_ideal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-submodule-span-range-eq-ideal.md) | 103 | `result-track:d3970ab6012f94741afe724e6afa474ea767572f92095463098b7c8432b2bb28` |
| 7 | `theorem` | [KaehlerDifferential.span_range_eq_ideal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-span-range-eq-ideal.md) | 128 | `result-track:c7de58629cf4f6007fbc883886ac93df27c45348fd360b1f905d1ece4ac0f91a` |
| 8 | `def` | [KaehlerDifferential](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential.md) | 148 | `declaration-track:3724bf01fc8e2579c3d6b4834d51daf0b52221d673974f5cc73f4f594778eed6` |
| 9 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/instance-source-edition-3.md) | 151 | `declaration-track:f3a51992815282b7c06cee0e7a7f4eded9fc2aec2986bf54aa63dddccc5699e6` |
| 10 | `instance` | [KaehlerDifferential.module](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-module-source-edition-2.md) | 154 | `declaration-track:8c5f2e72dc4befb16a153f96165bbc0091b1898980dfa0149e804205fc378a7f` |
| 11 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/instance.md) | 160 | `declaration-track:04b4ed36e5b5d92ba371a7fbb7d099014de6476b64b32c7ca82871346a5a41b1` |
| 12 | `instance` | [KaehlerDifferential.module'](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-module.md) | 162 | `declaration-track:00e36bf1e9b45dfee6728498bbff54a27733c123b99a6f02e777fadd52a3aaea` |
| 13 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/instance-source-edition-2.md) | 167 | `declaration-track:ba60d8b2da6c3f81d735581e47f9a87cdcc0781bbe8da6da20ed128c5c3c027c` |
| 14 | `instance` | [KaehlerDifferential.isScalarTower_of_tower](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-isscalartower-of-tower.md) | 170 | `declaration-track:4c5888aa1c602160559711bde9289beaa52484345912d9e09bf0628db463ba04` |
| 15 | `instance` | [KaehlerDifferential.isScalarTower'](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-isscalartower.md) | 176 | `declaration-track:9c862e2846024cce896ec0180bdbfc178c914152dd54f909688e4c36cef0e410` |
| 16 | `def` | [KaehlerDifferential.fromIdeal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-fromideal.md) | 180 | `declaration-track:6cdf7d93e27be60545560e884dcabdc4d2f49e9b97fc2d5045b617b248a24743` |
| 17 | `def` | [KaehlerDifferential.DLinearMap](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-dlinearmap.md) | 184 | `declaration-track:115388784542a98c6bb85cae03b306a018357abebff0d381c10bf6e6ad992b56` |
| 18 | `theorem` | [KaehlerDifferential.DLinearMap_apply](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-dlinearmap-apply.md) | 192 | `result-track:85b3e794e26a800d1ecee3ff4c02dbf07189337e199630e053fb0ff52b8f1e3d` |
| 19 | `def` | [KaehlerDifferential.D](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-d.md) | 198 | `declaration-track:ce99ab8bd09c42b7c337d7a7664d419b4af18e355ad122bdd2773407c97500e3` |
| 20 | `theorem` | [KaehlerDifferential.D_apply](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-d-apply.md) | 217 | `result-track:1d8140bef0bca0e2fccf61cd41acf8f0210d58cce15b2cb949ac1d37cf9111f7` |
| 21 | `theorem` | [KaehlerDifferential.span_range_derivation](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-span-range-derivation.md) | 222 | `result-track:a1d294bd66431eae2e7865c10a10a96e20490b11195ad23bf8bd0d8d3a854fec` |
| 22 | `lemma` | [KaehlerDifferential.subsingleton_of_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-subsingleton-of-surjective.md) | 245 | `result-track:1fdbf0e4bb369a6b80d340553c39ef27fbe67a5ebcadad676eefcc0655e55e00` |
| 23 | `def` | [Derivation.liftKaehlerDifferential](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential.md) | 255 | `declaration-track:3bd125ac7cbe15b6c61026fa26aadaff9e52cc12a24466fffc87406f5b7f12da` |
| 24 | `theorem` | [Derivation.liftKaehlerDifferential_apply](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential-apply.md) | 269 | `result-track:5c60ee40b2b8776d2a2882527c5efcf22640dccf4e1661b1a1857b405405293c` |
| 25 | `theorem` | [Derivation.liftKaehlerDifferential_comp](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential-comp.md) | 273 | `result-track:1dffb8eb46160db089aaa94d3f6bb9cfa1fadfb932107a837e9ba353e80f9b7f` |
| 26 | `theorem` | [Derivation.liftKaehlerDifferential_comp_D](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential-comp-d.md) | 282 | `result-track:5c7dd2f15e9fff50627320f12de6efe7871cbcdab0edd610ec2de326d7ab763e` |
| 27 | `theorem` | [Derivation.liftKaehlerDifferential_unique](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential-unique.md) | 287 | `result-track:97f6a703d7f6883b9e609c0f773a20d00c74d554c9150b36682c9179af2512c9` |
| 28 | `theorem` | [Derivation.liftKaehlerDifferential_D](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/derivation-liftkaehlerdifferential-d.md) | 302 | `result-track:f90c793aea41e0a280f64eeae48fab1fa62d9389b2547fbfff5be1fbb46d8d50` |
| 29 | `theorem` | [KaehlerDifferential.D_tensorProductTo](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-d-tensorproductto.md) | 309 | `result-track:0a901cf7e61481ba3f44bad81d398fe0e162b59605dd90c84fd0ae39fc544054` |
| 30 | `theorem` | [KaehlerDifferential.tensorProductTo_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-tensorproductto-surjective.md) | 317 | `result-track:d887ab57e58c9c1c42a8a06d0d0ca2199aa31fb71454446da476702468e68f17` |
| 31 | `def` | [KaehlerDifferential.linearMapEquivDerivation](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-linearmapequivderivation.md) | 325 | `declaration-track:abfed53810991af185d21c694e1d60b857a71890e2ba7682a44560fe1cbd6e84` |
| 32 | `def` | [KaehlerDifferential.quotientCotangentIdealRingEquiv](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-quotientcotangentidealringequiv.md) | 333 | `declaration-track:e4632a2e02c7dcc842cd4e95a46d1a28ec99b343357d76e1072a7b2332dd9230` |
| 33 | `def` | [KaehlerDifferential.quotientCotangentIdeal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-quotientcotangentideal.md) | 345 | `declaration-track:1bdb5625606a1d9f1aef04284bb65a6a8fe97dd29a81263fe3e032edef9206d2` |
| 34 | `theorem` | [KaehlerDifferential.End_equiv_aux](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-end-equiv-aux.md) | 351 | `result-track:87a1eb30899427b2662f114c147c16f8196fa53505ea2e104b6c3378319362aa` |
| 35 | `instance` | [smul_SSmod_SSmod](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/smul-ssmod-ssmod.md) | 376 | `declaration-track:7043c386e51ccae965665c33876faa27ff2eb6f506650600b4c5a5ce3fcd032d` |
| 36 | `instance` | [isScalarTower_S_right](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/isscalartower-s-right.md) | 381 | `declaration-track:c6b3d5ea14ed5c48e785825dc759e1f9990777662dee33a132252b89d3be324c` |
| 37 | `instance` | [isScalarTower_R_right](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/isscalartower-r-right.md) | 387 | `declaration-track:50773562ef7f915ea8b882578052842fbf88fb117ae86a37424cd8e9e4a74ae7` |
| 38 | `instance` | [isScalarTower_SS_right](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/isscalartower-ss-right.md) | 393 | `declaration-track:f38db8d12c1e27adac3919935fa2087e8b66624ab18cb073f5e2b376e01a25c2` |
| 39 | `instance` | [instS](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/insts.md) | 398 | `declaration-track:80d0bbdde70bce28f20bb01885e0430d9c09160ca241456c973426f2dac31b94` |
| 40 | `instance` | [instR](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/instr.md) | 402 | `declaration-track:dd926e9517f9b718bff21f8b607283aa9ca3377af91c045a284d9d997266bfc8` |
| 41 | `instance` | [instSS](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/instss.md) | 406 | `declaration-track:612d430b31d100f1e65692581e0ada7acc8fa66b3d377a7ae208ea6807dc8626` |
| 42 | `def` | [KaehlerDifferential.endEquivDerivation'](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-endequivderivation.md) | 411 | `declaration-track:50bd999399168977f47f4b45597c016d8a498a51d539daddc83d10e87bf50234` |
| 43 | `def` | [KaehlerDifferential.endEquivAuxEquiv](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-endequivauxequiv.md) | 417 | `declaration-track:56452c3236d60019c75393dd5646c13fa5b6102c001c440481fdafab064cf7d1` |
| 44 | `def` | [KaehlerDifferential.endEquiv](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-endequiv.md) | 428 | `declaration-track:8d8634d1ea062eb2ec450024f38f814630d3f5f5f2ee78cc4f0be63d043cde5f` |
| 45 | `theorem` | [KaehlerDifferential.ideal_fg](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-ideal-fg.md) | 439 | `result-track:6b04baaad460b186fea5a3269a7df05f42485b9c0d18cec6f47f4b9033c62751` |
| 46 | `instance` | [KaehlerDifferential.finite](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-finite.md) | 464 | `declaration-track:7542c7e6bc75e75ad8eb3c745d524f30fb03b57bba4824d03944d7b3e2a98760` |
| 47 | `def` | [KaehlerDifferential.kerTotal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal.md) | 506 | `declaration-track:5528f96590f0a648a6f9a049e7a389431ca06b99f224a6ef6d2c284444dd7ad2` |
| 48 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_add](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-add.md) | 517 | `result-track:27898385498297574f4595ce20d41c9d85859a7d25dcd8e48ba7d44a955899fb` |
| 49 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_mul](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-mul.md) | 523 | `result-track:5bcb6028d3f04201ca9f580efcb140df7f6c11ad670834316dbb9afa5ba02142` |
| 50 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap.md) | 531 | `result-track:846232fe15930f63a1531a588942ff70968c359c87983958bbe78dcd76877686` |
| 51 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_algebraMap_one](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-algebramap-one.md) | 535 | `result-track:5e7fe26556b4ed0bf528dde33d6e650c96a51f4c290db9ebb1bb2ad465096a45` |
| 52 | `theorem` | [KaehlerDifferential.kerTotal_mkQ_single_smul](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-mkq-single-smul.md) | 538 | `result-track:b047cac90ec77a3b309c80ec6736db3c4457d80401e3b1ec8326cabc9e09b17e` |
| 53 | `def` | [KaehlerDifferential.derivationQuotKerTotal](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-derivationquotkertotal.md) | 545 | `declaration-track:68ca7248215a3a31210caa043b9fdb9e7c66f6b542b9467a23b89c1d2ca114da` |
| 54 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_apply](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-derivationquotkertotal-apply.md) | 555 | `result-track:234d53a4816002ca91a147dfbc1d7c3be2eb1e87f6275c22665cf06b0452d537` |
| 55 | `theorem` | [KaehlerDifferential.derivationQuotKerTotal_lift_comp_linearCombination](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-derivationquotkertotal-lift-comp-linearcombination.md) | 559 | `result-track:4a190c61ae0520c1ae201a6543e9049f1722a65f4556821af24c64016b1bbc55` |
| 56 | `theorem` | [KaehlerDifferential.kerTotal_eq](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-eq.md) | 568 | `result-track:b6b594275c17995ad796652078d5be8fb2c5f2c8bf7be4cfc38945ff5c0e5043` |
| 57 | `theorem` | [KaehlerDifferential.linearCombination_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-linearcombination-surjective.md) | 578 | `result-track:209e6a4c5dd127e6323f89c0fce81cf01dc31d6ba2ef35668dffaa3835b05fc0` |
| 58 | `def` | [KaehlerDifferential.quotKerTotalEquiv](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-quotkertotalequiv.md) | 584 | `declaration-track:faf21800f9922fa62749716252ab0746f926e83a6cc9972a28ab3a851e6845dd` |
| 59 | `theorem` | [KaehlerDifferential.quotKerTotalEquiv_symm_comp_D](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-quotkertotalequiv-symm-comp-d.md) | 605 | `result-track:0ab8f9a6ccf681a81e4af4ff7f9517519037668e12b630b158a8087f4f4cf75c` |
| 60 | `macro` | [(anonymous)](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/macro.md) | 628 | `declaration-track:67fbf08cef2ef8d004213e5ff8219d7a129c26cfdc7bb45f2c15dc03a4797f4e` |
| 61 | `theorem` | [KaehlerDifferential.kerTotal_map](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-map-source-edition-2.md) | 644 | `result-track:da1c7e4a8e0f4db0af5c16b9492e7f1e744985d9d138358c7312625322398ae2` |
| 62 | `theorem` | [KaehlerDifferential.kerTotal_map'](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotal-map.md) | 671 | `result-track:043b652de7f1b669a07c131dbbac6e51b1775bde2d2a8ccdff5473f628b86e51` |
| 63 | `def` | [KaehlerDifferential.map](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-map.md) | 692 | `declaration-track:987fb78568df503b7510793241401996405c54ac2b4d497619d00f1ab9325b3d` |
| 64 | `theorem` | [KaehlerDifferential.map_compDer](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-map-compder.md) | 696 | `result-track:7343b9ef92df8605a03656c6889b8adfc595c3616314555c240ef345d3406e74` |
| 65 | `theorem` | [KaehlerDifferential.map_D](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-map-d.md) | 702 | `result-track:d0922d3df644f823fad25b0f530e44082561a67daea20e257f1f3e6b2000a170` |
| 66 | `theorem` | [KaehlerDifferential.ker_map](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-ker-map.md) | 707 | `result-track:f2823499a959d661b871bffe3b7b0e7eff0ac67d96aedf83390c2b96af185ff6` |
| 67 | `lemma` | [KaehlerDifferential.ker_map_of_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-ker-map-of-surjective.md) | 724 | `result-track:d7f77b23a306e05cff525ed0083ecff1d9d6715ce241550ee4ac61c148eccfef` |
| 68 | `theorem` | [KaehlerDifferential.map_surjective_of_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-map-surjective-of-surjective.md) | 736 | `result-track:34ad665915a9a58589d3a419b5609694a4329e2dc47e7fb314c4cb4e1c3b505b` |
| 69 | `theorem` | [KaehlerDifferential.map_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-map-surjective.md) | 747 | `result-track:bd61779a31fb546d4edcbe0ceb8b740a350e385e9c96702ff9e2a9a884833d39` |
| 70 | `def` | [KaehlerDifferential.mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-mapbasechange.md) | 753 | `declaration-track:7c87b0da7416f90a9ffde90eb53d90f83f04ccc135093003dc2746ad58d4adbf` |
| 71 | `theorem` | [KaehlerDifferential.mapBaseChange_tmul](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-mapbasechange-tmul.md) | 757 | `result-track:351784e27894fca126a54eec1b2bc36c9d1af7434e1a208111025e2e3956b220` |
| 72 | `lemma` | [KaehlerDifferential.range_mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-range-mapbasechange.md) | 763 | `result-track:bf64b6093df5c1293d214c4a8b07b1982d33b29e4cf36497745438bf5819b848` |
| 73 | `lemma` | [KaehlerDifferential.exact_mapBaseChange_map](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-exact-mapbasechange-map.md) | 789 | `result-track:f65a4acb03bfaf980e9526ae1ca9d300d0944d17666f4e1a2135bf81f74f4cfb` |
| 74 | `def` | [KaehlerDifferential.kerToTensor](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kertotensor.md) | 798 | `declaration-track:7058b05eb7b14707da6115286276615515d1503595387d2e713358b61ddcac1f` |
| 75 | `def` | [KaehlerDifferential.kerCotangentToTensor](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kercotangenttotensor.md) | 809 | `declaration-track:a7057ead1c6024467a40be5162e645a3ecace7ff1171bafdc0b0e03534ef41f1` |
| 76 | `lemma` | [KaehlerDifferential.kerCotangentToTensor_toCotangent](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-kercotangenttotensor-tocotangent.md) | 821 | `result-track:a931467d2c18f7236521947991b641e4534bb0cb9215ebace56a54a891c8e649` |
| 77 | `theorem` | [KaehlerDifferential.range_kerCotangentToTensor](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-range-kercotangenttotensor.md) | 826 | `result-track:4ef2a1bd208df6a418a91bad402a935564d9bd2c9a8ddc97c9fb59e85bbbbfda` |
| 78 | `theorem` | [KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-exact-kercotangenttotensor-mapbasechange.md) | 873 | `result-track:0ec7d761f096d7d56d889a7a4a78c64c263383b6195d0637cd292e53702cdec2` |
| 79 | `lemma` | [KaehlerDifferential.mapBaseChange_surjective](../../../../CommutativeAlgebra/KaehlerBasic.lean/declarations/kaehlerdifferential-mapbasechange-surjective.md) | 878 | `result-track:6af127f06e39183f97f5b7c604ba37857478c56560b064797d0afbd456037919` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3a284685164c633b57b6e960275affec50b10584f782b944c5faa851b832c0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variantfea857bd3a100686cfd8bc14a38f468942c52b21627f35b1f96b43df1f98e6ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
