# Verification target: Zero Endpoint Seams Do Not Bound APositive Panel SHeight Or Scalar Mass Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14ca09940b31ce1024d831ae269db12cc9f65661",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14ca09940b31ce1024d831ae269db12cc9f65661`.

Source path: `GRWTSK/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.WeightedHodge` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bump](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump.md) | 23 | `declaration-track:6fb116d87fbf9a4cb0b6e8f56edb5d99729ad7e5d34585b5279927f1352e8b94` |
| 2 | `theorem` | [bump_continuous](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump-continuous.md) | 25 | `result-track:13d253990dc4e497594af63ff12d1d324b461567e61fbab8600adba3e1122c19` |
| 3 | `theorem` | [bump_endpoints](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump-endpoints.md) | 28 | `result-track:ad205bf16dfa273d523c77dd218b6576ef1e26feef69ae0589e8efb11f585d33` |
| 4 | `theorem` | [bump_nonneg](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump-nonneg.md) | 30 | `result-track:b7565243625858fdb42e8cabdbd6291bde619e26a1c367e80d00fa03f3c4c682` |
| 5 | `theorem` | [bump_midpoint](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump-midpoint.md) | 33 | `result-track:8e6c280768144ad23f53f5d01d901b4a5a7261c64a284a575f94b2a5ca5f8a9c` |
| 6 | `theorem` | [bump_integral](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/bump-integral.md) | 35 | `result-track:441fa9eb58155e83d6e3bdfc561f2ed177ad4380f48b1baf6740b964b00f7370` |
| 7 | `theorem` | [fixed_zero_seams_have_unbounded_height_and_mass](../../../../MeasureAndIntegration/ZeroEndpointSeamsDoNotBoundAPositivePanelSHeightOrScalarMassEdition1.lean/declarations/fixed-zero-seams-have-unbounded-height-and-mass.md) | 48 | `result-track:672dbc3429d220ff344c0623d7a334a8a202ca299eaf792e0ba833ec99b4ff1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99f0454f292741708cf062c3c4bc12c13c2a9d25c063f608e92be6802480d93e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean","GRWTSK/_verification/specifications/Analysis/ZeroSeamCountermodels/Variant15436975160bbd55d7c6ddd840b52868098cb6767e449b1b6f90fe68a23ef588.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
