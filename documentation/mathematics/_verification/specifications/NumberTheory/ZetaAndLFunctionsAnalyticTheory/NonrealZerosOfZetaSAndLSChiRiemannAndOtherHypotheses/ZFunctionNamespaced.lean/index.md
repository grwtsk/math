# Verification target: ZFunction Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d4fb99b259b95ad9dd35d18a3572d23786ddc59",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d4fb99b259b95ad9dd35d18a3572d23786ddc59`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 21; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 24; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instContinuousSMulRealComplexZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/instcontinuoussmulrealcomplexz.md) | 40 | `declaration-track:d4588a9cbe8941bfee75b1c73a28413ade6e86fdc58672df1f5b0b9f9284abd2` |
| 2 | `def` | [sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/sline.md) | 47 | `declaration-track:f187636a04b731f36a2f0181bbfad9aef80d3f42a745e781e95a5ed021f7ad8a` |
| 3 | `def` | [Gfun](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/gfun.md) | 50 | `declaration-track:a209ef91ed98b45d9595658ee9b4fc3d49cba1f14886ce425e155cff0280e6ad` |
| 4 | `def` | [ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/ephase.md) | 53 | `declaration-track:097a0b5ada29d4a0ce158a3a15611d142968f8bdf24558f21ad60b07545f7c2f` |
| 5 | `def` | [ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/zc.md) | 56 | `declaration-track:cc8db7562cc947d11215408ea4c0bf6bf9979e75429af1bc8450d3ba4db1c636` |
| 6 | `def` | [hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hardyz.md) | 59 | `declaration-track:40b8a6b06e7735100639f62fd5bc6cf67425c28da5e34643e3fe733649997c3a` |
| 7 | `lemma` | [sline_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/sline-re.md) | 61 | `result-track:fca764155777dce295c08fccb19a16a8da47c017e9f01a98d3b5071b7864ca86` |
| 8 | `lemma` | [sline_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/sline-im.md) | 62 | `result-track:2b40d794c3841d9f4af6155e53e9681142dd3cd885ca9d9ea2801cd002f38ddc` |
| 9 | `lemma` | [sline_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/sline-ne-one.md) | 63 | `result-track:6525a6cf8b1d45da363e8c12fa6d754c106094f29ab7b4c01b1f63ed433415e1` |
| 10 | `lemma` | [conj_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/conj-sline.md) | 65 | `result-track:797939a22206e901c1f5b2e6a34fa440eafa78d87b91bffa98f2dd71eed28be5` |
| 11 | `lemma` | [one_sub_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/one-sub-sline.md) | 67 | `result-track:f2341ab0f1e83192712318880b23411a4ae863460f21720e83e65af4a1adb94a` |
| 12 | `lemma` | [Gfun_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/gfun-ne-zero.md) | 70 | `result-track:4f000fb90025b1e9b96cc60dcf2ce53d633b3259c7ca5d8926ebfbf936daf65d` |
| 13 | `lemma` | [normG_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/normg-pos.md) | 73 | `result-track:a5b88cfb003a8830b39d8db49d5c245c408fdb37b2c74b09a292b56c271ebecf` |
| 14 | `lemma` | [Gfun_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/gfun-neg.md) | 75 | `result-track:e39dca21cb44ad1d6e998ce2477278fc5b5e42d1a777fbae877f388923e3186c` |
| 15 | `lemma` | [norm_Gfun_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/norm-gfun-neg.md) | 78 | `result-track:d7a54ce180a2d8499de84ca1954853d1143e76a3a05c50a99c282b11a37a1a57` |
| 16 | `lemma` | [ephase_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/ephase-ne-zero.md) | 80 | `result-track:519fe09f0b22c58e529254cf7e6146012acd9a7132f2de6d15d947be4c323164` |
| 17 | `lemma` | [norm_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/norm-ephase.md) | 83 | `result-track:aa226ae0937e77669e5b5176c3e90ad321ec60d4cdd4dbc2b2d8f4a4407525dd` |
| 18 | `lemma` | [conj_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/conj-ephase.md) | 87 | `result-track:5a5f6af978abde4811ea8cdf2eb09eeda41d8a708099ae88735590ae1b5eb3da` |
| 19 | `lemma` | [conj_ephase_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/conj-ephase-mul.md) | 90 | `result-track:c537a53cccd56889ffad6964a245ba3098ba6203872bdd6d42991d64147f061b` |
| 20 | `lemma` | [chiFE_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/chife-sline.md) | 94 | `result-track:facfa17509a97cacba1492b76bf0fe16b7e4ef72d987768ef5af6d4d3039548b` |
| 21 | `lemma` | [ephase_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/ephase-sq.md) | 98 | `result-track:4e86d675196f79e171e4981a5a828c0c6ed7f845de3e9ac49039db1ecd0b3538` |
| 22 | `theorem` | [conj_ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/conj-zc.md) | 108 | `result-track:c44f8e0e85be6bc2e8c3edf1c5298e8e31e2364fb38024aff76543b38d8cd700` |
| 23 | `theorem` | [ZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/zc-im.md) | 128 | `result-track:5bb31d96c13d0a17389fbe7fa9c00a234e3b9215a4dba8c1cd4aef7a0ecee3b4` |
| 24 | `theorem` | [hardyZ_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hardyz-eq.md) | 132 | `result-track:d080ac8f6aaf8c5be674a408fee9b3c6d7f8be8ccfe28b8b643ebc212003cfe1` |
| 25 | `lemma` | [hasDerivAt_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-sline.md) | 137 | `result-track:2655b75ef4de21a9545772d909370bda64c651f0c2d39386d39cd2b7fc053df7` |
| 26 | `lemma` | [hasDerivAt_Gfun](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-gfun.md) | 143 | `result-track:4c45664205047f8a8d6a25ff352db1b34467cdbdbba1ac3e3168c6b108bec6c3` |
| 27 | `def` | [gG](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/gg.md) | 149 | `declaration-track:c1dd25894cb607fb4c333c5adf07ff7064fd8e6cb2b9361214b7d4b78e9188f1` |
| 28 | `lemma` | [hasDerivAt_normG](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-normg.md) | 151 | `result-track:70cee973aef479d482508951798ca67b5050271a70f0ab351041c4fb44abe159` |
| 29 | `theorem` | [hasDerivAt_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-ephase.md) | 179 | `result-track:98204ec729550e2f83149d9c20e4eeb0a8d8e5a5996d2574ff7ef155405c46f4` |
| 30 | `theorem` | [L2_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/l2-sline.md) | 201 | `result-track:0c9845dd7b45477e31c82693ae741ba7e48d6188bd0dd9c31a3577e7afe8383f` |
| 31 | `lemma` | [hasDerivAt_zeta_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-zeta-sline.md) | 207 | `result-track:753d256e55779b083f947ded392c8b85e8617864e5c767d28723a38a837b5587` |
| 32 | `theorem` | [hasDerivAt_ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-zc.md) | 211 | `result-track:3b56f429cee55f8a3bace168e5ef01bc2214773972e3a219b8a271689660cd79` |
| 33 | `lemma` | [hasDerivAt_hardyW_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-hardyw-sline.md) | 216 | `result-track:d3d34d6f44e88491649dce1d2827c704096fa2644270bfbf4df381a16ff94cff` |
| 34 | `theorem` | [hasDerivAt_dZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-dzc.md) | 222 | `result-track:d1171d05f671433a07a742c429a7fb1d266c1d7773f9d24ad4de9bc65a1ae76b` |
| 35 | `lemma` | [im_deriv_eq_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/im-deriv-eq-zero.md) | 232 | `result-track:3c4e658af81f6642eb968a8543a5bb27fab8a3859c249e225d9d3acc09425cb8` |
| 36 | `theorem` | [hasDerivAt_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-hardyz.md) | 242 | `result-track:d2465b0710a2a503b5b15c75ee37887340e6d0cd3343cd6109f546ef3a3f731d` |
| 37 | `theorem` | [dZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/dzc-im.md) | 247 | `result-track:04d894d857479dbfc2a03482eece67b00207582fa9fced162c53f8826cf7ce89` |
| 38 | `theorem` | [deriv_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/deriv-hardyz.md) | 250 | `result-track:6dff8af71d667a000b8eb524cce213af3582efacea320dc49dfde81f4f6e1d27` |
| 39 | `theorem` | [deriv_hardyZ_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/deriv-hardyz-eq-zero-iff.md) | 255 | `result-track:cf6e048a5f7f07604ad223fc6ba049cb579b4fc139f8aa67fc980921f82676fc` |
| 40 | `lemma` | [deriv_hardyZ_eventuallyEq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/deriv-hardyz-eventuallyeq.md) | 270 | `result-track:ee46b03a9d6cccc992b4b72a9e120d5aaa27a1cdbfb6e4ad1a302b88235a2f0a` |
| 41 | `theorem` | [hasDerivAt_deriv_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/hasderivat-deriv-hardyz.md) | 275 | `result-track:6aeab24c3f19bc810b6771b60752586b8eba3a13a86f5369b1b3769e520cb89e` |
| 42 | `theorem` | [d2ZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/d2zc-im.md) | 282 | `result-track:9a043e37efde8e2b4013a7314ed79aaadf59478d277195bc10297d17c5306319` |
| 43 | `theorem` | [deriv2_hardyZ_ne_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/deriv2-hardyz-ne-zero-iff.md) | 289 | `result-track:694be2ce0921998f81546a0c12165d23e1a6a9242234602a4f79e0abf6d404fa` |
| 44 | `theorem` | [wMult_eq_one_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/wmult-eq-one-iff.md) | 312 | `result-track:9842d9d55e001748459f1a8c6d953bd88e0c7c29cb4751095fef4a642db9e4dc` |
| 45 | `def` | [simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/simplestationaryz.md) | 346 | `declaration-track:685f1540a663a028f3f963b07ba62f5bfb79ebbb29f843f4e044920c47a1edba` |
| 46 | `theorem` | [image_simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/image-simplestationaryz.md) | 351 | `result-track:1615f6d7b7d022dde749dc4f8aae22b142ab1e18c9cb6ed1a5aaf45deb7e690c` |
| 47 | `theorem` | [sline_injective](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/sline-injective.md) | 371 | `result-track:30c2c1e8e61154021de1da5865639c8930a54137e18e284670957918b082ccbb` |
| 48 | `theorem` | [ncard_simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunctionNamespaced.lean/declarations/ncard-simplestationaryz.md) | 374 | `result-track:5fc62346782415fa2798f51e7777885ea11e59cb3c4f02d46abc77e55d992864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e20232c3898715505a4963c0182687361b81745b329f54af02b82f7556b3ca2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant9a1eb6394011d8b2aaa0adf71de29b0500cbfc635fdc5a672b8c84a20f63c8d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
