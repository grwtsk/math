# Verification target: Source Actual Riesz Centered Initial Laplace Native01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3fcfdefad44f5a7fbb4868e9bb2125b0a894bfa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszInitialLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszRealConstantCenter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_weight_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/time-weight-integrable.md) | 26 | `result-track:c917a751024bcadc3c2a88141064b0effacaedd08f6492af84987e960936edbf` |
| 2 | `theorem` | [time_weight_integral](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/time-weight-integral.md) | 33 | `result-track:41e372a423d17ac95a1adc44c83f90eb224d170e6d08a1e104ab232e02398162` |
| 3 | `theorem` | [centered_weight_eq](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/centered-weight-eq.md) | 42 | `result-track:4f08549e40e838a0b8792ca4fca1e9453cd5b0e64bca16f0dfe553e848b62c1b` |
| 4 | `theorem` | [centered_weight_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/centered-weight-integrable.md) | 51 | `result-track:f7dcaab03bd4f258d20f06b86f872765db75d7306c100f6d1f8ba0b9085208e1` |
| 5 | `theorem` | [centered_weight_integral](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/centered-weight-integral.md) | 60 | `result-track:654a1a0e85416bb322fe6e964b5944b5fc34e27bbc95c37038c854f423a636a2` |
| 6 | `theorem` | [numerator_initial](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/numerator-initial.md) | 79 | `result-track:7b2ed0bbe40ffdf6d462e1e2acf6b8319ce2234fa149ddcd13a628d980da431e` |
| 7 | `theorem` | [centered_scalar_identity](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/centered-scalar-identity.md) | 85 | `result-track:025634c7d5bb1b12e4335319f247c9cc231c69834c6cab0b72dec054d3b53bc0` |
| 8 | `def` | [actualFixedCenteredRieszLaplace](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfixedcenteredrieszlaplace.md) | 91 | `declaration-track:b53ec6a3632c5481df95b14823ded061f9ef16ac45b75b00017f4bd50594305c` |
| 9 | `def` | [actualFiniteCenteredRieszLaplace](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfinitecenteredrieszlaplace.md) | 97 | `declaration-track:1ed2f8e6cc1ab41801f1e2f2eed82a67be717c38e7ff86ce917283211f1c5c1e` |
| 10 | `theorem` | [actualFixedCenteredRieszLaplace_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfixedcenteredrieszlaplace-integrable.md) | 102 | `result-track:308ccef19c4ce72a71c9d862e5eff3361eba08c8bbbb1d56892ed6dc8206ab19` |
| 11 | `theorem` | [actualFixedCenteredRieszLaplace_eq_regularization](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfixedcenteredrieszlaplace-eq-regularization.md) | 109 | `result-track:bbcd5a61a4f730a649d8abe949dea3a6fdce9b6c19a035249622fb7abea301b6` |
| 12 | `theorem` | [actualFiniteCenteredRieszLaplace_integrable](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfinitecenteredrieszlaplace-integrable.md) | 118 | `result-track:59777b645acb30a8dcd2a2f5c218ef066c4f9ff152a0b848593c53e709ced825` |
| 13 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_fixed_add_payment](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfinitecenteredrieszlaplace-eq-fixed-add-payment.md) | 126 | `result-track:c96a31114ee61de2ea1b39ffedb053fc9cca8b25ce714b497365623fab3271c7` |
| 14 | `theorem` | [actualFiniteCenteredRieszLaplace_eq_regularization_add_payment](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfinitecenteredrieszlaplace-eq-regularization-add-payment.md) | 137 | `result-track:685f5279c8ec3eef9d52ddacba76392ffe173b9250b705aca5331a0d8d39a812` |
| 15 | `theorem` | [actualFiniteCenteredRieszLaplace_difference_bound](../../../../MeasureAndIntegration/SourceActualRieszCenteredInitialLaplaceNative01Namespaced.lean/declarations/actualfinitecenteredrieszlaplace-difference-bound.md) | 145 | `result-track:2e9e152da9bfb5f58e9710968579c88d6b546f769f08fecc9bbbfd3fa6fc3b4a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7d3b583fa7102060fbb760286c10cd70595e489a27e06d2d0c40d7cf65cd3ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/SourceActualRieszCenteredInitialLaplaceNative01/Variantca5da545bf1d92a18930e94dbd74cd150c40b376d0e2450c2df7c9eff423d1bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
