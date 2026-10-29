# Verification target: The Full Subgroup Lattice Of AFinite Additive Cyclic Group

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "488e6006e33deb20ef2f3e4cdc545455e24f57a9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `488e6006e33deb20ef2f3e4cdc545455e24f57a9`.

Source path: `GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.DivisorRepresentation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSubgroup](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup.md) | 19 | `declaration-track:56fb2b1a2aa29d995f8d49191b435a3cea4e5c60ae770390bffd478642e832a9` |
| 2 | `theorem` | [mem_cyclicSubgroup](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/mem-cyclicsubgroup.md) | 26 | `result-track:c01f8b7f920d261d9515b4a8681282727d4da994f151ed6064d9816700646ad1` |
| 3 | `theorem` | [generator_order](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/generator-order.md) | 31 | `result-track:ab33026d780c79ff71917e6bae1bf6043782108cd6a09462fa8d02b125d932ba` |
| 4 | `theorem` | [cyclicSubgroup_eq_zmultiples](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-eq-zmultiples.md) | 38 | `result-track:f2894288872600fff3e9a7482ad9a7177c83ff40e6e8b4e643ee2787ee3e631a` |
| 5 | `theorem` | [cyclicSubgroup_card](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-card.md) | 51 | `result-track:3d66c3833a52e572d0eea4eb04d636d00487f3ce0b544dfbbbdafb91b0fe5111` |
| 6 | `theorem` | [cyclicSubgroup_le_iff](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-le-iff.md) | 55 | `result-track:85be154b46bf19d344380c58f029ac9b2e74e6eeb57f404d222f743ee6a213b5` |
| 7 | `theorem` | [cyclicSubgroup_surjective](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-surjective.md) | 66 | `result-track:464a201551dccb9aa0dcbf62eab59b758699682e71dfbb90c9fa381148b238b3` |
| 8 | `def` | [cyclicSubgroupOrderIso](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgrouporderiso.md) | 82 | `declaration-track:f2c607a15d2e3533d5784955e8493018f7e582f690616af45667494b3908c23d` |
| 9 | `theorem` | [cyclicSubgroup_gcd](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-gcd.md) | 89 | `result-track:bf19675a51c5250a2c6b9d4b8603793cdfabbc78db0e047bea099d572ac8cfe9` |
| 10 | `theorem` | [cyclicSubgroup_lcm](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cyclicsubgroup-lcm.md) | 93 | `result-track:797bc0eba1ed122638322994975a27b89f130d1a04c42e4f41f0ff4b1b907ac2` |
| 11 | `def` | [cyclicColor](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cycliccolor.md) | 98 | `declaration-track:f530bc98cec9210815406461a6811c74f90d0625eb0cca85f114333d4e362a25` |
| 12 | `theorem` | [cyclicColor_threshold](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cycliccolor-threshold.md) | 102 | `result-track:e37f25aff51e46ba031c3765771785a9d92f9c434d2ce857af24f9630bfade9f` |
| 13 | `theorem` | [cyclicColor_representative](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cycliccolor-representative.md) | 107 | `result-track:0d7aeb71b48fd5b9b060bc104c090a9c7d496fb55f5b45cee52d56a39175bbb8` |
| 14 | `theorem` | [cyclicColor_representative_independent](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cycliccolor-representative-independent.md) | 114 | `result-track:b4ce327fcdf2e488f9462d88cade21db21cb2481959ea9f9d09aba3e6fd50973` |
| 15 | `theorem` | [cyclicColor_val](../../../../GroupTheoryAndGeneralizations/TheFullSubgroupLatticeOfAFiniteAdditiveCyclicGroup.lean/declarations/cycliccolor-val.md) | 120 | `result-track:d051162eeb0e115a140ff1d3233d4a9b6e050b27d241e7da6d28c723ee57e14d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37a497dd21855330fa2f9dc2da2297269b8e729c18c071a60df2d49268411a7e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CyclicRepresentation/Variant66169d2f36abc755ffd2e11c6d331a9366e68bdae216b85f7613fb1624c94a03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
