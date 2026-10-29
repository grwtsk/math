# Verification target: Adjoin Field Namespaced Lift Of Splits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c78d4c35d866de492ac97b1cbf4fd84a9b3f2ed3",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/AdjoinFieldNamespacedLiftOfSplits.lean/index.md) · [Full source](../../../../CommutativeAlgebra/AdjoinFieldNamespacedLiftOfSplits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c78d4c35d866de492ac97b1cbf4fd84a9b3f2ed3`.

Source path: `GRWTSK/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Splits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Adjoin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.AdjoinRoot` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AlgEquiv.adjoinSingletonEquivAdjoinRootMinpoly](../../../../CommutativeAlgebra/AdjoinFieldNamespacedLiftOfSplits.lean/declarations/algequiv-adjoinsingletonequivadjoinrootminpoly.md) | 43 | `declaration-track:1fce081e1e61df46d81c28b55e1e9091b04cb18ecae6a806cd5b411fab511c53` |
| 2 | `theorem` | [lift_of_splits](../../../../CommutativeAlgebra/AdjoinFieldNamespacedLiftOfSplits.lean/declarations/lift-of-splits.md) | 71 | `result-track:bb737fd0b057e777826904a084b806c4f123e2d55470958ccb2e5216e7a018e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d6c537d54063168f08fa51442b82af42afd6254b831ef877c295c92d43bbf041 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Field/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean","GRWTSK/_verification/specifications/Algebra/FieldTheory/Variantd464194ba1a50d4d63714e0b7029f2b69959d9d209f0a8bbce4bddb93e7c9806.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
