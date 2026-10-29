# Verification target: Prime Square Correlation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b6e97e244f9104f54aea6fe81b8401690b9e433",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/index.md) · [Full source](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b6e97e244f9104f54aea6fe81b8401690b9e433`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceCorrelation_derivative_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-derivative-zero.md) | 15 | `result-track:247082e04ad110ad5b39cdc44c301b6b94251ef6b77195d780e7ffb7ea804d6f` |
| 2 | `theorem` | [sourceCorrelation_derivative_linear_bound](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-derivative-linear-bound.md) | 30 | `result-track:caf59cba66cafaaf33399cc56f31a777ebe607ecf2744f36285ab14dfc5c45ee` |
| 3 | `theorem` | [sourceCorrelation_double_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-double-hasderivat.md) | 43 | `result-track:9a10bf690be53e60b5a49a5318885a3ca50bc441f294798fba5330dd414479eb` |
| 4 | `theorem` | [sourceCorrelation_double_derivative_abs_le](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-double-derivative-abs-le.md) | 51 | `result-track:13b711357218ee420a9f4634d0b6752fbb5745bd76abfd760c446537ede6910c` |
| 5 | `def` | [bumpPrimitive](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/bumpprimitive.md) | 63 | `declaration-track:284ba93f8d44a9a7e24d4ac7cfdd04864c23836d7c04b123dfe4b457193b684c` |
| 6 | `theorem` | [bumpPrimitive_hasDerivAt](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/bumpprimitive-hasderivat.md) | 67 | `result-track:ae9badc87e573eac645c6ce06cda2dc4531fbdcf320c45c051f2681619bf9d44` |
| 7 | `theorem` | [bumpInterior_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/bumpinterior-integral.md) | 79 | `result-track:5246c9f9d246dbe39e8134beb98d73bc7e9a6fb98de28d8ca66e4465b83a61e9` |
| 8 | `theorem` | [explicitSecondDerivative_integral_zero](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/explicitsecondderivative-integral-zero.md) | 88 | `result-track:3e542a2c7101b7b7dba798bce31484db35374030f67ce8da100bc9af62449762` |
| 9 | `theorem` | [scaledBump_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/scaledbump-integral.md) | 97 | `result-track:3a815147c8ac56d3cceab07c7d65e0c9609c794a625827d3ad84c831d3088f66` |
| 10 | `theorem` | [dilationTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/dilationtest-integral.md) | 102 | `result-track:0cf22552d4c67d6eb885b7506b0253bc80df175fd3297cd1f48e0599bf62cba9` |
| 11 | `theorem` | [normalizedTest_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/normalizedtest-integral.md) | 111 | `result-track:f73ec927a4a71f10cda75cfe5e32c47e5484710540f21a60bc0c8a1568fa18f4` |
| 12 | `theorem` | [sourceCorrelation_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-integral.md) | 118 | `result-track:1fb4e2f6909495517d25fc52b7d657a9dc89c853dea2cd32fd26234856476157` |
| 13 | `theorem` | [sourceCorrelation_full_eq_four_half](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-full-eq-four-half.md) | 140 | `result-track:fe798ff25ce37db46203d0843f579c498e45d9f98ad6b0b65a94c2800cb85e16` |
| 14 | `theorem` | [sourceCorrelation_double_integral](../../../../MeasureAndIntegration/PrimeSquareCorrelation.lean/declarations/sourcecorrelation-double-integral.md) | 176 | `result-track:5e458fc0e58d3912b25cd329e3b55cbea87da1ed713dc93950be15aa8acc25e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ccc17af0597e6f6c42a81207b2fb3f922aa8d10e3b94e24ddb7b5ac4fbebc6b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimeSquareCorrelation/Variant9be86e77cddbf541a3e096778ee198ac7374f1eff78bd04f3be6566365376c5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
