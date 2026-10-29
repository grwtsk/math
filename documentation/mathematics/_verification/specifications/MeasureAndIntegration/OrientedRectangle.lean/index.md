# Verification target: GRWTSK.Analysis.Complex.OrientedRectangle

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd9f0b6116c0627419afc55ccc1d11abc6b192b2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/OrientedRectangle.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/OrientedRectangle.lean/index.md) · [Full source](../../../../MeasureAndIntegration/OrientedRectangle.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd9f0b6116c0627419afc55ccc1d11abc6b192b2`.

Source path: `GRWTSK/Analysis/Complex/OrientedRectangle.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/OrientedRectangle.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [horizontal](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/horizontal.md) | 30 | `declaration-track:92a92a986364597499b3b91475b0be49286d7ec30aeab815e0e6847ce2b1a7ce` |
| 2 | `def` | [vertical](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/vertical.md) | 34 | `declaration-track:e7be38fc32580b196a9bb16b8e6b04e89c517828c94f85ef46103daaa2886650` |
| 3 | `def` | [boundaryIntegral](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/boundaryintegral.md) | 38 | `declaration-track:75a5e9bd7ff6715c510e46ccdce5b51cde674866b90306102c802b786d9eb83f` |
| 4 | `theorem` | [boundaryIntegral_eq_zero_of_differentiable](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/boundaryintegral-eq-zero-of-differentiable.md) | 43 | `result-track:8cf5157b434074b77730f0ea946369708f0fd246bc00c69b72bdb4f00feeb5a3` |
| 5 | `theorem` | [normalized_right_decomposition](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/normalized-right-decomposition.md) | 51 | `result-track:8b2ac5a9dba2dbd88ce8714f1988c79026ce2bc6600963c1796ebe6a43f4e984` |
| 6 | `theorem` | [norm_horizontal_le](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/norm-horizontal-le.md) | 60 | `result-track:3f37523e5e1af60a9a407c560c87801f449ab52e272c8c83aabd1ea877567fa8` |
| 7 | `theorem` | [norm_horizontal_difference_le](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/norm-horizontal-difference-le.md) | 71 | `result-track:ef9ba91dcafc2ae3820e10e746f4cea795b5c9519f16bfb403a03931aa066e9e` |
| 8 | `theorem` | [vertical_tendsto](../../../../MeasureAndIntegration/OrientedRectangle.lean/declarations/vertical-tendsto.md) | 83 | `result-track:5c3abc245e680fc08d796c367caab6766d5213bda98f16499533a034e25d0153` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3ee52207fe3ef686c3a2b5892797ced370ddd91ea8ff9b45a2a56caab1f81d55 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/OrientedRectangle.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/OrientedRectangle.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
