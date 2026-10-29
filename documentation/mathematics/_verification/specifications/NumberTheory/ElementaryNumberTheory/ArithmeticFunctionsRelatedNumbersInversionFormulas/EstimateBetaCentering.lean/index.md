# Verification target: Estimate Beta Centering

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf7207724e4707c1f9061a4d61c528bcd058a580",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf7207724e4707c1f9061a4d61c528bcd058a580`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanIdentity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Semifield` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alpha](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/alpha.md) | 23 | `declaration-track:9d74547ec95ccfeaa64c7b0b44c9858c8613b20180b966ea178d8dfc4df6de0a` |
| 2 | `def` | [floorDiscrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/floordiscrepancy.md) | 26 | `declaration-track:5a875d749dff6ad394867a135a941f56121d4f32340fb0e331c02054b5b700e3` |
| 3 | `def` | [centeredBeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/centeredbeta.md) | 30 | `declaration-track:a118b255cb8e06a15f4f23bb15fbbba14c448f0647d4b05a628c349a37870c51` |
| 4 | `theorem` | [beta_eq_centered_sub_alpha](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/beta-eq-centered-sub-alpha.md) | 33 | `result-track:60bc95f32c9e3981a7caf9d0ce4b9344d715cc6453f33c81bdcb30de7cec5aaa` |
| 5 | `theorem` | [multiples_prefix_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/multiples-prefix-sum.md) | 37 | `result-track:decb3e5c58072ef5e7bcded78de687dc5702e75fbea856270e6125845ab04a6d` |
| 6 | `theorem` | [multiples_interval_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/multiples-interval-sum.md) | 44 | `result-track:1a41cc5d16e485a6d2da4a9f914c92304dd8bd07b49a2e5af99a924e739150fe` |
| 7 | `theorem` | [short_divisor_sum_eq_indicator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/short-divisor-sum-eq-indicator.md) | 53 | `result-track:438b5e25288830fffc6092cbb0e7639fff17a8099cab3a2bcdb4084c3bdd775c` |
| 8 | `theorem` | [beta_interval_eq_quotients](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/beta-interval-eq-quotients.md) | 68 | `result-track:8cfc20ac2cbbd2e89fb5da9b96a6f2bf3d5c04d657ec99c98e1d9f21792de43c` |
| 9 | `theorem` | [beta_interval_eq_mean_discrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/beta-interval-eq-mean-discrepancy.md) | 97 | `result-track:11c7f8c0f3e2adf7adf7c80f72d26741aa35856d13e1f047ff3eed4c51f41784` |
| 10 | `theorem` | [centeredBeta_interval_eq_discrepancy](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/centeredbeta-interval-eq-discrepancy.md) | 114 | `result-track:09062a173fd48f3b2a4839000f307b8ed07a5e60a1543decf64110e8041a9821` |
| 11 | `theorem` | [floorDiscrepancy_abs_le_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/floordiscrepancy-abs-le-one.md) | 128 | `result-track:2b469b9539caf6bae8f5595da92d45499ede8fbf874093a52809cc1d49528979` |
| 12 | `theorem` | [centeredBeta_interval_abs_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/EstimateBetaCentering.lean/declarations/centeredbeta-interval-abs-le.md) | 141 | `result-track:55623215442d43e9ba29bc91de050b989c1e5e06a18c49f9df47ea1cc286484a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93896a72b0ee26d81c250166ee65493412e08c4c1b35d1d78ce891c56def7848 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Bcdf5ec18834d2b634cdEstimateBetaCentering/Variantbcdf5ec18834d2b634cd126baae398518d57b710c15c6255c799069b0dce03a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
