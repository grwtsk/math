# Verification target: Calculus Mean Value Namespaced Is Little OPow Succ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f92c4fb9d3518aa0b671799c23de8b13893d065",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/index.md) · [Full source](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f92c4fb9d3518aa0b671799c23de8b13893d065`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.AffineMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.RealVectorSpace` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_le_of_liminf_slope_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-lt-deriv-boundary.md) | 79 | `result-track:7908f1281606d25d7361b1e763299a46dccfafdfc47c59628fe44d4878b1d1b2` |
| 2 | `theorem` | [image_le_of_liminf_slope_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-lt-deriv-boundary-source-edition-2.md) | 123 | `result-track:a318caa3a2ad32031a7acfeae01eb80bd452985f5fa192fc6deb275e4c296148` |
| 3 | `theorem` | [image_le_of_liminf_slope_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-liminf-slope-right-le-deriv-boundary.md) | 141 | `result-track:0aaaa93bce3ba60187f92b09da6ae3778631816d9f18ba8dbb739284664df0f4` |
| 4 | `theorem` | [image_le_of_deriv_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-lt-deriv-boundary-source-edition-2.md) | 171 | `result-track:9eb28ac78f28c5e64cd3e55cb54f773eeb1861ba4315e95ab2a7f22e49cad369` |
| 5 | `theorem` | [image_le_of_deriv_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-lt-deriv-boundary.md) | 188 | `result-track:9662fb0120bd188865b88b6394c1d3e21bfaf2191eea01177aa5f2676355d14a` |
| 6 | `theorem` | [image_le_of_deriv_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-le-of-deriv-right-le-deriv-boundary.md) | 204 | `result-track:e88c12d9db74264b80c702db22459587df834c1a6aa0e7b0e8472b42b6bfce88` |
| 7 | `theorem` | [image_norm_le_of_liminf_right_slope_norm_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-norm-le-of-liminf-right-slope-norm-lt-deriv-boundary.md) | 229 | `result-track:25d6d3f8e6afcac875463fd8d33eea9b940da1a290a170019c3b4118b180d504` |
| 8 | `theorem` | [image_norm_le_of_norm_deriv_right_lt_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-lt-deriv-boundary-source-edition-2.md) | 249 | `result-track:b4da7b2d1a7418af19c2d75d9f9de35ea070b4987096fc806d0d00c981ec6b89` |
| 9 | `theorem` | [image_norm_le_of_norm_deriv_right_lt_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-lt-deriv-boundary.md) | 268 | `result-track:94a9d9f67a3495052dbbae4a841f9a76a07b4cbc47262ce6603b5152150c79bf` |
| 10 | `theorem` | [image_norm_le_of_norm_deriv_right_le_deriv_boundary'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-le-deriv-boundary.md) | 285 | `result-track:b73497fdef4b957fc7eafc969d2d7aa0f792b4af1c83436e4a2639773365d79a` |
| 11 | `theorem` | [image_norm_le_of_norm_deriv_right_le_deriv_boundary](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/image-norm-le-of-norm-deriv-right-le-deriv-boundary-source-edition-2.md) | 304 | `result-track:fe65b8ee4883e381b33c3d1ea1d3efe6b693eaa9e5c8f13dd83271cbd97179a7` |
| 12 | `theorem` | [norm_image_sub_le_of_norm_deriv_right_le_segment](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-right-le-segment.md) | 313 | `result-track:7b8e074e596468f966e107de4edbc47f583a0b6c86b480ba22456b82ab50b116` |
| 13 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment.md) | 331 | `result-track:d02af9df2d034b7f19ff64812e36fe812452e81ee243d67245305288ddb2e344` |
| 14 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-source-edition-2.md) | 342 | `result-track:f3d9e03d75c98e4404d03e632e57417c8f255aa7312b1e006c45e948d03a64d6` |
| 15 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment_01'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-01.md) | 351 | `result-track:2856d177c57beb293dfd0c767abdaf51b1c482acabfeff545bece83c6255ca76` |
| 16 | `theorem` | [norm_image_sub_le_of_norm_deriv_le_segment_01](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le-segment-01-source-edition-2.md) | 359 | `result-track:af70f4024adc87ecda42714505a7ca667017a0e6d9917a3b31ac7a371e3bf0fd` |
| 17 | `theorem` | [constant_of_has_deriv_right_zero](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/constant-of-has-deriv-right-zero.md) | 365 | `result-track:a367c761b397926e4051adc154f91e8d4a081c85668147259058c07d8873e3ce` |
| 18 | `theorem` | [constant_of_derivWithin_zero](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/constant-of-derivwithin-zero.md) | 371 | `result-track:4cd4214be88fb27ddc1378e1ac9e2c2145c1909c194b22c48efc76af9296ff8d` |
| 19 | `theorem` | [eq_of_has_deriv_right_eq](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/eq-of-has-deriv-right-eq.md) | 382 | `result-track:d09ee828786b579e246fad13acd96f73a6a14adb9b267b56aabb5c75bdd1e1a2` |
| 20 | `theorem` | [eq_of_derivWithin_eq](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/eq-of-derivwithin-eq.md) | 391 | `result-track:d318f6a5e0140750bff2b96c6322b9a4b5d40f9a77d9ecea3eaf86eb9e04f2b2` |
| 21 | `instance` | [(anonymous)](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/instance.md) | 422 | `declaration-track:9beaa1591848e058fee0f2de28d8feb2878612331742d3e587b721c8b1930586` |
| 22 | `theorem` | [norm_image_sub_le_of_norm_hasFDerivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasfderivwithin-le-source-edition-2.md) | 428 | `result-track:8ff53536e282a16a174a5ccd64339f52e82335175e14e1242f5d32cd9c9395bf` |
| 23 | `theorem` | [lipschitzOnWith_of_nnnorm_hasFDerivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-hasfderivwithin-le.md) | 450 | `result-track:8d650f1168bd95ee7e7ae37c2b7c361fbc010c2cbef24e2503c0934feeae6097` |
| 24 | `theorem` | [exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt_of_nnnorm_lt](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/exists-nhdswithin-lipschitzonwith-of-hasfderivwithinat-of-nnnorm-lt.md) | 463 | `result-track:71baa52a13a481da324e2c76f1ed1b59937bf4a41012fb9572463d93a0c2c789` |
| 25 | `theorem` | [exists_nhdsWithin_lipschitzOnWith_of_hasFDerivWithinAt](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/exists-nhdswithin-lipschitzonwith-of-hasfderivwithinat.md) | 482 | `result-track:8892a11a465856776ee61318b6ea6be514cc18ebf86e5e3bfca8c2b6790777f0` |
| 26 | `theorem` | [norm_image_sub_le_of_norm_fderivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderivwithin-le.md) | 490 | `result-track:89e89b55ca44748e225e49ab316a23a1d2ce4a90b3bbf456b77fdf2b8dbef554` |
| 27 | `theorem` | [lipschitzOnWith_of_nnnorm_fderivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-fderivwithin-le.md) | 499 | `result-track:44d97cd290a2c3b1c2380d013151a0ab906b02921517c771d14edfba95b7677e` |
| 28 | `theorem` | [norm_image_sub_le_of_norm_fderiv_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderiv-le.md) | 505 | `result-track:3e1001f5b47bf509a325ed7ffadbe4b6de8748a48cdf7acc6ae413fc6825cd99` |
| 29 | `theorem` | [lipschitzOnWith_of_nnnorm_fderiv_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-fderiv-le.md) | 513 | `result-track:bbe6fddd42b6b77f12656f6189f2499668b64345511d77793bfe8097684f290b` |
| 30 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-10.md) | 520 | `result-track:a0dfcabcd411015d6b534a707be4efcbd1463403137299f7502003673782dd70` |
| 31 | `theorem` | [norm_image_sub_le_of_norm_hasFDerivWithin_le'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasfderivwithin-le.md) | 532 | `result-track:0df65430160f314a868f7a599ff35bcf01d42e18f0331d557e76d0ab9ffe098f` |
| 32 | `theorem` | [norm_image_sub_le_of_norm_fderivWithin_le'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderivwithin-le-source-edition-2.md) | 548 | `result-track:c183c8054edd27a713a43c738e9a96ea5e87db773766af2f5fb11bbe41f2d2c3` |
| 33 | `theorem` | [norm_image_sub_le_of_norm_fderiv_le'](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-fderiv-le-source-edition-2.md) | 555 | `result-track:bb149a657295b29075549120d6634a3de536b436ee32fee5d576fa1750feacbc` |
| 34 | `theorem` | [is_const_of_fderivWithin_eq_zero](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/is-const-of-fderivwithin-eq-zero.md) | 563 | `result-track:f91adeb1e0514c539cf91741b56d3e6bc18ea309954b93f5bec8cb5f26a73af1` |
| 35 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-12.md) | 570 | `result-track:d15d6cdf5a9f61136feff2db0aeec9e9e52f6ea002d555f500a6c1475dff5443` |
| 36 | `theorem` | [eqOn_of_fderivWithin_eq](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/eqon-of-fderivwithin-eq.md) | 581 | `result-track:a7e40ae3d612bf4769ff8623eb32552f58f243234acdd596fd972157d6219618` |
| 37 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-7.md) | 591 | `result-track:69552d1c4a6c72bcec48fdfbf60b216365ccf89b7318073efb076421075ad3b5` |
| 38 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-8.md) | 602 | `result-track:88d8926c4ff6ab69acaebaec18f415249354afa41fbd82f89ef56d99e31af86c` |
| 39 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-11.md) | 607 | `result-track:bf67e7df1d4ef01491e729178cbb9907a132b8cf52f02d292805fb81188a9271` |
| 40 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-3.md) | 622 | `result-track:3bb9d4b1723ff0a3b27cd2dfeeab607876abf16d94afde9dfa5472a6d73836e8` |
| 41 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-9.md) | 628 | `result-track:91b035cb09530e9b5e058ad6970cb86a79e2acd0306655608e738f728e34b1d3` |
| 42 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-14.md) | 638 | `result-track:e16ae8381652be71676d7e1f8f8c1de81a63c8e9ab9b18651bb3bc145063b431` |
| 43 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-5.md) | 646 | `result-track:4b0b79a8adcaaf6f14e0f493c99c9ca11543eb04232b6c131fadf05f9ad7acb6` |
| 44 | `lemma` | [isLittleO_pow_succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/islittleo-pow-succ.md) | 656 | `result-track:c2bd3b966e333563d7ece54b2d412bc6c50aebcc2ae5ec0faff4e6b8ba6510b1` |
| 45 | `theorem` | [isLittleO_pow_succ_real](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/islittleo-pow-succ-real.md) | 677 | `result-track:2290bbbd51c6a147522e88c3fe2ac54bb97d94c2d1dd2fce79a590066c2b7649` |
| 46 | `theorem` | [norm_image_sub_le_of_norm_hasDerivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-hasderivwithin-le.md) | 697 | `result-track:09c3694ffabc128f0c0ef1b97563d56d2f80ee230f3157f8d9dade1e8ba2fbfb` |
| 47 | `theorem` | [lipschitzOnWith_of_nnnorm_hasDerivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-hasderivwithin-le.md) | 706 | `result-track:1bf5242ea9233e5876918d482c7a2082fbeb13a6dca20c064daee1e759b14385` |
| 48 | `theorem` | [norm_image_sub_le_of_norm_derivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-derivwithin-le.md) | 714 | `result-track:759ade13c1b3574068c94eb3454b0e49fd5ca46aecc8e330de70e52fc13eff61` |
| 49 | `theorem` | [lipschitzOnWith_of_nnnorm_derivWithin_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-derivwithin-le.md) | 723 | `result-track:4d08a76723412324f676d302057b0abb74b154fa460e3e68ed1d95e78ed6e029` |
| 50 | `theorem` | [norm_image_sub_le_of_norm_deriv_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/norm-image-sub-le-of-norm-deriv-le.md) | 730 | `result-track:a994950df3ad61b157e640974e7ddacdfe713350b7cfa99aa639cf98540e9c28` |
| 51 | `theorem` | [lipschitzOnWith_of_nnnorm_deriv_le](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/lipschitzonwith-of-nnnorm-deriv-le.md) | 739 | `result-track:b89be3e3d478034deda5a5252b58449995fc4a31c9623be07d190cd1d95b2a5a` |
| 52 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-4.md) | 746 | `result-track:4a78ba5810d75c64bb55b76240f3156ae041576498100addb54a0382805a6da4` |
| 53 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-13.md) | 753 | `result-track:d59b2d1b702ee1190ed5b9d439366b5242c8d9f5519b301fc85eb327c3b027bf` |
| 54 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-6.md) | 757 | `result-track:5173715d1fd3453103becd211dac86f17478fe454b17062cb08059e804b72d70` |
| 55 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-15.md) | 763 | `result-track:e28fb1c2b6fafc6b33338e6867573dcd51396ed9967b3a55decfc3ba3424fc9a` |
| 56 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl.md) | 768 | `result-track:118971508ed9e7adea0a70d3c765b0fd927315f9bd7e56064d2cf990ebe61050` |
| 57 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-2.md) | 773 | `result-track:2dab80b3093ca705092c0dc7ea8090e678fb1fd57ce26ac5eb75955b94a935a2` |
| 58 | `theorem` | [Calculus Mean Value Namespaced Is Little OPow Succ](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-imageleofliminfsl-source-edition-16.md) | 779 | `result-track:ebe8b4b18404ccd832bf67c7d86c6226da3d86f52318675c17778965b135dbd4` |
| 59 | `theorem` | [hasStrictFDerivAt_of_hasFDerivAt_of_continuousAt](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/hasstrictfderivat-of-hasfderivat-of-continuousat.md) | 806 | `result-track:9a98951a6ad57e04e8e7f2802d09876320477f973d021416c17902c71110e827` |
| 60 | `theorem` | [hasStrictDerivAt_of_hasDerivAt_of_continuousAt](../../../../RealFunctions/CalculusMeanValueNamespacedIsLittleOPowSucc.lean/declarations/hasstrictderivat-of-hasderivat-of-continuousat.md) | 829 | `result-track:ccfc2e6443143937a11e37175b3ff2c489a206ac8e984f7e09b2055501e6444f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d2189ca1f2816620467427f9f826bdac40fee86ae79bfa54cb31aeab673318 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant7da9b438ca583b16bccdd698f1baac33627e5de81d4c1c68ceacc08f6e330d39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
