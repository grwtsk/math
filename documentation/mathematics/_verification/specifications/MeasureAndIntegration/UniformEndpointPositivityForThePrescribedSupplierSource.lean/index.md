# Verification target: Uniform Endpoint Positivity For The Prescribed Supplier Source

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e83e4b73a439e8d3aa048d9226b6862e319b56f",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/index.md) · [Full source](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e83e4b73a439e8d3aa048d9226b6862e319b56f`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [endpointPolynomial](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointpolynomial.md) | 28 | `declaration-track:5ab1c7ee1ca5bdb6b7afdd343080fcff745b6fc6b0faff16da6ae209def5da68` |
| 2 | `def` | [endpointDerivative](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointderivative.md) | 33 | `declaration-track:9b5bbf6980996ea27eab5759f627ce5c50e0e53dfb964429e0d72dab29bb3890` |
| 3 | `theorem` | [endpointPolynomial_expansion](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointpolynomial-expansion.md) | 39 | `result-track:b71d0a46c279b75200e43cc46fcfd2a8501ef5aff0dd5c58252182c320b4f4b3` |
| 4 | `theorem` | [endpointDerivative_expansion](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointderivative-expansion.md) | 50 | `result-track:7b6700e29850e684eb4cb2755bffa601ee2d5ea4dd4510cc9621047a8685c0a8` |
| 5 | `theorem` | [endpointPolynomial_hasDerivAt](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointpolynomial-hasderivat.md) | 61 | `result-track:7de97b82f2da9bf25f3235994762946ff5f10f45ede9f496dfe91e6d2b5cc06c` |
| 6 | `theorem` | [endpoint_bounds](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpoint-bounds.md) | 74 | `result-track:f914eb87a394d7b3b7d37c0f4a10c9f03d6cdfff24a1cef5eb19f15f1c2997ed` |
| 7 | `theorem` | [endpointPolynomial_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointpolynomial-pos.md) | 91 | `result-track:0c6e259eea006f5173a838cb80093c437f70a3f2811025d6173d08f27f2e9719` |
| 8 | `theorem` | [endpointDerivative_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointderivative-pos.md) | 100 | `result-track:92a416674f7f6e07001bdc0775cb4b408dc125f5c6212bbb9ccb0c24597bfe39` |
| 9 | `def` | [endpointDenominator](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointdenominator.md) | 110 | `declaration-track:f71ed3a772631ecff1d35fcc43102b6bc0b372416f4e6b17e7d8f0646a6e1fa6` |
| 10 | `theorem` | [endpointDenominator_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpointdenominator-pos.md) | 113 | `result-track:562584457501f6320e1f4f9479bad962e2512937aadf6a2924e0b73aca7066d1` |
| 11 | `theorem` | [normalizedInterior_endpoint](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedinterior-endpoint.md) | 121 | `result-track:eeea3e845b816ff3c37a1766aa9a1af9fe91f538a847c0599df4bf01f8421645` |
| 12 | `theorem` | [normalizedInteriorDerivative_endpoint](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedinteriorderivative-endpoint.md) | 130 | `result-track:45d204b0e45c3314d38158e71c18d3185c55746e4eab36a496d2a6ef12721dc6` |
| 13 | `theorem` | [endpoint_mem](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/endpoint-mem.md) | 138 | `result-track:347a9233ed61bbedf740d80c1a228fb02443fbbbe497f87ce3f69d5bd244a2b4` |
| 14 | `theorem` | [normalizedTest_endpoint](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-endpoint.md) | 144 | `result-track:7386e475121629368dc74a2d807f573d8fbdfff291b022b7964dae290ff366ad` |
| 15 | `theorem` | [normalizedTest_endpoint_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-endpoint-pos.md) | 153 | `result-track:7865d0ce413dbe21b7c3dbacc43d88a45ce0e7917df0f3997f5f81b5b797a4ce` |
| 16 | `theorem` | [normalizedTest_deriv_endpoint](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-deriv-endpoint.md) | 162 | `result-track:9ae3e458796f6dbce6ee3e02cac3298bb179847a4e5a4c5a4b52236a71759788` |
| 17 | `theorem` | [normalizedTest_inward_deriv_endpoint_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-inward-deriv-endpoint-pos.md) | 174 | `result-track:3dac547f8b232146e9c496fb109b968a2682c86de1335d5ec69a3d8029cc11b9` |
| 18 | `theorem` | [normalizedTest_deriv_eq_indicator](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-deriv-eq-indicator.md) | 182 | `result-track:6fc26d0bb9136dab5aa640354cb3e8ab79a0c81aab991cf70528564477b482bf` |
| 19 | `theorem` | [neg_mem_source_iff](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/neg-mem-source-iff.md) | 189 | `result-track:99ac60328571da8da9c683d23f15b60d6c000444bb0202e627eadb286eaf6560` |
| 20 | `theorem` | [normalizedTest_even](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-even.md) | 195 | `result-track:a935d9aa731ca252caab7dd79f8a8ddce8a6d3adef989c2cbcf65ffdd6757566` |
| 21 | `theorem` | [normalizedTest_deriv_odd](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-deriv-odd.md) | 207 | `result-track:c507ea8fe0b2394dd950e8cb233442d43fe8c70a2472863143235b2d4c7169bd` |
| 22 | `theorem` | [normalizedTest_endpoint_nonneg](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-endpoint-nonneg.md) | 219 | `result-track:161c9e4651811c8e87fb16a43a400950b503ded5f18fb507a31cca01648faaed` |
| 23 | `theorem` | [normalizedTest_deriv_endpoint_nonpos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/normalizedtest-deriv-endpoint-nonpos.md) | 228 | `result-track:c13ee5d58f0aa6188bd79c13775de6209a674a01575a4a1e270862479a5a5fcd` |
| 24 | `theorem` | [terminal_product_polarities](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/terminal-product-polarities.md) | 238 | `result-track:1bd374cb5674d5e5d900d4d84daf8521fe8ed7e3588497a93950ac8beeb5d88b` |
| 25 | `theorem` | [sourceCorrelation_deriv_terminal_neg](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/sourcecorrelation-deriv-terminal-neg.md) | 279 | `result-track:aee80fccd2a9a36b97ef172bc28270a270a54f919eec0afbf34ae5018d1b1010` |
| 26 | `theorem` | [sourceCorrelation_second_deriv_terminal_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/sourcecorrelation-second-deriv-terminal-pos.md) | 311 | `result-track:9c06f7eb69ee61b7e6c393e2d1a1929e192cc4b8e4aec006a63cb26edaef71ef` |
| 27 | `theorem` | [sourcePolarity_terminal_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/sourcepolarity-terminal-pos.md) | 338 | `result-track:4e3f21f1f86cbcd397cd10da95bf68cfee7bbee955d1884edb80fb160711823b` |
| 28 | `def` | [terminalLiteralKernel](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/terminalliteralkernel.md) | 348 | `declaration-track:4669a9525b14068b9fc5b6619c295b5f5ebe392d339ab7beaf6ce19a5289d226` |
| 29 | `theorem` | [sourceCorrelation_deriv_zero_above](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/sourcecorrelation-deriv-zero-above.md) | 356 | `result-track:67c1771ae265a1e6065b46b1c20bc433a32925a16fd72497dc3fa755b6b859d2` |
| 30 | `theorem` | [sourceCorrelation_second_deriv_zero_above](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/sourcecorrelation-second-deriv-zero-above.md) | 364 | `result-track:e135758acbc7da49a040834574ceb8282d6fcddae0fcb6ba6bae9466c889a2a6` |
| 31 | `theorem` | [log_three_sub_log_two](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/log-three-sub-log-two.md) | 372 | `result-track:fc824bcf19073d8e4b08c04b040b91528b0b9c8ee587e3a0bf72e074afc23356` |
| 32 | `theorem` | [terminalLiteralKernel_eq_two](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/terminalliteralkernel-eq-two.md) | 381 | `result-track:f741c36e28c31679e6b91c877fa9dedc66f98cf5e05bd26981d597a47b395934` |
| 33 | `theorem` | [terminalLiteralKernel_pos](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/terminalliteralkernel-pos.md) | 412 | `result-track:29d97317bb04c9ef1561394d8a4dd61cedbbb613df1fa5f34c957760a5d497c1` |
| 34 | `theorem` | [terminal_strip_reading](../../../../MeasureAndIntegration/UniformEndpointPositivityForThePrescribedSupplierSource.lean/declarations/terminal-strip-reading.md) | 425 | `result-track:cb2d6f71cb9dc20eca85dda86a2b7166b58f6c243a2116a36e799c5b435568e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8c6e94462c83ea09ec4398253799dab94f877be8cc53040f8978100c641c11f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SupplierTerminalSource/Variantd9ca275644ee35cdea8eb9d6be7e46f94c356b2260e7c72685c607cdd76ca741.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
