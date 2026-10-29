# Verification target: Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47be14c27bdf4277f326652b3f22225e7f34ab45",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variantc38c1c6be61ba50a5a7e50af3c62712cfa327ebc3cd90d6d7584df74692745b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47be14c27bdf4277f326652b3f22225e7f34ab45`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variantc38c1c6be61ba50a5a7e50af3c62712cfa327ebc3cd90d6d7584df74692745b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variantc38c1c6be61ba50a5a7e50af3c62712cfa327ebc3cd90d6d7584df74692745b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Indexed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ciSup_mul_le_ciSup_mul_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/cisup-mul-le-cisup-mul-cisup.md) | 30 | `result-track:f31a80791dedb22ae9047572b38ee9e608a13c8b206cb901a2f40010ca6873ef` |
| 2 | `lemma` | [ciInf_mul_ciInf_le_ciInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/ciinf-mul-ciinf-le-ciinf-mul.md) | 36 | `result-track:d2ab23cc9b68b786d37bc0aafbcafb86a87a5a973fd802a3ecfb14ee02fc66ae` |
| 3 | `theorem` | [le_mul_ciInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/le-mul-ciinf.md) | 49 | `result-track:ee7eeda1e84f50f6bd7f726c15e49664a2dcb06a4721fe670d029abbda099493` |
| 4 | `theorem` | [mul_ciSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/mul-cisup-le.md) | 54 | `result-track:4575b67b06855133b720714469838462569867ea93b9d8f87133e3764816b368` |
| 5 | `theorem` | [le_ciInf_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/le-ciinf-mul.md) | 59 | `result-track:46ca430e410d229ce7ab3838dfe8a1dd6f05bb309a6610e5967971f83f028d44` |
| 6 | `theorem` | [ciSup_mul_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/cisup-mul-le.md) | 64 | `result-track:5248b3a6df81a56898f052e69b1aa729251ec41a64e6f3d4310545340665edc2` |
| 7 | `theorem` | [le_ciInf_mul_ciInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/le-ciinf-mul-ciinf.md) | 69 | `result-track:864c1126b310beb3b3968cdfb2d1633da5962a927eb0e9a8b86f0b544f30b409` |
| 8 | `theorem` | [ciSup_mul_ciSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/GroupNamespaced.lean/declarations/cisup-mul-cisup-le.md) | 74 | `result-track:6f430bd13d3dc43d6d6ef2a83b8df084025a10e284d076b26dd6fb4748b1330b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff73033606ff17a9e429146ebbcffcd69c90fd9f5a685934a23dcb6a47d2801f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variantc38c1c6be61ba50a5a7e50af3c62712cfa327ebc3cd90d6d7584df74692745b4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Group/Variantc38c1c6be61ba50a5a7e50af3c62712cfa327ebc3cd90d6d7584df74692745b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
