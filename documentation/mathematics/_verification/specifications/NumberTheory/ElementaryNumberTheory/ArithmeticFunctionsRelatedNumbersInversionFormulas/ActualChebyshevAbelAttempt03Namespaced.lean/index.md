# Verification target: Actual Chebyshev Abel Attempt03 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d94e062cd09f166437add96495c9e7418b52d01",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d94e062cd09f166437add96495c9e7418b52d01`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean.json)

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
| 1 | `theorem` | [inverse_hasDerivAt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/inverse-hasderivat.md) | 26 | `result-track:c82dcc3608376e30c51c914dc519a81e24bcc0c3f8ef51135554c7d300a70ee7` |
| 2 | `theorem` | [inverse_derivative_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/inverse-derivative-integrable.md) | 31 | `result-track:870c36702bd842c51076535c65f8bbde3e8657f80489e679388c3f9adb849c7c` |
| 3 | `theorem` | [weightedMangoldt_sum_Icc](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/weightedmangoldt-sum-icc.md) | 44 | `result-track:dc1e5ffc9ed258813bbb182d1bd8a04e35fd47ef7c829da4c2eb4d9aad1b95fb` |
| 4 | `theorem` | [weightedMangoldt_eq_psi_add_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/weightedmangoldt-eq-psi-add-integral.md) | 51 | `result-track:a9ef12f3ed9ce64f96b1652dbe33c4547b51e116070d4eb601cfef823bab7987` |
| 5 | `theorem` | [psi_integral_log_dictionary](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/psi-integral-log-dictionary.md) | 72 | `result-track:356583b4016d9605da6c3e4243e757bad27038c727f56ce6263c8f26ec5f940a` |
| 6 | `theorem` | [mangoldtLogPrefix_eq_psiRelativeError_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/mangoldtlogprefix-eq-psirelativeerror-integral.md) | 90 | `result-track:20fc8d645aff0fb7c6e261117ab6a582924806e5bc7c6dc8a09809e62c3892bc` |
| 7 | `theorem` | [mangoldtLogError_centered_eq_psiRelativeError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/mangoldtlogerror-centered-eq-psirelativeerror.md) | 101 | `result-track:27198ba23a9e4290c609ee9869d078f117076e842085982dd0ebecc7ec082b8d` |
| 8 | `theorem` | [mangoldtLogError_centered_eq_interval](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ActualChebyshevAbelAttempt03Namespaced.lean/declarations/mangoldtlogerror-centered-eq-interval.md) | 117 | `result-track:699da16f0c77b04cfa0177fb00129db099c25f7b89459c33c988dda309b8acdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b1a57af720675738c52bf1638b1974edadab46266bfe168a0cc3e744e47c658 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/ActualChebyshevAbelAttempt03/Variant60f5c59cb8d628ca8780c220e447778a1a5eead7d5ace3a17bc685bce5d0a4a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
