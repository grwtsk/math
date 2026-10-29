# Verification target: Prime Power Descent Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a91d1da973c2c5f8d4fcac7ee8fee07fad01995",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a91d1da973c2c5f8d4fcac7ee8fee07fad01995`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primePowerInventory](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/primepowerinventory.md) | 31 | `declaration-track:ba74b40142942aaf2fa77e5d5c8fe5bada7f9cbeff0b39d8817ce060871e3747` |
| 2 | `theorem` | [inventory_filter_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/inventory-filter-log.md) | 35 | `result-track:6f9d4c06259b74ecccb988cbe05a7f94fbd26a8b52fcd1c4399ec6bd19e0ebf6` |
| 3 | `theorem` | [chebyshev_eq_finite_steps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-eq-finite-steps.md) | 50 | `result-track:9b4a21429e8134c79db1f1e17c55468db66532bbc61fba8507e1713186906cc0` |
| 4 | `theorem` | [integral_closed_step](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/integral-closed-step.md) | 60 | `result-track:ed4541f4c65ba0dfe6f1812ad05962c1fa07a762b047f79485f0fb92cdacdea9` |
| 5 | `theorem` | [integral_closed_step_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/integral-closed-step-deriv.md) | 86 | `result-track:22c74e045a70bcb2848feaee706ec1fe041398ce1819b06ecf4b1dad5a3a7e2b` |
| 6 | `theorem` | [intervalIntegrable_closed_step](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/intervalintegrable-closed-step.md) | 95 | `result-track:eddd417f5acedee658bf8b17a98a8c44ca16e0903679a8c42043f579234a7e6b` |
| 7 | `theorem` | [inventory_log_bounds](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/inventory-log-bounds.md) | 102 | `result-track:fada63572fbd8dea65b18edd63e2ba3a6bb08446601d056b90b96996f067471c` |
| 8 | `theorem` | [integral_finite_steps_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/integral-finite-steps-deriv.md) | 112 | `result-track:39ab5cfe31f25bfdcb576700dc17020ede29973b65dd970d3aa0fa86d0bf52ba` |
| 9 | `theorem` | [chebyshev_mul_eq_steps](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-mul-eq-steps.md) | 128 | `result-track:04362d20fec0843b24a572ca1f9aeb8f1791b21e1b81deb309789e4f0b619b5c` |
| 10 | `theorem` | [chebyshev_mul_deriv_intervalIntegrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-mul-deriv-intervalintegrable.md) | 138 | `result-track:6d6fbae8b5073991c61ebbcbc724f565abe9c24c97b5945b8cbad6c363cf5cfe` |
| 11 | `theorem` | [chebyshev_prime_power_step_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-prime-power-step-integral.md) | 167 | `result-track:d8b99499d2641cd92bbf13aeeeafb5548f7590b408604d067bcc0ce6caf74801` |
| 12 | `theorem` | [chebyshev_prime_power_ibp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-prime-power-ibp.md) | 190 | `result-track:297d34052f4827fe582ca45af350877d049b2ef231a9dd5c9c13c19359f1bbc8` |
| 13 | `def` | [exponentialTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/exponentialtest.md) | 213 | `declaration-track:416ddbeb4471bae9d333ce005959d5135086ce03bc335096d9880f1fefdcbd65` |
| 14 | `theorem` | [exponentialTest_contDiff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/exponentialtest-contdiff.md) | 216 | `result-track:e0e72e28d2c54e2cef5e910300dfe430cdb187bf78e154fc442bb6c084d076e7` |
| 15 | `theorem` | [exponentialTest_deriv](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/exponentialtest-deriv.md) | 221 | `result-track:b47c4beae63e46b242d62240501fddfdf2379a77e786547d2327bf1a1d048e04` |
| 16 | `theorem` | [source_signed_pairing_ibp](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/source-signed-pairing-ibp.md) | 233 | `result-track:ff2093baf10424e44193db48a4c0ecf62b2d535fb689e8c0590b02893523cbbd` |
| 17 | `theorem` | [chebyshev_prime_power_ibp_of_upper_zero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/chebyshev-prime-power-ibp-of-upper-zero.md) | 246 | `result-track:a67afcd5a000a39c0089298e5690ccd382500fc51b3c5c33fd337822bed44d6a` |
| 18 | `theorem` | [prime_two_correction](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/prime-two-correction.md) | 255 | `result-track:d7f2e751d7db107273a3ffa175e4795afb7d0cc9fcde9448aa3f4fc4785e3143` |
| 19 | `theorem` | [omitted_prime_two_boundary_is_nonzero](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/omitted-prime-two-boundary-is-nonzero.md) | 268 | `result-track:02265447070d366da2047509e8c590c32d7a06b6e093d3fa79f350b89b1379e4` |
| 20 | `theorem` | [exponentialTest_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/exponentialtest-log.md) | 278 | `result-track:5903d0e8c5448532fb6512a0d7e3e66bcd5bb4fb2792fbb02ae58be767e0c4b7` |
| 21 | `theorem` | [source_prime_power_contribution_eq_closed](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/source-prime-power-contribution-eq-closed.md) | 286 | `result-track:0ff4834e16a7832dd34e4ec5f2c5e1e9c35abc912cc076e7d6df9a2202e4b62a` |
| 22 | `theorem` | [exp_mul_exponentialTest](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/exp-mul-exponentialtest.md) | 306 | `result-track:904274670ccd7740fccc7338cacdbed44690702fd47ec6cb25da4bb7c60fe142` |
| 23 | `theorem` | [source_prime_power_descent](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/source-prime-power-descent.md) | 315 | `result-track:dc0de2d7ae2492b84976e297e8610bd2170b0fe3b3c04ac0a24e6f93ae8b9bd4` |
| 24 | `theorem` | [source_arithmetic_representation_of_correlation_conditions](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/PrimePowerDescentNamespacedEdition2.lean/declarations/source-arithmetic-representation-of-correlation-conditions.md) | 333 | `result-track:666ee1decf09063578827165032b031374d95aa85f198d24d71f20255a4e7679` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af7bc84738bf123b535cf1bb8dcca3ace127e91979ca2502182c6eab91125d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PrimePowerDescent/Variant1726be4e0c2451b41baaa576182329d5b5297b86a6720c09f82fd0b341ae0f81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
