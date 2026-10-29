# Verification target: Root Actual Xi Conditional Holomorphy Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d24291d2ca0ed578698ad1f7ee09049af9999eb5",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant309e2b2b35b7b63ab2e483545fc78943572a33b1e5933d315021cc2652a112d6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d24291d2ca0ed578698ad1f7ee09049af9999eb5`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant309e2b2b35b7b63ab2e483545fc78943572a33b1e5933d315021cc2652a112d6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant309e2b2b35b7b63ab2e483545fc78943572a33b1e5933d315021cc2652a112d6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiConditionalComplexLaplace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_exp_bound](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/declarations/time-exp-bound.md) | 20 | `result-track:2b90143df47752d738320fbf6b0940402ffd79e93aa66fd45ef689dbc70adbba` |
| 2 | `theorem` | [derivative_norm_bound](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/declarations/derivative-norm-bound.md) | 27 | `result-track:62869cc9624e9fb8350f5b31bb2612072f1089fc60eb386dde94c1d17faafd82` |
| 3 | `theorem` | [kernel_hasDerivAt](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/declarations/kernel-hasderivat.md) | 50 | `result-track:47c14ab26914bbb219c0a08437534e4e4f0b9be1d15e846f73c7812835955433` |
| 4 | `theorem` | [actualXiComplexLaplace_hasDerivAt_of_future_average](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/declarations/actualxicomplexlaplace-hasderivat-of-future-average.md) | 60 | `result-track:d03bec803c4b74eb48cda56ccf26c00b9d6ef3ed5f5b5225fd9f57a7b57efa5f` |
| 5 | `theorem` | [actualXiComplexLaplace_analyticOnNhd_of_future_average](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition1.lean/declarations/actualxicomplexlaplace-analyticonnhd-of-future-average.md) | 112 | `result-track:ad2050bfb03d7319e47b69a2be1205045c64e6b1804130aa5b96c411d39aafba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb676feae9b2fd3c766e031e5ea48edbe1b792f1d04f0e3c8b333636541f8bf3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant309e2b2b35b7b63ab2e483545fc78943572a33b1e5933d315021cc2652a112d6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant309e2b2b35b7b63ab2e483545fc78943572a33b1e5933d315021cc2652a112d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
