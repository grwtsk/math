# Verification target: Source Resolvent Truncation Combined Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9065d5d9052285331e6b3297386e45a5fad3f97",
  "lexical_observation_count": 108,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9065d5d9052285331e6b3297386e45a5fad3f97`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullh.md) | 27 | `declaration-track:130a0cade8a0b9c1435aa2c8310d7bec6de6445f94b5b8aaae128ba97275bc6e` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullshift.md) | 29 | `declaration-track:118cf0af1d87078655d8e9e4b2fffb422f39532321e28de8d8af6f65d1b5a183` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullshift-ae.md) | 32 | `result-track:82f15c8a925a7070e02c0005eb4c66dd3418023422bb14c6385f1f844a36fd84` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullshift-continuous.md) | 36 | `result-track:2c96f76341bb874fd8c12761da7abd75915e4e2f8d01b65357e0b53f12e18667` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/weighted-shift-integrable.md) | 44 | `result-track:7daf1a77946c030ba8798c582c3159a01e941752854280320ea4b53c964c416d` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/vector.md) | 53 | `declaration-track:88731d771616a1a08acbbdcbe4162d1faef5069fd5ca8b09c2c0c699a46b3f6b` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/vector-norm-le.md) | 55 | `result-track:783eda596ab7117a647878b2d279d1a80039847bbb39eebc8c91ba0c794d67b2` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/vector-add.md) | 62 | `result-track:4483793d880ec8339b7d7916763f7b8b746e96469043073962831b091258bdbd` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/vector-smul.md) | 67 | `result-track:6d69c0ff724f0ff363429a1981954cf15d9a8b1a2ca20577cc9327afb8f8d8eb` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/linearmap.md) | 71 | `declaration-track:afcc74b5be238adb7f6d32f758f4eecd8940a6d4468502b678aa2e0b9227abf3` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullconvolution.md) | 76 | `declaration-track:734c4d6a334876f202006c2eafec55afcbcc58dceb62d37949c990e2cc3cd882` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullconvolution-apply.md) | 79 | `result-track:d72705f93b9a3cdbe25aaf6479cba082be0d3ffbb45e0602a4f395f06a1266b4` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullconvolution-norm-le.md) | 82 | `result-track:98dfcbb2735bf9ca111aaadb3bd04094d3068755fe11fd8d3478592c64488b2d` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullconvolution-sub-kernel.md) | 86 | `result-track:8ffb53395d6246fd24ab0a86536225bf12c0a741b8f0f308c7ba620bfd884534` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullconvolution-norm-sub-le.md) | 94 | `result-track:0cbc5e208016a50d1aeaad6305e3859c15f4f6647417864a2ca9930b6fdd7488` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/actualfull.md) | 99 | `declaration-track:68a82faca5a8d1d04bd6258fc3111771b9680c996595cf521a7b396759acaa2d` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/actualfull-apply.md) | 101 | `result-track:df7a2aa312014296e9c52f5803a9b2a282bb3afb095c06ce83ea2d0b6e798ee2` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/actualfull-norm-le.md) | 104 | `result-track:27242f63c18461734688b57c864552e7d3f52ddbe68bbaa04f86ea52e607b589` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/fullh-source-edition-2.md) | 122 | `declaration-track:71225c6ea4174b6fb1c73a026e2b57d8aa44f23428fe6493574a904f6861d30d` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionfunction.md) | 124 | `declaration-track:a177b4b16b587ccaa30257ac178b333129533a252ea75dc91a6f5b8585ca6e63` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionfunction-memlp.md) | 126 | `result-track:85be240a65ecd2e2fee7d5e8f12c9049c46fdc8a77f705a4f55c1228282b8e04` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionvector.md) | 130 | `declaration-track:ac840075ab6e7032709cad7799d0c0714d58c8d82416fbb1837668b9a4aa6dad` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionvector-ae.md) | 133 | `result-track:c1fcd68524a73ab4a711be883bf9b48143426c258f60e3aa110f784cb8297fd9` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionvector-norm.md) | 137 | `result-track:e5d825483434e7d7a4a0b3ae0f1e166e2cbe3a952bc1e7303d9627cb404defdf` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionvector-add.md) | 142 | `result-track:dde02ab4a59e7be5c71ac0cdebfd372ebdf9117ea07a1ecda2b0d3dcacbd77d2` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextensionvector-smul.md) | 154 | `result-track:f489764d9333fa47888447e98c5bad03eb5dd58566c8690c06ca744b2804389f` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextension.md) | 167 | `declaration-track:8220bbc248015c9d1987781891ed8c06461eaadbdeb957f788b39ceff8eedf29` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextension-ae.md) | 173 | `result-track:68710d039ba0042ec58f051d2392da228c130f0f05554b662471bf634a5d5f68` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextension-norm.md) | 177 | `result-track:a693d35d4afb4f7d3da600e7ca21896eec0ee9cc2d1d2a6f7b0f530e547e0fac` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextension-ae-halfline.md) | 180 | `result-track:b74bdac32743b0caee7f90de0bf370756baf0fbcac8f66dd7ca5a1a9dd60de3b` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/zeroextension-ae-nonpositive.md) | 186 | `result-track:b64f6933a56c29d9dff782791d0a02534c89760aa00c66141f060f66084fefa5` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction.md) | 195 | `declaration-track:2b38ff255e5fc3a2e4e534436f992ce075d72463ca039ecad1e7caab95085f87` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction-ae.md) | 197 | `result-track:26298eca6309d19be7ce7fc3a18eff5c6cb9e4ae1cff54e63a70b8081d0ffd10` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction-norm-le.md) | 200 | `result-track:a36c2aab5f0133f7d5690c1bb3fa180f2c4be697ec26ddd4c71da58053cc6ed9` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction-opnorm-le.md) | 203 | `result-track:fa86869e74822a14438759a67c8d2ec527149a43a59e028710fefd1a2929d8b9` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction-zeroextension.md) | 208 | `result-track:fad613835005f0e10747e860e8d88ca8781d36fe99a375579079f572882279ef` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/restriction-comp-zeroextension.md) | 211 | `result-track:d15713bf6c13d0b632942a0d6b756149e156091daf880914f5e00b04e2c72e71` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution.md) | 228 | `declaration-track:4cdbfab79e84019b6fc610882a159c23cf55a94469047ef36d3a3c32c18b9cff` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution-apply.md) | 231 | `result-track:d0b23daf65e77316ff35409d51ec81adbe7b1d9607e541c920b393d4bd8b0f89` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution-apply-norm-le.md) | 235 | `result-track:7e906ed02a2dfdcdc5747800cc3a10e8db8e7ed65ee1b7c1b6863c1a10bb13f3` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution-norm-le.md) | 242 | `result-track:aa69951357034cf94ca677d0ecde77d282d35023c2d5502f44a4a6199099efad` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution-sub-kernel.md) | 247 | `result-track:19253c176a56c21df0e7ff28484af0d699404b4236bb7e09665d962d533c7301` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/halfconvolution-norm-sub-le.md) | 256 | `result-track:29f4dc430615673f7252d5adcc6a6d11df0528e0867e1ec3ba3e755457ecbb2a` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceoperator.md) | 261 | `declaration-track:e3435623c35a923dfc16c8dcc689c2bb238801bc134df07d8f99ff475bf773fb` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceoperator-apply.md) | 263 | `result-track:83c73c7b217c4a017b1eaacc3f0b2c9a2c12b66498871a15ce4d9113a3ca6578` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceoperator-apply-norm-le.md) | 267 | `result-track:db2d79c5ab2fb794b7fc6b9d7e16d2877784d675e47f473fc6e5afbed78fc023` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceoperator-norm-le.md) | 271 | `result-track:59b3477c0531404e7d7f94691395410b73bb5b0339538b8de7505430be39733b` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy.md) | 275 | `declaration-track:d0edb63f591dd3095458006de08ea535d4f549ed2bf8fbff19998c9e88bd28a2` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-apply.md) | 277 | `result-track:58eba1f929645cd2db1fa7acd5fda9a56a7e763345ea18d9860f083e463d0c6a` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-ispositive.md) | 280 | `result-track:04d2aab6f44c39b0b2c3e0eb8a700d3ff3d70dca0ed659a75400394661958ad5` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-isselfadjoint.md) | 283 | `result-track:051b356529abf7739dedcae7e49a630bf520bb724f02e184bdd6c05871886308` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-inner.md) | 286 | `result-track:75ff0de03ca695e8094659783610e1f9aaf9159c1380a1023b41fb58e8e4aed4` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-re-inner.md) | 291 | `result-track:3aabc84d1984f56c0d47967232db49a91e21aff0275981b11752320c0266eb65` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-kernel.md) | 296 | `result-track:6135336f6dc589c959de38ed17fe397e1bd969ccd7ab85a9828b65e56c45447b` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceenergy-norm.md) | 299 | `result-track:5b8d436a5ee5ae0f6079bca2212d85ddf7c9d78dca4be2c9b7570cb7f6b75206` |
| 56 | `def` | [truncatedKernel](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedkernel.md) | 315 | `declaration-track:bfff752cceac7a30bf10f8c2b67016c63fcfd1dfcc35e046cda47e2612513d6a` |
| 57 | `theorem` | [truncatedKernel_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedkernel-integrable.md) | 317 | `result-track:5d6f247da8e5f496d358b4bb9dd7702a4ddae6d77e24ee16e621e77dd09b4ce0` |
| 58 | `theorem` | [truncatedKernel_memLp](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedkernel-memlp.md) | 320 | `result-track:dd28ab50a5d2ec375942d948ae10c5bcd3d98cc4466ace45584c1d2adc09a50e` |
| 59 | `theorem` | [kernel_sub_truncated](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/kernel-sub-truncated.md) | 323 | `result-track:c83412f0fb748f2399676067336a0e1314133e0c1f3acc73ef231afe07d28e50` |
| 60 | `theorem` | [norm_kernel_sub_truncated_integral](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/norm-kernel-sub-truncated-integral.md) | 334 | `result-track:ff510cfbdecc6d2851e3852c79b68b3d09d4b9ec1539387a3b8472466c9dfcf6` |
| 61 | `theorem` | [tail_majorant_integrable](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/tail-majorant-integrable.md) | 342 | `result-track:575168628d250f93db204d8d719ca75b52e0e16a8f14d27dc6207249fb3faa22` |
| 62 | `theorem` | [tail_majorant_integral](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/tail-majorant-integral.md) | 353 | `result-track:c22d2c626eca94009df9ef42f6c46fb96256c0e476becd4ff4db9836388c26e0` |
| 63 | `theorem` | [kernel_tail_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/kernel-tail-integral-le.md) | 365 | `result-track:b7dce3027d34403c11357ab8ee156c65b2b047746fb522a8bfa0a345c8347fcf` |
| 64 | `theorem` | [norm_kernel_sub_truncated_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/norm-kernel-sub-truncated-integral-le.md) | 373 | `result-track:44563132854eda94a869670fe3f544f8d259d0e3d7e88cc344e8ad860af8e6aa` |
| 65 | `def` | [kernelMass](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/kernelmass.md) | 379 | `declaration-track:107590330c0b6bc027b1fd6bc09b31c06112d7af169b2bb5242b9c5b6ac7bde4` |
| 66 | `theorem` | [kernelMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/kernelmass-nonneg.md) | 381 | `result-track:3ad881d5a83973e18cf977e76936feeb6bbfd890302a01f90afd057c288ece4b` |
| 67 | `theorem` | [truncated_norm_integral_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncated-norm-integral-le.md) | 383 | `result-track:71fc2aff0ab9249ad19a374de586b4063f3a9eb848ed8b65c22ba7c3a5b9f5b8` |
| 68 | `def` | [truncatedOperator](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedoperator.md) | 388 | `declaration-track:65a1c19efdd6593e755ceebc38a3cbb862f4bc65f9b65d8d5707e465eec50409` |
| 69 | `theorem` | [truncatedOperator_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedoperator-norm-le.md) | 391 | `result-track:f4e80211373c290a4bd6874527348db03473c114a9cd36325922d275ae77700c` |
| 70 | `theorem` | [operator_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/operator-norm-sub-le.md) | 394 | `result-track:461ba7cf9be33e7bd883a90b442bf7b67a395996f9fc33d348315b4b637c1a7c` |
| 71 | `def` | [truncatedEnergy](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedenergy.md) | 400 | `declaration-track:fd2161399b3f9f6c56785d9c6ed87181b1f1bd2f567d8a3c98c5848dc046bf05` |
| 72 | `theorem` | [truncatedEnergy_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedenergy-ispositive.md) | 403 | `result-track:d3b4d582239b400a78e230347ecc503be5cc961aee8543f116b86afd34ca8d49` |
| 73 | `theorem` | [norm_energy_difference](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/norm-energy-difference.md) | 406 | `result-track:10f477087e5c20562f815f2ed0fef160c1658f434606cd1ccbbc090f77030220` |
| 74 | `theorem` | [energy_norm_sub_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/energy-norm-sub-le.md) | 423 | `result-track:74b14f8cf6690cefdc65caf3d594f893c68bbfce4acfb5bfd766d195d39325d6` |
| 75 | `def` | [diagonalCutoff](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonalcutoff.md) | 435 | `declaration-track:f8e56075ae84cfa5ae567376f37c925fd1b44aca8b2d519984e6f5f305b7cc1c` |
| 76 | `theorem` | [diagonalCutoff_ge_two](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonalcutoff-ge-two.md) | 437 | `result-track:cea55f5e5aba9d93a14de6bd4695d3fb7b1c0ba4ec87f5cc94c54f6c1cd1cefd` |
| 77 | `theorem` | [diagonal_exp_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-exp-le.md) | 439 | `result-track:88801a95dcde49728346dda1499db7dae09df79034b0c7e1e61aef6cf784a974` |
| 78 | `theorem` | [diagonal_operator_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-operator-error-le.md) | 449 | `result-track:50060331d1c732fa77ed1594b0e999fe3cef57f4534cd17dcebe0e78f29a1a33` |
| 79 | `theorem` | [diagonal_energy_error_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-energy-error-le.md) | 455 | `result-track:ae9e590243731f4856051a51aba86e454caabb9482c3deee2944cc7513613f95` |
| 80 | `def` | [positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift.md) | 482 | `declaration-track:e72ced0826a932dde4978ed21abc032c4a58d85da167af7fd12595cae4021381` |
| 81 | `theorem` | [positiveShift_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift-ispositive.md) | 486 | `result-track:e0fe8e4ce2146fe9c544aa24d026cc4f7237077a8a6116fd1f3ecc347906cb8d` |
| 82 | `theorem` | [positiveShift_coercive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift-coercive.md) | 493 | `result-track:201264775c96921dcf1cc78599ba7bd9ae023ef21cfd542c87965f9261fefa85` |
| 83 | `theorem` | [positiveShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift-isunit.md) | 508 | `result-track:3334bce83edf452b267e3e1fe27cdbe0392163f9adaca5eb784745af831cab6e` |
| 84 | `def` | [positiveResolvent](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveresolvent.md) | 519 | `declaration-track:890493d0f835e06b9b3c897bfcfb793fb4eb6239096d93f994939c74274c0805` |
| 85 | `theorem` | [positiveShift_mul_resolvent](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift-mul-resolvent.md) | 523 | `result-track:49da24cf0ac1fd2a82206ab9da8a789876f792d224153b488cd872c1ea5b0986` |
| 86 | `theorem` | [resolvent_mul_positiveShift](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/resolvent-mul-positiveshift.md) | 528 | `result-track:c51a6a26fbc49958f3e12c1580c4bdc041e75b554f87d57a550c2bd608cc8479` |
| 87 | `theorem` | [positiveShift_resolvent_apply](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveshift-resolvent-apply.md) | 533 | `result-track:daee6467011cb8425b5c6e6519776a796c780419930cd9f5ae854eb28aa9f472` |
| 88 | `theorem` | [positiveResolvent_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveresolvent-norm-le.md) | 540 | `result-track:6bc3f7f9264a11eadafd1ba5a5ea7d1bc909fc713eb7be7ea1568f072c8f019b` |
| 89 | `theorem` | [positiveResolvent_isPositive](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveresolvent-ispositive.md) | 556 | `result-track:acdec3b3f83ae787a2977d646e6022d63bd66cb7badb544b39ace8a5465ffe9b` |
| 90 | `theorem` | [positiveResolvent_sub](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveresolvent-sub.md) | 567 | `result-track:7d48b16adaa565cc82b830c66936971e3319da118eb4949cbc6b7f3fadc86276` |
| 91 | `theorem` | [positiveResolvent_sub_norm_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/positiveresolvent-sub-norm-le.md) | 579 | `result-track:0e2d07040e1cd1c4f19a8abf596e3de7f20181b5aaf4b5437b500a55ea20d1df` |
| 92 | `def` | [regularizedMass](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/regularizedmass.md) | 593 | `declaration-track:e58d6ccfd44f47094eb2a59aec5d34954c76d9c3efe284c82642e7ac0b236750` |
| 93 | `theorem` | [abs_re_inner_map_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/abs-re-inner-map-le.md) | 597 | `result-track:fd84742f93a3a6f145a5568bc16a2cf297a724796bcb69eafbdb33a6908f84ca` |
| 94 | `theorem` | [regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/regularizedmass-sub-abs-le.md) | 606 | `result-track:d7cee5ff9e280c7d77e8830dfe88ef2fcf43c19bd5fdbee7063a6cd12ae43eb5` |
| 95 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 626 | `result-track:b2b1764b8eb6e0becbebf4d56f551655a168fed85a9c95a950a9ba505dda0e5b` |
| 96 | `def` | [sourceMass](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourcemass.md) | 660 | `declaration-track:f084162b890509bdf61114cd7d88d5b911855faf6a03b5d4fb51875a7612778d` |
| 97 | `def` | [truncatedMass](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedmass.md) | 663 | `declaration-track:dcd06db7c5c59d1ef919add2745cb620aaf4994c6bc2115c7a8223f5f47f8a24` |
| 98 | `theorem` | [sourceShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourceshift-isunit.md) | 666 | `result-track:130241b1452106ee3ad2558a52b6fa9a87afa32ccacfdcc9edfc12e125a9ccce` |
| 99 | `theorem` | [truncatedShift_isUnit](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedshift-isunit.md) | 671 | `result-track:3d175f07b4fe37f637a8928ad212df625f67cfb555927392191ddbaedeca04b7` |
| 100 | `theorem` | [sourceMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourcemass-nonneg.md) | 676 | `result-track:e7343714afc8ed606f01edbacfcaa453b070ab41d3c513093915e1323ca9001d` |
| 101 | `theorem` | [truncatedMass_nonneg](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedmass-nonneg.md) | 681 | `result-track:57c1fd5d3ec9347f5b0f80b5a069840e490c1c54babdb71f6edf428c63277fe5` |
| 102 | `theorem` | [regularizedMass_le_norm_sq](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/regularizedmass-le-norm-sq.md) | 686 | `result-track:5631b9ec876f4f69ebaefbb785d3e56fd8432a4185f0e37da0c2d073574bab41` |
| 103 | `theorem` | [sourceMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/sourcemass-le-half.md) | 705 | `result-track:4478dd20ced30480eb8e7c1582c6dbfcfeeb53f5d4eaf28897d7fb619dfe8059` |
| 104 | `theorem` | [truncatedMass_le_half](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/truncatedmass-le-half.md) | 710 | `result-track:cacee790dafddb40f16bf62869925d5cc01a04f7215cfaaa306ff4f9d804bd03` |
| 105 | `theorem` | [mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/mass-sub-abs-le.md) | 716 | `result-track:c9c6039cb1050622cd759d69ed56bafc405f4eba1a186f5d00e06a80dd067176` |
| 106 | `theorem` | [diagonal_mass_sub_abs_le](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-mass-sub-abs-le.md) | 728 | `result-track:5668df0de7b607241fe99a7d7a4434cd7265b8ea19a498d9b83f20c948675053` |
| 107 | `theorem` | [diagonal_mass_sub_abs_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-mass-sub-abs-tendsto-zero.md) | 742 | `result-track:a40527d5517755bceaace4ad11dddb6fbd9b6496955f972aeec23e3f21f01266` |
| 108 | `theorem` | [diagonal_mass_sub_tendsto_zero](../../../../MeasureAndIntegration/SourceResolventTruncationCombinedNamespaced.lean/declarations/diagonal-mass-sub-tendsto-zero.md) | 754 | `result-track:bf91ee50d784d6c9579ace3a0f622ba3b2292fa8ab9cdecf8c95b320218ac229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7f39b9ce7cb31ba19a7a176c177e0dcc7e268967a2364ccc1a5591b5e77aa7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceResolventTruncationCombined/Variant6992c484a37fe912a44914dee405cea920552f98d72c3a0c5e9735033b651774.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
