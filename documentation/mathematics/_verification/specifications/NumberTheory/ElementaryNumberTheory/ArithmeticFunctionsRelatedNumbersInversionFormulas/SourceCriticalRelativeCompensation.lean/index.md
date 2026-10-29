# Verification target: Source Critical Relative Compensation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae5f1c467c7008fd7f7975f9922cae61ec8a37d6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae5f1c467c7008fd7f7975f9922cae61ec8a37d6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CriticalRelativePairing` — import line 1; external provider; requires a separately pinned dependency.
- `ActualSignedStieltjes` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualPsi_sum_eq_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-sum-eq-residual.md) | 25 | `result-track:26a505fceb51e27d977cd850a09de636f0ece39dc4a8a7c5334ae0af81a23f65` |
| 2 | `theorem` | [actualPsi_finite_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-finite-integrable.md) | 36 | `result-track:2424c2ed8f1bc43ec3718e885a0042f70e3fc03084f762d12df6ff616420f436` |
| 3 | `theorem` | [actualPsi_finite_stieltjes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-finite-stieltjes.md) | 52 | `result-track:74f1bcee1393de64e6b56e6120025acef9e25dff867f0613dc5bfb3ea775c2ab` |
| 4 | `theorem` | [actualPsi_full_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-full-integrable.md) | 68 | `result-track:9f4f864aad3365839bb9ea0406640ef41bc07dd71b744e9a3bd889a57090a9ce` |
| 5 | `theorem` | [actualPsi_full_stieltjes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-full-stieltjes.md) | 82 | `result-track:b3cb6cd6e26a57362c0556e0ff3f3f78c2d0cb6badfab0d1f8a6069d8a8bbea6` |
| 6 | `def` | [psiLogKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/psilogkernel.md) | 94 | `declaration-track:2108f75d3ced7a9365896358e60c054985141794e90e1ef3a85671e823a3ae63` |
| 7 | `def` | [baselineLogKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/baselinelogkernel.md) | 97 | `declaration-track:2b95d3be405adbeefffcdddc49a733bf6ded6359b41f26e2b3e95ef861d3d262` |
| 8 | `theorem` | [actualPsi_log_kernel_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-log-kernel-eq.md) | 99 | `result-track:4b3d8e9a4afe99d420e9bd8ca766328b8f8ff29d586974bea287c7e3b1ca77c4` |
| 9 | `theorem` | [actualPsi_log_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-log-integrable.md) | 107 | `result-track:3f8bc78871bd3919864427cefde69b5778cec1803d082b9fc2b3e186b61bde49` |
| 10 | `theorem` | [actualPsi_log_stieltjes](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-log-stieltjes.md) | 120 | `result-track:cb14e2e684795596e0a5453c36d24fd03ab9b014eb41c5f3ed1e9e54a77cc79a` |
| 11 | `theorem` | [actualPsi_kernel_decomposition](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/actualpsi-kernel-decomposition.md) | 135 | `result-track:7940342aa1a359945016c09e390a3abde2249af0dd1446d05a26758d919f6d7c` |
| 12 | `theorem` | [baselineLogKernel_integrable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/baselinelogkernel-integrable.md) | 145 | `result-track:7ed220e102adab76a17d6453b5228dd783f585d5d63c81e5ddfddab2a1933de7` |
| 13 | `theorem` | [criticalWeight_zero_above](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/criticalweight-zero-above.md) | 154 | `result-track:8264cf3ccfa26cbf3ef6d2f719ad12ed93795eb09b39d8eb01adbdc756e578f5` |
| 14 | `theorem` | [baselineLogKernel_integral](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/baselinelogkernel-integral.md) | 169 | `result-track:99309a149c1cccc3e001a0cb7dd994d4de068f7104e4c2addf42c972cab1501d` |
| 15 | `theorem` | [mertensResidual_eq_criticalRelative_add_baseline](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/mertensresidual-eq-criticalrelative-add-baseline.md) | 199 | `result-track:3fee267420afa64bb1249fb37c9d964b5cf9c9c9199b9cafc21a1ff86f0229ad` |
| 16 | `theorem` | [residual_sub_criticalRelative_abs_lt_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/residual-sub-criticalrelative-abs-lt-one.md) | 210 | `result-track:83c0395bd1d4d98c88ff08996d4a665763ac15ca0987a14843b24841deeb1af4` |
| 17 | `theorem` | [mertensResidual_lt_criticalRelative_of_six_le](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/mertensresidual-lt-criticalrelative-of-six-le.md) | 218 | `result-track:667d8ded233a8c184b52d26d577d43d1e8b3c3e52c6ee7526ad14d9e6e1b5135` |
| 18 | `theorem` | [estimate_of_criticalRelative_tail_radius_ge_six](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceCriticalRelativeCompensation.lean/declarations/estimate-of-criticalrelative-tail-radius-ge-six.md) | 231 | `result-track:7fc16b644ea6ee02caed2a2d1813f513946f5b876a5679a72067b11880469c51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba16c43eb0e54f9c2d2416a22ae46c16c1d1520d5d5a8556a67719759b77fd24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Da293c45b9c3573e10d6SourceCriticalRelativeCompensation/Variante71a8d9d49a80fb76b882ffd94edc9d5288502bc7a8d9da0429ac5837f59c340.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
