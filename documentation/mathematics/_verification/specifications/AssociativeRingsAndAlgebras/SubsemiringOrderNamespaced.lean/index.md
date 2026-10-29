# Verification target: Subsemiring Order Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "caf5db539b5b6cea3b54b4abeca7d6e9ad7d70da",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `caf5db539b5b6cea3b54b4abeca7d6e9ad7d70da`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toIsOrderedRing](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/declarations/toisorderedring.md) | 27 | `declaration-track:87174bf1aa9673893c4a53c4151e99751edffa6a891e4e036b2253114a251fa2` |
| 2 | `instance` | [toIsStrictOrderedRing](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/declarations/toisstrictorderedring.md) | 33 | `declaration-track:84ccece24a292f83cc2ab7cf0f88b8a9e647a3dcf1b614df7dfb63638dd5207e` |
| 3 | `instance` | [toIsOrderedRing](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/declarations/toisorderedring-source-edition-2.md) | 45 | `declaration-track:934bcd753902e56cb13c9067db84b63344ed8db6aa7a1966a07aa1a3150d0fe3` |
| 4 | `instance` | [toIsStrictOrderedRing](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/declarations/toisstrictorderedring-source-edition-2.md) | 51 | `declaration-track:f1a54bbfddf7f620288b13b915d1673f2b5a9a5b57db683ab9fe64930e94c4a3` |
| 5 | `def` | [nonneg](../../../../AssociativeRingsAndAlgebras/SubsemiringOrderNamespaced.lean/declarations/nonneg.md) | 58 | `declaration-track:51c50d2df8dc7a956e68599e8c0be8498520162544244ca0b5e2f83b9d2f69e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=75fab68f26880c1cf797e68f0601655352d185ad83bd4448a0b0537dc6a568a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Order/Varianta175bb3e087d79e94920c2794e5ce557762574471f6eb7dd3de0a73b0590fbab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
