# Verification target: Source Convolution Ae Combined

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eaf8d07c4775b88286bce7344d5b5547070f59a",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eaf8d07c4775b88286bce7344d5b5547070f59a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.Indicator` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullh.md) | 18 | `declaration-track:b2a603c2015204a8943e97cea44bd4ad46695ae2699418ccaf5914136995e43f` |
| 2 | `def` | [fullShift](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullshift.md) | 20 | `declaration-track:98f2ed1e44b7359759c4fbc52cd50fe38674265867f3834ccebfdde5b58fbc08` |
| 3 | `theorem` | [fullShift_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullshift-ae.md) | 23 | `result-track:c0e5c5a5d558fdf3725a40d8f45df4a65e53d71e20503e2d9e900a5bd27b65a8` |
| 4 | `theorem` | [fullShift_continuous](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullshift-continuous.md) | 27 | `result-track:c8b3b3cd02c5e4d83e7839ab1e0f7e0ebf746a7b228af569e0af69e2ccbd19e5` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/weighted-shift-integrable.md) | 35 | `result-track:f2916b34ecc67c241b64c4fcebe58c55e9748aa1cf43352a0a9101acc202fc09` |
| 6 | `def` | [vector](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/vector.md) | 44 | `declaration-track:049b048cd3c3dc28c9187b51b44e809e0845090d65899c4c9547b17fa2cdc622` |
| 7 | `theorem` | [vector_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/vector-norm-le.md) | 46 | `result-track:72beab9d66b29392a09ebb22cdc357df5392d5788611b3f75e477aa4ca14454f` |
| 8 | `theorem` | [vector_add](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/vector-add.md) | 53 | `result-track:390460894a4b44686e4f3cfe48b97f5d76b66b540f813b54625fc11da32700d8` |
| 9 | `theorem` | [vector_smul](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/vector-smul.md) | 58 | `result-track:cd1fa50c100905c385f6d121d3b046e959faa838ab5ea2b42ba7f521d590ee2e` |
| 10 | `def` | [linearMap](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/linearmap.md) | 62 | `declaration-track:292d87bfd2b3b9f8070fd3c6fe370b225510253df0c66ff9aeafb038b50ed59d` |
| 11 | `def` | [fullConvolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullconvolution.md) | 67 | `declaration-track:088d3bb866678f2751adcaca34ea980bf401dad31e061243a147ffce2132b5c0` |
| 12 | `theorem` | [fullConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullconvolution-apply.md) | 70 | `result-track:5713a5d0ecd66635a2b166bb4688f87408a1feaa1426deeadd92be0918bdcd25` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullconvolution-norm-le.md) | 73 | `result-track:b89d1351ec9c45def784b0c017825372062f73a2ba34863fc3bde25a2bd63684` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullconvolution-sub-kernel.md) | 77 | `result-track:4d22990bc18640b48e1ad4ea7ce473df7a79324452a5d108ff6f2b4bda33c918` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullconvolution-norm-sub-le.md) | 85 | `result-track:63f01ccec6944fbc870926ff51fa1c8884d7a44715d4877a9cb5f30d2a76ab77` |
| 16 | `def` | [actualFull](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/actualfull.md) | 90 | `declaration-track:368a577dd3da153c28b71edff9d1f079c1eab3f9069ae46d6f0157cd8202141a` |
| 17 | `theorem` | [actualFull_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/actualfull-apply.md) | 92 | `result-track:eb934b02b3a33c89eb6a0833d36daa6d4dd70f4c3ef82ebd6c37ce4802b2aa5d` |
| 18 | `theorem` | [actualFull_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/actualfull-norm-le.md) | 95 | `result-track:acebd6b4839b63fef116756959ca523af3c6bea132552ddd43303af97be88aac` |
| 19 | `abbrev` | [FullH](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/fullh-source-edition-2.md) | 113 | `declaration-track:b48f939b8fef9610c283cb67b6bf08b679c335526373b3065edde93f62601ff9` |
| 20 | `def` | [zeroExtensionFunction](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionfunction.md) | 115 | `declaration-track:baa53992661c822a9c11fe70f47abb791a2739a3f1c9e997c1076ef9f4cb23d5` |
| 21 | `theorem` | [zeroExtensionFunction_memLp](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionfunction-memlp.md) | 117 | `result-track:2c30f77c9bd4848fbbf53c59cae3a4371c003c72aa79ff47651237575139bd68` |
| 22 | `def` | [zeroExtensionVector](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionvector.md) | 121 | `declaration-track:9e6e11a91fa76a6f38d29228a1e72ad573e0ebdf1e2112d1a70825ede1c00938` |
| 23 | `theorem` | [zeroExtensionVector_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionvector-ae.md) | 124 | `result-track:6c8acaa8b44c8602f9a54284f243e6376cf2f81b45ff3dab69d5cad7fe3c897d` |
| 24 | `theorem` | [zeroExtensionVector_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionvector-norm.md) | 128 | `result-track:903e7e8ffaf0ad25a6d53207bbcfa546a1293ae4c4f8e4983ab464f9a052562f` |
| 25 | `theorem` | [zeroExtensionVector_add](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionvector-add.md) | 133 | `result-track:2c5786eec4586375c11ded280d461162c69d5ce074eb3b2a708fe7c67c079ba5` |
| 26 | `theorem` | [zeroExtensionVector_smul](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextensionvector-smul.md) | 145 | `result-track:7d8a734c5f54ef6b0f023eeee40a6dbfcf0111c7f3c4642b4aecec418bf77d3f` |
| 27 | `def` | [zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension.md) | 158 | `declaration-track:658bc91910e7eb823f5284da5e0beaf207fbb968a7bd815ec9ef9d980766e781` |
| 28 | `theorem` | [zeroExtension_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension-ae.md) | 164 | `result-track:fee77dc40ac15f6b6be4522a72e1f8fe12dce101c43cdf9e6237b51c60dbef07` |
| 29 | `theorem` | [zeroExtension_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension-norm.md) | 168 | `result-track:3500675f1476f9f639c1a5fc1241befc5d4e93707b11a7509a17338f6ec6fd4d` |
| 30 | `theorem` | [zeroExtension_ae_halfLine](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension-ae-halfline.md) | 171 | `result-track:80e03fe8e9c4bd900509af6810913ae5de062fc02a57360adc56713b45427a1d` |
| 31 | `theorem` | [zeroExtension_ae_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension-ae-nonpositive.md) | 177 | `result-track:255859bbecbbe65cee77330d57b3c90f392266bed698edb26bec34e8508b421a` |
| 32 | `def` | [restriction](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction.md) | 186 | `declaration-track:ca2f44396864626de22183f6b52b9e86cdb820f8a81e5cf6de5c1f3f7d4d9171` |
| 33 | `theorem` | [restriction_ae](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction-ae.md) | 188 | `result-track:6cc6194cd71f26cc1b5df166bb22a935efc3ff0eacae8f5f94ad5fb0b4bb2da9` |
| 34 | `theorem` | [restriction_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction-norm-le.md) | 191 | `result-track:aa17dcfd3a095cd8166b2053ac923b805bd75b5f51f82aeb943db12adf4799c4` |
| 35 | `theorem` | [restriction_opNorm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction-opnorm-le.md) | 194 | `result-track:48d0094eae28c4db3de22bb315593d5093a45093fe7176bd8cb61322d01a63b4` |
| 36 | `theorem` | [restriction_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction-zeroextension.md) | 199 | `result-track:2bb8c877ad599eaaa0e1a9565072fb082f1c343e033b1d17a95aa521439c16b0` |
| 37 | `theorem` | [restriction_comp_zeroExtension](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/restriction-comp-zeroextension.md) | 202 | `result-track:a88ff67871c7b4819e79da9ec23eef88bccab16ae45226e1ae389aa506fb56f6` |
| 38 | `def` | [halfConvolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution.md) | 219 | `declaration-track:835e1a0cd1dd37b49256ac09445d1f01d1633ec14902181334be3fa4c84c1906` |
| 39 | `theorem` | [halfConvolution_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution-apply.md) | 222 | `result-track:800bdbc264c48af1e4db292999b6bd9d5e373b5d106b8cdc3255c876bb3e55b0` |
| 40 | `theorem` | [halfConvolution_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution-apply-norm-le.md) | 226 | `result-track:cbf010831bfd04f23e7e00fa07ad89fa7b8ee7c0fd8cd9d8ebe958121f834b1b` |
| 41 | `theorem` | [halfConvolution_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution-norm-le.md) | 233 | `result-track:86268b87d3cf8067831dee786a38313beaf35b588985f32bcdb65f2776d6c260` |
| 42 | `theorem` | [halfConvolution_sub_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution-sub-kernel.md) | 238 | `result-track:b3a5833f5366e7963f2856884e335b623b1a4c1aa07f8c54ef5d78f00080b9de` |
| 43 | `theorem` | [halfConvolution_norm_sub_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/halfconvolution-norm-sub-le.md) | 247 | `result-track:9a8e78e1c4f56b0b176ba86487639058f0458f2d7c31f702af771013a3698265` |
| 44 | `def` | [sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator.md) | 252 | `declaration-track:bad43beae25ba7844b513cfd1358958391b885f8c9245842521b43e1acee6766` |
| 45 | `theorem` | [sourceOperator_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator-apply.md) | 254 | `result-track:a0d5a4b9d0f050fb9f4c00de665cb5d67398cb37e43c01f5535009d741e70ee5` |
| 46 | `theorem` | [sourceOperator_apply_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator-apply-norm-le.md) | 258 | `result-track:76dc6e5a976dbd8bd849c9ac87548a91569a1ba546c7c3add5696602f18c110b` |
| 47 | `theorem` | [sourceOperator_norm_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator-norm-le.md) | 262 | `result-track:be8c12ab289c612d1a5f569fe33b37a538750b08738ee11550ec1f39ea92651f` |
| 48 | `def` | [sourceEnergy](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy.md) | 266 | `declaration-track:a115b10210df5a07205b555d7afffa7299ec8c345ace3a34aba6b3875c3ea679` |
| 49 | `theorem` | [sourceEnergy_apply](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-apply.md) | 268 | `result-track:dc2310167cf5d8c1b4a7b283661f321b279c9fe4539e0e79927b14e82974a7f2` |
| 50 | `theorem` | [sourceEnergy_isPositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-ispositive.md) | 271 | `result-track:394f699839c82ab035c0501c180812ea74f8e1bbae59c952819d56b2f76a0e31` |
| 51 | `theorem` | [sourceEnergy_isSelfAdjoint](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-isselfadjoint.md) | 274 | `result-track:ac6bf547c3d9fbf44db21a6b5ba6fd35b398895cb5e7375c4347dd4ac9f018c8` |
| 52 | `theorem` | [sourceEnergy_inner](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-inner.md) | 277 | `result-track:fbd8bd141c07ec8d445c1eab36a39ec9a01f540c9062d9d2f424c094296ab622` |
| 53 | `theorem` | [sourceEnergy_re_inner](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-re-inner.md) | 282 | `result-track:4624f48a238d0659eec84f461d8eb661e08971cb46a24e710c8b23e6c235af5a` |
| 54 | `theorem` | [sourceEnergy_kernel](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-kernel.md) | 287 | `result-track:dcbf72482df69bcc5f933f4fee3888cdde2622f88a45073f5015c2bc3f8e4559` |
| 55 | `theorem` | [sourceEnergy_norm](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceenergy-norm.md) | 290 | `result-track:618708c7b92d353ad76d6f24559b7df3e60940ce964f527b6abebe36598cc029` |
| 56 | `theorem` | [smul_integrable_of_memLp_two](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/smul-integrable-of-memlp-two.md) | 309 | `result-track:53bb1cbc60ab65a9b736b6574eb992ac1fc5ba0e2b2ac5ccdc4a8f86e1657d7f` |
| 57 | `theorem` | [integral_norm_smul_le](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/integral-norm-smul-le.md) | 314 | `result-track:f47fa3ad8a25070018cc9ac6cbc67ffba50b3b8d040dca52be7af8d9074e117a` |
| 58 | `def` | [convolutionFunction](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolutionfunction.md) | 329 | `declaration-track:06a01a6089e4c814d8361dd481049bc8ba990d09124fb95c9f10b10b31dd2424` |
| 59 | `theorem` | [convolution_integrand_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolution-integrand-integrable.md) | 332 | `result-track:70507f48c40964e1993c56b587a844e8dafb53f576fb893ea47ff26f850ac760` |
| 60 | `theorem` | [convolution_norm_integral_bound](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolution-norm-integral-bound.md) | 337 | `result-track:853bd07449a1e4664ab7c1b7190700cb1c6ab87593f91ea2cc41aaa38a4fc49c` |
| 61 | `theorem` | [convolution_integrand_stronglyMeasurable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolution-integrand-stronglymeasurable.md) | 346 | `result-track:56daedc73ebfd3cc1881b348ba5533c88143c96ff996ee875515feb5362b7e71` |
| 62 | `theorem` | [convolution_product_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolution-product-integrable.md) | 351 | `result-track:75e70268bf5f147d8cff2f9877fa11cfc9a48bb6b3a5a5e93e436dc865ba6196` |
| 63 | `theorem` | [convolutionFunction_integrableOn](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolutionfunction-integrableon.md) | 366 | `result-track:d40f82f0fac005a165e1215ea1673b4ba1fed44faa52e996aa80e56cbbd170d3` |
| 64 | `theorem` | [vector_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/vector-setintegral.md) | 370 | `result-track:626360d245d8b109235f57b767a40bbc846e2a30ef56db92c4aee2c8040ae4ea` |
| 65 | `theorem` | [actualFull_ae_convolution](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/actualfull-ae-convolution.md) | 385 | `result-track:2995d2106b9e6b12f809dd34d1bd965e1cd6411951fd1ab4c3bb4010fa103bf3` |
| 66 | `theorem` | [convolutionFunction_commuted](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolutionfunction-commuted.md) | 397 | `result-track:e17e1dcfc09a0099415843b8c7e8b5fecf97260de072803ba49cb83e9ec9d03d` |
| 67 | `theorem` | [causal_integrand_identity](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/causal-integrand-identity.md) | 403 | `result-track:75037f266b7879b250c852668e5a2674600cb14f003d8c6dc886ba707ae3d73f` |
| 68 | `theorem` | [convolutionFunction_zeroExtension_eq_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolutionfunction-zeroextension-eq-setintegral.md) | 415 | `result-track:b10786ce6a35ce0cd791f850a824c390e4da0fa9bac1b32bb9d5a1d8f583716b` |
| 69 | `theorem` | [causal_setIntegral_integrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/causal-setintegral-integrable.md) | 424 | `result-track:6a0051c37bf0f51b84c33aa486a0698fa365e3f98bef6e3592197ad57e8c50b8` |
| 70 | `theorem` | [causal_intervalIntegrable](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/causal-intervalintegrable.md) | 434 | `result-track:44ad0ca3bb6b754205a4b6a6ece3196f71daecbd892ec2f44e3e4c119119cbac` |
| 71 | `theorem` | [convolutionFunction_zeroExtension_nonpositive](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/convolutionfunction-zeroextension-nonpositive.md) | 439 | `result-track:3dc94098c52469dc4e8bedfbd675cdd7f733f3d0eaba6c4e29896c7ce66c031b` |
| 72 | `theorem` | [sourceOperator_ae_causal_setIntegral](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator-ae-causal-setintegral.md) | 444 | `result-track:0c7cbdc873c09b20873204168d0cae64473b2dc290d0999bf6cbddf23b5c7f9a` |
| 73 | `theorem` | [sourceOperator_ae_causal_integral](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/sourceoperator-ae-causal-integral.md) | 455 | `result-track:2a275b3f71395081bfbf3c1972d005a77ec339133815fdf0713826e457f7b118` |
| 74 | `theorem` | [full_sourceOperator_causal](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/full-sourceoperator-causal.md) | 464 | `result-track:d00b5ac2c09c7c58e446216297966c923f48a947e7e3db4aff6cd6e2b3094a00` |
| 75 | `theorem` | [zeroExtension_sourceOperator](../../../../MeasureAndIntegration/SourceConvolutionAeCombined.lean/declarations/zeroextension-sourceoperator.md) | 471 | `result-track:fe89c57835f85c677437c80872bbe946e9b7438a507740fe6ef824dc2652ac56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=001337cd6061b6321ef9257ac0d6c2d7a5b609e499770b99baced9147425b147 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceConvolutionAeCombined/Variant65265a26cd72940bf697a8c0c7a6c79ec114c3d6ce15c9c8b1043cbb839f7098.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
