# Verification target: Source Actual Euler Logarithmic Residual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7bdf6e55cdc3590596a1a94904afe94d5f1cce2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEulerLogarithmicResidual.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEulerLogarithmicResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7bdf6e55cdc3590596a1a94904afe94d5f1cce2`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualEulerLogarithmicPrimitive` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualEulerResidualApproximation` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualEulerLogBoundaryConstant_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEulerLogarithmicResidual.lean/declarations/actualeulerlogboundaryconstant-nonneg.md) | 21 | `result-track:e5cd7f09e5cc842b9dba5b70294139d0459789aea4c3e0cd5c5b2280fa8896c8` |
| 2 | `theorem` | [actualResidual_sub_logBulk_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEulerLogarithmicResidual.lean/declarations/actualresidual-sub-logbulk-norm-le.md) | 30 | `result-track:9ea95ed1fb7bf7b230fcad3dbbfd72c44a9245485629bf6116673d429f629e49` |
| 3 | `theorem` | [actualResidual_sub_logBulk_tendsto_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceActualEulerLogarithmicResidual.lean/declarations/actualresidual-sub-logbulk-tendsto-zero.md) | 56 | `result-track:b4878cac1564167b6c4357dc7642489335d6e476dba9843a95931e0e3cf560d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16cd755826e19ee8bd4547fc6c8f1251b02120f503488e142f7fae1e5f2de900 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerLogarithmicResidual/Variantef94e825bedad717229e0dc40f85bf46bba93e6b17668d4ed8a6beebfd1b71f8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
