# Verification target: Hurwitz Zeta Even Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06774e745ac8065bf0604ed287c6d5f13a3acc3b",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06774e745ac8065bf0604ed287c6d5f13a3acc3b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LSeries.AbstractFuncEq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.JacobiTheta.Bounds` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.MellinEqDirichlet` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evenKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel.md) | 69 | `declaration-track:118781f1ebf7d51c3a7600ffd1626970572da74b249b76ee63b9daebb242c837` |
| 2 | `lemma` | [evenKernel_def](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel-def.md) | 81 | `result-track:ebac7838ca19c9a31717b4601741804083471033f8c810a750a862646cf29c28` |
| 3 | `lemma` | [evenKernel_undef](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel-undef.md) | 87 | `result-track:9d9c81fe548e06ec338088f1040d7b16e75012280af9592a604c3e25398b1f4c` |
| 4 | `def` | [cosKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coskernel.md) | 93 | `declaration-track:5c8cc8e4abad85a3510c6395a38e41154e3cffc84fa7ecf930f58b4312e945a6` |
| 5 | `lemma` | [cosKernel_def](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coskernel-def.md) | 97 | `result-track:56309ab99059bc7d5490d44ead4211232f20ead49a478df723f36e97677bbd2e` |
| 6 | `lemma` | [cosKernel_undef](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coskernel-undef.md) | 101 | `result-track:f8abc2be90645b4559dfc5800b9438ac93675f70db83235ec8d80cf881c44c59` |
| 7 | `lemma` | [evenKernel_eq_cosKernel_of_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel-eq-coskernel-of-zero.md) | 106 | `result-track:e8b2b79ee3125686d318fd6d63d6405189253f364258a42dd2ec6f14a0d3137f` |
| 8 | `lemma` | [evenKernel_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel-neg.md) | 111 | `result-track:147ec041799bd04b3da23302e128d79a0e8c01b8b5e963604af77f66623c0e35` |
| 9 | `lemma` | [cosKernel_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coskernel-neg.md) | 116 | `result-track:38702461b64f52ca82e765b29c8fb8a6b446e3d1bf43f8dd07483770683791c8` |
| 10 | `lemma` | [continuousOn_evenKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/continuouson-evenkernel.md) | 120 | `result-track:c4a9a6d84c97b676160b2177c08c872c5c672a49aba5dfa94d604ee8784ba11c` |
| 11 | `lemma` | [continuousOn_cosKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/continuouson-coskernel.md) | 128 | `result-track:e528e272eb5c170ede91177be87b66d73a316426796a0d01c3a17608f5ecd7c0` |
| 12 | `lemma` | [evenKernel_functional_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/evenkernel-functional-equation.md) | 136 | `result-track:18fb8ee9979196404cb7ccd0ac355e05e2e1fc671bd4f10c811ee458f850e2fe` |
| 13 | `lemma` | [hasSum_int_evenKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-evenkernel-source-edition-2.md) | 167 | `result-track:a75bc8ba696536da870dff2ee0f906ceafe94447aabc501b375f7d03661caabc` |
| 14 | `lemma` | [hasSum_int_cosKernel](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-coskernel.md) | 177 | `result-track:bb8930ec812dea2e147c65a7920ed589278f0322bebff01e09e280b446ecc48c` |
| 15 | `lemma` | [hasSum_int_evenKernel₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-evenkernel.md) | 188 | `result-track:478104acb8b405c714acebb5e8fcab9d1d2aa6315d259f76db46a5e9c706d4c8` |
| 16 | `lemma` | [hasSum_int_cosKernel₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-coskernel-source-edition-2.md) | 202 | `result-track:df2cb10cd13e2896505eee78319140314a814bc4a5d4501e08a9312a178fde49` |
| 17 | `lemma` | [hasSum_nat_cosKernel₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-nat-coskernel.md) | 207 | `result-track:0a6a93cea29e6a1b9f6956db593a0d1427c301ae5d8a3cd073df713595d06e78` |
| 18 | `lemma` | [isBigO_atTop_evenKernel_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/isbigo-attop-evenkernel-sub.md) | 228 | `result-track:0d443dff5dc00279b7ee79b25e9b151597e802d3f4cbf0559d4c252dd3a7d5a2` |
| 19 | `lemma` | [isBigO_atTop_cosKernel_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/isbigo-attop-coskernel-sub.md) | 237 | `result-track:4e4c221656eaa42aa72cc6fa56bede9daccd1333bf2d936b2716a164ba5db79e` |
| 20 | `def` | [hurwitzEvenFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzevenfepair.md) | 259 | `declaration-track:2443ac99dcfb9ee6e9d1bc1a086a4457278afb34eb151d201aa064f62dd0eae1` |
| 21 | `lemma` | [hurwitzEvenFEPair_zero_symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzevenfepair-zero-symm.md) | 284 | `result-track:a336f9d9c1e26f1d48db6403c942ef944a411f403d53af140029ed222947ff57` |
| 22 | `lemma` | [hurwitzEvenFEPair_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzevenfepair-neg.md) | 290 | `result-track:f2e80ecdbe783f9126f29b25ace1b5737276d3bc1fb3e23034e4e4674b7f6db4` |
| 23 | `def` | [completedHurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven.md) | 302 | `declaration-track:5f3a4c3bed9a1269ee94cae8ca6d9f130d56b31f5107cfeadb371c179051d967` |
| 24 | `def` | [completedHurwitzZetaEven₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-source-edition-2.md) | 307 | `declaration-track:d17144a8cc7af22ac323a17ef9961e27d236373ed9eee026c95060f8c2138f61` |
| 25 | `lemma` | [completedHurwitzZetaEven_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-eq.md) | 310 | `result-track:6159ce071b47534d07195ba3b4ee636a20d0f83e8f658c1ad07f607f4a47f9d9` |
| 26 | `def` | [completedCosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-source-edition-2.md) | 326 | `declaration-track:59f59b199d1928da2977a6f93cfdbc46fe3de60d13811cd8264133dab3a6663d` |
| 27 | `def` | [completedCosZeta₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta.md) | 331 | `declaration-track:0f0f2e72461c8b3ebb91706a3d4c187019f186c8af119ba0030c4e05b9e41838` |
| 28 | `lemma` | [completedCosZeta_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-eq.md) | 334 | `result-track:99f50c7734ecc005e0c587883e6842b4ea770ccaf6e35ad5347dfb71e7075ef1` |
| 29 | `lemma` | [completedHurwitzZetaEven_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-neg-source-edition-2.md) | 350 | `result-track:86efae1b4b2297b5f713c5ddf2f5decfc6f0455b8e1abdcf606a7255df466e7a` |
| 30 | `lemma` | [completedHurwitzZetaEven₀_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-neg.md) | 355 | `result-track:066b6c58ab70fe5621812c166dc5575020e224d9bde7b1954da87fe44f2ac983` |
| 31 | `lemma` | [completedCosZeta_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-neg.md) | 360 | `result-track:7c48196586dacfe97b5030d5b7291ad2131a3a7c9e5057816ac5310c9975756a` |
| 32 | `lemma` | [completedCosZeta₀_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-neg-source-edition-2.md) | 365 | `result-track:9f353c32f2c7f818e8b8797537b4d3e1f46d50bc7fb50eadbcf6d5fa01e18331` |
| 33 | `lemma` | [completedHurwitzZetaEven_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-one-sub.md) | 370 | `result-track:071f510e5c5901b36c185f205c6b316d623fec4f22d4fcfced4d42cdc40db616` |
| 34 | `lemma` | [completedHurwitzZetaEven₀_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-one-sub-source-edition-2.md) | 380 | `result-track:d008d91562c61297c664454cd5b593643dd2afc03aa61cdc34d627ea707aca94` |
| 35 | `lemma` | [completedCosZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-one-sub.md) | 390 | `result-track:488204d3428ed59718027747a5d9a8c81d61c02e4be7a9e65ba1888848c0ef44` |
| 36 | `lemma` | [completedCosZeta₀_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-one-sub-source-edition-2.md) | 395 | `result-track:fd6306f9b2958abba9b6226cc519139ed723dfcc6ae6456c3174b8c0bf82faa1` |
| 37 | `lemma` | [differentiableAt_completedHurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-completedhurwitzzetaeven.md) | 411 | `result-track:4f6ec0a1aefdabca19dd1854c3d668dc5a716a5240b2e6ed27d13e003a0eb838` |
| 38 | `lemma` | [differentiable_completedHurwitzZetaEven₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiable-completedhurwitzzetaeven.md) | 422 | `result-track:15fc6c0ea1c22c59c26d428a6643e87cccfd0b3d20c446698a10d028e9fae379` |
| 39 | `lemma` | [differentiableAt_one_completedHurwitzZetaEven_sub_completedHurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-one-completedhurwitzzetaeven-sub-completedhurwitzzetaev.md) | 427 | `result-track:f5577e9e96124590e1c3a7ffe311de3755fe8e0ea3c322e6accf918ba080301b` |
| 40 | `lemma` | [differentiableAt_completedCosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-completedcoszeta.md) | 439 | `result-track:cc8a55c0ed0bd737db70e315500f8eaf204efb3eb5fb40f31773cf20808ec6d3` |
| 41 | `lemma` | [differentiable_completedCosZeta₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiable-completedcoszeta.md) | 450 | `result-track:df9aeff09250bab496c81b58e96900d6c01f4b595ee956eb206f8281524810ec` |
| 42 | `lemma` | [tendsto_div_two_punctured_nhds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/tendsto-div-two-punctured-nhds.md) | 454 | `result-track:5ca159f2d87ad05738f735d800b33ecb2befd5d3b8a3a823bd492d2c4c525e3e` |
| 43 | `lemma` | [completedHurwitzZetaEven_residue_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-residue-one.md) | 459 | `result-track:ae894fbe710cc12ecaf51c3da57fc5c23c1968d859b461c04d5f2b0499ccea8d` |
| 44 | `lemma` | [completedHurwitzZetaEven_residue_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedhurwitzzetaeven-residue-zero.md) | 469 | `result-track:086ed864e6a837e0d34038a557dfb334d6b36de46778e9be4adfd07016fafcf7` |
| 45 | `lemma` | [completedCosZeta_residue_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/completedcoszeta-residue-zero.md) | 478 | `result-track:0fd0de9e12a705ec46bd1a17c8e144aa7d23fce036bcc52692b4bb9a8c1842e7` |
| 46 | `lemma` | [hasSum_int_completedCosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-completedcoszeta.md) | 493 | `result-track:e3f1c5d4b38df6cdbb2bee7e97c05ec926ae0c6ca6d2f9ba50c1e6d47854b950` |
| 47 | `lemma` | [hasSum_nat_completedCosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-nat-completedcoszeta.md) | 517 | `result-track:2d917ae338d5bc7307e9854f29dac17f25bb6df6c099556862d32f03d39b1c8d` |
| 48 | `lemma` | [hasSum_int_completedHurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-completedhurwitzzetaeven.md) | 533 | `result-track:c30a8abcb20ce9729658e869a7ca7ed7278b6a696bf49b1bbfac2d6d8ac30d62` |
| 49 | `lemma` | [differentiableAt_update_of_residue](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-update-of-residue.md) | 559 | `result-track:5ee64695b77366a9698d099572528a19783e331565a2a6f19a9b4f17ff068663` |
| 50 | `def` | [hurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven.md) | 588 | `declaration-track:c6234cf2e3b39aca02f00d378a7ccba65a22310b9affcafd75e71c94b8760865` |
| 51 | `lemma` | [hurwitzZetaEven_def_of_ne_or_ne](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-def-of-ne-or-ne.md) | 592 | `result-track:9a2e58f20e7d45f0ea68b9ea89718ccc7d1928b2a7c25e2719d1a53f45aff95b` |
| 52 | `lemma` | [hurwitzZetaEven_apply_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-apply-zero.md) | 599 | `result-track:6ae0c77a8f70871f9e3b8ca0c08c1aa1d7ff0f66244ab0049428773ffa429d34` |
| 53 | `lemma` | [hurwitzZetaEven_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-neg.md) | 603 | `result-track:55ded069d699f529c300faf2e98148a80c3626f947fb3e0a00a68097acc650ad` |
| 54 | `theorem` | [hurwitzZetaEven_neg_two_mul_nat_add_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-neg-two-mul-nat-add-one.md) | 608 | `result-track:84437a7f2f5d1a9178fd983fc97b66b9ca52af76e5d272c2013f1b43a6f23637` |
| 55 | `lemma` | [differentiableAt_hurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-hurwitzzetaeven.md) | 618 | `result-track:49fdd1cf331387d90ba3891ebb24904b0f213c5de2f4ac7f30f9b12318cb3520` |
| 56 | `lemma` | [hurwitzZetaEven_residue_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-residue-one.md) | 626 | `result-track:a45bc692ac1b23300e83bb2182490e31e2b7b061b0a973351366b8204e4da98e` |
| 57 | `lemma` | [differentiableAt_hurwitzZetaEven_sub_one_div](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-hurwitzzetaeven-sub-one-div.md) | 635 | `result-track:9aafd9224fb8781c054ddbbf58da68e6c9a168f5fdd8f50a01072d250d3a9c03` |
| 58 | `lemma` | [tendsto_hurwitzZetaEven_sub_one_div_nhds_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/tendsto-hurwitzzetaeven-sub-one-div-nhds-one.md) | 652 | `result-track:e55caa4223bffc08213ca8518b08aac54685a517dc66365ee3fcd5022e295825` |
| 59 | `lemma` | [differentiable_hurwitzZetaEven_sub_hurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiable-hurwitzzetaeven-sub-hurwitzzetaeven.md) | 657 | `result-track:9b4c756eff6fb896081fe853bc1fc587da25e75acdd159c236c1a65a7cb75518` |
| 60 | `lemma` | [hasSum_int_hurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-hurwitzzetaeven.md) | 669 | `result-track:f655557d39d6715971c0b2d55f12fe53da481eabde9159820c9c5c5b853221a1` |
| 61 | `lemma` | [hasSum_nat_hurwitzZetaEven](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-nat-hurwitzzetaeven.md) | 678 | `result-track:9d6d2300f23a63c52775e9d46d83e7843ea0ab41561dd9762f577f5d541e1c99` |
| 62 | `lemma` | [hasSum_nat_hurwitzZetaEven_of_mem_Icc](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-nat-hurwitzzetaeven-of-mem-icc.md) | 686 | `result-track:cae1f3046e4f11bb10e4f3fa9485180266e736e06c81ff51dfdec30f6b1eb348` |
| 63 | `def` | [cosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coszeta.md) | 700 | `declaration-track:7cb63c09a12853e1d2b469d0097b6e3d871481fc0493e68edb201733e0d31c6d` |
| 64 | `lemma` | [cosZeta_apply_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coszeta-apply-zero.md) | 703 | `result-track:f3989493d85531791441f4a4101b6b74bb502938d9f4cae28c6be4815b64433d` |
| 65 | `lemma` | [cosZeta_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coszeta-neg.md) | 706 | `result-track:cc4a9aff82004176390bea4d1f11d1a53b8becdf07ae6146236a9759f796b66a` |
| 66 | `theorem` | [cosZeta_neg_two_mul_nat_add_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coszeta-neg-two-mul-nat-add-one.md) | 711 | `result-track:5a23dec8e7b06f1efc9f72c290bc6b82fb3c7acf632510f8a0b1bebab2a8eba3` |
| 67 | `lemma` | [differentiableAt_cosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiableat-coszeta.md) | 719 | `result-track:c89dc6258e19245d2e08da20c671c417be88f1a747ae0d9d33d6c77206df56f2` |
| 68 | `lemma` | [differentiable_cosZeta_of_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/differentiable-coszeta-of-ne-zero.md) | 730 | `result-track:d1256ca8e7563f2034871288c4dae9f7850b05ecfd3a68ac30cb81c1880435a9` |
| 69 | `lemma` | [hasSum_int_cosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-int-coszeta.md) | 735 | `result-track:d479034fe6306b56c234504e3fdb73c9fc9bf292fdbf90918e25e892dde59d69` |
| 70 | `lemma` | [hasSum_nat_cosZeta](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hassum-nat-coszeta.md) | 743 | `result-track:f2767af57c8c726fd55f6f059f2aa75e355556787c6c2f57369f729348f2e7e1` |
| 71 | `lemma` | [LSeriesHasSum_cos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/lserieshassum-cos.md) | 753 | `result-track:6bda383365745f543320fb9e1a9b5899505b5f6678419b1da2cc545a207408f8` |
| 72 | `lemma` | [hurwitzZetaEven_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/hurwitzzetaeven-one-sub.md) | 763 | `result-track:214ddceeba003b72d9a60cb44783f77128c1a38c2fb94645e8940364fc19fb3d` |
| 73 | `lemma` | [cosZeta_one_sub](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HurwitzZetaEvenNamespaced.lean/declarations/coszeta-one-sub.md) | 776 | `result-track:daf59c58561f24a24315ba917048091081d45c06382ee63b24d66329b66fe9c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b541da94b71178f7e40bdb594ef607be5cb3b0f0b6840568c767e8613b06cd91 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant59c99cc116d16c7ca8e8a78dbe0bbbe6614099ae409586f07322e2ec3fb68593.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
