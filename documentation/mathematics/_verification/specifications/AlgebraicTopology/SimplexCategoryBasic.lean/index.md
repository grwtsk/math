# Verification target: Simplex Category Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4eef89e52a0e4e10d9b11d7cc084bb72e66212e9",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/index.md) · [Full source](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4eef89e52a0e4e10d9b11d7cc084bb72e66212e9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Sort` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Category.NonemptyFinLinOrd` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [const](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const.md) | 32 | `declaration-track:2149e4b3865a418bc334ee935883eeb76b32f3737c5f227f7f617deee3cdeaac` |
| 2 | `lemma` | [const_eq_id](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const-eq-id.md) | 36 | `result-track:375569dae07d9a2123a82326a381821b5442f9a67b21ff938b567946c685438c` |
| 3 | `lemma` | [const_apply](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const-apply.md) | 39 | `result-track:1369e4d7bcfd8a659aa4903af3bd55309084f06be134ca181804ae2fbc17c3a7` |
| 4 | `theorem` | [const_comp](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const-comp.md) | 43 | `result-track:5fe64387da55e64198a42246483a1a544ed875cfd396488264e6f66f9fa30d67` |
| 5 | `theorem` | [const_fac_thru_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const-fac-thru-zero.md) | 48 | `result-track:f269e7c29c70603c41eb473eac73bc835ff9a0d37bddd2f112f89d1039f4e75e` |
| 6 | `theorem` | [Hom.ext_zero_left](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/hom-ext-zero-left.md) | 52 | `result-track:0111ad4566e6f2eab468d5fe5b0422066538fe5f40989e3b6f926396dca90f56` |
| 7 | `theorem` | [eq_const_of_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-const-of-zero.md) | 56 | `result-track:2eea0d19d9c7c69394062fbc9fcdaa11186f31bba134b3590abbc9faaab66c5e` |
| 8 | `theorem` | [exists_eq_const_of_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/exists-eq-const-of-zero.md) | 60 | `result-track:47cca12d4bbcdbc30db760d94032218da49122a204a812d13c9787c952668e6f` |
| 9 | `theorem` | [eq_const_to_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-const-to-zero.md) | 63 | `result-track:0d8899db0b2a9933e2e21e9dda7692d65d941bc528d82ce005c1c25ae850b170` |
| 10 | `theorem` | [Hom.ext_one_left](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/hom-ext-one-left.md) | 68 | `result-track:be26baec03397f262203a844be8aa6683e306f7a5fc7db7bdc36db0c011eaa20` |
| 11 | `theorem` | [eq_of_one_to_one](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-of-one-to-one.md) | 76 | `result-track:9eedd93c2e4808a86fc1bebf4a171fe94819f97aba56df0b684ffa20f6ff789d` |
| 12 | `def` | [mkHom](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkhom.md) | 101 | `declaration-track:f450db01ca83e24a9bc302bd75c74bf68ca9bed3a0b0b56140d69fc3dc8a52a0` |
| 13 | `def` | [mkOfLe](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofle.md) | 105 | `declaration-track:612f7a0a6af4430a968c02bf8362ee77001a1e9d0998ee3f41e7272fac094481` |
| 14 | `lemma` | [mkOfLe_refl](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofle-refl.md) | 114 | `result-track:b047907363f103be585e2376d91581bd7bfe1c1ec81d15fd6f8224e10959cb10` |
| 15 | `def` | [diag](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/diag.md) | 118 | `declaration-track:64dade5edaf8bbb4a53a896c22e2d12390b3b53c1859f9a9c838d26bea86695a` |
| 16 | `def` | [intervalEdge](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/intervaledge.md) | 122 | `declaration-track:89f842dd738268ad683f49dbf01b1e11981aa83e6df7ba6dde79bf137d701706` |
| 17 | `def` | [mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc.md) | 126 | `declaration-track:83a99e870a6f6acaa60a5394b5d4121c24af532981ee295e26b6a034b7754600` |
| 18 | `lemma` | [mkOfSucc_homToOrderHom_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-homtoorderhom-zero.md) | 135 | `result-track:7235047873177b4fbaab6cc9cb6b73ad3a3ed624cd2e1b80ef93109bf58d7e14` |
| 19 | `lemma` | [mkOfSucc_homToOrderHom_one](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-homtoorderhom-one.md) | 139 | `result-track:4a2c2ddb036a02b1ef91f38ffce823af8878f9e764566335fa16ffe3cc7e846b` |
| 20 | `def` | [mkOfLeComp](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkoflecomp.md) | 144 | `declaration-track:a6102e5ec6447f7a2e9ef2ebc9c26fa976ac0be617ac37521b10afdb2b61a6c9` |
| 21 | `def` | [subinterval](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/subinterval.md) | 156 | `declaration-track:448f498d7aa3649c0b6e33956cc4f7c971ad7359b56b86d5f4cf559d4b49ffa9` |
| 22 | `lemma` | [const_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/const-subinterval-eq.md) | 163 | `result-track:fbaaef16544aaa9f34f915fb78245421a3ed3044ee2b969a30b70936b4fb6354` |
| 23 | `lemma` | [mkOfSucc_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-subinterval-eq.md) | 173 | `result-track:60b08f6718cbe9ff8907c77753e48f83f93eb7a5cd5fa82092775cc62567d8ee` |
| 24 | `lemma` | [diag_subinterval_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/diag-subinterval-eq.md) | 193 | `result-track:ac7bd7c7926ba7334c35ae90a799f429afa9e0c9be1e77728242c4b9517f4d19` |
| 25 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-5.md) | 209 | `declaration-track:453ae4b457c3357c436cf1eb641b74199c464f92ee0c7f295884fcf8cf00f3d8` |
| 26 | `theorem` | [hom_zero_zero](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/hom-zero-zero.md) | 212 | `result-track:90642de760171a97e7855d9bff2c326bba2ec893153254ebd5e4b9f3639418b0` |
| 27 | `def` | [δ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/anonymous-source-edition-2.md) | 227 | `declaration-track:f381168f551b24170eb3866677f8bf83714235eb2f876e8e149b7de1f3e855c0` |
| 28 | `def` | [σ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/anonymous.md) | 231 | `declaration-track:6dbe416f4bbfbd56f559490f99e1abf65f16c4d13bbb3dd8b5992b9b343ec59f` |
| 29 | `theorem` | [δ_comp_δ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-source-edition-3.md) | 235 | `result-track:a542e157aa40ec5f67d3ef1c4924cbefd5892c7e8e90958ca7973830e7f22f07` |
| 30 | `theorem` | [δ_comp_δ'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-source-edition-2.md) | 244 | `result-track:7fb5cf844378368a9be971358ee46b7a6154882c38f8d8ecbfd764cfd6e1d383` |
| 31 | `theorem` | [δ_comp_δ''](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp.md) | 253 | `result-track:1bced3e0ff5158a26909ee67e2fa9cae50cecdb44cac5546430fde4a4db15bbc` |
| 32 | `theorem` | [δ_comp_δ_self](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-self-source-edition-3.md) | 262 | `result-track:595b3874f4cf2292610b7ecc1a45dc0e5ac7870c51ffdf00240d1f1cf02b7f2d` |
| 33 | `theorem` | [δ_comp_δ_self'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-self.md) | 266 | `result-track:0681a10cb8fc95d410e58db3a8bfab62d928a8d4850d4d56897f078bce852239` |
| 34 | `theorem` | [δ_comp_σ_of_le](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-of-le.md) | 273 | `result-track:7a58f793fcb42117d3993aad1d9c5cf4c75ee4b24b79e465ed5994298a6abb53` |
| 35 | `theorem` | [δ_comp_σ_self](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-self-source-edition-4.md) | 294 | `result-track:659941385232300effbc60d6f20fe18f1ed4251f3c280729caa80ef1ef3ebb5e` |
| 36 | `theorem` | [δ_comp_σ_self'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-self-source-edition-2.md) | 306 | `result-track:08491a0bcdbbbec2028245f981e43fb2eb5e481a66b27aae111407712150cbd1` |
| 37 | `theorem` | [δ_comp_σ_succ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-succ-source-edition-2.md) | 313 | `result-track:e5e48cb18941cfcf0e32f89814d3cae1dc12ab3bf67a0b0e212172b1bc68af07` |
| 38 | `theorem` | [δ_comp_σ_succ'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-succ.md) | 321 | `result-track:65fee45ce6d1e7c6a29d0eeb6ebd7146d173126682dcbdb4062fc778214001b1` |
| 39 | `theorem` | [δ_comp_σ_of_gt](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-of-gt-source-edition-2.md) | 328 | `result-track:94ebb8924d644a260323f70f9cc621f1e02e0fdf8de53d496f2a3e2acdef7e8c` |
| 40 | `theorem` | [δ_comp_σ_of_gt'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-of-gt.md) | 352 | `result-track:287b3292de722dec10913a1ca1f732d78495dc2017da4ac36c34af5550e9c62f` |
| 41 | `theorem` | [σ_comp_σ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/comp-source-edition-4.md) | 362 | `result-track:b5341bcd56db32b9d109ac420e42feaf873d1464ab5181e5ea841cad39d25eb4` |
| 42 | `def` | [factor_δ](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/factor.md) | 402 | `declaration-track:ea707ef16eb443a394383ba23757440ad9d7beb05209d3d6ddc72f0ca100642f` |
| 43 | `lemma` | [factor_δ_spec](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/factor-spec.md) | 406 | `result-track:bd9571edc883d7324fc86fb96106e86acdc409e955d0f6edd8d7870bae270e0c` |
| 44 | `lemma` | [δ_zero_mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/zero-mkofsucc.md) | 436 | `result-track:040af788948a062841117d13b75ed9efdcd655f1984c4b4145718a7533c80789` |
| 45 | `lemma` | [δ_one_mkOfSucc](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/one-mkofsucc.md) | 443 | `result-track:740d459dd024559ecb719c524fe1cf23baa4c5024332b6b6175e5f9f7b827a2a` |
| 46 | `lemma` | [mkOfSucc_δ_lt](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-lt.md) | 451 | `result-track:d8a92a24055f2fdc5d00c44b223479ce977b9005860ad6bf028e13d207d04937` |
| 47 | `lemma` | [mkOfSucc_δ_gt](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-gt.md) | 461 | `result-track:f6f0d80c806a67487fd4d5d8eb5f14aeef1faae59d6662885e9e0a82f2f67b04` |
| 48 | `lemma` | [mkOfSucc_δ_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mkofsucc-eq.md) | 475 | `result-track:5d05478ad93d82de6100b83033f658283e77dbbfb7e70154bcabcbc60a0f4ff6` |
| 49 | `theorem` | [eq_of_one_to_two](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-of-one-to-two.md) | 493 | `result-track:0329ba9b1b628248d901844ff090e8053da1575a093877934116e6da16d997d2` |
| 50 | `theorem` | [eq_of_one_to_two'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-of-one-to-two-source-edition-2.md) | 525 | `result-track:eddb82e272dd2f29bfba6d9cdd391da5aa5b279ff895519b1eea849a7a31ea04` |
| 51 | `def` | [skeletalFunctor](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/skeletalfunctor.md) | 541 | `declaration-track:a1d767af1984f294cf30ebdbd24dd5702cce987c5394bdffec9c247da4d1fb63` |
| 52 | `theorem` | [skeletalFunctor.coe_map](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/skeletalfunctor-coe-map.md) | 545 | `result-track:9826a229c72d263ccb40b7641f10d1ba69fd012db221fb776bb97e103ff21b6d` |
| 53 | `theorem` | [skeletal](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/skeletal.md) | 549 | `result-track:844139ea9de08d8b2099a324b8760f6363f9aa546e4e417226b0393696cb9848` |
| 54 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-10.md) | 558 | `declaration-track:c4e33669d7bb8ce2e024112adbadac1dbfb37ecaf2bd73baab6107a4382aa7c4` |
| 55 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-7.md) | 561 | `declaration-track:6ecad0e90c91cc789ac44106d246411baa325769f638dbfe15711348ee682b91` |
| 56 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-8.md) | 566 | `declaration-track:83bf6163b89b48a69c4728d886ae9647e020f7cb59d3c439a0a38aa655ac7c4a` |
| 57 | `instance` | [isEquivalence](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/isequivalence.md) | 585 | `declaration-track:49716e9f6faddc641c9f88175cd56bff7a645bee74968dc12b61aa1e08b2759c` |
| 58 | `def` | [skeletalEquivalence](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/skeletalequivalence.md) | 591 | `declaration-track:e0d54c9a87402a71230b61cb4eb4dfda20dfaa7916aaeec44403fd0cd08d15f0` |
| 59 | `lemma` | [isSkeletonOf](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/isskeletonof.md) | 598 | `result-track:430fce9f59bb8be8cccc13c4c01427fce13d9c6f9e12b6b55ad0a7dd764c7f23` |
| 60 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-12.md) | 605 | `declaration-track:ebbddaab7d13e4ef3b44f5e042d45fad21b25bddf708e4e93a32bce110646692` |
| 61 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-13.md) | 609 | `declaration-track:ed3a27b527023c38f5684ebc078b50464dcef690c3e8221321d4e32fbf52e22a` |
| 62 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-2.md) | 612 | `declaration-track:1e064b5a8e4bcdd51c79ef528c6e83a8fd5e0ebbb4883f3c4e0ec5eb2b5a8a95` |
| 63 | `lemma` | [toType_apply](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/totype-apply.md) | 615 | `result-track:f04bc1af26eefd664bca0c0dcee1f36c98cd72c6bac614d599df42f33a1bedb1` |
| 64 | `theorem` | [mono_iff_injective](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/mono-iff-injective.md) | 623 | `result-track:344e6010f2f63b0788f18786330db7362c3d8b64a58befc30dd2655de817bfe3` |
| 65 | `theorem` | [epi_iff_surjective](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/epi-iff-surjective.md) | 632 | `result-track:ebe08c0e5ef355e6d4e12cdb58be3c4461c6b340434c01b0c7bf57e628af07b2` |
| 66 | `theorem` | [len_le_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/len-le-of-mono.md) | 640 | `result-track:b064003257c5c7343e29e11ccb44d0f56a06936bf6f34c87921768131180f707` |
| 67 | `theorem` | [le_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/le-of-mono.md) | 645 | `result-track:36bf9c25b91a1a800289a2b6a6072e7c5a0c2cc48837b145d54cbea938833482` |
| 68 | `theorem` | [len_le_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/len-le-of-epi.md) | 649 | `result-track:46eac9381cefbd6482e5c037fd3c13a4d2c30d9677c971cfdd0152ec79137ec1` |
| 69 | `theorem` | [le_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/le-of-epi.md) | 654 | `result-track:cc7d1740caad10cd325536f1e0647251fe4ce119ff769ec7b19e09ce7b1f7033` |
| 70 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance.md) | 656 | `declaration-track:13ee5895a6263bd16af6f0c9870abf4309b7b9de92e08e70f085bcc36bdb7eaf` |
| 71 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-9.md) | 660 | `declaration-track:a376b195a2e6223311bac9176ce34b410d9ada76b33b21d5dc423f7bc1f9c5da` |
| 72 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-14.md) | 678 | `declaration-track:fc488aaf1cd4a898dcc4c47caf4932421324c0fee8346b3476957233316ced1e` |
| 73 | `theorem` | [isIso_of_bijective](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/isiso-of-bijective.md) | 702 | `result-track:32249935803588812999558611deebce4bcd77d513ff84cf5c1ce303ff73e1d5` |
| 74 | `def` | [orderIsoOfIso](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/orderisoofiso.md) | 709 | `declaration-track:93fcd53464fbf98fd3789ae269e006915868a57f858f2dfffde412bc87938e14` |
| 75 | `theorem` | [iso_eq_iso_refl](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/iso-eq-iso-refl.md) | 719 | `result-track:04433c75c6d65448089df673155da7e09eba4e3c9e54e1093ffeb0cc5a0162e8` |
| 76 | `theorem` | [eq_id_of_isIso](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-id-of-isiso.md) | 729 | `result-track:568d26ddbc98f013f95bccf0968ec6170b3b568c7a9029d7d7c95cc8f3b52c51` |
| 77 | `theorem` | [eq_σ_comp_of_not_injective'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-comp-of-not-injective-source-edition-2.md) | 732 | `result-track:a67e8de65ad339fcd60e7349859206e460cc62ac7d9f7e238e0b8c8a175c862a` |
| 78 | `theorem` | [eq_σ_comp_of_not_injective](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-comp-of-not-injective.md) | 763 | `result-track:7827bfd69967ee4022429ca6eca0134efecae325ae3dbd570b11848d6830c49d` |
| 79 | `theorem` | [eq_comp_δ_of_not_surjective'](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-comp-of-not-surjective.md) | 786 | `result-track:67cda0b66ae16251ca7bfd1fd19dd943a06771c6020b390cc90f3de077e2d72b` |
| 80 | `theorem` | [eq_comp_δ_of_not_surjective](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-comp-of-not-surjective-source-edition-2.md) | 796 | `result-track:686b5893cefe4522785b9de036b096fa13271c32cabe417746033db0a5c8a1b9` |
| 81 | `theorem` | [eq_id_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-id-of-mono.md) | 803 | `result-track:65cce24f5277107c035af66fe184b601a6b152e9a720c20310545421453bbd0f` |
| 82 | `theorem` | [eq_id_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-id-of-epi.md) | 812 | `result-track:15bcb1eecf7c655c109e2c6f4e66422129ca49e0334f310040e64179d3f84f76` |
| 83 | `theorem` | [eq_σ_of_epi](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-of-epi.md) | 822 | `result-track:c34a0b7912847d0d1c908525a7065c56c5292df2664f2deb035fbe4e36fdd575` |
| 84 | `theorem` | [eq_δ_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/eq-of-mono.md) | 833 | `result-track:632fbc09d377003acf7d3c6c7208ddd3957f8a7458643ef7c3d2553b869180a5` |
| 85 | `theorem` | [len_lt_of_mono](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/len-lt-of-mono.md) | 844 | `result-track:457ac9f8a514da72504c6be75b755a694eaf9da7e3a1d8617886ce559f2d70c9` |
| 86 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-3.md) | 851 | `declaration-track:2f6ae4f524f8a23f94d523ba88cf043fd2b7c82432d7fd6b3412ac1d128b9036` |
| 87 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-4.md) | 854 | `declaration-track:33700b5ad3dbd26f155ad86944ea1967e7152c19af910cf4fb5aa61f744f6d73` |
| 88 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-6.md) | 858 | `declaration-track:68578df2cb46e4dee0d5c3d985f27ec8ecfa27b1ee2ef69494d4a9409fa8d7ee` |
| 89 | `instance` | [(anonymous)](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/instance-source-edition-11.md) | 861 | `declaration-track:dfe0695069707d15cd2e59bd5107a3d6d45766d5ca7c6f608d344427efb678c0` |
| 90 | `theorem` | [image_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/image-eq-source-edition-2.md) | 864 | `result-track:7623ee451d9a67506b85ad4f32689a91bca88457043d1b0047c1d93dca689dd3` |
| 91 | `theorem` | [image_ι_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/image-eq.md) | 873 | `result-track:39ef711fcd445ed84531a49c593c4f734dbd46f549dfdf3739a51f5e0b49491d` |
| 92 | `theorem` | [factorThruImage_eq](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/factorthruimage-eq.md) | 879 | `result-track:23959f79035fc2f843ba531e1ea33eb529e152b9c7792c935dd28d287ffc2e6b` |
| 93 | `def` | [toCat](../../../../AlgebraicTopology/SimplexCategoryBasic.lean/declarations/tocat.md) | 888 | `declaration-track:0ccd100d06479281de64a517d6605fd6c97e21e34bb4bba3e65cc697e3bbb0a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9a297bde6a24ed8b86f7c5ded04d9f2bcbb45130ca2998d938c542d9d4dfbb42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant7e72333668a0779edb16297c6d541333ba1fbdaacf8269d587c825b104a968a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
