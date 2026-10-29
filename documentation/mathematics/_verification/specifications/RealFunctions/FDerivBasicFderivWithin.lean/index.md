# Verification target: FDeriv Basic Fderiv Within

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2d8d9c24d5c267d02323df0ec84e4adcca2c07a",
  "lexical_observation_count": 171,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivBasicFderivWithin.lean/index.md) · [Full source](../../../../RealFunctions/FDerivBasicFderivWithin.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2d8d9c24d5c267d02323df0ec84e4adcca2c07a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.TangentCone` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasFDerivAtFilter](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter.md) | 144 | `declaration-track:d3aba6f724fad1da5a6c76fbc7e818a7e38679e618953d07637dae24bcb7095f` |
| 2 | `def` | [HasFDerivWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat.md) | 150 | `declaration-track:53a181b5092a24754ce01f7bf7230047c7e78cd1afc075915c03e4c37c4ebff4` |
| 3 | `def` | [HasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat.md) | 156 | `declaration-track:c231599d5cca9a2d463f36d3fa3ec37a3fbb5d7b64ad2401e4ca55782977ffdb` |
| 4 | `def` | [HasStrictFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat.md) | 164 | `declaration-track:32287d6531f587c18d08c2624b43c40ab69a5fb11979f941275f6f09feed88b5` |
| 5 | `def` | [DifferentiableWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat.md) | 172 | `declaration-track:59e64073ea57ed63ebe6c4935e5ad6798a43d2209b699f55eb83186936a71674` |
| 6 | `def` | [DifferentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat.md) | 178 | `declaration-track:503db0b0de8309ff616f02bf00ec3a3522b1a90fc2113edd2ae60458d8affe22` |
| 7 | `def` | [fderivWithin](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin.md) | 184 | `declaration-track:ed5695b35b5367d9447cd490d1892bc0f374c39352b97653569c6ae10860bde5` |
| 8 | `def` | [fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv.md) | 190 | `declaration-track:e45cf087b77b41d33c22b4d946d972477f0251cbf0bf1fa05f7bc375693a4a8f` |
| 9 | `def` | [DifferentiableOn](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon.md) | 195 | `declaration-track:41dc5acf1ec86201abca614b40d7ad2dc8f1ff24ee3c42325d2d584b59dd5450` |
| 10 | `def` | [Differentiable](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable.md) | 200 | `declaration-track:916108b738129c60735b03b299cd511368607b3c87eb2acbddea942eaf49e1c9` |
| 11 | `theorem` | [fderivWithin_zero_of_not_differentiableWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-zero-of-not-differentiablewithinat.md) | 218 | `result-track:51eda2e7d158aea330f9e358e75a6cd9a8e139e09fd154787eed91644adce97c` |
| 12 | `theorem` | [fderiv_zero_of_not_differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-zero-of-not-differentiableat.md) | 224 | `result-track:22ea851f84064d372ae287842f8bfc898cc22e4bdabc5e45b92bb4264f97f04d` |
| 13 | `theorem` | [HasFDerivWithinAt.lim](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-lim.md) | 239 | `result-track:c00efe429808b379432c9e7daf61230471833f63fc9e39c41e070e041786fdc3` |
| 14 | `theorem` | [HasFDerivWithinAt.unique_on](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-unique-on.md) | 274 | `result-track:c5cd7a0a2c06d97368f4e7e072b84facd5d10b4043e7ff58a541fda28b936c96` |
| 15 | `theorem` | [UniqueDiffWithinAt.eq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/uniquediffwithinat-eq.md) | 281 | `result-track:b73644414087e683b558daa745044b641c4657a7102580b1fe144381265d32b5` |
| 16 | `theorem` | [UniqueDiffOn.eq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/uniquediffon-eq.md) | 286 | `result-track:95f22727f6259c821c9c8b87aebad7d9e54e2cf38dd45e7bfef3590e72e69535` |
| 17 | `theorem` | [hasFDerivAtFilter_iff_tendsto](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-iff-tendsto.md) | 298 | `result-track:f47df3bbf117fad6960e1926e676e9b2f77a809c04b0496af826622c6130a5de` |
| 18 | `theorem` | [hasFDerivWithinAt_iff_tendsto](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-iff-tendsto.md) | 309 | `result-track:d5e96f58dcc4a7ad159a5468a9e686973ba13208da7ab6b4b283e9bb2abf6609` |
| 19 | `theorem` | [hasFDerivAt_iff_tendsto](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-iff-tendsto.md) | 315 | `result-track:56f2e8e311740cdcd25d43d42c019876aecf48a10665ebe6a6ecfb2793da8ca2` |
| 20 | `theorem` | [hasFDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-iff-islittleo-nhds-zero.md) | 320 | `result-track:85ea1d17f55063b3407400cf8553606f043bcb45dbedc73d93833aa1cf002e46` |
| 21 | `theorem` | [HasFDerivAt.le_of_lip'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-le-of-lip.md) | 329 | `result-track:4aade63575f42fa04d62754f01c4ccebbe0f33ff8b03b408de28ec38e8d47ff7` |
| 22 | `theorem` | [HasFDerivAt.le_of_lip](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-le-of-lip-source-edition-2.md) | 345 | `result-track:a492a3d771d21c732c120bd31d140f213facc9943dd0a06d77561f9225dce170` |
| 23 | `theorem` | [HasFDerivAtFilter.mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-mono.md) | 351 | `result-track:e701c4ad317ecc24e6b25ff881c24247e8cc8dde846d5fd50099303e3185cfe4` |
| 24 | `theorem` | [HasFDerivWithinAt.mono_of_mem](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-mono-of-mem.md) | 356 | `result-track:1a2e42d34d06568287d723145b0675868d35cb4187b45ec6a91b36c5b249692c` |
| 25 | `theorem` | [HasFDerivWithinAt.mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-mono.md) | 362 | `result-track:10e730bdc4d937691a7ed7b4ec1255baad12a492949f2f382ba42bb75eb2e38a` |
| 26 | `theorem` | [HasFDerivAt.hasFDerivAtFilter](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-hasfderivatfilter.md) | 367 | `result-track:6a003de584b27a4b551346bdc4706163b8356cdb259b1b302f004941d2e05e31` |
| 27 | `theorem` | [HasFDerivAt.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-hasfderivwithinat.md) | 372 | `result-track:83403f2aae27f68116cfd1b6df04e6ffb641bb732da3118bcadd1d1099943b3b` |
| 28 | `theorem` | [HasFDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-differentiablewithinat.md) | 376 | `result-track:da93ff103829c3fa73dc9fe96ef9edc83ab87961670adaaadf7062bd7160fc1a` |
| 29 | `theorem` | [HasFDerivAt.differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-differentiableat.md) | 381 | `result-track:f8f2567942432ee0610dae0cebbdafac080a29cefe0acef2c4ee05da6394f4ba` |
| 30 | `theorem` | [hasFDerivWithinAt_univ](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-univ.md) | 386 | `result-track:ac673b8a891f145ae1dfd3eb27e3fd0f2075f4b52b8f61d07209a7670a4987dc` |
| 31 | `theorem` | [hasFDerivWithinAt_insert](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-insert.md) | 394 | `result-track:ccdb68897eaeb3b3994294e312a4a965c37360eff43dd400edc3fe2130de682c` |
| 32 | `theorem` | [HasFDerivWithinAt.insert](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-insert-source-edition-2.md) | 408 | `result-track:f19e6ecd7497aeee5025d9f8195994ef882d097bcd8c1289b5aa5e666fecba62` |
| 33 | `theorem` | [hasFDerivWithinAt_diff_singleton](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-diff-singleton.md) | 413 | `result-track:1fa668e6160f9e6efcedabffb557e3a2765fcc96627d09927ba59f68283927ae` |
| 34 | `theorem` | [HasStrictFDerivAt.isBigO_sub](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-isbigo-sub.md) | 418 | `result-track:9b57f092ea45f5fbaddf6d928c8c7e5305aa74e56e5b44b220d8a0fa13cd1a2c` |
| 35 | `theorem` | [HasFDerivAtFilter.isBigO_sub](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-isbigo-sub.md) | 424 | `result-track:16fee15fc8caaedf1f3da4969d9844213dfcac4a438991c5532d3d26c6719f7c` |
| 36 | `theorem` | [HasStrictFDerivAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-hasfderivat.md) | 430 | `result-track:a9c3529236c6a1a3e8f564de11b625280318980f3d2881a7d097956a948804eb` |
| 37 | `theorem` | [HasStrictFDerivAt.differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-differentiableat.md) | 436 | `result-track:32a1b19821a22f14aaef977c6fae9ef3b1afb2de87cc5c9402e2bca4d6651572` |
| 38 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith_of_nnnorm_lt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-exists-lipschitzonwith-of-nnnorm-lt.md) | 443 | `result-track:e3d66383b9a42d8119318ba853ee80f76043aebbb55d430ef49b2d7603db4263` |
| 39 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-exists-lipschitzonwith.md) | 455 | `result-track:e8f12802a87c44b3a1ca6cae0692cc6131eedc3d285f734312b968b8ff9e7167` |
| 40 | `theorem` | [HasFDerivAt.lim](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-lim.md) | 461 | `result-track:0084d20d65d8aa7a922860ccf7016993df5ce8ea37b96be1145daef22fe6c98f` |
| 41 | `theorem` | [HasFDerivAt.unique](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-unique.md) | 472 | `result-track:e364cae046259c757a54fb36115cbe8ff066e57d9eaa99d1a778aa495fe00780` |
| 42 | `theorem` | [hasFDerivWithinAt_inter'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-inter-source-edition-2.md) | 477 | `result-track:68481b760dfd8d6708827fdab8bfcddbc18bd280007c9932bb3931053e0327f1` |
| 43 | `theorem` | [hasFDerivWithinAt_inter](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-inter.md) | 482 | `result-track:2a2d25d06da22e265fef91263c3b04fdfb69cb15a08d71a85c849d386c2dee79` |
| 44 | `theorem` | [HasFDerivWithinAt.union](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-union.md) | 487 | `result-track:17734980b3272a1b80ad085142e461935598415c2932216258b01c76af2df267` |
| 45 | `theorem` | [HasFDerivWithinAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-hasfderivat.md) | 493 | `result-track:0e75ca4bb3244f2238a3e9642f4c73f4a22018afecb610f8101bd083f44dc814` |
| 46 | `theorem` | [DifferentiableWithinAt.differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-differentiableat.md) | 498 | `result-track:e4bd00e48d844c18a1879c8fa3c953b7ece60be6be9bf781df27d048b8c5f956` |
| 47 | `theorem` | [DifferentiableWithinAt.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-hasfderivwithinat.md) | 503 | `result-track:0e5bd8cd65d215eb7584032417b8be1b5462e08beae49c2dd537174f2ad37870` |
| 48 | `theorem` | [DifferentiableAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-hasfderivat.md) | 511 | `result-track:69c5fc319b43fd16c6994d48a4e86b8b9d013db1322d5611f6fe3bfe9e40dea8` |
| 49 | `theorem` | [DifferentiableOn.hasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-hasfderivat.md) | 519 | `result-track:0942eda7514622f5e9ba3697d5ed99bf768d788937c9261cc16bef65c3cb3f52` |
| 50 | `theorem` | [DifferentiableOn.differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-differentiableat.md) | 524 | `result-track:e183ebf032d054cbc903843a8238c26bf5fdf162fbeeaa638b1c7f4e10243ef3` |
| 51 | `theorem` | [DifferentiableOn.eventually_differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-eventually-differentiableat.md) | 529 | `result-track:22488e1c1ccf68b6f83013d4a38bcfd3411adcd9177c6b01446439d975ba2010` |
| 52 | `theorem` | [HasFDerivAt.fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-fderiv.md) | 534 | `result-track:ba6dafca7e97b4d20dc346781f598e9c7da0537d3d320859782926d8d5a9df98` |
| 53 | `theorem` | [fderiv_eq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-eq.md) | 539 | `result-track:aacd073784b28d96e40f074d31a9f0265011ac21fee9956d462209e747c9b489` |
| 54 | `theorem` | [DifferentiableAt.le_of_lip](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-le-of-lip.md) | 547 | `result-track:2605d5ccd99fb04ead9447885ad8830bd39c9aa7bafd81fa05b83addae38e5ad` |
| 55 | `theorem` | [HasFDerivWithinAt.fderivWithin](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-fderivwithin.md) | 552 | `result-track:7ffd736ea95f32c2ac42d5d37dc12442a087de948e34ca9bcfd9c2c84da2dc48` |
| 56 | `theorem` | [hasFDerivWithinAt_of_not_mem_closure](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-of-not-mem-closure.md) | 559 | `result-track:058bb58ce9bdaa3505b54f92a777b4b255c6964f2bf448f97957ce29f0974e11` |
| 57 | `theorem` | [DifferentiableWithinAt.mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-mono.md) | 564 | `result-track:602462ea066de5b8d45fbe4a0bfcda602b5e1a11ec66d3b651d578ccb14accdd` |
| 58 | `theorem` | [DifferentiableWithinAt.mono_of_mem](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-mono-of-mem.md) | 570 | `result-track:8db6c6bf9709559e389202e18b65b07a5aa0133a5271c37883756a708b43e9bf` |
| 59 | `theorem` | [differentiableWithinAt_univ](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-univ.md) | 575 | `result-track:e509dc8ce5a742caebad19f77d32ca33795364a35bd8dceec86ec549723431a6` |
| 60 | `theorem` | [differentiableWithinAt_inter](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-inter.md) | 579 | `result-track:0eda03232245770bd3ff1d0e3f0ee79b8e9cec721e26488ef6fcc7da403b4088` |
| 61 | `theorem` | [differentiableWithinAt_inter'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-inter-source-edition-2.md) | 584 | `result-track:46de94b2d12b16d093be45567e79e54e198a1c900f9bec8d6932e2cb75439385` |
| 62 | `theorem` | [DifferentiableAt.differentiableWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-differentiablewithinat.md) | 589 | `result-track:eedb7ffb3c584559399dc6879d05bbec128a4120fe809e8c6919a8aed221c8ec` |
| 63 | `theorem` | [Differentiable.differentiableAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-differentiableat.md) | 594 | `result-track:3620aa845c12becf8112b01c0c8513369080805636a2d9a2b913f97e26b8ebe0` |
| 64 | `theorem` | [DifferentiableAt.fderivWithin](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-fderivwithin.md) | 598 | `result-track:a68ceb7219a1d0b922b6a5c17839355aea6a80fd8e93ed4659d54c87f82bcb25` |
| 65 | `theorem` | [DifferentiableOn.mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-mono.md) | 603 | `result-track:bca696c714d36276ffdda2e21a391b68577c80723b74ecd73452779f4fb5b104` |
| 66 | `theorem` | [differentiableOn_univ](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-univ.md) | 607 | `result-track:222ca6bf28c94c5a1df066b88fea59cd4d8cced866d20231d61109e09c3eb065` |
| 67 | `theorem` | [Differentiable.differentiableOn](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-differentiableon.md) | 612 | `result-track:64cce6cfd9bf80b4cf6045745b0fd81f3c88d6552a730a8ddf5ab00d3d5989b8` |
| 68 | `theorem` | [differentiableOn_of_locally_differentiableOn](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-of-locally-differentiableon.md) | 616 | `result-track:dba62f96deda39234c32b273b633a53de36d98ffa8372318b41d95f68dedecd0` |
| 69 | `theorem` | [fderivWithin_of_mem](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-of-mem.md) | 624 | `result-track:4d06e307a964862b305cbb51523224f4b901753a2bc34ce0ec022fc33e4467c8` |
| 70 | `theorem` | [fderivWithin_subset](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-subset.md) | 629 | `result-track:101d83dd637f4aa462eebe70bbbf12b08745b3036b954666bf96f503c1cca1c9` |
| 71 | `theorem` | [fderivWithin_inter](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-inter.md) | 634 | `result-track:8f4595ad100049af902db810b568eccd629cd85b77495c5991c04362c7d1f945` |
| 72 | `theorem` | [fderivWithin_of_mem_nhds](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-of-mem-nhds.md) | 638 | `result-track:d94e28b74f091238e4cfcff124130b7f5819d128865ab08b406d306d58e9a493` |
| 73 | `theorem` | [fderivWithin_univ](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-univ.md) | 643 | `result-track:52e1adf9707a1339fb5df666c3a057bbda33757c5df1f2d34b6beb684300c468` |
| 74 | `theorem` | [fderivWithin_of_open](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-of-open.md) | 647 | `result-track:0c0166f9ea6a0c5dc5e51e82f0bed5137812f1bafe90b8eb2c6e6380751aad06` |
| 75 | `theorem` | [fderivWithin_eq_fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-eq-fderiv.md) | 651 | `result-track:c09696b9cf4a399614c49e7cb3adbc3a835b7a1e58ca3e5a456c13b0804c9b02` |
| 76 | `theorem` | [fderiv_mem_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-mem-iff.md) | 657 | `result-track:21e53e016918b2d6de7a8d9dd1de257fd94a651cb1b1dee6633f869deb70f060` |
| 77 | `theorem` | [fderivWithin_mem_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-mem-iff.md) | 663 | `result-track:e48af82bb8b0f09a29f8e777de2693808ca144b08e1ba2eaf232d65f912afc36` |
| 78 | `theorem` | [Asymptotics.IsBigO.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/asymptotics-isbigo-hasfderivwithinat.md) | 671 | `result-track:de6219bd78b87770db89055511b8c0dc1fdd4d091b2b8621b9309a7764ef8858` |
| 79 | `theorem` | [Asymptotics.IsBigO.hasFDerivAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/asymptotics-isbigo-hasfderivat.md) | 680 | `result-track:6b28b3e74752949c26a8e0bb7c2a576c5533d9a3860417650eebc1ea04a758c0` |
| 80 | `theorem` | [HasFDerivWithinAt.isBigO](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-isbigo.md) | 687 | `result-track:ac3f92041919e8980a0c9d9ccaa5719a20f0487d92e8ac986cd650861e2c7cac` |
| 81 | `theorem` | [HasFDerivAt.isBigO](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-isbigo.md) | 693 | `result-track:1e50db3177f44aa8a4d6703d6659008981f9d28f36067ef1e7870afb45774c31` |
| 82 | `theorem` | [HasFDerivAtFilter.tendsto_nhds](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-tendsto-nhds.md) | 706 | `result-track:d138fee966bc4fefa98b99e6fc213141655a5e4c61ca2e5ecb1225757518cb96` |
| 83 | `theorem` | [HasFDerivWithinAt.continuousWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-continuouswithinat.md) | 717 | `result-track:ad626a266d929303aabb9351ea2695b0f4ac52b9b3c1454c69f247cf66665dee` |
| 84 | `theorem` | [HasFDerivAt.continuousAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-continuousat.md) | 722 | `result-track:48411c2d0f3162cc87c2d1bc6d03c8cd7a3323d6a47bd164ad924ea5560d20c1` |
| 85 | `theorem` | [DifferentiableWithinAt.continuousWithinAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-continuouswithinat.md) | 726 | `result-track:86930fa357ef46197fe136f21b269fb3f9cbad2fe3bf7f3264ddd83eef1736eb` |
| 86 | `theorem` | [DifferentiableAt.continuousAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-continuousat.md) | 732 | `result-track:c9b03470dd421d6877f269e75b665aca80f116ac9dc66ccdbbc4ef173c8feb11` |
| 87 | `theorem` | [DifferentiableOn.continuousOn](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-continuouson.md) | 737 | `result-track:e2b7f12d7749b9586d7c5acda2a35a508391cdbc99307b15ba1ef506bd33e0c5` |
| 88 | `theorem` | [Differentiable.continuous](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-continuous.md) | 741 | `result-track:3783f92ad52e90bbf37616e168958f294672cc881df7cdbb77d5a8519c4eb788` |
| 89 | `theorem` | [HasStrictFDerivAt.continuousAt](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-continuousat.md) | 745 | `result-track:084c2418809151a3389b8858a8c1185cacd32f7e1bff1eab01ea332e76b6b114` |
| 90 | `theorem` | [HasStrictFDerivAt.isBigO_sub_rev](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-isbigo-sub-rev.md) | 750 | `result-track:4809e3b3d53daa2caff391f2a565fc4bf8cfa9620354d089d0656b606c6e0df0` |
| 91 | `theorem` | [HasFDerivAtFilter.isBigO_sub_rev](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-isbigo-sub-rev.md) | 758 | `result-track:77b7c02198750134646ea16956c39d8b9df65285fa2fe77449c5d8f9cc1d74ef` |
| 92 | `theorem` | [hasFDerivWithinAt_congr_set'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-set-source-edition-2.md) | 772 | `result-track:c97f097839961489644bb2120ffe07b0ce8bb22aa1a8ae0c07fd885c801f8434` |
| 93 | `theorem` | [hasFDerivWithinAt_congr_set](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-set.md) | 784 | `result-track:902c0e4d05a6b1bacecaf04dadd257696a79ab441dbb17a5512060c38de46ca4` |
| 94 | `theorem` | [differentiableWithinAt_congr_set'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-congr-set-source-edition-2.md) | 789 | `result-track:feaad01c7ebdc3edd7c7c677220ebc6ae9b28a0cf44246c05f850396cf2d9ed7` |
| 95 | `theorem` | [differentiableWithinAt_congr_set](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-congr-set.md) | 794 | `result-track:2e545bf96efee63fb914c6d3ac3a4c36827892800b8ad021fc60ca6459c89c73` |
| 96 | `theorem` | [fderivWithin_congr_set'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-congr-set-source-edition-2.md) | 799 | `result-track:f36048afaef4c4e832e460e0f5ad58e7d7b97c0b19dcefdbbc7b3858c83a9fcd` |
| 97 | `theorem` | [fderivWithin_congr_set](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-congr-set.md) | 804 | `result-track:b49e68e5a8acb95de22bdfddb9f89b57db64a0a5b422a1cdd510cdab25a2a501` |
| 98 | `theorem` | [fderivWithin_eventually_congr_set'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-eventually-congr-set.md) | 808 | `result-track:502b981ac1a09c2957b2f9330d2e070ef2c36bfcf5dbf7000d8aed7f5c91e707` |
| 99 | `theorem` | [fderivWithin_eventually_congr_set](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-eventually-congr-set-source-edition-2.md) | 813 | `result-track:6f9e8e1f86128740dbb344a24de03841c92f0cc0a66d4e2297bb4e115cdf592f` |
| 100 | `theorem` | [Filter.EventuallyEq.hasStrictFDerivAt_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-hasstrictfderivat-iff.md) | 818 | `result-track:c93ca6c9bbaecf024fb6db3cfe563a3990e9f46f09a0db429dc1351094ce61df` |
| 101 | `theorem` | [HasStrictFDerivAt.congr_fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-congr-fderiv.md) | 825 | `result-track:596616b83c65ce0c53f0a4ab9e1cf0fadb0e4dabb34618ac2ba1619a86f109f9` |
| 102 | `theorem` | [HasFDerivAt.congr_fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-congr-fderiv.md) | 829 | `result-track:e7cfb28ca3bb45d859142fce4c2469510fda141ae994e67434456232b7fb4812` |
| 103 | `theorem` | [HasFDerivWithinAt.congr_fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-fderiv.md) | 832 | `result-track:4b32c0884beef89f13d3a022fd462b748f26a7e551539cad3d7f7943208d2815` |
| 104 | `theorem` | [HasStrictFDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-congr-of-eventuallyeq.md) | 836 | `result-track:63ec0838c9f79383887e2df5ec0fe0d46e68c685f45a3bfe9a3895e8871e93a3` |
| 105 | `theorem` | [Filter.EventuallyEq.hasFDerivAtFilter_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-hasfderivatfilter-iff.md) | 841 | `result-track:1c843cc79118d66c0d77d711310ed972f1ba474087f9d6e586fa83766fbb773f` |
| 106 | `theorem` | [HasFDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-congr-of-eventuallyeq.md) | 847 | `result-track:5e9d8fdfd68e64f216d6c436c1746bc156eae58362884b36e052c6ab7d45e48b` |
| 107 | `theorem` | [Filter.EventuallyEq.hasFDerivAt_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-hasfderivat-iff.md) | 852 | `result-track:0e8ca50506446c29ff13eb7a7a8435c39ba58ae7117e1d113465839fcd634cc8` |
| 108 | `theorem` | [Filter.EventuallyEq.differentiableAt_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-differentiableat-iff.md) | 857 | `result-track:8c1343993b9c17c81482fa06c560c1e064a43ad9d70ca82605b0c0907f57c012` |
| 109 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-hasfderivwithinat-iff.md) | 862 | `result-track:01450175cc9d5f9111446f0aca1385298d3e22666079da5f02d3d3d5986d52b3` |
| 110 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff_of_mem](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-hasfderivwithinat-iff-of-mem.md) | 867 | `result-track:ef15910c169264d8593e0adcc05d9c2eb7d877dc7e8cc688b0a1b2cefa1c07a3` |
| 111 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-differentiablewithinat-iff.md) | 872 | `result-track:778dba3b65ffe13d0053629b85c9ebf558bbc43ddaf4e4eb39789d8267e2e859` |
| 112 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff_of_mem](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-differentiablewithinat-iff-of-mem.md) | 877 | `result-track:050b3a0a6e1e877ff9aaa825c22b3c47ba6e2eb737d595a7c3335c91be9667ec` |
| 113 | `theorem` | [HasFDerivWithinAt.congr_mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-mono.md) | 882 | `result-track:da872ec33caea48519566643a09b7bd131fdfced024b70a99219172941d6780d` |
| 114 | `theorem` | [HasFDerivWithinAt.congr](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr.md) | 887 | `result-track:00fa663ea45674bba89de7ca146b3cab722a362b058dde3a3c0dc527f2dfdf58` |
| 115 | `theorem` | [HasFDerivWithinAt.congr'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-source-edition-2.md) | 892 | `result-track:c7a92168b48e64fc31baa15546c0dab6994404c31b3b2efe41487b1e0f4cb281` |
| 116 | `theorem` | [HasFDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-congr-of-eventuallyeq.md) | 897 | `result-track:b87198cc2b4d25dfbfebc96317b7dab988fa533fc23ec780b6035b2b123d3a9c` |
| 117 | `theorem` | [HasFDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-congr-of-eventuallyeq.md) | 902 | `result-track:d179910035d6f01493b8a68c9e79e52556602c7a4d5288d3a4893100b5ef3716` |
| 118 | `theorem` | [DifferentiableWithinAt.congr_mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-congr-mono.md) | 907 | `result-track:d0411b438e1c272263bbb24d9ebe03d85e2502a58d47b5be4b36f691e49be6dd` |
| 119 | `theorem` | [DifferentiableWithinAt.congr](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-congr.md) | 912 | `result-track:5f414d53a2be00921c1727fbb6f223ba3e64af584a373420a2010ac099b35693` |
| 120 | `theorem` | [DifferentiableWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-congr-of-eventuallyeq.md) | 917 | `result-track:1126e62ac149cfd9d2b2c665f2857295d5d3a7dda860f2cdec9491afbd263223` |
| 121 | `theorem` | [DifferentiableOn.congr_mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-congr-mono.md) | 922 | `result-track:4396249a30ee4c7cd1920048f3e4b19d63be886b11aaf0a208e376530173e4c9` |
| 122 | `theorem` | [DifferentiableOn.congr](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-congr-source-edition-2.md) | 926 | `result-track:32441803df4e14b83656822251d79d7fd4206804d7716205c3742d67fc1e86c4` |
| 123 | `theorem` | [differentiableOn_congr](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-congr.md) | 930 | `result-track:0ff45f0da75569969cafb535fd45e92c4afa2122a4dd87086d05341fe82e2879` |
| 124 | `theorem` | [DifferentiableAt.congr_of_eventuallyEq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-congr-of-eventuallyeq.md) | 936 | `result-track:3038fb7d9e387716492dae98b5b5410e95aba4ed4c6ec08b5a0cd6d9eefd4763` |
| 125 | `theorem` | [DifferentiableWithinAt.fderivWithin_congr_mono](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-fderivwithin-congr-mono.md) | 941 | `result-track:60f77eb61d27d7449c283e5f495fbc7ea8564034276c42e09544ac2078313606` |
| 126 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderivwithin-eq.md) | 947 | `result-track:35c32ffc605bb9418567e7f905f8bcc66cd62ebc6e5afe078741f52cf0b06fb6` |
| 127 | `theorem` | [Filter.EventuallyEq.fderiv_within'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderiv-within.md) | 952 | `result-track:849fa0a1f37d15d2156cc8891f304bb3e64b8cf3da26facd5cbb44f6f4f8e9ff` |
| 128 | `theorem` | [Filter.EventuallyEq.fderivWithin](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderivwithin.md) | 960 | `result-track:33b28d0e426f8a335fe77d8756c76e31b370f9e3c3f7b3a5e4a06939fda5a1f8` |
| 129 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq_nhds](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderivwithin-eq-nhds.md) | 965 | `result-track:4eddf3b26a9b8e01c4b3c790b3cced19efb02c43278eb8b30198c4ac3ae3e0eb` |
| 130 | `theorem` | [fderivWithin_congr](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-congr-source-edition-2.md) | 970 | `result-track:b1bf1819f853fd874e8e64c28723abc70c3ced39f19ea0d623b8848cd3eb5b33` |
| 131 | `theorem` | [fderivWithin_congr'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-congr.md) | 975 | `result-track:7d8bf5ff1721bd7bb74771b9747302a1990f470b1d2c8929d73c3748120a6543` |
| 132 | `theorem` | [Filter.EventuallyEq.fderiv_eq](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderiv-eq.md) | 980 | `result-track:bfb34c1c21b6717c6925c4a6677cc4ee12989b37369446d333a6a7f9e5c85a21` |
| 133 | `theorem` | [Filter.EventuallyEq.fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/filter-eventuallyeq-fderiv.md) | 984 | `result-track:20bc1c51058e846f5fc0d1c7a2f4bc69f61e64c03d0dd2d3a197afb191974929` |
| 134 | `theorem` | [hasStrictFDerivAt_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-id.md) | 995 | `result-track:4cdd98cc4581d335a8c301c1533486b5ec2a46996e2a351213c8fcb869713ccd` |
| 135 | `theorem` | [hasFDerivAtFilter_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-id.md) | 999 | `result-track:cdbdcef3eeb0b506d1e685b3ab5ec2c28b667f7f3d404debf01e2f81a899fc28` |
| 136 | `theorem` | [hasFDerivWithinAt_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-id.md) | 1003 | `result-track:979b648a0522fc20e2fee49f2a66bdd04ec4c9cfb308b853d4b9f226ed6fa3a8` |
| 137 | `theorem` | [hasFDerivAt_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-id.md) | 1007 | `result-track:088b2f780f14a7430e98e27cd409591b93882cc5ec83ee9509944388aaa04e3b` |
| 138 | `theorem` | [differentiableAt_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-id-source-edition-2.md) | 1012 | `result-track:c53bf8742642f0e3b4e3475ecbeba841481b7bd45e03c2ff844eb7e14229fd6b` |
| 139 | `theorem` | [differentiableAt_id'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-id.md) | 1017 | `result-track:775870cdae5266b678a7a5f22a82bde3781f8ef3ea9ec12ebcc7fa1485e47e87` |
| 140 | `theorem` | [differentiableWithinAt_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-id.md) | 1021 | `result-track:d1090d417dc2ff8d2edd946536a43e3e0cea3216e6b39b4cf7d9dccacc01e907` |
| 141 | `theorem` | [differentiable_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-id-source-edition-2.md) | 1026 | `result-track:9fa5d653548abbf0f747d7c00bc1ca743e0965b0a94b523cc9bb8a7dc4a3fbc7` |
| 142 | `theorem` | [differentiable_id'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-id.md) | 1030 | `result-track:0e649d0e72545536abb0f3581e8eb9be0908e37916fc69db1d001e49e6ad2b11` |
| 143 | `theorem` | [differentiableOn_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-id.md) | 1033 | `result-track:e861e80cc5180dd7095cf81545fb8021615595418d944ba785ce3b6735d116f5` |
| 144 | `theorem` | [fderiv_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-id-source-edition-2.md) | 1038 | `result-track:d4ac3192adcd0651e88fea9b1d7be84e5a893f9406c660d8b81da80c8862a96b` |
| 145 | `theorem` | [fderiv_id'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-id.md) | 1043 | `result-track:1e5dbfbd1e03655b30fbafda5b69f1f6f7a67b261214dec13e087df63000e368` |
| 146 | `theorem` | [fderivWithin_id](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-id-source-edition-2.md) | 1047 | `result-track:8fed303c2126ded8335ba6fcaf9fedb47e7a696a57b1d9fbcce9e34171360e1b` |
| 147 | `theorem` | [fderivWithin_id'](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-id.md) | 1052 | `result-track:727ed11d66370f0b90d99755f4311ae2bacda367339b52108b802ba69cbdcbf2` |
| 148 | `theorem` | [hasStrictFDerivAt_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-const.md) | 1064 | `result-track:001e4e792303f4fa878c4442a2aff32bda394d26a36d29c3e447ef2898a3d224` |
| 149 | `theorem` | [hasFDerivAtFilter_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivatfilter-const.md) | 1069 | `result-track:5ed502b37fd072521f8fbf39df9031d1b9b01125f46b14d613ceb01bc37e7612` |
| 150 | `theorem` | [hasFDerivWithinAt_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-const.md) | 1074 | `result-track:a8ad75ee7197755edb2404b359b8f04770ebb33954ae53764ce7f8bb0a0bf220` |
| 151 | `theorem` | [hasFDerivAt_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-const.md) | 1079 | `result-track:2f96dcffe43ca3463510b3d7ad7f50c959ca9df6de6ba7de7a2c03698aa6fa3d` |
| 152 | `theorem` | [differentiableAt_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableat-const.md) | 1084 | `result-track:4913ee1e0920240aaeba6653735d0e68ea3d99b22bc43051ab5fe2a00c529d61` |
| 153 | `theorem` | [differentiableWithinAt_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiablewithinat-const.md) | 1088 | `result-track:9357d6f3be70095d5c1a87bdf7e98c5372081b287201afc6aac4da34302f38e0` |
| 154 | `theorem` | [fderiv_const_apply](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-const-apply.md) | 1092 | `result-track:e31fe64c5d1047daf47cc68e817dcddf1806ea91269a933ab06b3523b228a00f` |
| 155 | `theorem` | [fderiv_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-const.md) | 1097 | `result-track:cb1686fbfbc078b3fb647ce9894c861f410eadc178d4dac06e07f75d7e08d259` |
| 156 | `theorem` | [fderivWithin_const_apply](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderivwithin-const-apply.md) | 1103 | `result-track:a07f698fa00e526720fb141601e781df2a4ef1b3aabfcd8353bf5081bf1d72a4` |
| 157 | `theorem` | [differentiable_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiable-const.md) | 1110 | `result-track:b265175d01f6b40ba53aeb998b821b3bfde60b485c3b79c7985c2c7ad0ede658` |
| 158 | `theorem` | [differentiableOn_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-const.md) | 1114 | `result-track:71a5228db60ddf18bc4979c6760500f55deabccaeb118e14156630360791b932` |
| 159 | `theorem` | [hasFDerivWithinAt_singleton](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-singleton.md) | 1118 | `result-track:b42fd70e1c19d79c462b52d32cfd51bcd67afec16c663d66744ead4fcb648861` |
| 160 | `theorem` | [hasFDerivAt_of_subsingleton](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-of-subsingleton.md) | 1124 | `result-track:47c3d32d7544afc5082b961e2488b031239d8fd371ed63b646e493b70db61dc8` |
| 161 | `theorem` | [differentiableOn_empty](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-empty.md) | 1130 | `result-track:10364bb6d7cea52e69fb9b7d665616a2fc5a9bd4df86bed48382a81a3970e88c` |
| 162 | `theorem` | [differentiableOn_singleton](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/differentiableon-singleton.md) | 1133 | `result-track:fd89a0adbbef5ac4bb704f2906cb4c182ddac1552932dda59214361748a0fe5a` |
| 163 | `theorem` | [Set.Subsingleton.differentiableOn](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/set-subsingleton-differentiableon.md) | 1137 | `result-track:ef6c6ee49614fab4ef0f10769ed4f08d170c3cdf3099d053b3771282a5ba1052` |
| 164 | `theorem` | [hasFDerivAt_zero_of_eventually_const](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-zero-of-eventually-const.md) | 1141 | `result-track:5b7101ddce183deb7eaecadeb1b64ca64508b89e11da4d44762988e3792608cb` |
| 165 | `theorem` | [HasStrictFDerivAt.of_not_mem_tsupport](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasstrictfderivat-of-not-mem-tsupport.md) | 1159 | `result-track:7a55c0cd1ccc4990936cec1527b2ca7c91704ba3a7f6ae915a5373af6d10fbe8` |
| 166 | `theorem` | [HasFDerivAt.of_not_mem_tsupport](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivat-of-not-mem-tsupport.md) | 1164 | `result-track:720f9e4027b24b94d8da92e9ebac606f2ad0d8b116f69fdbd59c1d909511068a` |
| 167 | `theorem` | [HasFDerivWithinAt.of_not_mem_tsupport](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hasfderivwithinat-of-not-mem-tsupport.md) | 1168 | `result-track:8b72f992dd8517cf3f012a760e2e2f8c86d1a9d44f32c3464e8784faddefd071` |
| 168 | `theorem` | [fderiv_of_not_mem_tsupport](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/fderiv-of-not-mem-tsupport.md) | 1172 | `result-track:b895fb0e66a298049d5ed75df14e55f10cb0c5596586bbdf0fe860c16f8a0741` |
| 169 | `theorem` | [support_fderiv_subset](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/support-fderiv-subset.md) | 1175 | `result-track:401fa790902734ae08d52abb14f31a59f70c3da2a137238d2e41568fd734c05f` |
| 170 | `theorem` | [tsupport_fderiv_subset](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/tsupport-fderiv-subset.md) | 1180 | `result-track:39b71d3cb538961269c201ebc6aafdf86dda68be713f1ad9d0d9d441222374eb` |
| 171 | `theorem` | [HasCompactSupport.fderiv](../../../../RealFunctions/FDerivBasicFderivWithin.lean/declarations/hascompactsupport-fderiv.md) | 1184 | `result-track:d604f0d01c5356eef56637932b7efef0b889f6698a64358a4776005379811d71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24a95d76ff92c0ab14c8f4714fedb9d55f48a86eb5a810493f8489fe6a71e61d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant409b20e7d4c42baa1a4949d7de87759823cf5204b87c4e35bb5aea9c99bafdfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
