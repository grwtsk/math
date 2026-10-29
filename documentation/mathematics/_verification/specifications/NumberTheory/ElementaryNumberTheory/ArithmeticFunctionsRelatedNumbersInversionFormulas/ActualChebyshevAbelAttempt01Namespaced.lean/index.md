# Verification target: Actual Chebyshev Abel Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8aa312019cf71d3d2a2bed9930e363d428f8e419",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8aa312019cf71d3d2a2bed9930e363d428f8e419`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTMoment` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/inverse-hasderivat.md) | 26 | `result-track:eab4077600092e4b3d94427c9d523633fb6a24086f177e0dadd6b0557c1109af` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/inverse-derivative-integrable.md) | 31 | `result-track:4950cb86e37004d0f554ac6d78d1ea3ea6bf28109bddb1df0fbe80dfd8573741` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/weightedmangoldt-sum-icc.md) | 44 | `result-track:ebf6a42cb32f500a65e0a994e320b092479f403ef50d35f400a4c82162cb6131` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/weightedmangoldt-eq-psi-add-integral.md) | 51 | `result-track:33afd418dffe9a49c0d4f72c60c17a50c6a385cfe6d9b0e6546417eefea7cdbf` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/psi-integral-log-dictionary.md) | 71 | `result-track:223754ddc9218aa747cb3a3580b994bef3a72447b5eafe110caba5f3c33114d3` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral.md) | 88 | `result-track:980941c425ec22450224c5ae2ce6de0878c51294b87fd202385cdd4a07a34c72` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror.md) | 99 | `result-track:9975e6bc0b9d8bc77e895269d0a468df827a162950a2673cbd1592b8f8650bc5` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt01Namespaced.lean/declarations/mangoldtlogerror-centered-eq-interval.md) | 113 | `result-track:21ae8668e5910cd31d16c5d6d2d202ad9110f1221e7e7ff03d786b1fb080a099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6e59bb12e9bac5f3eebaa501bef33653e1a7fb7a7451e30c9cc87a98ba0b34f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt01/Variant50d185ace8103d61adff61ae4bc392c847850cee342e701e63bceb86be5f3c9f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
