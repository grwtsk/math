# Verification target: Cell Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf58ca2dc61c08bb0c58d03f806960596de27a6a",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CellEdition1.lean/index.md) · [Full source](../../../../Combinatorics/CellEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf58ca2dc61c08bb0c58d03f806960596de27a6a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Cell/Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Concept.Assignment` — import line 1; external provider; requires a separately pinned dependency.
- `MathDiscovery.Taxonomy.Core` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CoreAxis](../../../../Combinatorics/CellEdition1.lean/declarations/coreaxis.md) | 16 | `declaration-track:81863a8ad6566db63fda820c872030a8ff166c64c8eb2c539ad0d35f1b1ca998` |
| 2 | `structure` | [AxisEvidenceData](../../../../Combinatorics/CellEdition1.lean/declarations/axisevidencedata.md) | 31 | `declaration-track:5432b2f6c15bd7bc48224af891dfeb507f1c8fa0491d9dec7abb22d2a81ba278` |
| 3 | `def` | [AxisValid](../../../../Combinatorics/CellEdition1.lean/declarations/axisvalid.md) | 37 | `declaration-track:53ee88ecb297754d29b7c8b4b3e3c3153d39841911591dc7b3956430d305cd3e` |
| 4 | `structure` | [AxisEvidence](../../../../Combinatorics/CellEdition1.lean/declarations/axisevidence.md) | 43 | `declaration-track:cb8596966a7d3398bae5805da4fed25cc8f84e41d73e6d4b4d7d62aad6da539a` |
| 5 | `structure` | [Cell](../../../../Combinatorics/CellEdition1.lean/declarations/cell.md) | 49 | `declaration-track:29604252c716035614d449da042cc6b29d363578c39e546edbb65f699c66468e` |
| 6 | `def` | [Closed](../../../../Combinatorics/CellEdition1.lean/declarations/closed.md) | 81 | `declaration-track:a5222f686e1c7b8a1439967b1d494c269863c2235ced65b950ec06ec3cafd690` |
| 7 | `theorem` | [coreAxis_mem_required](../../../../Combinatorics/CellEdition1.lean/declarations/coreaxis-mem-required.md) | 85 | `result-track:a8845c96e349072f001b8882e3710d288b52eb35319730ecaff3c747934c2ae6` |
| 8 | `theorem` | [coreAxis_discharged](../../../../Combinatorics/CellEdition1.lean/declarations/coreaxis-discharged.md) | 91 | `result-track:e48a41e09cd9aa3a912b5a2499e6165857af35befee6bc069250d1751ad76bfd` |
| 9 | `theorem` | [evidence_valid](../../../../Combinatorics/CellEdition1.lean/declarations/evidence-valid.md) | 98 | `result-track:62f4b71f9fca9580cc43b284b96e9f11af7448af824fb79dbc999893d713353e` |
| 10 | `structure` | [FaceTransition](../../../../Combinatorics/CellEdition1.lean/declarations/facetransition.md) | 104 | `declaration-track:4d6e508642a3fcf674018146e75f27f0f3607f34ca0a300c95fbc9cf1019d88c` |
| 11 | `structure` | [TheoremCell](../../../../Combinatorics/CellEdition1.lean/declarations/theoremcell.md) | 116 | `declaration-track:0df2c221d33ae299d6d8c38ce7f5739b99739c785b068bbebce4b8844edb3fe7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ef9cc20dd61fa044f13f7aca19bc01abcead382087e58afdf6814a1dd96e03c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Cell/Variant1c21aa4e82db950d2e75767d642d0be62952bb2e60bfc3d1d571fe82137b7c7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
