# Verification target: Class Equation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53ad7b5d29e21f061ccbf6d8c0f3d29b20bce96d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/ClassEquation/Variant147a1ebe8bf1cc558c04bcb5e47d661e106c7c3b31fcda0fd270f25c87c96a21.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53ad7b5d29e21f061ccbf6d8c0f3d29b20bce96d`.

Source path: `GRWTSK/Algebra/GroupTheory/ClassEquation/Variant147a1ebe8bf1cc558c04bcb5e47d661e106c7c3b31fcda0fd270f25c87c96a21.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/ClassEquation/Variant147a1ebe8bf1cc558c04bcb5e47d661e106c7c3b31fcda0fd270f25c87c96a21.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Finprod` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ConjFinite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Finite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_conjClasses_card_eq_card](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/declarations/sum-conjclasses-card-eq-card.md) | 39 | `result-track:5cc9cbc47867f466d0cdb5d642ab2c8811b3201e69bbbff78dd6b749b05fee56` |
| 2 | `theorem` | [Group.sum_card_conj_classes_eq_card](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/declarations/group-sum-card-conj-classes-eq-card.md) | 46 | `result-track:c76d4eb00575c66a390663385a157eeb7be29750e593c020f70dfa5acfbc9f03` |
| 3 | `theorem` | [Group.nat_card_center_add_sum_card_noncenter_eq_card](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/declarations/group-nat-card-center-add-sum-card-noncenter-eq-card.md) | 55 | `result-track:e65f644100474a9342e150c90e54eb376237c2d4cbd05cd4a80b71b1636dc16f` |
| 4 | `theorem` | [Group.card_center_add_sum_card_noncenter_eq_card](../../../../GroupTheoryAndGeneralizations/ClassEquationNamespaced.lean/declarations/group-card-center-add-sum-card-noncenter-eq-card.md) | 80 | `result-track:3f862d49d793615ee86354d64576b85ce08c9f91d064808e7cda6ebc1e5c9a5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f65a7908b3d283ea9bc91e17d6e80fc21b21dde4d452caeeb79a94d7fe0d6b4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ClassEquation/Variant147a1ebe8bf1cc558c04bcb5e47d661e106c7c3b31fcda0fd270f25c87c96a21.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/ClassEquation/Variant147a1ebe8bf1cc558c04bcb5e47d661e106c7c3b31fcda0fd270f25c87c96a21.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
