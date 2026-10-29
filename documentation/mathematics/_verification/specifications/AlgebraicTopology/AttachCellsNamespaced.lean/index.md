# Verification target: Attach Cells Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "98c597bfc5b61a5b3290fa411d391fcb6e345738",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `98c597bfc5b61a5b3290fa411d391fcb6e345738`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AttachCells](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/attachcells.md) | 50 | `declaration-track:b628193a2cb65500a77040180f13d9242bb33c2fc71d707a70eae5351a9c4068` |
| 2 | `lemma` | [pushouts_coproducts](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/pushouts-coproducts.md) | 82 | `result-track:a2bff03f17e1ad35afac55ae0c22c0ad9c9b5b64364054c7935a157914f609a1` |
| 3 | `def` | [cell](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/cell.md) | 91 | `declaration-track:02be8eeefb5bb7d59de6e73d6e917e62045718ed9b9f867bda166dbbfb68583a` |
| 4 | `lemma` | [cell_def](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/cell-def.md) | 94 | `result-track:9a708625e669bf60443c819d1f399f19d22a8000ef9bcf39b20b7ea480c07d7a` |
| 5 | `lemma` | [hom_ext](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/hom-ext.md) | 96 | `result-track:66cd81bcae277e670d724e03a89074ea1af10f1310c7ee2ee3b879a2455dbf0c` |
| 6 | `def` | [ofArrowIso](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/ofarrowiso.md) | 107 | `declaration-track:abf37d29ae09baea1f5c79ea9f58bc64bdcec7a84221ec2fcf04bdb9a36cf958` |
| 7 | `def` | [reindex](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/reindex.md) | 125 | `declaration-track:96c89e5897b9a560f1c4677f216983f86e724bec9ed4162cd7650af171fc11fb` |
| 8 | `def` | [reindexCellTypes](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/reindexcelltypes.md) | 147 | `declaration-track:475000674f4d57fa27fbdaf9160dc74dacaefaf85ba8047cdaadcbee0ea9d646` |
| 9 | `lemma` | [nonempty_attachCells_iff](../../../../AlgebraicTopology/AttachCellsNamespaced.lean/declarations/nonempty-attachcells-iff.md) | 178 | `result-track:a62cd22f4958e31ac6fc38d757ccbf2d937c0a4b390c92c00d0f43c62fffe9f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aefb57a37a0677232ea0b20524d3c8f1d126242aa7880d31c70c8c477a82917a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Variantbc2f94a8d8f5093bce2246af416c34f54870e14ac485da756ad11bb5849fc507.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
