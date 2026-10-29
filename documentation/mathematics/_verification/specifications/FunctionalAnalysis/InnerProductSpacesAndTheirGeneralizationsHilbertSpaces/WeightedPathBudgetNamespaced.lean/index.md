# Verification target: Weighted Path Budget Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b240cb7f3e016c4ec1414587b69e267c8d03c418",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b240cb7f3e016c4ec1414587b69e267c8d03c418`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.ResidueDeflection.Trace.TransportGain` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightedCompensationBudget](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/declarations/weightedcompensationbudget.md) | 25 | `declaration-track:85a3c6dd62fabe961731ab87fe8e9e35b679ace2b2b446824cb2d2e60a235a08` |
| 2 | `theorem` | [weightedCompensationBudget_nonnegative](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/declarations/weightedcompensationbudget-nonnegative.md) | 46 | `result-track:732b4e15ae30c0705431c2f674647b11852c8b84e1aef6f8dcf60574262a592a` |
| 3 | `theorem` | [pathCompensationBudget_le_weighted](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/declarations/pathcompensationbudget-le-weighted.md) | 71 | `result-track:a759242565bf64cdd3428caba75177b968b847bdee50d8477a24f10db00d5138` |
| 4 | `theorem` | [pathEnergy_weighted_compensation_bound](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/WeightedPathBudgetNamespaced.lean/declarations/pathenergy-weighted-compensation-bound.md) | 148 | `result-track:c7f6088062fd9c8666e14cf3c389e0dca37ee3f24b716d9ba12e9db4a5ff390c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=92deada33d39e3ce27bc2f9c350f0461428077b1f09c1dda33cbc5577f2de270 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/WeightedPathBudget/Variant58e735f5bf80bd7292a4af98a5587389eed63768f47abea3882c445a82975d40.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
