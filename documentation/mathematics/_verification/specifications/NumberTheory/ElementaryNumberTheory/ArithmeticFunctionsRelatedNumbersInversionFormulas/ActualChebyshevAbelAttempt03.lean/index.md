# Verification target: Actual Chebyshev Abel Attempt03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e15000645583f357d4720e7bfda0a941c3dae619",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e15000645583f357d4720e7bfda0a941c3dae619`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MediumPNTMoment` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtAbel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/inverse-hasderivat.md) | 18 | `result-track:0ed2a1f6e39181760c390b4114ee75b721f4ad870c70b504f84b7eab3380399c` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/inverse-derivative-integrable.md) | 23 | `result-track:53418a2298f463c2cfa06a4db2e492a52aec952e8876b48751cd076f0cab9609` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/weightedmangoldt-sum-icc.md) | 36 | `result-track:84eb83b7543118311faafd1a142b8349fba75fd135df09d25ce327721cb7c86a` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/weightedmangoldt-eq-psi-add-integral.md) | 43 | `result-track:5b83227447fc59542e08f8c43fb10efc7cf3c675b60471010dab0a5583b08d54` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/psi-integral-log-dictionary.md) | 64 | `result-track:b15f4b92456f9c2ed033a71baf2ede70f6683a135c3703c9b48b4cad7ddadb11` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral.md) | 82 | `result-track:cb9281ec5dec87d35d4c7c8fd30f53a5f6333afe02af77e1261ad0dde1935bb2` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror.md) | 93 | `result-track:d0d87666b5442126904de3d9d475c3fef25b7b4a2d75ac954ad3bca6dfa55782` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03.lean/declarations/mangoldtlogerror-centered-eq-interval.md) | 109 | `result-track:d6714a9d296217620488bbb3b8e1fb0e753afc9b9f115bc5c52260e7ecec32ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1138c30bd41e9b7d3a5e106419e76c3ae5965b18c09494ccb08b26c8f3e662f9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant3d41c3d3a25eda2feb21d65cfa81a345ed8bf734635eee76e7214c2475364606.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
