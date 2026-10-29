# Verification target: Pow Deriv Namespaced Has Deriv At Of Real Cpow

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b15eee17b8eca0bb8abd84f7e66a5a01d264768",
  "lexical_observation_count": 84,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/index.md) · [Full source](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b15eee17b8eca0bb8abd84f7e66a5a01d264768`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Extend` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictFDerivAt_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-cpow.md) | 39 | `result-track:5d142119d655f03e945a423e7ade13ce418f10143b2ffb63d5aef996cd6500c8` |
| 2 | `theorem` | [hasStrictFDerivAt_cpow'](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-cpow-source-edition-2.md) | 53 | `result-track:c396b36c2c0b30b27b456d84c06224cefc7d7204cc28aef32ff116df78cf813c` |
| 3 | `theorem` | [hasStrictDerivAt_const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-const-cpow.md) | 60 | `result-track:6fd9951238cadd9704bd1b8978f506db7979929cff1d55d88fdac4795784e2a3` |
| 4 | `theorem` | [hasFDerivAt_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-cpow.md) | 71 | `result-track:0494bfbc42fd02379deb445c472248951275f3bf33cb6479c95c3a2eb4026cb4` |
| 5 | `theorem` | [HasStrictFDerivAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-cpow-source-edition-3.md) | 87 | `result-track:c93c9f1627ec19fb1b06e09583fcf9bd51565e97cb7bfdb95c8f1a55e0713452` |
| 6 | `theorem` | [HasStrictFDerivAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-const-cpow.md) | 93 | `result-track:a7270a3d1bcb45f9e1332f7d355b55ad243d49e52fae2d96eae7846dedb4eb8e` |
| 7 | `theorem` | [HasFDerivAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-cpow-source-edition-2.md) | 98 | `result-track:1faec5798261823c8e15f32249988efda149e78a7e5b7d4a111cc2da4bf92c57` |
| 8 | `theorem` | [HasFDerivAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-const-cpow.md) | 104 | `result-track:6ce4aa2af210c74c1a1740d436182b4489faf8947b35f42fec3a7b69f2e9c140` |
| 9 | `theorem` | [HasFDerivWithinAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivwithinat-cpow.md) | 109 | `result-track:a3739a06c6db369978e1b81155be69621854acfd4e5565802a6113e176fbb6b7` |
| 10 | `theorem` | [HasFDerivWithinAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivwithinat-const-cpow.md) | 116 | `result-track:78df604c6ef193ece18e88871ea9e4e0fe7000dc98abdea1e899f286c2b1f317` |
| 11 | `theorem` | [DifferentiableAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-cpow.md) | 121 | `result-track:287cdb62aeaed2b5e5edee255bc7cb7a41418cbe6916a285a22c39d341f4578a` |
| 12 | `theorem` | [DifferentiableAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-const-cpow.md) | 126 | `result-track:f417d225e06ea07c4433062f851a0efaab7b3e330426ad284bb58b8ec8d84dbd` |
| 13 | `theorem` | [DifferentiableWithinAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiablewithinat-cpow.md) | 131 | `result-track:2c1a71b8682a53cb86a03fe074576e2e049015db363abca5149aa6d9850454ee` |
| 14 | `theorem` | [DifferentiableWithinAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiablewithinat-const-cpow.md) | 137 | `result-track:030265acc4506442f8da279b8e3f52115c3f029059f7817b2f39aa09f75cdf21` |
| 15 | `theorem` | [aux](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/aux.md) | 152 | `result-track:76f7a74c99391e897da022f6a22fd4628a8c2907e2ce5a1f656247bb66c62fc0` |
| 16 | `theorem` | [HasStrictDerivAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-cpow.md) | 159 | `result-track:cc0742046e3f0884d0bdf9fcaf509d08edbad1dddaadb98261d9ad889f272606` |
| 17 | `theorem` | [HasStrictDerivAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-const-cpow-source-edition-2.md) | 165 | `result-track:a922895a5346d59323e7996affc965c6e653090aa73b142cc8c5090dd2b24f98` |
| 18 | `theorem` | [Complex.hasStrictDerivAt_cpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/complex-hasstrictderivat-cpow-const.md) | 170 | `result-track:1d5287522e25285db7622ec245e3c364473e37d7749f76f05c238a3b7d4d08f1` |
| 19 | `theorem` | [HasStrictDerivAt.cpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-cpow-const.md) | 176 | `result-track:0b89828ae021e917ac40114ff02f03f682aa603cbefe436c39b329427cad3d5c` |
| 20 | `theorem` | [HasDerivAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-cpow.md) | 182 | `result-track:ec1d81ce7b9ab3df3d5277aa51b8d286687487626a46532b89fcdf33c2d3e002` |
| 21 | `theorem` | [HasDerivAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-const-cpow.md) | 188 | `result-track:fc5e3140fca51dfd4b506a47d07107540fa471889c944908ad10b87f79bc56d6` |
| 22 | `theorem` | [HasDerivAt.cpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-cpow-const.md) | 193 | `result-track:91b75569815277ec5cdd3c5eb258baa2ccebd50dd3c02e144e356eae1fcff9af` |
| 23 | `theorem` | [HasDerivWithinAt.cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivwithinat-cpow.md) | 198 | `result-track:57034159ad2ac43317e3e26934e107043c6c016d5c4fdfccb5773962f2344239` |
| 24 | `theorem` | [HasDerivWithinAt.const_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivwithinat-const-cpow.md) | 204 | `result-track:384e3ee0348d78b5e43c07eb9e2e7bef3d31b8b447fe6ae424184c0c2bbac53a` |
| 25 | `theorem` | [HasDerivWithinAt.cpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivwithinat-cpow-const.md) | 209 | `result-track:c0b4dcfb0f0e92cec53a7c9bda2b8097cba19ff017f3307cce4215e4e7d8e3dd` |
| 26 | `theorem` | [hasDerivAt_ofReal_cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-ofreal-cpow.md) | 218 | `result-track:73dc92b976d2b59482be55dc738ae77e6abb63b5a651a8ce907f8a73d360abc4` |
| 27 | `theorem` | [hasStrictFDerivAt_rpow_of_pos](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-rpow-of-pos.md) | 269 | `result-track:0304eaf23f6db3340e4ee6b12d7c5f95b6242eef315225a0c762928892c3e090` |
| 28 | `theorem` | [hasStrictFDerivAt_rpow_of_neg](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-rpow-of-neg.md) | 283 | `result-track:d6e91362e416b719089674e8d558a34cd5b675705f7676e37122f99ccd6e2fed` |
| 29 | `theorem` | [contDiffAt_rpow_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-of-ne.md) | 299 | `result-track:ae3d962a1c0fc10c76134370ac3a77087e9bc170bb63272b27e41742889afa96` |
| 30 | `theorem` | [differentiableAt_rpow_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-rpow-of-ne.md) | 310 | `result-track:5d6a8f23f758d93a3fbce6d3eb9fa415be5777d58327bb874a62fa50c4d94ab4` |
| 31 | `theorem` | [Pow Deriv Namespaced Has Deriv At Of Real Cpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/root-grwtsk-analysis-realanalysis-differentialcalculus-hasstrictfderivat.md) | 315 | `result-track:95f02e0254f925960f44622b6d833d9531e1e4adfa26583e171b0b043758bc33` |
| 32 | `theorem` | [hasStrictDerivAt_rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-rpow-const-of-ne.md) | 323 | `result-track:d8c6988cbeefa28c01392990990c8e701c733b96bba9b0d11f1aa4e8b8628318` |
| 33 | `theorem` | [hasStrictDerivAt_const_rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-const-rpow.md) | 332 | `result-track:229fe64fb0e11cb9ef9b6f81273f9513e16caef939c3bacf6503e00db47c7178` |
| 34 | `lemma` | [differentiableAt_rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-rpow-const-of-ne.md) | 337 | `result-track:a3a8e435a022f9201b95ecd25f552df5c3819d0f40a6770c7c9b8d0f9db241a7` |
| 35 | `lemma` | [differentiableOn_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableon-rpow-const-source-edition-2.md) | 341 | `result-track:f8790d7d73fd6689f5f104886699eec1b6f21cc9bcb96a0029a9cd70c901a519` |
| 36 | `theorem` | [hasStrictDerivAt_const_rpow_of_neg](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-const-rpow-of-neg.md) | 348 | `result-track:2c277030d2257464dc40492a6f7ac2940a86eee5b3bccb321f190653b851d826` |
| 37 | `theorem` | [hasDerivAt_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-rpow-const-source-edition-2.md) | 360 | `result-track:981cee0cf6733088e7fe6114a286c3c9b8a42f986f93d6edafe2578d01700b82` |
| 38 | `theorem` | [differentiable_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiable-rpow-const-source-edition-2.md) | 371 | `result-track:c5a486c215cd4fb1b14f921d40a96f61428f999cdad2fc4a855fb46c6fc25ec0` |
| 39 | `theorem` | [deriv_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/deriv-rpow-const.md) | 375 | `result-track:b792c8a59799db4d801a82445e87157bda2a5febe2cc5d1da7debf79d11d2308` |
| 40 | `theorem` | [deriv_rpow_const'](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/deriv-rpow-const-source-edition-2.md) | 380 | `result-track:d36e0878606d14f61f6a0b78e946cbaf10c87e0dc413cea65ce36e0222f9d18e` |
| 41 | `theorem` | [contDiffAt_rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-const-of-ne.md) | 385 | `result-track:8bec83728f850341bdb9e4f00e2f1b7a85d36e6e058093d98d42ef8468e138e3` |
| 42 | `theorem` | [contDiff_rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiff-rpow-const-of-le.md) | 390 | `result-track:425bd981967bacecfeb84424fa4cb21361636bd6b24553b1dcd0753b01cc9048` |
| 43 | `theorem` | [contDiffAt_rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-const-of-le-source-edition-2.md) | 400 | `result-track:9a8eb394a99b9a8787b425bac5bb2ca5af32981e37ad3ae88e313312261dfca7` |
| 44 | `theorem` | [contDiffAt_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-const.md) | 405 | `result-track:3da80b976beea6e2f53d9fbaa621310865f16a4b95943791f263d6da876378f7` |
| 45 | `theorem` | [hasStrictDerivAt_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictderivat-rpow-const.md) | 410 | `result-track:f99e01568b165208b719d9288ecba29aa4984e8f01d08bb3dde517242120e4a9` |
| 46 | `theorem` | [HasFDerivWithinAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivwithinat-rpow.md) | 427 | `result-track:e5c82d62a2d03c8b972b8b287d277184c76f33e79f95fe3e56e7aa8aa3306dea` |
| 47 | `theorem` | [HasFDerivAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-rpow.md) | 433 | `result-track:147154b548518122cc44c9448a190b5f05d04381b3d27230a12a54b34d3b97ec` |
| 48 | `theorem` | [HasStrictFDerivAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-rpow.md) | 439 | `result-track:0f9e5b372733511671c8dd49801b6195e22ecbaf9fe60fd0777f656b18a74595` |
| 49 | `theorem` | [DifferentiableWithinAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiablewithinat-rpow.md) | 445 | `result-track:04d6daa42ea40c89581226e0e5854075ea5a0bedfac7346147c23d17911d20c1` |
| 50 | `theorem` | [DifferentiableAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-rpow.md) | 451 | `result-track:d6a23b4457d1236d40a33b6072681a0690762c9ac5503e671d1d76639762a70b` |
| 51 | `theorem` | [DifferentiableOn.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableon-rpow.md) | 456 | `result-track:ddefb820cf6ae5426d69169ce7d1c2abe4c8e585c14af061bd5732cd217e8905` |
| 52 | `theorem` | [Differentiable.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiable-rpow.md) | 461 | `result-track:57ee5cf467db851b96ab90f6222bfc78258cef62c7b9c8d109caef05df668b2b` |
| 53 | `theorem` | [HasFDerivWithinAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivwithinat-rpow-const.md) | 465 | `result-track:a5c6317f51e821d07629f5be7ce1ef81062c2450c06c66703a845022a05ac948` |
| 54 | `theorem` | [HasFDerivAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-rpow-const.md) | 470 | `result-track:e797d735cab87b18bba34a02161137e7d22f3a77aa2297c0272420bcf2a0922c` |
| 55 | `theorem` | [HasStrictFDerivAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-rpow-const.md) | 475 | `result-track:8f1118510d292a0cf94aa2dca528c2ec38965477a71b3495eb23c50f9239216a` |
| 56 | `theorem` | [DifferentiableWithinAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiablewithinat-rpow-const.md) | 480 | `result-track:55a173649f81cbf623b5c529b9b745976d66ddef55ec6956ee71d12a120a0c23` |
| 57 | `theorem` | [DifferentiableAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableat-rpow-const.md) | 486 | `result-track:a3d73c9eaf5c37a2bff9693a08dfbf21846d55185cbbb9d919e796ee90f4033d` |
| 58 | `theorem` | [DifferentiableOn.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiableon-rpow-const.md) | 491 | `result-track:0ba89992f9795bed42f57410dc55a50eddf7ab44cb6f0d8032403cb2f95264b1` |
| 59 | `theorem` | [Differentiable.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/differentiable-rpow-const.md) | 495 | `result-track:a2996cbf2e03ff1f94689101d16c65c0885713391aa1d0f76f858a45dae25cc8` |
| 60 | `theorem` | [HasFDerivWithinAt.const_rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivwithinat-const-rpow.md) | 499 | `result-track:3fd6b8459200e09e189c55ba9fb4988f71e7688fe61c5191344bbb0404a57df6` |
| 61 | `theorem` | [HasFDerivAt.const_rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasfderivat-const-rpow.md) | 504 | `result-track:9d83a56fdf0c8da14d732522a2dffebd9d2170768c3833e59d2c44ea47a6f7a7` |
| 62 | `theorem` | [HasStrictFDerivAt.const_rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasstrictfderivat-const-rpow.md) | 509 | `result-track:3710f0fe0aa9f168c5479e90f6d168319a2e72a2f8557cf8779f157e48d1b466` |
| 63 | `theorem` | [ContDiffWithinAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffwithinat-rpow.md) | 514 | `result-track:feb1c9dd418acc075e495719975cfaf16915a3c554615169b1d3ba6d11f447d3` |
| 64 | `theorem` | [ContDiffAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow.md) | 519 | `result-track:9672ccca918c3a8010f53728ed6c4de72e3249f9385aa82b3d76a2aec024917d` |
| 65 | `theorem` | [ContDiffOn.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffon-rpow.md) | 524 | `result-track:892838a38633ce76d59bb1c6d9e477059ce97ab23ef1e17f30ec893267f3e185` |
| 66 | `theorem` | [ContDiff.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiff-rpow.md) | 528 | `result-track:f85c9f79065d057313b824a4f9a0b94398c29186807ddada7b3cc60d200846ee` |
| 67 | `theorem` | [ContDiffWithinAt.rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffwithinat-rpow-const-of-ne.md) | 533 | `result-track:d06943e67ec7ac503e59de647af8fce37501693f2560e3dbe359b3a46de9ab37` |
| 68 | `theorem` | [ContDiffAt.rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-const-of-ne-source-edition-2.md) | 538 | `result-track:b824ecc198e5713817ce29cc43855dd7e5201362d21fce2ea97ee0a5d3b106da` |
| 69 | `theorem` | [ContDiffOn.rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffon-rpow-const-of-ne.md) | 543 | `result-track:d5424a0e3ca02d57fb234bbd6d119c4dc8b8d1a0f3bd4afe33349f7a92206c40` |
| 70 | `theorem` | [ContDiff.rpow_const_of_ne](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiff-rpow-const-of-ne.md) | 547 | `result-track:9c435ba5240f38d32519eb4d74e51a57bf5ec2f016a81be6b29ce568fbf90dd0` |
| 71 | `theorem` | [ContDiffWithinAt.rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffwithinat-rpow-const-of-le.md) | 554 | `result-track:0a24e0036d67a1dbd568d3215e034d1d67c865f117c4d1d97c4fef3d6195d91a` |
| 72 | `theorem` | [ContDiffAt.rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffat-rpow-const-of-le.md) | 559 | `result-track:99e58c714c27daf61af9ebdab0a6335091d33b53506db8a03ead761502b9eaa7` |
| 73 | `theorem` | [ContDiffOn.rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiffon-rpow-const-of-le.md) | 564 | `result-track:4a88c08c921be56d79163889b5e06aea829e098184719f7c3e4d4b0ff85c74ce` |
| 74 | `theorem` | [ContDiff.rpow_const_of_le](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/contdiff-rpow-const-of-le-source-edition-2.md) | 568 | `result-track:c6da23b9ad4353bcd5df39e7d21a9d182f42bf68e0bcb55b4f2b5108d5b97222` |
| 75 | `theorem` | [HasDerivWithinAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivwithinat-rpow.md) | 579 | `result-track:9f3ecaeae36aa5f4c9462772ffedbe1464ffdf064d1884961a7af8a74f92b893` |
| 76 | `theorem` | [HasDerivAt.rpow](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-rpow.md) | 586 | `result-track:69f20aaf1a2c65b4fed663429beebfdfe0524a3e21d2836aa93b7d5e8aa25fe3` |
| 77 | `theorem` | [HasDerivWithinAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivwithinat-rpow-const.md) | 593 | `result-track:183f2c6b1b317cbee787255b967f6f050d6bc1f9fce6292091dda6679620a461` |
| 78 | `theorem` | [HasDerivAt.rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/hasderivat-rpow-const.md) | 599 | `result-track:5a4fc33c50d72b7f1ebaefa5c728f535b70c03815ffff3c32464ad19952a77ef` |
| 79 | `theorem` | [derivWithin_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/derivwithin-rpow-const.md) | 605 | `result-track:1af5ae9978bcc66e069d727092f22018af83d272dde1d75d86d709ee3a89c979` |
| 80 | `theorem` | [deriv_rpow_const](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/deriv-rpow-const-source-edition-3.md) | 612 | `result-track:ef2c6ac10cc21337d587b0de03b8ddc739fd87a2642252da867db06cc731a4a2` |
| 81 | `lemma` | [isTheta_deriv_rpow_const_atTop](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/istheta-deriv-rpow-const-attop.md) | 617 | `result-track:2736878b429b1203e1ca703e067c0125bfd0790a957866cdefcd541d784fac7b` |
| 82 | `lemma` | [isBigO_deriv_rpow_const_atTop](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/isbigo-deriv-rpow-const-attop.md) | 625 | `result-track:674eef5bf5616d204f51f2cd1b3fa4508460f7b5617dc342ef664b402955f3f7` |
| 83 | `theorem` | [tendsto_one_plus_div_rpow_exp](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/tendsto-one-plus-div-rpow-exp.md) | 642 | `result-track:f200cee859a338f0accf3a4e504be98ac9a1a9c295e29223d761d777f5dae726` |
| 84 | `theorem` | [tendsto_one_plus_div_pow_exp](../../../../SpecialFunctions/PowDerivNamespacedHasDerivAtOfRealCpow.lean/declarations/tendsto-one-plus-div-pow-exp.md) | 654 | `result-track:18cd653f20cc182b9a20ed0c3f4ccecadf31043a76a59fde6f7f1b7442d6d595` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7288f46d0f8d4123d401dd15c250e2a3f0537a79570623286c17539b026568b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant41b5330f3e11f73d2986dc26decb5791cbb2229b422bcaa0e3826ac9bc7ab3b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
