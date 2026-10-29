# Verification target: ZFunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc2399d604cba333cc3cd93c2755c0a9960273fa",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc2399d604cba333cc3cd93c2755c0a9960273fa`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 16; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instContinuousSMulRealComplexZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/instcontinuoussmulrealcomplexz.md) | 32 | `declaration-track:2addc4e29db4ff033ac8fa7a28b360b181826eab75a8ffa959011c4c909043b3` |
| 2 | `def` | [sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/sline.md) | 39 | `declaration-track:f18e2d76b72da26a287bf4bdbcb59900cbb8073c18d6b7e90384c3058ad67c4d` |
| 3 | `def` | [Gfun](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/gfun.md) | 42 | `declaration-track:a6cacc649a53402c34e2fbdc4bb387f8221e6d9265ad8e1cb430678f4d11530c` |
| 4 | `def` | [ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/ephase.md) | 45 | `declaration-track:480c0aa117cb31bf5aa56027eb7e8d5114e28172eb6218e2ec50712ffe1db97e` |
| 5 | `def` | [ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/zc.md) | 48 | `declaration-track:cbce2b8e9cd6d2427b0c24754ebb339bbe1df024cb90f892f401f665ac3b6e3d` |
| 6 | `def` | [hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hardyz.md) | 51 | `declaration-track:237e648c4b103317cafd2cfd2c239893ccc94f0ee3642a99d7c530e85baab040` |
| 7 | `lemma` | [sline_re](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/sline-re.md) | 53 | `result-track:1fdad5ce9d9e1cffb11880dfef79bb71601df2bebe487bbcef570b58472d7d28` |
| 8 | `lemma` | [sline_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/sline-im.md) | 54 | `result-track:6cc5cf61dc1d0d650ee1c2f0e05992f0db719f789b7c5aa7b34cf29299e69cff` |
| 9 | `lemma` | [sline_ne_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/sline-ne-one.md) | 55 | `result-track:5e89de6d94eded6dc3ff3ffbe16cfab81e239144bc7e63507cd33a5d99e57b61` |
| 10 | `lemma` | [conj_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/conj-sline.md) | 57 | `result-track:fd95b0031d4a1889786979056fb6cdf900658a5d4f1b6e0518a9a5910557f8a5` |
| 11 | `lemma` | [one_sub_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/one-sub-sline.md) | 59 | `result-track:e9190ff0579da73ca9046553b2dbaca2f57eef2c98e85d47787c22398b6f4f58` |
| 12 | `lemma` | [Gfun_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/gfun-ne-zero.md) | 62 | `result-track:d563b93c85650a1bdd03c1076cfd9433a191bfbe1c0f78bb8fd813524137873b` |
| 13 | `lemma` | [normG_pos](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/normg-pos.md) | 65 | `result-track:bebf248b97b1f2f963d3c99c294a9b364fe98ab8eea1aafdd3ebef3393939c56` |
| 14 | `lemma` | [Gfun_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/gfun-neg.md) | 67 | `result-track:9fa81d072f6b8c88c725dd41da9f54dc8a16a667443dfa2d668b3be74a01d34d` |
| 15 | `lemma` | [norm_Gfun_neg](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/norm-gfun-neg.md) | 70 | `result-track:daefc7a7fe3889144a1ace6bab1c27fb4f53efeecd183ba0a5c24ab4f959fdcf` |
| 16 | `lemma` | [ephase_ne_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/ephase-ne-zero.md) | 72 | `result-track:5fadc32a077e3f77656d2f7310d9b1b800df21b2856d7d16653e804ff1b4d687` |
| 17 | `lemma` | [norm_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/norm-ephase.md) | 75 | `result-track:2f98f18c69f3fd54a5774a9766c82491e1975cf82269b1d995ef0cdc25a24796` |
| 18 | `lemma` | [conj_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/conj-ephase.md) | 79 | `result-track:0cdfa02d50ddd5be0348459ab9345e9209eb9fbf6b37e49071c15f3cad9c068b` |
| 19 | `lemma` | [conj_ephase_mul](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/conj-ephase-mul.md) | 82 | `result-track:33f81019d37a77eb2f524f05a13753c58befb396598f2db06671e3071e249ca0` |
| 20 | `lemma` | [chiFE_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/chife-sline.md) | 86 | `result-track:0b7232ef24ea74ee0bd933d34727dd612f69c5e6e51fe4df78ae1d87d0b427bb` |
| 21 | `lemma` | [ephase_sq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/ephase-sq.md) | 90 | `result-track:a82851070310fb21ff4a7949fa64a4518dc88d5de0dfa18148c4aa6ea81bbe01` |
| 22 | `theorem` | [conj_ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/conj-zc.md) | 100 | `result-track:e7e5ed1bf0b9becddf9661c3bd097eebdcca124354764971f474f0ad946b59db` |
| 23 | `theorem` | [ZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/zc-im.md) | 120 | `result-track:9d1cabeab0aaa10da2de43263f93b2687e965e26d1ddedc4e4c87d517af9df44` |
| 24 | `theorem` | [hardyZ_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hardyz-eq.md) | 124 | `result-track:2f36bec640da2e4c8189a5eb62da9865e0b75f2ddd2ceb3f66a05f6768dfd71c` |
| 25 | `lemma` | [hasDerivAt_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-sline.md) | 129 | `result-track:13f4bfe531e6f9456d4172420f71fa8c3a072ee884d09859e9ff4ff4971273b9` |
| 26 | `lemma` | [hasDerivAt_Gfun](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-gfun.md) | 135 | `result-track:a4593ff833c0d7da28fac8b40751267138fbf28944eebac4c24b236c673f8fcd` |
| 27 | `def` | [gG](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/gg.md) | 141 | `declaration-track:c39217af3f9f3f412c19a1ac2e437b32a46cfa28a31c37b4e94ca69222089734` |
| 28 | `lemma` | [hasDerivAt_normG](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-normg.md) | 143 | `result-track:5e7d9ec627ccf8c368244ce1374d0a71ca09588c60ce2bca969772c7e9026b45` |
| 29 | `theorem` | [hasDerivAt_ephase](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-ephase.md) | 171 | `result-track:85c164fe7093cabf23e935972e5e9e4426fa816d0973f05d6a7dc611f68ca74c` |
| 30 | `theorem` | [L2_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/l2-sline.md) | 193 | `result-track:1f254f36a8c209d30bc82059b9ba260ccd6e2cab6ed7708ba98cb22d0c15e77c` |
| 31 | `lemma` | [hasDerivAt_zeta_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-zeta-sline.md) | 199 | `result-track:cb70874d5280aeb4e086e325d9c183fa59bfb1fd060b876ee1822037f08b7262` |
| 32 | `theorem` | [hasDerivAt_ZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-zc.md) | 203 | `result-track:1f330a644303d2163fadc60e00f53793dcd08c0fd8eef370ed7b73f29bfea99a` |
| 33 | `lemma` | [hasDerivAt_hardyW_sline](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-hardyw-sline.md) | 208 | `result-track:e647b83f37e08b5937d07f5b179bbb04a601d8df35c7f184853f4cd0308ae2d3` |
| 34 | `theorem` | [hasDerivAt_dZC](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-dzc.md) | 214 | `result-track:c188fb2614a6ea929f0cc2830148da962f9192fe6b6b33cac832fe5ee091e9a1` |
| 35 | `lemma` | [im_deriv_eq_zero](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/im-deriv-eq-zero.md) | 224 | `result-track:7c14aa7ab92c7a4d16b966c6c6691a38329a72b4b97edfc38f99e1b397294be9` |
| 36 | `theorem` | [hasDerivAt_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-hardyz.md) | 234 | `result-track:019b9400bd002415b624a31a25688c20cd2f778ff46760e7da8b4e8ee29cb750` |
| 37 | `theorem` | [dZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/dzc-im.md) | 239 | `result-track:5b70997c80af5a9c86b016341d2dfa5b95ebb1cef66ab3cb05466bb1b6682ae6` |
| 38 | `theorem` | [deriv_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/deriv-hardyz.md) | 242 | `result-track:d2eb40345d9a2bb83388160512159b537c568822ae0fb7147e3ed3ae898816c7` |
| 39 | `theorem` | [deriv_hardyZ_eq_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/deriv-hardyz-eq-zero-iff.md) | 247 | `result-track:d21c1dcdcec75126e0f700b2a8f59e7ba464fabb3ebbb12a4bd9468ef5a17e3e` |
| 40 | `lemma` | [deriv_hardyZ_eventuallyEq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/deriv-hardyz-eventuallyeq.md) | 262 | `result-track:3e396b1a1103458e68ffa3febc16b91beb175e8cdcc2303b469fb43f990e7d6e` |
| 41 | `theorem` | [hasDerivAt_deriv_hardyZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/hasderivat-deriv-hardyz.md) | 267 | `result-track:54afbff7f41efb4e53804cd9fcdcd0701aba0f08842541463cd03c796da180aa` |
| 42 | `theorem` | [d2ZC_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/d2zc-im.md) | 274 | `result-track:7ae299caffdd734a889181ec7ca2a33b6c8e9d4421244057f16b3e879306876d` |
| 43 | `theorem` | [deriv2_hardyZ_ne_zero_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/deriv2-hardyz-ne-zero-iff.md) | 281 | `result-track:2993b3359060aed68df1bd23977c8eee885f6ab628226067e090ffe1a229d64a` |
| 44 | `theorem` | [wMult_eq_one_iff](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/wmult-eq-one-iff.md) | 304 | `result-track:ae4008f54cd9a86da319919cb7d7ddbf5e0785a7c5392f1eafc1fabd5358d352` |
| 45 | `def` | [simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/simplestationaryz.md) | 338 | `declaration-track:fef554c5241ce06bec386d86acd88c11353ba5b9b39e422a36a4a8b7664b174f` |
| 46 | `theorem` | [image_simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/image-simplestationaryz.md) | 343 | `result-track:ccaea71e9021926ae09317b5a971837df47f771b799d550556c2a9b83fd84405` |
| 47 | `theorem` | [sline_injective](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/sline-injective.md) | 363 | `result-track:a990a8fe1bf768ba2ad387b3d959d3685040a7c9b35439fab6ad956db6477e49` |
| 48 | `theorem` | [ncard_simpleStationaryZ](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ZFunction.lean/declarations/ncard-simplestationaryz.md) | 366 | `result-track:502e87df09134f244fa36925317616ba584645136b1830b85884221f31812d39` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2d19a9270bc17187b1a78ddc6ca28a0068ae9a6cda36337d199da7742d3d076 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ZFunction/Variant4a3c8c3fb5f0bf7169a59699ee144eb9368b023d48f9bff05af1c214840074e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
