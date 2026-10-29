# Verification target: Source Scaled Kernel Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3053a6ee4028934f237cb5de0bcf0839e2c16fd",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3053a6ee4028934f237cb5de0bcf0839e2c16fd`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.PoleCorrelationRegularity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [source_correlation_scaled_exact](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/source-correlation-scaled-exact.md) | 34 | `result-track:6f69109415cdcdfccdfae50f738e3d6b4f7c850295e9c87884cb897093cf46b0` |
| 2 | `theorem` | [source_normalization_inverse_square](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/source-normalization-inverse-square.md) | 42 | `result-track:3b33aac7b63f1ee693f874c7cf8ad21d52a8c84c297cfe6e2514a27b6550cc3e` |
| 3 | `theorem` | [source_correlation_inverse_square_exact](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/source-correlation-inverse-square-exact.md) | 50 | `result-track:98142c691c535ab69899271c7b872d053893eb9a4bae775abb606639facb8f31` |
| 4 | `def` | [endpointPolynomialZero](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpointpolynomialzero.md) | 62 | `declaration-track:15eeaf1d4f90d0c1316b517da8a9232425df0ebd5fd847b1ded10215a70abdf4` |
| 5 | `def` | [endpointPolynomialOne](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpointpolynomialone.md) | 74 | `declaration-track:5ee2ed51c183b407d5df4c1d30ef4b8f76f56f15ce92d08fda314cc8c70b503b` |
| 6 | `def` | [endpointPolynomialTwo](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpointpolynomialtwo.md) | 86 | `declaration-track:6b1971e929f6b9d8d501e6b46ddc26848e1cbd32982df6aeda2e26be339e3d19` |
| 7 | `theorem` | [endpoint_polynomial_values_at_zero](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-polynomial-values-at-zero.md) | 98 | `result-track:6ccb17e1fb51d3ee49db02d8a7f9e1253dbbaa60ffbb5c8467cba4e7c47849e3` |
| 8 | `theorem` | [fixed_kernel_zero_eq_polynomial_integral](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-zero-eq-polynomial-integral.md) | 105 | `result-track:7c73cea809fcad0f44b15a03279c9d74d31f8e6bd332b207c3ec21d0a59e80f9` |
| 9 | `def` | [convolutionPrimitive](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/convolutionprimitive.md) | 126 | `declaration-track:c75b14641a314d2d6625087b0a82299b13bf8e1d9d1e9bb670cfcfb6e3d53f75` |
| 10 | `theorem` | [convolution_primitive_has_deriv_at](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/convolution-primitive-has-deriv-at.md) | 147 | `result-track:73fce73a03f394178b1785e81dac404a9c1026f6bcaddacd2484f552c9d85714` |
| 11 | `theorem` | [fixed_kernel_zero_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-zero-endpoint.md) | 184 | `result-track:6eeba0f6b8970dc3c3b9f7044591c587a5ac8ac355954b6302a7e606f1b962d1` |
| 12 | `def` | [endpointExpandedZero](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpointexpandedzero.md) | 194 | `declaration-track:151c29b66d9aa1320387fce601895911ac44326b8dad89fe4e8951f9bcc4e07e` |
| 13 | `theorem` | [endpoint_expanded_zero_eq](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-expanded-zero-eq.md) | 205 | `result-track:9a17ae1326e4bcb1d85be54114bc3c33e83aa404de6ba62506182af37b38f193` |
| 14 | `theorem` | [endpoint_expanded_zero_deriv](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-expanded-zero-deriv.md) | 210 | `result-track:b710ae768db95a238d969f4af48174d1cb0b729c2695bca3a2750f78e073148b` |
| 15 | `theorem` | [endpoint_expanded_zero_second](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-expanded-zero-second.md) | 225 | `result-track:6afa466b3c6a6dfb590436aae3e95507083c12b40f3bef62a53bb36048a44b02` |
| 16 | `theorem` | [endpoint_expanded_zero_fourth](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-expanded-zero-fourth.md) | 231 | `result-track:8724b8b5e52786deff9e485f9d2debf14144e74a8121622dedb2f2f38fed67c7` |
| 17 | `theorem` | [fixed_kernel_zero_cont_diff_eight](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-zero-cont-diff-eight.md) | 238 | `result-track:c0ac47ecafcf627bd04644b22b65dfa9c0bb2357e87e3da0f4c31b091bfad4ee` |
| 18 | `theorem` | [fixed_kernel_zero_deriv_eq_polynomial](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-zero-deriv-eq-polynomial.md) | 243 | `result-track:1daf4d9be53133f314dd1bc44e006144333c68028241131f7fba3ba5a62eab79` |
| 19 | `theorem` | [fixed_kernel_one_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-one-endpoint.md) | 266 | `result-track:64f1446b2acfc3b259ba13a3ad5ed457c62ff2e7bb2677ba782f0ee12b3d46ed` |
| 20 | `theorem` | [fixed_kernel_two_endpoint](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-two-endpoint.md) | 276 | `result-track:611bd69ba470a7a59cce74732ca6fddd71a187aed11f483c8ce1dd3f10d131fc` |
| 21 | `theorem` | [endpoint_polynomial_values_ne_zero](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/endpoint-polynomial-values-ne-zero.md) | 286 | `result-track:c68b5ca9ace8291b0d4c29935217b2a838e1d2ff96313497899f6838fd5dd99e` |
| 22 | `theorem` | [fixed_kernel_zero_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-zero-endpoint-derivatives.md) | 294 | `result-track:fd0c211dee3bd91984bd1e6f06e401f4895d6c89eb2ef4e3f2f71bdb7d089e77` |
| 23 | `theorem` | [iterated_deriv_iterated](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/iterated-deriv-iterated.md) | 304 | `result-track:f4bf2eee79189ac4455e2a6f722163b56569dd86ea44f265489674cadb9ba3be` |
| 24 | `theorem` | [fixed_kernel_one_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-one-endpoint-derivatives.md) | 309 | `result-track:52b3ccd2a1fbcc962bef77429f2ece981a2ba64179f173334e7bb0007c5f5d6d` |
| 25 | `theorem` | [fixed_kernel_two_endpoint_derivatives](../../../../MeasureAndIntegration/SourceScaledKernelNamespaced.lean/declarations/fixed-kernel-two-endpoint-derivatives.md) | 318 | `result-track:f6386e34656554206d13cafc8cbb11001f7942c2b9ef632e987709015b9b34b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e105b550102d288b0095965b608520d3c66dee3a469053bc50bca5103b0f91e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourceScaledKernel/Variant62d832e7ad46a756d08856739c37ce7e78c38923c0fc83104eb6f053345baddb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
