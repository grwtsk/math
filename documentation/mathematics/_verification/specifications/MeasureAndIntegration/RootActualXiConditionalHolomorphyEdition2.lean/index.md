# Verification target: Root Actual Xi Conditional Holomorphy Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2569cb1a399f8b753e2c36581e091a6de4500a21",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant3d8701b080bca5650dc71e8bc9ae7c3d491439ca4a44f1f4a0a62cbbd4dc2b06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/index.md) · [Full source](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2569cb1a399f8b753e2c36581e091a6de4500a21`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant3d8701b080bca5650dc71e8bc9ae7c3d491439ca4a44f1f4a0a62cbbd4dc2b06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant3d8701b080bca5650dc71e8bc9ae7c3d491439ca4a44f1f4a0a62cbbd4dc2b06.lean.json)

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
| 1 | `theorem` | [time_exp_bound](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/declarations/time-exp-bound.md) | 20 | `result-track:be12628897ce541a51c5729cf2f6ee18278bb8ac40c7fc58c595e33e91daf00e` |
| 2 | `theorem` | [derivative_norm_bound](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/declarations/derivative-norm-bound.md) | 27 | `result-track:b69691b87de4d9f82636ad06649a9a4ac3f9f3fa6fb26c7f307deef629ae992e` |
| 3 | `theorem` | [kernel_hasDerivAt](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/declarations/kernel-hasderivat.md) | 50 | `result-track:a701f60d3edbc49b17c13905a435822fce7c1364d39ef88bd2b4701be3c798ef` |
| 4 | `theorem` | [actualXiComplexLaplace_hasDerivAt_of_future_average](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/declarations/actualxicomplexlaplace-hasderivat-of-future-average.md) | 60 | `result-track:29997396feaa9502e84078fab5a721a1998797af54fff54c129cd93ddc53fcac` |
| 5 | `theorem` | [actualXiComplexLaplace_analyticOnNhd_of_future_average](../../../../MeasureAndIntegration/RootActualXiConditionalHolomorphyEdition2.lean/declarations/actualxicomplexlaplace-analyticonnhd-of-future-average.md) | 112 | `result-track:9abfdde9c6bc19a0665f26095719e6408fd0fb0fb8c06a3ace5f6f1e6f73ece6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e09c43a7b6b52e983eac20420cd6cb36082b73223585ab03185a89b48ccd6998 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant3d8701b080bca5650dc71e8bc9ae7c3d491439ca4a44f1f4a0a62cbbd4dc2b06.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant3d8701b080bca5650dc71e8bc9ae7c3d491439ca4a44f1f4a0a62cbbd4dc2b06.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
