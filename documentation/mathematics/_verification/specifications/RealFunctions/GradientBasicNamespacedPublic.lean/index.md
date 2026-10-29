# Verification target: Gradient Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c6bd287fbdc4988f8d71fa1f39f8d0b7cad0f39",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/index.md) · [Full source](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c6bd287fbdc4988f8d71fa1f39f8d0b7cad0f39`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter.md) | 67 | `declaration-track:484f5864c03b6beb173b33bbf9775d421350348627a7aee00a0bbf66ca35131a` |
| 2 | `def` | [HasGradientWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat.md) | 72 | `declaration-track:33d4f8321bf7c119eb5a99d023dac46e0fa7ca59d41e14583d8980d87408d66e` |
| 3 | `def` | [HasGradientAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat.md) | 77 | `declaration-track:a4f4de757f141f1d05b29a805d610b95b3fda0e9ad10d2a4dee80d18fcdbc9dd` |
| 4 | `def` | [gradientWithin](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradientwithin.md) | 84 | `declaration-track:4433ec7c982bafdcf28c7228c9a6edb55ae2f2fc4d00e113a3b2740d1b7f429d` |
| 5 | `def` | [gradient](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient.md) | 92 | `declaration-track:674169f4c03cde5e381238d4c1cc98cc2f01f612c982c242142e307ed1289168` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-iff-hasfderivwithinat.md) | 104 | `result-track:968cf3f73232616e33dab45e97e22d4197685966b44b87990a58db227766d618` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasfderivwithinat-iff-hasgradientwithinat.md) | 108 | `result-track:c47639d8de249b0a3dfa1134b1295e3c59c72cd473da7616ebd282c25e13ad8c` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-iff-hasfderivat.md) | 112 | `result-track:d1ccdf46d232fd06dc618caa2cd749306d6d37a6f424d1154051281279d9018e` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasfderivat-iff-hasgradientat.md) | 116 | `result-track:31c0f02aef149af239db89bcd2d182ab4d02613cde11e5d2612ebfa73a296198` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-eq-zero-of-not-differentiableat.md) | 128 | `result-track:e018d46b1215abf025ea74b1293961e1aa38cf8166eb2fdf82613558d85eded1` |
| 11 | `lemma` | [toDual_gradientWithin](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/todual-gradientwithin.md) | 132 | `result-track:ad66e53b0be2bfb5f3597562af6cec8212b544fbcc55f6574a2403635bec5af6` |
| 12 | `lemma` | [toDual_gradient](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/todual-gradient.md) | 137 | `result-track:9b10ca57525be206be342620529ddf3709ee6d08778f1a0139888b78fdad9435` |
| 13 | `lemma` | [toDual_comp_gradientWithin](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/todual-comp-gradientwithin.md) | 141 | `result-track:c6cc7fcbe6fca2076859fa18cbf792e54cca9fa8c57c160bcb814227f16e8270` |
| 14 | `lemma` | [toDual_comp_gradient](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/todual-comp-gradient.md) | 146 | `result-track:04f6b632108d4c12e216f773bc63f0b425bd9f384e714fd0cab5fa280fa3decc` |
| 15 | `theorem` | [HasGradientAt.unique](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-unique.md) | 149 | `result-track:51c771eda330fed95a798f3f40e9e35f88f293033a2deb541f955212b4c5f97c` |
| 16 | `theorem` | [DifferentiableAt.hasGradientAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/differentiableat-hasgradientat.md) | 154 | `result-track:b2a8b052373fb8c17ad9145743ce4cf73dd165431c6800531412c73fcb0b07f5` |
| 17 | `theorem` | [HasGradientAt.differentiableAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-differentiableat.md) | 158 | `result-track:4521e10b2192fc87fbc59e5edb93eb1d55f0b5a323a0e2410cb24ec93f0889ce` |
| 18 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/differentiablewithinat-hasgradientwithinat.md) | 162 | `result-track:df0df60f759d5fbbfae3fcb3e06ac42aa64c270955877f3fbcdc562f9d876a28` |
| 19 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-differentiablewithinat.md) | 166 | `result-track:f258c75d386758aa89a84f1fa562d4469037ebcd86ab77ad607421468790bb5e` |
| 20 | `theorem` | [hasGradientWithinAt_univ](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-univ.md) | 171 | `result-track:0a1f4bd9cf76ce83e094fe3d1490f5f2f4536f8a5592836344fa25fdeb0964c5` |
| 21 | `lemma` | [gradientWithin_univ](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradientwithin-univ.md) | 176 | `result-track:8de8321a532fdbc3dab3c026ef3b4b97d342628f59f927da351545c13a0280ae` |
| 22 | `theorem` | [DifferentiableOn.hasGradientAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/differentiableon-hasgradientat.md) | 179 | `result-track:3489c900f4c8c454cac46d06a3a68c7838608e389302c080c0fd208484aa726b` |
| 23 | `theorem` | [HasGradientAt.gradient](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-gradient.md) | 183 | `result-track:32c34ca73ce2cbdbfe41153a3cb8d913999559f905b67667a35e8499724983c0` |
| 24 | `theorem` | [gradient_eq](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-eq.md) | 186 | `result-track:4bc4057c72d3403e2b85a68c5456947ccd17c54d64628efb64f48340b2d4692b` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-hasderivatfilter-source-edition-2.md) | 193 | `result-track:ea7e118af6599bfcec819cd6986be285a451bb3441d8ed47001463b30656a969` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasderivatfilter-hasgradientatfilter-source-edition-2.md) | 197 | `result-track:7b431ce4b557ffc4da7884dce769dfdf2f8a048f098735ddc3a415113b874583` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-hasderivat.md) | 203 | `result-track:b0c5815ee5cb084a287360e7b699f1184d2041621bd6ae869cc146654317e672` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasderivat-hasgradientat-source-edition-2.md) | 207 | `result-track:3441586f557d9cdc2747285fb7463f0b2d12e236abb8146ca0757ea2f64480ff` |
| 29 | `theorem` | [gradient_eq_deriv](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-eq-deriv-source-edition-2.md) | 211 | `result-track:25fb0a807d6e2d08661b2dcff306ef6df99721aac07322e2108a07b7c73c24c8` |
| 30 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-hasderivatfilter.md) | 222 | `result-track:5f0ffd00949a09ac61c8c8c461154d910e67e23a7b2a38eba5dafaf76381678d` |
| 31 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasderivatfilter-hasgradientatfilter.md) | 225 | `result-track:1ae792fc3c2f58647da35ad639ef056237365ea29b1d7cd30633679cf7b1c47a` |
| 32 | `theorem` | [HasGradientAt.hasDerivAt'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-hasderivat-source-edition-2.md) | 228 | `result-track:f0ec5e30e233a3f5d5c6974e5034e2345b179cb30f29cf63f0491c032750ae2f` |
| 33 | `theorem` | [HasDerivAt.hasGradientAt'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasderivat-hasgradientat.md) | 231 | `result-track:26e7982e8626f9e53bc4ca19a156118980c641c0e661faf2296c5b90656bf2f1` |
| 34 | `theorem` | [gradient_eq_deriv'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-eq-deriv.md) | 234 | `result-track:24970fcd3ffa84f73c6c3725b1730857b08f06ce041e2e2dcc793d011021982d` |
| 35 | `theorem` | [hasGradientAtFilter_iff_isLittleO](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-iff-islittleo.md) | 242 | `result-track:d36adaa01edfc30722eca6de29df9c7a22f19e7edebc3f6316a4f1f74a3de3cc` |
| 36 | `theorem` | [hasGradientWithinAt_iff_isLittleO](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-iff-islittleo.md) | 247 | `result-track:cc16f4b15ecb9d96f5ace8154c8a1d228c667bffab601dae80b2c735fa18d905` |
| 37 | `theorem` | [hasGradientWithinAt_iff_tendsto](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-iff-tendsto.md) | 252 | `result-track:fef2043f91bc1126a42f2ea332a38495b48d8a2c954853ee9af3b059f6e1250b` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-iff-islittleo.md) | 257 | `result-track:11ca0a79650248031854f95e3d3322c5fe84b10931ffece9c3cc14cffa94940b` |
| 39 | `theorem` | [hasGradientAt_iff_tendsto](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-iff-tendsto.md) | 261 | `result-track:fa18d5838fda35cff3f9a9e4395514cf886463dfe59864c303ee32a5933e7eeb` |
| 40 | `theorem` | [HasGradientAtFilter.isBigO_sub](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-isbigo-sub.md) | 266 | `result-track:1350afc0c17fa6adf5b5835d484d05e31ca85565979c2905f65f9ec81472112e` |
| 41 | `theorem` | [hasGradientWithinAt_congr_set'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-set-source-edition-2.md) | 270 | `result-track:fce9a5c651d5a3a1bc5f2d53d13b59fbf27589e04835e217fa00396aaa0e5815` |
| 42 | `theorem` | [hasGradientWithinAt_congr_set](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-set.md) | 274 | `result-track:e083726305d3fefad97a8e7bf3c7d3d561cd0cdb563c19a92e800e83b5b67150` |
| 43 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-iff-islittleo-nhds-zero.md) | 278 | `result-track:457e83e89993066ed6d1e740b0a871519ac0897e74474d410f995d30bad0cea1` |
| 44 | `lemma` | [HasGradientWithinAt.fderivWithin_apply](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-fderivwithin-apply.md) | 286 | `result-track:9b0ae29e657c155b18c865c7fc400529dc6f5006e11af4c29d5af7eb6fca2e66` |
| 45 | `lemma` | [HasGradientAt.fderiv_apply](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-fderiv-apply.md) | 291 | `result-track:891a97bb0702ddc43aa8b237781864d40c964be751225261afc26929e83c5ef0` |
| 46 | `lemma` | [inner_gradientWithin_left](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/inner-gradientwithin-left.md) | 295 | `result-track:f81f93ea3485e9b3aaa7f757ff0d4ee86cd3ff5e3368c6d2e56972a9d4a98d93` |
| 47 | `lemma` | [inner_gradient_left](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/inner-gradient-left.md) | 301 | `result-track:e4bf1c9f1b344e14380c90442b4a55707026a883a4fcc77fca152e0410dbd4e0` |
| 48 | `lemma` | [inner_gradientWithin_right](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/inner-gradientwithin-right.md) | 305 | `result-track:3068569a4b2c7873fd73411508b4f7d6b215bbef0f2295fc5fbbc52adaf7647c` |
| 49 | `lemma` | [inner_gradient_right](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/inner-gradient-right.md) | 310 | `result-track:a7eb6ee4d77176196d88f7259c0d34ff920a5df2f86872e8ab924829340cded1` |
| 50 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/filter-eventuallyeq-hasgradientatfilter-iff.md) | 321 | `result-track:14f4a590764a94d19af9ae40e66e346598170f0c0804ab9b99bd143ef66bb75c` |
| 51 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-congr-of-eventuallyeq.md) | 325 | `result-track:c9d2e7dfa1f0d6b00d5b4dabdef0dc363c65bafc414ad022b2d0095c80aff4e9` |
| 52 | `theorem` | [HasGradientWithinAt.congr_mono](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-mono.md) | 329 | `result-track:ac07a6eb92a7112757cdadef85cf6c79291775cc9937fcd2c2dc5d82689169ee` |
| 53 | `theorem` | [HasGradientWithinAt.congr](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr.md) | 333 | `result-track:1773c769713cda4de418f9ab1165dd1d4a375df17538a98a13c58dce6b8a438e` |
| 54 | `theorem` | [HasGradientWithinAt.congr_of_mem](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-of-mem.md) | 337 | `result-track:203b807f997d201a12aa51d6ec57164c89ff036a73e74364a2f75cefb2d87632` |
| 55 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-of-eventuallyeq.md) | 341 | `result-track:5891e04f773f707c35d457e1f01e6a3c07ba8a6932cbf9105d77ec754895ecea` |
| 56 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem.md) | 345 | `result-track:19144e3422a30ebdc01f05f5397aa8319a06bee44753407399b4d88c296fd196` |
| 57 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-congr-of-eventuallyeq.md) | 349 | `result-track:d5083b3fe8331703534d57cd870f025bbce83e25097c4d8741909e0dad1ca15f` |
| 58 | `theorem` | [Filter.EventuallyEq.gradient_eq](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/filter-eventuallyeq-gradient-eq.md) | 353 | `result-track:e7306b6ef5a5e89dd1a0f83c484bff919b8b13881b986a75619d1a7b693690f4` |
| 59 | `theorem` | [Filter.EventuallyEq.gradient](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/filter-eventuallyeq-gradient.md) | 357 | `result-track:79f9616e5d0944ca39e69d59c477bfca2737e6d3cec7ebe56c638d148237698a` |
| 60 | `theorem` | [hasGradientAtFilter_const](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-const.md) | 368 | `result-track:bf7f1536b99201c0869b6b48e7e56f6b8d84d20dfc1ccbf454007c3beb1129df` |
| 61 | `theorem` | [hasGradientWithinAt_const](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-const.md) | 371 | `result-track:f0aca437c3a4c668b0c066f6d160a699027cd0287b2df42fa68f0aaae7b3bcbd` |
| 62 | `theorem` | [hasGradientAt_const](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-const.md) | 374 | `result-track:49e99c65e35980a2a864968576ef7dd8056b986b9cf1f1fae1aba63f9a8be190` |
| 63 | `theorem` | [gradient_fun_const](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-fun-const-source-edition-2.md) | 377 | `result-track:df9e97db41819c4b84891d10ba6ade9b2c174091646912a58ee91e3bdaf379a7` |
| 64 | `theorem` | [gradient_const](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-const.md) | 379 | `result-track:274fd2998b69c23c8183e5928f73f7bf9daee2152ba28b8ec4a341c7716bb1d5` |
| 65 | `theorem` | [gradient_fun_const'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-fun-const.md) | 382 | `result-track:02ade35989bca73e772330585f2bbe88ed7808644c91e6fd30f2b458ae86d141` |
| 66 | `theorem` | [gradient_const'](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/gradient-const-source-edition-2.md) | 386 | `result-track:498ffd0633c278b57f978005186dc57966bae6ee7c091529c9d5391f6b2cdaee` |
| 67 | `theorem` | [HasGradientAtFilter.tendsto_nhds](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientatfilter-tendsto-nhds.md) | 394 | `result-track:09df72608f8618f4feaa63cbe3dd2f3181367be2693606c42216ad93d9ac01fb` |
| 68 | `theorem` | [HasGradientWithinAt.continuousWithinAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientwithinat-continuouswithinat.md) | 398 | `result-track:5e31ab54cf12e1918f7dad7b594e3dc386b28618314ae7f4acde37c8ec6e8a08` |
| 69 | `theorem` | [HasGradientAt.continuousAt](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-continuousat.md) | 402 | `result-track:f1a96b914092a04b0f9b0cd8b9521b17ba381c97b8bba60b7ca5ef08e4f8494f` |
| 70 | `theorem` | [HasGradientAt.continuousOn](../../../../RealFunctions/GradientBasicNamespacedPublic.lean/declarations/hasgradientat-continuouson.md) | 405 | `result-track:6c7a55512e92f50382f516f40ecce22108d56ca011c41a9d81e96282758b4a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e225801df508a9e7c2e0fa35b223b275672ebc860fc9eb18b656305481b0d76 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
