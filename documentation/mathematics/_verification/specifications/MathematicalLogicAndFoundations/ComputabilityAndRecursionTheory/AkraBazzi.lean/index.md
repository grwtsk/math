# Verification target: Akra Bazzi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b4c4d02baa758897d153bfb24b08abd4567d49e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.AkraBazzi.GrowsPolynomially` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AkraBazziRecurrence](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/akrabazzirecurrence.md) | 81 | `declaration-track:9629512783b6be67295ef73056c2be2b725c041817ebaedfb0b6e26d01295066` |
| 2 | `def` | [min_bi](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/min-bi.md) | 113 | `declaration-track:168de4b1927b181f6975b040a99ea1c448572548217196c82fe5029d884620c1` |
| 3 | `def` | [max_bi](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/max-bi.md) | 117 | `declaration-track:cce111fee20c1ac41bbd9deb591d6578a2ebf079f93641c81e5ce48c688de0d4` |
| 4 | `lemma` | [min_bi_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/min-bi-le.md) | 121 | `result-track:c413bba0ef79491848c2837843a65a86e0866f63b2936cc3a8dd8fc7cbb29ce4` |
| 5 | `lemma` | [max_bi_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/max-bi-le.md) | 125 | `result-track:08b1970e81e8f853117039bd75a01e6052e8f5a4b445a8669dfd437dc6833aa1` |
| 6 | `lemma` | [isLittleO_self_div_log_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/islittleo-self-div-log-id.md) | 130 | `result-track:3725f3682e48364e45730ee8b8a26d2c07515a45820c9d3f7478e7c16fd8d131` |
| 7 | `lemma` | [dist_r_b'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/dist-r-b.md) | 150 | `result-track:376f5ab12185e7fcf1ab63ba8f342cd464edc2071a6bdbaed09ca73117a789b5` |
| 8 | `lemma` | [eventually_b_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-b-le-r.md) | 155 | `result-track:80545cea2363919c7dbf1f7684b6722171396a7559517f750aeed8f91164d780` |
| 9 | `lemma` | [eventually_r_le_b](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-r-le-b.md) | 167 | `result-track:a1ddc291847a03e56efab11a4a63d99b144003a81a05aea5b46d8f173b0720ef` |
| 10 | `lemma` | [eventually_r_lt_n](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-r-lt-n.md) | 174 | `result-track:a111287a92106b602703e766c46249686d325a316398d2e598ad2ab5c931c602` |
| 11 | `lemma` | [eventually_bi_mul_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-bi-mul-le-r.md) | 178 | `result-track:028d854a6af5258da55a4080839c560b5bad2eb3ff1ea715711a88f7a28cfe89` |
| 12 | `lemma` | [bi_min_div_two_lt_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/bi-min-div-two-lt-one.md) | 194 | `result-track:c495e16f11cde4febb7114156358887fbae882d36d20115dc224fd8237312a5a` |
| 13 | `lemma` | [bi_min_div_two_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/bi-min-div-two-pos.md) | 199 | `result-track:16b162f8e642d6b1b110e2192e8f3578fc876767816fec6d0122d2ee5ce1b35e` |
| 14 | `lemma` | [exists_eventually_const_mul_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/exists-eventually-const-mul-le-r.md) | 201 | `result-track:17d34904cbeeebb5472dcc00b8908c272b37fc93579b3f75c82372f7e5c2adc1` |
| 15 | `lemma` | [eventually_r_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-r-ge.md) | 206 | `result-track:ee76a488ddc9979eadc2e7fd89a7510d24e819d28e5238e74d9cffbd99647acb` |
| 16 | `lemma` | [tendsto_atTop_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/tendsto-attop-r.md) | 218 | `result-track:95e4f1807fa7c2ecf6040121b8aa0562a3c2e9c8677dcdaa70c1ccfece8fee9e` |
| 17 | `lemma` | [tendsto_atTop_r_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/tendsto-attop-r-real.md) | 225 | `result-track:ec7b55d6da7d1ad5b4a07738b061bf04359f2dcd26ca0b4c0867a59ed6fbad3b` |
| 18 | `lemma` | [exists_eventually_r_le_const_mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/exists-eventually-r-le-const-mul.md) | 228 | `result-track:bf7760b7b3be69eea94605d75999ec7c4fe31c12a2c2c8de96b1a2c36d9d6901` |
| 19 | `lemma` | [eventually_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-r-pos.md) | 256 | `result-track:3cef13a3d8db4cbb4afeb75118ddb59da5dcaf57e0ba1e02baff9eabf7c80fa2` |
| 20 | `lemma` | [eventually_log_b_mul_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-log-b-mul-pos.md) | 260 | `result-track:c85749688d9efdfdc055d0863986c8e923669bd3d0d79431b0599b9ea2f02745` |
| 21 | `lemma` | [T_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/t-pos.md) | 268 | `result-track:1183c3395eae6cb9fc212eb7b947019da308e6838e65c6a0a245009d217b7f6c` |
| 22 | `lemma` | [T_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/t-nonneg.md) | 280 | `result-track:51f88487b5709c2f0844c1093112f9abccaf23d74118615829a0cfe634c77df2` |
| 23 | `def` | [smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/smoothingfn.md) | 301 | `declaration-track:c483d963046b65fb730134883b8c588a1081e9c0f230e548b89b303c2f19d7ed` |
| 24 | `lemma` | [one_add_smoothingFn_le_two](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/one-add-smoothingfn-le-two.md) | 305 | `result-track:c072d34a46f7b0461e90ac5126e843fa4c7f3189f45e59c4b584e3f5d61a96e5` |
| 25 | `lemma` | [isLittleO_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/islittleo-smoothingfn-one.md) | 316 | `result-track:6d9ae1b1efd0deed019f8bfcfd84ccc33fb97cc84c3e2f7a00a53f23ad43f67c` |
| 26 | `lemma` | [isEquivalent_one_add_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isequivalent-one-add-smoothingfn-one.md) | 322 | `result-track:239fadb5499cf0b0f6cd6a5e7d02cdf5fd67024e0f7a20c54a78503823951cb6` |
| 27 | `lemma` | [isEquivalent_one_sub_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isequivalent-one-sub-smoothingfn-one.md) | 325 | `result-track:d4f5f4396a8e75da537335694751d646a15162dd586933ca73b1dec0c01b594b` |
| 28 | `lemma` | [growsPolynomially_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/growspolynomially-one-sub-smoothingfn.md) | 328 | `result-track:a1af97dc34ac57e447ad454aa7fb799025271d05d2f90676204404c2f2bb0fa2` |
| 29 | `lemma` | [growsPolynomially_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/growspolynomially-one-add-smoothingfn.md) | 331 | `result-track:0ada3339dddb92c9039ab65aa6fde3a8749af37bfa993b9668b20e4a59ab9c49` |
| 30 | `lemma` | [eventually_one_sub_smoothingFn_gt_const_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-gt-const-real.md) | 334 | `result-track:aa314276a73c159adc26fcf138f9fcb8fc11aeb2bf28386fea40a97c0033abcf` |
| 31 | `lemma` | [eventually_one_sub_smoothingFn_gt_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-gt-const.md) | 342 | `result-track:89946565d64d638d8eead16c1be45af7d37db7046a78e5296471bd8cfc5b58a5` |
| 32 | `lemma` | [eventually_one_sub_smoothingFn_pos_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-pos-real.md) | 347 | `result-track:5886332e9bcd4f394b33ce6fe2ae92fa4bc0aee77268a3e08d589289539f810f` |
| 33 | `lemma` | [eventually_one_sub_smoothingFn_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-pos.md) | 350 | `result-track:322c60b37aef43fda9a7a4027d8f421b9298fa5f2dd914400d52f247898f1684` |
| 34 | `lemma` | [eventually_one_sub_smoothingFn_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-nonneg.md) | 353 | `result-track:e339b8582d5f306b2ae5dc4c87e6ce3505311702091f7c7f0a8c856fdc8d7a72` |
| 35 | `lemma` | [eventually_one_sub_smoothingFn_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-sub-smoothingfn-r-pos.md) | 357 | `result-track:3c7398d6a54e125d01600a45b48031f7fe8bca23b3629c0ae837debe23cb084e` |
| 36 | `lemma` | [differentiableAt_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/differentiableat-smoothingfn.md) | 362 | `result-track:e5cb8f8982b30e7d8c7f74cd563eea0f65b32b692cf5fcb9a6b024651dbf5213` |
| 37 | `lemma` | [differentiableAt_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/differentiableat-one-sub-smoothingfn.md) | 369 | `result-track:1f7306f22578f5ae7b7294834a5327afe15655b2996bf7f2eabd0b05b7049487` |
| 38 | `lemma` | [differentiableOn_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/differentiableon-one-sub-smoothingfn.md) | 373 | `result-track:c7fa9f43b5cbe47b994c985aa16182ad7216369ce45fcbe7398208fd1b13fd7e` |
| 39 | `lemma` | [differentiableAt_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/differentiableat-one-add-smoothingfn.md) | 377 | `result-track:95e918301033936202bf949eadb8340c3b961d788db6b9d5a085b09d3e8095aa` |
| 40 | `lemma` | [differentiableOn_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/differentiableon-one-add-smoothingfn.md) | 381 | `result-track:9eda2196ea9cf3e256e109e568e02f37df4086c86c0675643f7d301596d7f19c` |
| 41 | `lemma` | [deriv_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/deriv-smoothingfn.md) | 384 | `result-track:d77f285669608a267f8e81fb924f2b42df388a7bb741cbc38a6d0b2df40e33f2` |
| 42 | `lemma` | [isLittleO_deriv_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/islittleo-deriv-smoothingfn.md) | 389 | `result-track:1755ddd690aee973e4c8670c659426d3a321b3e0a92cad9f2506d16f9482cd56` |
| 43 | `lemma` | [eventually_deriv_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-deriv-one-sub-smoothingfn.md) | 405 | `result-track:8273bf09716de08f40f097188adfd528fcd867dda337f25069e84ee574fa580f` |
| 44 | `lemma` | [eventually_deriv_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-deriv-one-add-smoothingfn.md) | 413 | `result-track:c11039895c672d4ea62c60c934bd8b1acf00ca14a506066d1a62fccd32b90604` |
| 45 | `lemma` | [isLittleO_deriv_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/islittleo-deriv-one-sub-smoothingfn.md) | 421 | `result-track:d3b0c614f990d6ec6020dc7c161a57acf1139ac32ebd60f1312998e4688e330a` |
| 46 | `lemma` | [isLittleO_deriv_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/islittleo-deriv-one-add-smoothingfn.md) | 427 | `result-track:7e04f38ebf68ffe4e11c5b43b225c39c2d57c445cafd3f17a61d15eb7f488fbd` |
| 47 | `lemma` | [eventually_one_add_smoothingFn_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-add-smoothingfn-pos.md) | 433 | `result-track:58583210424291cd2a1814e08ec7e5300d9e6ae596f09ae216053df863c2555b` |
| 48 | `lemma` | [eventually_one_add_smoothingFn_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-add-smoothingfn-r-pos.md) | 443 | `result-track:9813f7d68d1eced3f0a2c256dfe872b2805b2f02b1244d31506a24f1a0e2c77c` |
| 49 | `lemma` | [eventually_one_add_smoothingFn_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-one-add-smoothingfn-nonneg.md) | 447 | `result-track:6653bb416acc5dea102139ba8db9344de53bae47eebe7f5638c47b3337ae8a88` |
| 50 | `lemma` | [strictAntiOn_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/strictantion-smoothingfn.md) | 450 | `result-track:0795777f9d89405dd9fc8891af223e60da2464791b3a73ebbe8e5183cb3464f6` |
| 51 | `lemma` | [strictMonoOn_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/strictmonoon-one-sub-smoothingfn.md) | 457 | `result-track:b63871faf1c46e542943d73102c7e92196b711f56681d73f2d4d44df0488f7a1` |
| 52 | `lemma` | [strictAntiOn_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/strictantion-one-add-smoothingfn.md) | 462 | `result-track:f1d8cf06b5e95012725b51953c9d17d39b0be85b9f0d79dbc42be82fdd351b16` |
| 53 | `lemma` | [isEquivalent_smoothingFn_sub_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isequivalent-smoothingfn-sub-self.md) | 468 | `result-track:7d5d5794f96973f69b68c063e361590675edc18224423b67b6f9c658ad6a9877` |
| 54 | `lemma` | [isTheta_smoothingFn_sub_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/istheta-smoothingfn-sub-self.md) | 491 | `result-track:8eacc19963cdaee60be88f39085ec1a8d52294159daaf080d9a2d91e883b1452` |
| 55 | `lemma` | [continuous_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/continuous-sumcoeffsexp.md) | 514 | `result-track:55522c5467e0e0baadb02513ae556b2cc47574dec1011c10886a372d64f937ca` |
| 56 | `lemma` | [strictAnti_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/strictanti-sumcoeffsexp.md) | 518 | `result-track:1fa548274a3bba599b73a03a06ec1b278463c468f0b78eda0c00147bafe99c1d` |
| 57 | `lemma` | [tendsto_zero_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/tendsto-zero-sumcoeffsexp.md) | 524 | `result-track:6224b8493269d3b63db14b1ff51888ee85d2fc5d4b1619742524e906751dede0` |
| 58 | `lemma` | [tendsto_atTop_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/tendsto-attop-sumcoeffsexp.md) | 533 | `result-track:77a0515579e90d027cd578ebf3c47249a02c3ac4ae2b2a4baf707eaa298d8ab1` |
| 59 | `lemma` | [one_mem_range_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/one-mem-range-sumcoeffsexp.md) | 543 | `result-track:91a1596ba6ebfdea79c0fdd8e60911a3a6e0b6ada437c0783e3c9f147a01082c` |
| 60 | `lemma` | [injective_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/injective-sumcoeffsexp.md) | 551 | `result-track:8624d801b11d46fe3605744d816bdcff738a562f31c0a465338a5437db511d17` |
| 61 | `lemma` | [sumCoeffsExp_p_eq_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/sumcoeffsexp-p-eq-one.md) | 562 | `result-track:9ca011c709de60366662237015f5b8fae934719610a3ee7d55f16f62580e98fb` |
| 62 | `def` | [sumTransform](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/sumtransform.md) | 578 | `declaration-track:e2d96aa122e8582f9701336debb3b3fceaf266c7967b592753c24f0197b0f838` |
| 63 | `lemma` | [sumTransform_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/sumtransform-def.md) | 581 | `result-track:38e2674ed10e96cae63eac7e7d167fbd6034670c7524a12bd21dd8db85d15735` |
| 64 | `def` | [asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/asympbound.md) | 588 | `declaration-track:9a4c92bebb981f9474c1cbca40b34893cc5589677668511a0b018a717f976c6c` |
| 65 | `lemma` | [asympBound_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/asympbound-def-source-edition-2.md) | 590 | `result-track:9adf70b28fbfbad47e0a699195f54cc8573f820d2f556df8214eec503869eabe` |
| 66 | `lemma` | [asympBound_def'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/asympbound-def.md) | 595 | `result-track:0bfc1cefe9ef5547dec7f755e459ffdf4d082dbef8efc71c2c3978450fa878be` |
| 67 | `lemma` | [asympBound_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/asympbound-pos.md) | 602 | `result-track:f2dd4152d63625629032a287e168810483fc9e2b1edad4bdc027a0f0b72bb548` |
| 68 | `lemma` | [eventually_asympBound_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-asympbound-pos.md) | 612 | `result-track:d07bda06d60652c1809466bd1b09f6ee6cfdc776105759d592ca3a6e6d403273` |
| 69 | `lemma` | [eventually_asympBound_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-asympbound-r-pos.md) | 616 | `result-track:df2bf9f0353812e15bc79babb5f37845c481c8d08e96b8c13c18c537d9500e24` |
| 70 | `lemma` | [eventually_atTop_sumTransform_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-attop-sumtransform-le.md) | 620 | `result-track:fa4eae236291850c16950095525292c229e778a6a8d7802b6340760a7763f54d` |
| 71 | `lemma` | [eventually_atTop_sumTransform_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-attop-sumtransform-ge.md) | 697 | `result-track:0e1426697f822ddda502f0b854f44ee82a1e842e5e8424d7e3c4d50427fe2dd7` |
| 72 | `lemma` | [eventually_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 796 | `result-track:48821581ce5b90f28ef23b5d3e2dfeb0fe4496750baea1b711b320f0d14432c8` |
| 73 | `lemma` | [eventually_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/eventually-deriv-rpow-p-mul-one-add-smoothingfn.md) | 813 | `result-track:076c062e33f3431751b18d1f35d30b715c9524377e7701beaa2e43b76629e1f8` |
| 74 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 830 | `result-track:97a45be8539ae9394b5fa27d80c5ea9fced4002d77137e097d3a31384bfde479` |
| 75 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isequivalent-deriv-rpow-p-mul-one-add-smoothingfn.md) | 854 | `result-track:d5f262022eafb8ddb4ed9e9de10b0134bef2d0484e362748b8f0c1e0229a1382` |
| 76 | `lemma` | [isTheta_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/istheta-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 878 | `result-track:6281dee79aa4e13e93a882e9e38f3dd7845d997de15a16edea0d610ebda607e2` |
| 77 | `lemma` | [isTheta_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/istheta-deriv-rpow-p-mul-one-add-smoothingfn.md) | 886 | `result-track:a00ec8da0822eaac2571455930dd244410db30f465b98993d3d48e37475f5538` |
| 78 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 894 | `result-track:c35f9f8d68a952dfbd64ee6273df4bd24a119416db39a8930fdc52847e08f4ef` |
| 79 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-add-smoothingfn.md) | 916 | `result-track:e1d0f0fce30a8692b3de7bff7071866dcd815afaf922efea9fe68ba080c455ef` |
| 80 | `lemma` | [isBigO_apply_r_sub_b](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isbigo-apply-r-sub-b.md) | 941 | `result-track:3daea8c588a25acda7375beb0f08dae33bac0c5b273c493baad4e07756b43f1f` |
| 81 | `lemma` | [rpow_p_mul_one_sub_smoothingFn_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/rpow-p-mul-one-sub-smoothingfn-le.md) | 974 | `result-track:1b4ddec0e4eca7b98384927824da74dae8eac63574d1620870cffa00e311dda5` |
| 82 | `lemma` | [rpow_p_mul_one_add_smoothingFn_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/rpow-p-mul-one-add-smoothingfn-ge.md) | 1069 | `result-track:536b58a6a424c64955cc5f83e32a130752871c69183b6e0f99c4e9e8f02d3e65` |
| 83 | `lemma` | [base_nonempty](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/base-nonempty.md) | 1171 | `result-track:cfd3dd7a0cc2f1fe0ab21d3a3cb3e06811fa82de02ac57479a81069f71469d80` |
| 84 | `lemma` | [T_isBigO_smoothingFn_mul_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/t-isbigo-smoothingfn-mul-asympbound.md) | 1183 | `result-track:9eec3be0eb111e2a9bf659fca5bd184e51c3d81cb9510c33bfc6d0bfeb736e6a` |
| 85 | `lemma` | [smoothingFn_mul_asympBound_isBigO_T](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/smoothingfn-mul-asympbound-isbigo-t.md) | 1316 | `result-track:023c47f42a02ddc8f2ea2d99cb42305e3b4b185678396c8acb9dbcb38531da6e` |
| 86 | `theorem` | [isBigO_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isbigo-asympbound.md) | 1461 | `result-track:50579673974b7dcd00af6242acf1f456badb2561cdfa919f3a3bc34dd0389e27` |
| 87 | `theorem` | [isBigO_symm_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/isbigo-symm-asympbound.md) | 1473 | `result-track:832cda882f1f0718d68738a7e3dc9853183fc9b643c72ca76e310a10c50705fb` |
| 88 | `theorem` | [isTheta_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazzi.lean/declarations/istheta-asympbound.md) | 1484 | `result-track:991f822850147b7a14944c43a69e95f93f0c9830bce782a5e4a1b0e60af5e969` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c939b70d5befbdfe4cffe234c4a458e00ba72b1dfe02372f557105d51c3af3d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
