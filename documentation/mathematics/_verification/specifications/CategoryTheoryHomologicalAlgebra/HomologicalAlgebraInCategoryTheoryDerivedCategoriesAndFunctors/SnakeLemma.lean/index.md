# Verification target: Snake Lemma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fc6b896808d7b0e4e57a75e81126ec356fb2550",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fc6b896808d7b0e4e57a75e81126ec356fb2550`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ExactSequence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Refinements` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SnakeInput](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/snakeinput.md) | 60 | `declaration-track:a9500980cd84dd14fa9d50fe8692c87997606febf785640ddb49aab9c039e4a7` |
| 2 | `def` | [op](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/op.md) | 99 | `declaration-track:2bd524ae79859a7291a68c4a6cc4d89884aa633166dc2af5bc4f0896919ea4f9` |
| 3 | `lemma` | [w₀₂_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w-source-edition-2.md) | 118 | `result-track:5daaaafb82ff8c6585b9269e36209d8f26cd2d5a9078bb2263e90fc558566b62` |
| 4 | `lemma` | [w₀₂_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w.md) | 120 | `result-track:30a24583f62efa9775cbc56569dbb8c3864a12e53242875c172005032a60061c` |
| 5 | `lemma` | [w₀₂_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w-source-edition-6.md) | 122 | `result-track:de1b3b109c88896eee6f00c3b40c2bf3fbc1d6cd4246e61bed9636e3f6410ebd` |
| 6 | `lemma` | [w₁₃_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w-source-edition-5.md) | 124 | `result-track:9f029fe429b55b140e08b01f5224528493528c75b044192720a93707766c3f3f` |
| 7 | `lemma` | [w₁₃_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w-source-edition-3.md) | 126 | `result-track:635d7fd0a99b77c44b2cd07f081c2ecedb08b7425654b639c02e2b4d48126189` |
| 8 | `lemma` | [w₁₃_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/w-source-edition-4.md) | 128 | `result-track:8544887da6466342c1ae4ba02f97ecee2fab7a5c59c3bddd47ef9eca9d730cbc` |
| 9 | `def` | [h₀τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h-source-edition-5.md) | 132 | `declaration-track:a6a1a0ce78500b3f351e6e497a1de6714897c691028bff937fe8327281d0df8b` |
| 10 | `def` | [h₀τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h-source-edition-4.md) | 136 | `declaration-track:989a697eba36414ee3df6ab60d550bb9598fd5970e9c35422237ecf9ca0b654f` |
| 11 | `def` | [h₀τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h-source-edition-2.md) | 140 | `declaration-track:4855a40a47541814b50f5daafa17c0cd6333e6829a3f1f8d3573d7000d8e816c` |
| 12 | `instance` | [mono_v₀₁_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/mono-v.md) | 143 | `declaration-track:178902fce5398294ac19f62267cf2b073ce461f5a442238c3dfb03d0713fa6c7` |
| 13 | `instance` | [mono_v₀₁_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/mono-v-source-edition-2.md) | 144 | `declaration-track:7af0a6c1c38eb883cb20c6dd01475565ef62d52a6532fd628be6d390e645be73` |
| 14 | `instance` | [mono_v₀₁_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/mono-v-source-edition-3.md) | 145 | `declaration-track:8767c177752c3a70f41d1f1c3f772f2e4dec5c8716315d84cd94768e119eefb7` |
| 15 | `lemma` | [exact_C₁_up](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-up-source-edition-2.md) | 148 | `result-track:70d8d7bf8731da2e0e316eeaf961bbc29ebd976e746a2b395da67640a57a1fa5` |
| 16 | `lemma` | [exact_C₂_up](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-up.md) | 153 | `result-track:5e65631882bf50389554fbf512563bad8e4543c3472e7e71a3b62a5f0345c07e` |
| 17 | `lemma` | [exact_C₃_up](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-up-source-edition-3.md) | 158 | `result-track:c5de66e18fec28a655fa19799304ba2fa07f495b8d371e154fc1a8f51cb515c9` |
| 18 | `instance` | [mono_L₀_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/mono-l-f.md) | 162 | `declaration-track:c3a7c5976149a641cd05a5b0c80910f1855bfaed157d9b978c98a4d71de927e9` |
| 19 | `def` | [h₃τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h-source-edition-6.md) | 169 | `declaration-track:b2544d185cdb5f8a5e53b5eab84c2b5e262c43d2739a80d426a4d52b7819ef68` |
| 20 | `def` | [h₃τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h.md) | 173 | `declaration-track:068c24f88e864fd9668f1dcd3514da207b1ca8195c71bd529b2d0d0ed94adb1d` |
| 21 | `def` | [h₃τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/h-source-edition-3.md) | 177 | `declaration-track:5d058de71a458431c59e5654dd77cab0cee1661bd41710588df9a911100e2f00` |
| 22 | `instance` | [epi_v₂₃_τ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/epi-v.md) | 180 | `declaration-track:185c4bf76e0357464abcf53b61e88b53eecc614a8f0e85440ebb367fc850dfb0` |
| 23 | `instance` | [epi_v₂₃_τ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/epi-v-source-edition-3.md) | 181 | `declaration-track:ee2f70f373a74bbb2253f698f4f81fec2e0351a0d083589709eb9fecb513dd82` |
| 24 | `instance` | [epi_v₂₃_τ₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/epi-v-source-edition-2.md) | 182 | `declaration-track:2a531b27fcc545441bba92b5afe8581b8fa278f2da300b9e65f599dcc0e134a2` |
| 25 | `lemma` | [exact_C₁_down](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-down-source-edition-2.md) | 185 | `result-track:b0d5e1e4f7ed9af7c9fef997089f4e45860a2a1d2f8bef62f2f7695e833b65aa` |
| 26 | `lemma` | [exact_C₂_down](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-down-source-edition-3.md) | 190 | `result-track:f5f5d2cd3fe179e764f5eba57ec8e838adc0913217cd4b47f8df5d997625d85a` |
| 27 | `lemma` | [exact_C₃_down](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/exact-c-down.md) | 195 | `result-track:02784c586e56138e87cddb448e6e9488cb285904b11ec0c774f61ee2f9b5f38c` |
| 28 | `instance` | [epi_L₃_g](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/epi-l-g.md) | 199 | `declaration-track:f7ad759d10fe3cf479332a11f1a8e5075c6715e74782e7c710d2d159af837652` |
| 29 | `lemma` | [L₀_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-exact-source-edition-2.md) | 205 | `result-track:a68edb716544997f9687b223e99e45bdfc284bf1d41aed478bb55d9edecb713b` |
| 30 | `lemma` | [L₃_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-exact-source-edition-4.md) | 217 | `result-track:c925adf947a5523b08e533d3a16b71b902e4f967a5269eeaaa17123933da5fef` |
| 31 | `def` | [P](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/p.md) | 221 | `declaration-track:25eb9d381ab8e520c2bc76b5bf142c9f302a73aa7324b9d28c7a8dac464bc3b8` |
| 32 | `def` | [φ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/anonymous.md) | 224 | `declaration-track:35d17483cb7855be5af8b68784a1afdbf52ce3972b886a92983afa68b26ccffb` |
| 33 | `lemma` | [lift_φ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/lift.md) | 227 | `result-track:0aaba4747e1ac613ebc3394cb6390e3d37b99909bb86890173310f619b23f787` |
| 34 | `def` | [φ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/anonymous-source-edition-3.md) | 232 | `declaration-track:a7a4263f20576dd6dbf51625d2955f37e173e0d542ab09b271600341ba0b7afc` |
| 35 | `lemma` | [φ₁_L₂_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-f.md) | 236 | `result-track:067875e66e3839a6280366e6019b3d4ab6a75f51b58080d86247837835605dec` |
| 36 | `def` | [L₀'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-source-edition-3.md) | 239 | `declaration-track:ed82301060f548aaed31053d8753402fccf2e4b3dc95a262114330c4a3912f89` |
| 37 | `lemma` | [L₁_f_φ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-f-source-edition-2.md) | 247 | `result-track:bfea68445f4b5dd40ac91e006ab636fce93b0a64858cd33ce2766babe702d5c7` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/instance-source-edition-2.md) | 252 | `declaration-track:b2a10e8f6a4cf964697ca656957f8baea2cfdaee7082c6dc4f0e93f9cbdae294` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/instance.md) | 254 | `declaration-track:a0e9414b9a6606c1d34218b54e3a039b127e3cd95adbc3da5163f1365135db21` |
| 40 | `lemma` | [L₀'_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-exact.md) | 257 | `result-track:7bc27779ddb97e9ebc5b990f7345fb7d84e624182c2ec594a229b67486e76486` |
| 41 | `def` | [δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/anonymous-source-edition-2.md) | 266 | `declaration-track:9cd8d524c04ef0682792d5168f45333270a2bca08b60afb8861aabda518a77b3` |
| 42 | `lemma` | [snd_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/snd.md) | 270 | `result-track:e24a57952b836e641e026da42081ae7c17c7b2b7c3702d71ff5c913c3f80f2eb` |
| 43 | `def` | [P'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/p-source-edition-2.md) | 274 | `declaration-track:a6d908dbc1a716fc0510a4ba8b0dc2dbf67081e74312c5065cae44549cd386bf` |
| 44 | `lemma` | [snd_δ_inr](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/snd-inr.md) | 276 | `result-track:3d218d9a922c4afaab5b9c6f720cddfed7a72e0036f7ebd37a2bbf5054b32e8b` |
| 45 | `def` | [L₀X₂ToP](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-x-top.md) | 282 | `declaration-track:0acdb9db3d0106c0737ef477a8c599adafd33049d0266fa58941e3fe3fb02365` |
| 46 | `lemma` | [L₀X₂ToP_comp_pullback_snd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-x-top-comp-pullback-snd.md) | 285 | `result-track:860995b63a08590257492ee25d4566eaad56cafea4b7a9cec4e88344056450b0` |
| 47 | `lemma` | [L₀X₂ToP_comp_φ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-x-top-comp.md) | 288 | `result-track:774959ff9b5cc7ef5787f544f76ad9384a5fd167560752413fa63b35d0e668d4` |
| 48 | `lemma` | [L₀_g_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-g.md) | 292 | `result-track:c1b914b3d63662a523bf88f8fbcefbd338875043b5236dcb1f3406c2708bc07a` |
| 49 | `lemma` | [δ_L₃_f](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-f-source-edition-3.md) | 297 | `result-track:c75e34ac52795cf3ca6155b82c0199af7949b85b884dcbf0e8c3022fd72edc01` |
| 50 | `def` | [L₁'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-source-edition-2.md) | 304 | `declaration-track:b8ab102f7c181f39aa498cc61ab8da884e64689311df31d8e7ae10ce56200e6a` |
| 51 | `def` | [L₂'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l.md) | 308 | `declaration-track:6927eef5dea4e28ba34e089cacbdb043111fdb65fed1da4ef7b2328d0e0a6718` |
| 52 | `lemma` | [L₁'_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-exact-source-edition-5.md) | 311 | `result-track:fadd4335474c1db3d4ee47a8d6b564824a1ff8af52c5ff7bf9bb12f8713054ba` |
| 53 | `def` | [PIsoUnopOpP'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/pisounopopp.md) | 333 | `declaration-track:53c3438ca593de7b0f70f9d4a7ce48581b0c7fd0517df6bf0b5a72ab3b295a9f` |
| 54 | `def` | [P'IsoUnopOpP](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/p-isounopopp.md) | 336 | `declaration-track:c9af745b69147c1d9bb1afaaac5176e0d679b8d1d014ebd500a835f3e9986850` |
| 55 | `lemma` | [op_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/op-source-edition-2.md) | 338 | `result-track:c2164a47b91222a5f92a8824da827bc345c969ee6a566f57c0eb1cd22b5f026c` |
| 56 | `def` | [L₂'OpIso](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-opiso.md) | 349 | `declaration-track:b0bbfd3ae832a5ea50f5ca37e693299236f52be35b8e9f3eee389906f2618d83` |
| 57 | `lemma` | [L₂'_exact](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/l-exact-source-edition-3.md) | 354 | `result-track:a804114d09b0487af855753891a3c92d6b7fef05af18af431a7f15d5688ad8c5` |
| 58 | `abbrev` | [composableArrows](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/composablearrows.md) | 360 | `declaration-track:15504be8c4f35eded54ae6a84fb0036a834b52477fc8dcb4b95514899f884a1f` |
| 59 | `lemma` | [snake_lemma](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/snake-lemma.md) | 366 | `result-track:d26093c5722dbd6c12947fd2698a2f8bc53938f965dc30f2dc10d924d8031460` |
| 60 | `lemma` | [δ_eq](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/eq.md) | 372 | `result-track:05144460fdad14f8e86657ac317e23f0289b14d3e92a87cd2fc7e4bb555304f2` |
| 61 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/hom.md) | 386 | `declaration-track:bbda879530dd4e0aa5fcd472fc3771bccdd66f3e2341a8cb837299a4895c7507` |
| 62 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/id.md) | 405 | `declaration-track:914e2fbafe57b16cb9baabcd1c8d94c2c774c178bd45d241939b23007b29e014` |
| 63 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/comp.md) | 415 | `declaration-track:bcc8c5b38120e7efe973d9501775ddcb953ef41e5e3dd15dfc307b0ece891c97` |
| 64 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/instance-source-edition-3.md) | 426 | `declaration-track:bea872578ae834b0e5236ffb284c0ecbbda727dc394bd42f341b45bf549dc5fb` |
| 65 | `lemma` | [id_f₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/id-f-source-edition-2.md) | 433 | `result-track:1fefdac6bfc929a6739b2d970ec1c9c9b34b0e3c931754d44214f860010a208b` |
| 66 | `lemma` | [id_f₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/id-f-source-edition-4.md) | 434 | `result-track:d8f19a42d9ddb3c4dafc9838154393a9be4249e889de187b61d4d62f19850f18` |
| 67 | `lemma` | [id_f₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/id-f-source-edition-3.md) | 435 | `result-track:4883397dc58dfe14142862194e35e988ec820fc065b2cc9d8f46c9dcd7351393` |
| 68 | `lemma` | [id_f₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/id-f.md) | 436 | `result-track:0507f327f8512cee12df279bf3f6f85c0cf90de97a12371eb51941a0a15e571b` |
| 69 | `lemma` | [comp_f₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/comp-f-source-edition-3.md) | 442 | `result-track:59272739f88bfbebdf85fff4a405e185c45d1ebf8af37f5f6af1b6913a0388cd` |
| 70 | `lemma` | [comp_f₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/comp-f-source-edition-2.md) | 443 | `result-track:3f1792d2fe51dad47f829ad15002759d90649ccb86dd1f2713aab601246fa1c4` |
| 71 | `lemma` | [comp_f₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/comp-f-source-edition-4.md) | 444 | `result-track:9f1dc616629c42afd58b484de1ee6e602501b409092e0fd4816edc6e10238359` |
| 72 | `lemma` | [comp_f₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/comp-f.md) | 445 | `result-track:2f006c71251f28167bbcdb3744a59b954fb6a6486295cad0c792b2b786dab765` |
| 73 | `def` | [functorL₀](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl-source-edition-3.md) | 451 | `declaration-track:45145f821f9a1a415789fa0efebc88ee568613ab3d386097b03c14d302fa2a31` |
| 74 | `def` | [functorL₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl-source-edition-2.md) | 457 | `declaration-track:3565f60c94ad6bc809856313e112ff914cb649d5b1ec994f70af048647a3b473` |
| 75 | `def` | [functorL₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl-source-edition-4.md) | 463 | `declaration-track:7202aae8bab392026332eee869c29935c8bde439b19b40f1af736e1307ac5486` |
| 76 | `def` | [functorL₃](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl-source-edition-6.md) | 469 | `declaration-track:c3f588f9f5c02f8a481d505f06940ed7cba9432cfb9716dca0cf6019eba82a39` |
| 77 | `def` | [functorP](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorp.md) | 476 | `declaration-track:243b12168313898f37256201f69bc00fbf1fdb40a66cbe34ac4a20b429963e85` |
| 78 | `lemma` | [naturality_φ₂](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/naturality-source-edition-2.md) | 484 | `result-track:3b7d9866b11b75de9cb9edbca1143b07dbd723f6342ab574f0f79af61a551e40` |
| 79 | `lemma` | [naturality_φ₁](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/naturality.md) | 489 | `result-track:1e5c4a0b7c7cf30e3dd469c5e3c31a67836c9f2c662ac66cb419dad69608a50d` |
| 80 | `lemma` | [naturality_δ](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/naturality-source-edition-3.md) | 493 | `result-track:97d3c7eb7d9a329848f1fbfe8386f42b4c4c23490d154abfa3f575a94fe129c9` |
| 81 | `def` | [functorL₁'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl.md) | 500 | `declaration-track:1649fc10f94e6950285733d19ab5e817014a0489c510a4a0fd962eb8f862a6d8` |
| 82 | `def` | [functorL₂'](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/functorl-source-edition-5.md) | 512 | `declaration-track:c1278e9ee8f1914f5b7d4441be67ecb2a72722fcac83ec1a97e6f6c2272ff66a` |
| 83 | `def` | [composableArrowsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SnakeLemma.lean/declarations/composablearrowsfunctor.md) | 524 | `declaration-track:41693f1387e93f82abab057452706b33260a2c9a586520b258a5064c276f3a9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e743b4e1e11760820ab9c9b7ed7425fba561b3018581a4b30092fd3860aa0483 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
