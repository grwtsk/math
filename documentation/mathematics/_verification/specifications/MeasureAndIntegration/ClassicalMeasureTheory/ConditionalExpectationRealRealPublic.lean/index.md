# Verification target: Conditional Expectation Real Real Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bae70a0814cdbf4b3d04248c71387e38d48603e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bae70a0814cdbf4b3d04248c71387e38d48603e`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.ConditionalExpectation.CondJensen` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSeminorm.LpNorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rnDeriv_ae_eq_condExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/rnderiv-ae-eq-condexp.md) | 43 | `result-track:30ac524eaedd0db9e4b7d025a7354b940da2864e956181bdb6f764ed6da46f30` |
| 2 | `lemma` | [condExp_le_nonneg_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/condexp-le-nonneg-const.md) | 63 | `result-track:acd4ce20bdc8b4e52627710d04890beaafbeb75aa3a31bedbd2c56229f9cecd5` |
| 3 | `theorem` | [abs_condExp_ae_le_condExp_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/abs-condexp-ae-le-condexp-abs.md) | 83 | `result-track:d3c837498746204446d3cb511fa66671672ee353cc411c5c376738cfc202b94e` |
| 4 | `theorem` | [integral_abs_condExp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/integral-abs-condexp-le.md) | 93 | `result-track:bb1ee0d4b72fb968ea0d009fbd405f01c8dcd211c9c2231cf9e16893113fa4cb` |
| 5 | `lemma` | [integral_condExp_le_of_ae_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/integral-condexp-le-of-ae-nonneg.md) | 104 | `result-track:c0fd2ce9d55b981321ddacee4fbf0c6bc5a4c1ebe85f1b40a271e938568b791f` |
| 6 | `theorem` | [setIntegral_abs_condExp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/setintegral-abs-condexp-le.md) | 114 | `result-track:59ec8b5be82fef24d3365b48b193bbc33dd2575d57353fef495dda30bbfcf545` |
| 7 | `lemma` | [setIntegral_condExp_le_of_ae_restrict_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/setintegral-condexp-le-of-ae-restrict-nonneg.md) | 128 | `result-track:74a592eeeeccf238ab0d4aad753fa46dc5c991f51e36111ddb1e50ba1a20af29` |
| 8 | `lemma` | [setIntegral_condExp_le_of_ae_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/setintegral-condexp-le-of-ae-nonneg.md) | 142 | `result-track:5c2f99f68f28269cacf772f5651b3ee5cfaf1829791c203f72e6db8c87f3088c` |
| 9 | `theorem` | [ae_bdd_abs_condExp_of_ae_bdd_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/ae-bdd-abs-condexp-of-ae-bdd-abs.md) | 148 | `result-track:9fcdd060d8fe4dc1cc9fff5a96c5db7d5f420849a4f805c13fdbb5a37e6c0814` |
| 10 | `theorem` | [ae_bdd_condExp_of_ae_bdd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/ae-bdd-condexp-of-ae-bdd.md) | 158 | `result-track:8cacf2ae6bb387c2fcc4716158af915941d075851a3c6ad28e32c105622bb369` |
| 11 | `theorem` | [integral_norm_condExp_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/integral-norm-condexp-rpow-le.md) | 196 | `result-track:ba8788c7dceaac232f7305cc693a77684c4286817dbfea187aad05c562097ead` |
| 12 | `theorem` | [integral_norm_condExp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/integral-norm-condexp-le.md) | 206 | `result-track:8a6ed875a58d3c2a1475c4c7d790799115cc1e855ff97198eb1f83938c880f0d` |
| 13 | `theorem` | [setIntegral_norm_condExp_rpow_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/setintegral-norm-condexp-rpow-le.md) | 211 | `result-track:1ff7d2352b4a461d55c85bdfd4dd5a1d7ed0a7b54f4f8b8c6248e0b797c13522` |
| 14 | `theorem` | [setIntegral_norm_condExp_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/setintegral-norm-condexp-le.md) | 229 | `result-track:551ddfe6f6c74763c13e941e7713f9b5228d549ca5deadc404490550985da9b1` |
| 15 | `theorem` | [ae_bdd_norm_condExp_of_ae_bdd_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/ae-bdd-norm-condexp-of-ae-bdd-norm.md) | 236 | `result-track:874f3eb8a82202a2a1ee0dd53778dc789255fb0e91a3c0813e3fe261ca870590` |
| 16 | `theorem` | [MemLp.ae_norm_condExp_le_essSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/memlp-ae-norm-condexp-le-esssup.md) | 242 | `result-track:59bf62cd97843f6218f09fe497a0623b02fc70d1975f7acb8f9bea2e18cb95d5` |
| 17 | `theorem` | [MemLp.essSup_norm_condExp_le_essSup_norm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/memlp-esssup-norm-condexp-le-esssup-norm.md) | 246 | `result-track:85217b1ba63f0fd69cd674d235e3f57d78f4f1a5ebbf32c29c76dafc661ae523` |
| 18 | `theorem` | [MemLp.lpNorm_condExp_le_lpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/memlp-lpnorm-condexp-le-lpnorm.md) | 251 | `result-track:6aa16d840316b1088c3e2af9cf25d622930bd6b802bdd228947c145140913fa5` |
| 19 | `theorem` | [MemLp.condExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/memlp-condexp.md) | 273 | `result-track:1f5348935c1ad9d0a9c9a295b22a4a42d98f3a6a0f738fd299fb4002091c70d2` |
| 20 | `theorem` | [eLpNorm_condExp_le_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/elpnorm-condexp-le-elpnorm.md) | 288 | `result-track:7a12114040082fae0f7f85130ee00ca56e28f06a7f16412a328e5284e6043c58` |
| 21 | `theorem` | [eLpNorm_one_condExp_le_eLpNorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/elpnorm-one-condexp-le-elpnorm.md) | 297 | `result-track:2071771af72398743eba67cb1825b7d8240953f7cea67e82fcba0cc0c51a7fef` |
| 22 | `theorem` | [Integrable.uniformIntegrable_condExp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ConditionalExpectationRealRealPublic.lean/declarations/integrable-uniformintegrable-condexp.md) | 304 | `result-track:00692ea61616904446bcd4845b253a9fd3f5f306458aa9390416d73c9382262d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3923b850789a29749a9770110ecd648c08e04e51aaee530bc11bb66a7f8143cf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Real/Variant28f552169a597593479ca4e6face1809759c6157c062d23c6cb948d92417c9d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
