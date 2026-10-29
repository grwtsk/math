# Verification target: Akra Bazzi Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470ce2f8aaada3e7158edb7db4dcdb2e3543282e",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470ce2f8aaada3e7158edb7db4dcdb2e3543282e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.AkraBazzi.GrowsPolynomially` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AkraBazziRecurrence](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/akrabazzirecurrence.md) | 89 | `declaration-track:2dca45afc56a7c2ffb7406cb3713e42f88d702148ce16b31989df47f50e60da6` |
| 2 | `def` | [min_bi](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/min-bi.md) | 121 | `declaration-track:c12d8a48dc17988de4d20b18d2fde2b45e8462b2676adac5d70d3ec109a76e70` |
| 3 | `def` | [max_bi](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/max-bi.md) | 125 | `declaration-track:ce2e7b198b0f685a9744c6adba7bf90a4f89961f388150475582ba80e7327613` |
| 4 | `lemma` | [min_bi_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/min-bi-le.md) | 129 | `result-track:5c640915782d6708c45b9f7f9eb2169dc14ab40fa7edaa41e589c29609774189` |
| 5 | `lemma` | [max_bi_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/max-bi-le.md) | 133 | `result-track:b83c48031143e6bbd8f1b45c3bdf4de4f6094a39eebcf27e60caf05e2dcbb3a1` |
| 6 | `lemma` | [isLittleO_self_div_log_id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/islittleo-self-div-log-id.md) | 138 | `result-track:bb0483a7c63ad512cc9678c2114ddf8d0f1cc78064f328959a6eba5c2f95225f` |
| 7 | `lemma` | [dist_r_b'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/dist-r-b.md) | 158 | `result-track:ac231ff8606e0ee28482cf3f8b49f6065b7eb98dc221eda8deccc7650fb464f3` |
| 8 | `lemma` | [eventually_b_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-b-le-r.md) | 163 | `result-track:db711d74834fc5764936ffc0aa12c1adba90133d12e9c6233599a456ec9e59e1` |
| 9 | `lemma` | [eventually_r_le_b](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-r-le-b.md) | 175 | `result-track:e2e3daf366bb0b44ad25885af63be7e603f3f74e03b4598b645eb591c0cdab3e` |
| 10 | `lemma` | [eventually_r_lt_n](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-r-lt-n.md) | 182 | `result-track:958fafd2a977332828216cc7d63946422ef87d4ef584585ecfc41fafc758c901` |
| 11 | `lemma` | [eventually_bi_mul_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-bi-mul-le-r.md) | 186 | `result-track:0f11d835b7ce2b061ec8c652265b90c5e668e15091c29ce68a11986772806d47` |
| 12 | `lemma` | [bi_min_div_two_lt_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/bi-min-div-two-lt-one.md) | 202 | `result-track:60147e78c2918bb76c754fc60a8f3d7edfeff380fda424e0617aa6b16d0194ec` |
| 13 | `lemma` | [bi_min_div_two_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/bi-min-div-two-pos.md) | 207 | `result-track:ac026a17338f2f28d62d17c95d6fd280a309dc0123ab1f4ee0b76a600de7bcfc` |
| 14 | `lemma` | [exists_eventually_const_mul_le_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/exists-eventually-const-mul-le-r.md) | 209 | `result-track:db065f6452a2913cc33f2d729ecd374f568f84c3fe56c1caa5666dcac5a85ae2` |
| 15 | `lemma` | [eventually_r_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-r-ge.md) | 214 | `result-track:8bffdf946c0af578c91570ff98af15713f56014cb711fe0649085fa294465985` |
| 16 | `lemma` | [tendsto_atTop_r](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/tendsto-attop-r.md) | 226 | `result-track:d806bd1daf031e9a7c6743d20e47404a6254eb08dc61fd70aaec88faceeb229d` |
| 17 | `lemma` | [tendsto_atTop_r_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/tendsto-attop-r-real.md) | 233 | `result-track:8cd7a23e2e96e715b9f4a775085452e2f8a04341cbc207575c4ee5f21cb9e059` |
| 18 | `lemma` | [exists_eventually_r_le_const_mul](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/exists-eventually-r-le-const-mul.md) | 236 | `result-track:94adaa6bcb48e545d7f92f96dd5ed06d1945bda17461292694f18448451d1d57` |
| 19 | `lemma` | [eventually_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-r-pos.md) | 264 | `result-track:abcce8b303aea3b01ad03a26bb30abec34a64c85f6b82c2400f950fc197c62d9` |
| 20 | `lemma` | [eventually_log_b_mul_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-log-b-mul-pos.md) | 268 | `result-track:18ddd4b4053731ffa0ed16613396da41d91c3a7b85180e14d3af785b3aa2cb9f` |
| 21 | `lemma` | [T_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/t-pos.md) | 276 | `result-track:50a9c44f8938ac2c3e7bab1f7c807cb9f176861910f43e2be551e8ac1df31faa` |
| 22 | `lemma` | [T_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/t-nonneg.md) | 288 | `result-track:30d9eb4af1f632aae65e34cab9e2b6fff4282326433f0806d9c22bd67a05cf1a` |
| 23 | `def` | [smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/smoothingfn.md) | 309 | `declaration-track:99999349cbadee988d2da19e7348974d417d5de98da0accf8fbb1fc5b314de30` |
| 24 | `lemma` | [one_add_smoothingFn_le_two](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/one-add-smoothingfn-le-two.md) | 313 | `result-track:960081ba55be74eb66e03c19318fb01967a5373b22420d442927da2ea1020f4d` |
| 25 | `lemma` | [isLittleO_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/islittleo-smoothingfn-one.md) | 324 | `result-track:fb149fead160f2a1d77aa51eb679b99729659633e05b21fc0c0123c4903b62e1` |
| 26 | `lemma` | [isEquivalent_one_add_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isequivalent-one-add-smoothingfn-one.md) | 330 | `result-track:aad0276b9dee4029b78f93558f20a25c6d140e640f88ff58edc45b2f7e761b47` |
| 27 | `lemma` | [isEquivalent_one_sub_smoothingFn_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isequivalent-one-sub-smoothingfn-one.md) | 333 | `result-track:742347632b5cb518613581247ee0cb590f98f269d94ca288e9bd30ff6f78e25f` |
| 28 | `lemma` | [growsPolynomially_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/growspolynomially-one-sub-smoothingfn.md) | 336 | `result-track:0f2fed61e6d3603f5af6ecf815f48368ffb10af0fadb97c3d1dc7a73d579a4fd` |
| 29 | `lemma` | [growsPolynomially_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/growspolynomially-one-add-smoothingfn.md) | 339 | `result-track:daed7e03958fd108e20579592013c0b2531612270b8887620269ccf0b025f842` |
| 30 | `lemma` | [eventually_one_sub_smoothingFn_gt_const_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-gt-const-real.md) | 342 | `result-track:d5e0734f6cadd38537db3d941a17c0f52d1cde63282a5cd66b2aca10bec46bf7` |
| 31 | `lemma` | [eventually_one_sub_smoothingFn_gt_const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-gt-const.md) | 350 | `result-track:18a17693a5c9dce245eccbc2510622b035b4a765760bbcd78066ad12c53f42a2` |
| 32 | `lemma` | [eventually_one_sub_smoothingFn_pos_real](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-pos-real.md) | 355 | `result-track:8188c3f99288e4af8e2895f76eeee5b19325f05abb7c67a113b38daa8e31eb52` |
| 33 | `lemma` | [eventually_one_sub_smoothingFn_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-pos.md) | 358 | `result-track:c9816555809f48f295bc96a8414bc50369ad39ac10676f385a93eba82f5d677a` |
| 34 | `lemma` | [eventually_one_sub_smoothingFn_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-nonneg.md) | 361 | `result-track:bb04683da7916377400e9c767f36008167e1b7d9d1cdd38d5ada3b6f85365af3` |
| 35 | `lemma` | [eventually_one_sub_smoothingFn_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-sub-smoothingfn-r-pos.md) | 365 | `result-track:e70b5f86dffbe7fc1ab8994008293c11412a9b9e7134a7a6e8cf8d576da03ae7` |
| 36 | `lemma` | [differentiableAt_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/differentiableat-smoothingfn.md) | 370 | `result-track:a9a21c98aa80e4a588648acf00d46887f8b25debcb32f11eb9bfa8eb5a09297d` |
| 37 | `lemma` | [differentiableAt_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/differentiableat-one-sub-smoothingfn.md) | 377 | `result-track:c62b83ec3785768765359c6adcea32bac9010193bdac99ed6006a3e4903983fd` |
| 38 | `lemma` | [differentiableOn_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/differentiableon-one-sub-smoothingfn.md) | 381 | `result-track:5c782868b2c44ca3c7eccba2ab58f65afa7ccd02f3f212d91a59971e8aa8233c` |
| 39 | `lemma` | [differentiableAt_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/differentiableat-one-add-smoothingfn.md) | 385 | `result-track:1c5e9f28a60b23993e1f86de5b347c651a28bed6692e074d4382a5b09a07b353` |
| 40 | `lemma` | [differentiableOn_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/differentiableon-one-add-smoothingfn.md) | 389 | `result-track:c03c50925d99304973774327e7a443005c6a929281a54eacb019768149b73734` |
| 41 | `lemma` | [deriv_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/deriv-smoothingfn.md) | 392 | `result-track:9922a8e2f8053c21fb7e8b1ca0060311eac0dc892cfd06ec84a54c326e72e552` |
| 42 | `lemma` | [isLittleO_deriv_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/islittleo-deriv-smoothingfn.md) | 397 | `result-track:007bd8b667f7d40a6c0659991907e7551e6c1492666a986ed3fb99562e03495b` |
| 43 | `lemma` | [eventually_deriv_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-deriv-one-sub-smoothingfn.md) | 413 | `result-track:cb45f9d867100304848b414c81f780b1636cff22c02add34a3752c79fe85da3f` |
| 44 | `lemma` | [eventually_deriv_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-deriv-one-add-smoothingfn.md) | 421 | `result-track:6bc04351ef0809acbe8d3ce2ef065b02f16376c4c648867454ac2497202bb6a6` |
| 45 | `lemma` | [isLittleO_deriv_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/islittleo-deriv-one-sub-smoothingfn.md) | 429 | `result-track:db960b71159db860f683f72806b4d1ad0a1f7b650e0e4ef8fb2315661bfefbce` |
| 46 | `lemma` | [isLittleO_deriv_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/islittleo-deriv-one-add-smoothingfn.md) | 435 | `result-track:19213947a12b12bd8cdd771580f779c8869803599b422f40b4050c42b75235a1` |
| 47 | `lemma` | [eventually_one_add_smoothingFn_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-add-smoothingfn-pos.md) | 441 | `result-track:332857e377d2cae0ff84c8caca4d9a612cb7cf6e550b32bb5265efc5e7f54e66` |
| 48 | `lemma` | [eventually_one_add_smoothingFn_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-add-smoothingfn-r-pos.md) | 451 | `result-track:81b77412e2920a6752437b75f0cc5ac19b36ffd0a6121d03dd2f16ce538778b4` |
| 49 | `lemma` | [eventually_one_add_smoothingFn_nonneg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-one-add-smoothingfn-nonneg.md) | 455 | `result-track:2438e0d352891059035133969abd59824b2750b89b6e37d2ea418e3702c25e7e` |
| 50 | `lemma` | [strictAntiOn_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/strictantion-smoothingfn.md) | 458 | `result-track:38b1c11738f15b8c1b76b47b8604e4838a35589174e11c3118697c4f6887a1b7` |
| 51 | `lemma` | [strictMonoOn_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/strictmonoon-one-sub-smoothingfn.md) | 465 | `result-track:6545fb4d401e827da1c4652d9c8d1dfcd80d1d05a7f95b228b2d9d0e6e9ca0a6` |
| 52 | `lemma` | [strictAntiOn_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/strictantion-one-add-smoothingfn.md) | 470 | `result-track:1fb50c867314c33186fc7ccbdf87c218cfe46e112f802aaba7ce954de6ba3668` |
| 53 | `lemma` | [isEquivalent_smoothingFn_sub_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isequivalent-smoothingfn-sub-self.md) | 476 | `result-track:45b0a3361eb84329ec74d81c50a5618cc1e903a57dbbf8a5e5c70008882e2eb2` |
| 54 | `lemma` | [isTheta_smoothingFn_sub_self](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/istheta-smoothingfn-sub-self.md) | 499 | `result-track:5c39b2c6fc7adbc7ad1aac184fad78b58d4f3012ae50e2041c0b312a32f73f24` |
| 55 | `lemma` | [continuous_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/continuous-sumcoeffsexp.md) | 522 | `result-track:f88e496b4f1916ca1bc675540659cfa52cb1e32669e2b77c06fcac89b174e568` |
| 56 | `lemma` | [strictAnti_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/strictanti-sumcoeffsexp.md) | 526 | `result-track:6ed93d275f48d39cf1dfff2c3b1abd1336b76de702f628fca492470913df5dd6` |
| 57 | `lemma` | [tendsto_zero_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/tendsto-zero-sumcoeffsexp.md) | 532 | `result-track:74ef2a820051b7050d7ddc06f3cd87c5b6f39f25c3b8b52bef0f31e689345a79` |
| 58 | `lemma` | [tendsto_atTop_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/tendsto-attop-sumcoeffsexp.md) | 541 | `result-track:5f6efdcd1794da6bcc9d1351b8165ca1d631aa7e3d241009257f4cd2fb2f824b` |
| 59 | `lemma` | [one_mem_range_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/one-mem-range-sumcoeffsexp.md) | 551 | `result-track:7a1d52499400a53ec85c2dd621d0e4cb983874b57b4dfe02aa463cb8b25da150` |
| 60 | `lemma` | [injective_sumCoeffsExp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/injective-sumcoeffsexp.md) | 559 | `result-track:2b400ed5894c4f27816ba164d9741148def492a008866462046676f29b1b527c` |
| 61 | `lemma` | [sumCoeffsExp_p_eq_one](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/sumcoeffsexp-p-eq-one.md) | 570 | `result-track:abb5f12ddf9f7bea0a6307fca7b7ebd89ec9187154dcef9768612246080979d7` |
| 62 | `def` | [sumTransform](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/sumtransform.md) | 586 | `declaration-track:bbd91be01deef93bd8e76ce24a5a2bdb62e36471faf4ceeda9cd49f6fc16dcb5` |
| 63 | `lemma` | [sumTransform_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/sumtransform-def.md) | 589 | `result-track:cc19e1d8aa056bbda55b0ba38ae58d412625e36c684be820bcd312a87af1aeb2` |
| 64 | `def` | [asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/asympbound.md) | 596 | `declaration-track:b0074f589584e7c1d3b56515a517618c637dc255e80a2e3e95ea66eb1f8813e3` |
| 65 | `lemma` | [asympBound_def](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/asympbound-def-source-edition-2.md) | 598 | `result-track:a9c5cb2dc958e48af638509787f5f23980406564dd5c455d67b4578e2cd22c33` |
| 66 | `lemma` | [asympBound_def'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/asympbound-def.md) | 603 | `result-track:24b74639d45b26ce8745e91cc1e2f8216db314414c167afdc28adc0387c25237` |
| 67 | `lemma` | [asympBound_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/asympbound-pos.md) | 610 | `result-track:c733857a7d0adb41365b656b02f474f0d8fe0a8f58761f0c93c65a324e7c7241` |
| 68 | `lemma` | [eventually_asympBound_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-asympbound-pos.md) | 620 | `result-track:939af2339357c6886c94b969d8b7c2666b5624176439848522e5b15bf5946cb0` |
| 69 | `lemma` | [eventually_asympBound_r_pos](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-asympbound-r-pos.md) | 624 | `result-track:807606f4e9f339b826edd20feff8cc1dfce0f1c6011ac63a9adec833f3550fe3` |
| 70 | `lemma` | [eventually_atTop_sumTransform_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-attop-sumtransform-le.md) | 628 | `result-track:9c7b0f3d456541794a00db96f6ab05f9eb77d85e8d5a1a10b6b6832d9a290d35` |
| 71 | `lemma` | [eventually_atTop_sumTransform_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-attop-sumtransform-ge.md) | 705 | `result-track:3608862951a22921bbcb448c26df242393cbdd56b4041407f3cb3b85d87efca9` |
| 72 | `lemma` | [eventually_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 804 | `result-track:b5c2841d9c63e99ef4b3297975e3efbee7e95c1655baa314f6bdcf98312d7a7a` |
| 73 | `lemma` | [eventually_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/eventually-deriv-rpow-p-mul-one-add-smoothingfn.md) | 821 | `result-track:b88557148f79027717a5fbbf2298d0a73e449fba3a395bd8757114b771c6b6cc` |
| 74 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isequivalent-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 838 | `result-track:ae7a65eb71fa5cc8f79f64803aa06ec26338fc7caf02b4120d34a0e2e7d1957b` |
| 75 | `lemma` | [isEquivalent_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isequivalent-deriv-rpow-p-mul-one-add-smoothingfn.md) | 862 | `result-track:ca2352395a4c546518517769db99011df0e7bf430db4f1d38a1fbc182815c0c8` |
| 76 | `lemma` | [isTheta_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/istheta-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 886 | `result-track:c5bad268b29b64d189fdeb738b39774cee256d431b1d04a718df04d862819cf2` |
| 77 | `lemma` | [isTheta_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/istheta-deriv-rpow-p-mul-one-add-smoothingfn.md) | 894 | `result-track:fe2169bc23d90975b63ea3aac18507ed469cdfb6943924f30be370b096b4a1d7` |
| 78 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_sub_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-sub-smoothingfn.md) | 902 | `result-track:415099df75e7817645e6b20355a00b13674f8eead4fcd87616c26db76e7d037e` |
| 79 | `lemma` | [growsPolynomially_deriv_rpow_p_mul_one_add_smoothingFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/growspolynomially-deriv-rpow-p-mul-one-add-smoothingfn.md) | 924 | `result-track:5e1ef7bc4e315f53776382b5a6fcf6b9c7aa831c90179a4720dd250756d508ec` |
| 80 | `lemma` | [isBigO_apply_r_sub_b](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isbigo-apply-r-sub-b.md) | 949 | `result-track:c20f1dc964942f5bf71d92845c6aca69a5fda54839c10a6705c1986a6e7a5574` |
| 81 | `lemma` | [rpow_p_mul_one_sub_smoothingFn_le](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/rpow-p-mul-one-sub-smoothingfn-le.md) | 982 | `result-track:862d1d839e59c87f4cfa33306764d46f39fc91f86a1ac39c292ccc110a095502` |
| 82 | `lemma` | [rpow_p_mul_one_add_smoothingFn_ge](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/rpow-p-mul-one-add-smoothingfn-ge.md) | 1077 | `result-track:8b9863d8b5b3abde878a4c4bdbd99a4b753cd8f5de738538c436c4cfdf1f51ce` |
| 83 | `lemma` | [base_nonempty](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/base-nonempty.md) | 1179 | `result-track:1b5c9aade1bdd02db3d5ad6007406d33ff99b449dccd51f0f4023a0e3e046091` |
| 84 | `lemma` | [T_isBigO_smoothingFn_mul_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/t-isbigo-smoothingfn-mul-asympbound.md) | 1191 | `result-track:f78ff2c765fcc1a0efd08b002878b85cc9100f6656dbb631703c99b076cd2a11` |
| 85 | `lemma` | [smoothingFn_mul_asympBound_isBigO_T](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/smoothingfn-mul-asympbound-isbigo-t.md) | 1324 | `result-track:7b2d202ecab44afbf4822daef163d36d416303b0673c0f76b6908e0ec168a397` |
| 86 | `theorem` | [isBigO_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isbigo-asympbound.md) | 1469 | `result-track:9e6696ad2cfee7505a4da3094d1572fbf72714ac12968c0c630c9b96e2754100` |
| 87 | `theorem` | [isBigO_symm_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/isbigo-symm-asympbound.md) | 1481 | `result-track:b91c892c4cf91f55ebf5cd12d44d6cf67f71d6d18fed09cccc26a8490de000bc` |
| 88 | `theorem` | [isTheta_asympBound](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/AkraBazziNamespaced.lean/declarations/istheta-asympbound.md) | 1492 | `result-track:90c9d932dca80f85a146741cc5c53c4a245efd69cf046acc68489f32940e20e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0bbeadd58cc02e09d5097a928af74c739b9ac922507dd9d9a5531f1eddc2cc5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variant63ab822e1cd0c347eb485b039c341f8b10bdc831ec03617c8ee072a1d4b22403.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
