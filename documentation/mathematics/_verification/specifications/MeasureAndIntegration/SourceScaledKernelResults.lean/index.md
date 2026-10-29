# Verification target: Source Scaled Kernel Results

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb0b7ef84b33409cc223654932e967b0cf502fe1",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb0b7ef84b33409cc223654932e967b0cf502fe1`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_correlation_scaled_exact](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/source-correlation-scaled-exact.md) | 26 | `result-track:249762b8527cc55c6e878745fa9bce9f2e1a68510d4b4ad6a339dc1db26d7abf` |
| 2 | `theorem` | [source_normalization_inverse_square](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/source-normalization-inverse-square.md) | 34 | `result-track:6098be92323112b24781349a0c66558eb9964d9ed7f0559eeae013e41a5c0fc3` |
| 3 | `theorem` | [source_correlation_inverse_square_exact](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/source-correlation-inverse-square-exact.md) | 42 | `result-track:d9219f8ed9c4ded0a8bb85d54a08f2ea1b5f72d612e4f4d3a8bfdf6f4f17999c` |
| 4 | `def` | [endpointPolynomialZero](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpointpolynomialzero.md) | 54 | `declaration-track:d0f8d76bf282a0f8fb49cd66b3f4e1fba8b49c259461f9027b7f6e20fdd8f9b5` |
| 5 | `def` | [endpointPolynomialOne](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpointpolynomialone.md) | 66 | `declaration-track:e32ef24a6174558738c9662c0ef6b37e84c907f597d082c61c9d1c04047f6842` |
| 6 | `def` | [endpointPolynomialTwo](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpointpolynomialtwo.md) | 78 | `declaration-track:971db4de539b81ad3664a19dee907425a5335a5642bb2674cbaae805944bb479` |
| 7 | `theorem` | [endpoint_polynomial_values_at_zero](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-polynomial-values-at-zero.md) | 90 | `result-track:8df0514282659fed031c18cc899a255853bef91ddadacfd969f24a77cd2c7cad` |
| 8 | `theorem` | [fixed_kernel_zero_eq_polynomial_integral](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-zero-eq-polynomial-integral.md) | 97 | `result-track:a7884d354b780a9cb5a632104b6765b983dd533cdd6ba1a1f662d5499d04295f` |
| 9 | `def` | [convolutionPrimitive](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/convolutionprimitive.md) | 118 | `declaration-track:7d9fac06d5a06bd10d5e152f61526ef3681d52fda6dbdb286a20fa648be04bf1` |
| 10 | `theorem` | [convolution_primitive_has_deriv_at](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/convolution-primitive-has-deriv-at.md) | 139 | `result-track:1865062778a230d30b22823bb7c1c501d8e9f65a7c49fea544f1d37dbcfe876c` |
| 11 | `theorem` | [fixed_kernel_zero_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-zero-endpoint.md) | 176 | `result-track:c59a1b186d2415214ac31012adb138f0256f2b8c32c17025aa5f291e3f941213` |
| 12 | `def` | [endpointExpandedZero](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpointexpandedzero.md) | 186 | `declaration-track:63629301d95c779609b9dd2bb907d97c4b1242e62da569dee8a987648622f18c` |
| 13 | `theorem` | [endpoint_expanded_zero_eq](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-expanded-zero-eq.md) | 197 | `result-track:6a1e7195a4897d531e770e902ac3adecf996c1528a0d2b25114535c53cc90d2f` |
| 14 | `theorem` | [endpoint_expanded_zero_deriv](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-expanded-zero-deriv.md) | 202 | `result-track:f1f54e907b405aa362927623b92ca63227dd14cfab1f8130de3d23a55baafd8a` |
| 15 | `theorem` | [endpoint_expanded_zero_second](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-expanded-zero-second.md) | 217 | `result-track:3e8e8c91c2581af3048567aa02f561e4f107b84fd4f644812ae0190c31aaf93a` |
| 16 | `theorem` | [endpoint_expanded_zero_fourth](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-expanded-zero-fourth.md) | 223 | `result-track:d7c57197a4aa07b7a907f2c36471aed9fd0cd4220e50f4799d0439e6bbd0bdbf` |
| 17 | `theorem` | [fixed_kernel_zero_cont_diff_eight](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-zero-cont-diff-eight.md) | 230 | `result-track:4c6e4f81c00e9691cb6c2f9c46b02fbe3cae12a525398be295693dc3eb2782e0` |
| 18 | `theorem` | [fixed_kernel_zero_deriv_eq_polynomial](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-zero-deriv-eq-polynomial.md) | 235 | `result-track:805da124f19a24196c58d6348d7571e4a60539f37b2f89fb30a186bd65beb44e` |
| 19 | `theorem` | [fixed_kernel_one_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-one-endpoint.md) | 258 | `result-track:fefadda21810373e8e59ab32d72bc417f5cd04fc01f61b328298af9b74b370db` |
| 20 | `theorem` | [fixed_kernel_two_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-two-endpoint.md) | 268 | `result-track:18edc03034c1cf13ec12859fc9041f270c2a81a62fd3b6769940e64e8091c25a` |
| 21 | `theorem` | [endpoint_polynomial_values_ne_zero](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/endpoint-polynomial-values-ne-zero.md) | 278 | `result-track:4b807214efcf1f5c5dc29c7a8bf1b7cdb70d67f43c64c1dd3b443868e5e0e95e` |
| 22 | `theorem` | [fixed_kernel_zero_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-zero-endpoint-derivatives.md) | 286 | `result-track:f76b7ab1813d4ecfbaec403571ff7e91b25793a6b536efc51adf04c62415e20f` |
| 23 | `theorem` | [iterated_deriv_iterated](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/iterated-deriv-iterated.md) | 296 | `result-track:6a96f047c7e9abf938b8b7548df15f78eced6a05d518a92f6cfc4b787745d818` |
| 24 | `theorem` | [fixed_kernel_one_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-one-endpoint-derivatives.md) | 301 | `result-track:75557e0c2a7201de39e0b25e292fc78b47d5154939f5bfb22f6cefb6e110fbb2` |
| 25 | `theorem` | [fixed_kernel_two_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelResults.lean/declarations/fixed-kernel-two-endpoint-derivatives.md) | 310 | `result-track:64194b4875ed84e7f7ac020e1bf33bf35fd4b51e26c6c8573cd8b4c813206077` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00e3c0a1458ffaee92e1040368cc14aee0c3557ec1342b5af1cfe625d6ebe9b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant1ad61564956f6a10eb05ec31e2aa82df0b6b1aa46c61f453f67bd0233a018d34.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
