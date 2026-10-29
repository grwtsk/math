# Verification target: Attach Cells

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2aa9f553354194fd400e0f41269650a4ccc9bb46",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/AttachCells.lean/index.md) · [Full source](../../../../AlgebraicTopology/AttachCells.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2aa9f553354194fd400e0f41269650a4ccc9bb46`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AttachCells](../../../../AlgebraicTopology/AttachCells.lean/declarations/attachcells.md) | 42 | `declaration-track:06bd6f2cfd565ca394093d3842e0376e0ebc17429aa89957b39bf3a460499ac6` |
| 2 | `lemma` | [pushouts_coproducts](../../../../AlgebraicTopology/AttachCells.lean/declarations/pushouts-coproducts.md) | 74 | `result-track:5661dc28f931c4883e40105532d1fb1442be879d7bac5651d9e9c3db74420a84` |
| 3 | `def` | [cell](../../../../AlgebraicTopology/AttachCells.lean/declarations/cell.md) | 83 | `declaration-track:6c6f0b3756d9df69c7f3556369939b90c349e6d528ee2889221bf1cef83e8998` |
| 4 | `lemma` | [cell_def](../../../../AlgebraicTopology/AttachCells.lean/declarations/cell-def.md) | 86 | `result-track:8c495a4b63ad381b59d01c9043cc7111d3b671882a2095391eeb76d808ab63c0` |
| 5 | `lemma` | [hom_ext](../../../../AlgebraicTopology/AttachCells.lean/declarations/hom-ext.md) | 88 | `result-track:b707e3fca243e8caf75a6c80d5b3e380876ab22f3f600a21093f7312eb995bd0` |
| 6 | `def` | [ofArrowIso](../../../../AlgebraicTopology/AttachCells.lean/declarations/ofarrowiso.md) | 99 | `declaration-track:418f4609c219b39bad0fd3485356e672d11463bff51a2ac24c6346d919ac33c9` |
| 7 | `def` | [reindex](../../../../AlgebraicTopology/AttachCells.lean/declarations/reindex.md) | 117 | `declaration-track:39cc59f77c714fb7de883c8a4d4a9cf3f0c06205cc725557e22a45954a751dc0` |
| 8 | `def` | [reindexCellTypes](../../../../AlgebraicTopology/AttachCells.lean/declarations/reindexcelltypes.md) | 139 | `declaration-track:cabfa85b794ad131f897421ad7c18b974b9818c497470db5ce41713aac8f76cc` |
| 9 | `lemma` | [nonempty_attachCells_iff](../../../../AlgebraicTopology/AttachCells.lean/declarations/nonempty-attachcells-iff.md) | 170 | `result-track:919758e83d466bc836a75b2205f9cffcdefc37213957d4ed4f5f1a5d3ef89024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ce3a1f30afbd8c4926dde39112068789e35a269706c87286ce14a0a3ec89c9a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/AttachCells/Varianteb861c3e40edc7e68188a1db11f629c5eea2d670488380acfa0dac08774aaa7e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
