# Verification target: Statement Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58ea6529763ece5155f34750beea02c85c5f784c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58ea6529763ece5155f34750beea02c85c5f784c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Defs` — import line 33; external provider; requires a separately pinned dependency.
- `Zeta23.Hypotheses` — import line 34; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideTemp` — import line 35; external provider; requires a separately pinned dependency.
- `Zeta23.LinAlg` — import line 36; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 37; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 38; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [xi_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xi-differentiable.md) | 54 | `result-track:d9b75e2028a4d59c2205c22b94f5695fbef3d17f1adbaccb2e6a81fd42a809a2` |
| 2 | `theorem` | [xi_eq](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xi-eq.md) | 61 | `result-track:0e5cd73088a1b34dc61e33dd5ddaca44187b1e993091dacc24054d6390dd9bf4` |
| 3 | `theorem` | [xi_one_sub](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xi-one-sub.md) | 70 | `result-track:875ca31e714ca60c3ba502e6a0c679ad8a7186da3d6d1754488e2474ef325e27` |
| 4 | `theorem` | [xiDeriv_differentiable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xideriv-differentiable.md) | 76 | `result-track:9b113e481fe330ebd3e2dc8a93c3b322c15c440390a4e040200551cfd73293f4` |
| 5 | `def` | [XiZerosAreZetaZeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xizerosarezetazeros.md) | 81 | `declaration-track:e21547dd59b89e2eb5fcd8ae1491ceaeccfc07ae235523747cb5ce910b82bfb6` |
| 6 | `def` | [XiDerivZerosInStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzerosinstrip.md) | 92 | `declaration-track:f3265ffe9e86fe3576502ccf013c29537e99aa632ee7154a6ed14d3676be34e9` |
| 7 | `structure` | [XiDerivSeam](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivseam.md) | 101 | `declaration-track:e9a26ca5cb5845917300df15b1005217a156e4f5ce32243b672058451042c415` |
| 8 | `def` | [xiDerivZeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros.md) | 110 | `declaration-track:60c727fa5265eac5c228e4da8d24c849d1b0b0fe15fc1cf682de4773acd792cd` |
| 9 | `lemma` | [xiDerivZeros_carrier](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-carrier.md) | 122 | `result-track:254c6be004a87aa9676574e31497999efd8a3ae7ec5c0041cc966add9cf32352` |
| 10 | `lemma` | [xiDerivZeros_mult](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-mult.md) | 123 | `result-track:3c0952e25f20a69a548c22f83cf327e9c550604abe1eeb55f36876d7b3b949cb` |
| 11 | `lemma` | [xiDerivZeros_simple](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-simple.md) | 124 | `result-track:3faf099bc5e0d3049c848c851e0682d65c6b932115f5ad3e43ddee3cd87be2ee` |
| 12 | `lemma` | [xiDerivZeros_window](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-window.md) | 126 | `result-track:8df4ae64be3c0165e925b227d8bbec212acee90fd1f5e5503c07ff606c3922bd` |
| 13 | `lemma` | [xiDerivZeros_N](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-n.md) | 129 | `result-track:1a9097d1e096ec63ca199330c631d2849811e8725c7a54cf2dd50d404409a3cf` |
| 14 | `lemma` | [xiDerivZeros_Nd](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-nd.md) | 131 | `result-track:9b2d5995b5e7ddeaec78512d0fc970abc1850cacd5afe69caba79d813edfdac6` |
| 15 | `lemma` | [xiDerivZeros_N0](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-n0.md) | 133 | `result-track:d04e3c8338aef697bb9ddd67fa1d6da3caecd98a018e640bb127b8f9000ef78d` |
| 16 | `lemma` | [xiDerivZeros_N0s](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivzeros-n0s.md) | 135 | `result-track:9ee4400e8f77a97a661fff46b14251335895f9e2d37e8a874ab02c966e6c227a` |
| 17 | `def` | [XiDerivRvM](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xiderivrvm.md) | 145 | `declaration-track:c2a41dd2800ec78077e2e84fd8cfd30cbebd186d029b27e7ec9259a0f14667c8` |
| 18 | `structure` | [CoeffFamily](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/coefffamily.md) | 153 | `declaration-track:0ebd3054b9241d987ddae1203c9f3e96dba59d9b612da86dca256991a37d5b58` |
| 19 | `structure` | [CoeffFamily.Hyps](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/coefffamily-hyps.md) | 166 | `declaration-track:0cf7457fbc4ea6b6a2383b6f6e0e6211b2e516df368774befd84a008dfc9d188` |
| 20 | `def` | [xiCoeffFamily](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xicoefffamily.md) | 183 | `declaration-track:8fbb2cba3301bd9806e81dd3faf2778dd05adb44665b203c1b75018163adefbc` |
| 21 | `def` | [wCoeffFamily](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wcoefffamily.md) | 186 | `declaration-track:f5fea848d917e4502ffa4ebdcf017e68659d5a081a3f4b33d4323e98e05b433f` |
| 22 | `def` | [D1Summable](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/d1summable.md) | 190 | `declaration-track:a4abe38bd4e451e11fc63c4fd884b9712f4a15cf9ea5783445e900e38b6b479e` |
| 23 | `def` | [XiEF](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xief.md) | 212 | `declaration-track:d228fefe20a5bb522e8331668db9f65c93d6157e28b57f0440a62b810544d0de` |
| 24 | `def` | [XiTraceTransfer](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/xitracetransfer.md) | 225 | `declaration-track:bde1708c2f811697ca7632310cf469f10c16363606505b0b9e138f775467cc41` |
| 25 | `def` | [CoeffMoments](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/coeffmoments.md) | 244 | `declaration-track:a7f61b8cd52376dfb9b9f0af401e6c47c9236de6c5f8f3cbb7c34e5a3b286ecc` |
| 26 | `def` | [GzMoments](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/gzmoments.md) | 254 | `declaration-track:67c0520c516b491af365bc54294c205a63728f188b80193adb682678651449bd` |
| 27 | `structure` | [WindowProfile](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/windowprofile.md) | 260 | `declaration-track:f4922a6774afaf614079e64f95e055d48733296458f3ce3081ccc8104a90495a` |
| 28 | `def` | [CertFlat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/certflat.md) | 274 | `declaration-track:215ee7759febf0f859de37cddfcddfd368edea24d82e52f70ab2c6256f491c65` |
| 29 | `def` | [CertQuartic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/certquartic.md) | 280 | `declaration-track:142cb0366abcc3f78e875575d92364bb39ee16b69bf3c8de1315af3b9f85893a` |
| 30 | `def` | [FixedLamBounds](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/fixedlambounds.md) | 295 | `declaration-track:7261b58ef42baa0ea25e1aba709632d906dd34d7b31e427d6cf48cea8df08091` |
| 31 | `def` | [HeadlineFlat](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/headlineflat.md) | 305 | `declaration-track:5b58f027c436bfc26eb9d6e5db1a02ef5082eb552afffbe71c79bf398e2e5793` |
| 32 | `def` | [HeadlineQuartic](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/headlinequartic.md) | 312 | `declaration-track:c2ae0ba8f05d1c6d7e0aedc6b20a618f7127c8308e48acfe9a757c0745f85c8d` |
| 33 | `def` | [HeadlineCumulative](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/headlinecumulative.md) | 319 | `declaration-track:a802495f7868719476593f24fecc4edcc243280232d604824375e53afab810bb` |
| 34 | `def` | [WZerosInStrip](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzerosinstrip.md) | 343 | `declaration-track:84ed6cd620da543b0f98cd601fa9bcf112e2b5bbdedb47e6f54d6dc21573ca4f` |
| 35 | `structure` | [WSeam](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wseam.md) | 346 | `declaration-track:d23c4e5d7ee8b65f044eaba52b3206663fc73b09d9a608c08ed0aa4d18fdec40` |
| 36 | `lemma` | [reflect_im](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/reflect-im.md) | 353 | `result-track:6a10651c62e57a786852ccfe040003b1e3b2fa4f85feb1b53a62be8c0feea406` |
| 37 | `def` | [wZeros](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzeros.md) | 357 | `declaration-track:20c5d1155cbf299aebf980c82d33a9918240cd367dbd777ad2acb2e3c900e394` |
| 38 | `lemma` | [wZeros_window](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzeros-window.md) | 370 | `result-track:219be8ee391cff6a17dc0e8123f0c9b0b3e002aeef11032db812142e833b2e37` |
| 39 | `lemma` | [wZeros_N](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzeros-n.md) | 381 | `result-track:ef2d9e936c7f719df4fc8a35fba659af091416b1b42b16bc156b76dde39b6e59` |
| 40 | `lemma` | [wZeros_Nd](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzeros-nd.md) | 383 | `result-track:9205936b914871ef23f7224c1a7f8199ae6afe0f640159266cdf382c6e1d91a0` |
| 41 | `lemma` | [wZeros_N0s](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wzeros-n0s.md) | 385 | `result-track:cde57d9a3205aa747071f069fb9d9d179ca18f8f36618e2d96de69056431d887` |
| 42 | `def` | [wPoleWeight](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/wpoleweight.md) | 394 | `declaration-track:80422ce6c631a601cb70930108d89c7b107616456506b5b67e795d04c5fc2c66` |
| 43 | `def` | [HeadlineW](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/StatementNamespaced.lean/declarations/headlinew.md) | 400 | `declaration-track:362608f8439b25b4b49e80621a222374b078c2c1cad94ecf32e2c1ae85057d86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7edb28f931d1c7b8c9ff6be299d74892819cede89c110f1f274a28d6702feb6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Statement/Variant60b49643bc2b4932c695deeb3036ff69f89d975de2c08160f58a743814410635.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
