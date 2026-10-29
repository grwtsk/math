# Verification target: GRWTSK.Analysis.Inequalities.FiniteLogarithmicProfileBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d131550a02f087f68c11367d4bd54a17b586017b",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FiniteLogarithmicProfileBounds.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FiniteLogarithmicProfileBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d131550a02f087f68c11367d4bd54a17b586017b`.

Source path: `GRWTSK/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Inequalities.LogarithmicProfileIntegralPrices`](../../../../MeasureAndIntegration/LogarithmicProfileIntegralPrices.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileCutoff`](../../../../IntegralTransformsOperationalCalculus/LogarithmicProfileCutoff.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Integration.FiniteUnitSumVariation`](../../../../MeasureAndIntegration/FiniteUnitSumVariation.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.Integration.PositiveHalfLineCutoffBalance`](../../../../MeasureAndIntegration/PositiveHalfLineCutoffBalance.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_logarithmic_profile_price](../../../../MeasureAndIntegration/FiniteLogarithmicProfileBounds.lean/declarations/finite-logarithmic-profile-price.md) | 27 | `result-track:37d7ab41517a0e98e4d04628a7a3807e667297d0c7f48e0bd429e0ad25907126` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06c9c3f9d33b9d9a44e934a588e66f4fe0341c8aa496e5dd920dfc050330bfc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean","GRWTSK/_verification/specifications/Analysis/Inequalities/FiniteLogarithmicProfileBounds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
