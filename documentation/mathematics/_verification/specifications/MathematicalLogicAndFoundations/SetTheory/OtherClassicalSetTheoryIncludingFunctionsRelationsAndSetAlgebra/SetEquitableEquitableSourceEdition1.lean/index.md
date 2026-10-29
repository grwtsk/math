# Verification target: Set Equitable Equitable Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ace02b9130af1f829c3d00d6afc9fe511657c794",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ace02b9130af1f829c3d00d6afc9fe511657c794`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EquitableOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon.md) | 33 | `declaration-track:f62ea485a37bfe228c9b8ae44a92b7022a3512d8d0b6181e7219c817eca2b36b` |
| 2 | `theorem` | [equitableOn_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-empty.md) | 38 | `result-track:36c0528e37e3644a3233a90aea4fbcef286f1c66089ed3ba6dcf180926a01b8f` |
| 3 | `theorem` | [equitableOn_iff_exists_le_le_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-iff-exists-le-le-add-one.md) | 42 | `result-track:792a6a225b25a446108e9b82e2b3600b6c3f2aaffc14f6cef92013334da8b3aa` |
| 4 | `theorem` | [equitableOn_iff_exists_image_subset_icc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-iff-exists-image-subset-icc.md) | 57 | `result-track:7e430f79403c0762dbfd3669e2482433667933b964a46d8917783e9af809d8a2` |
| 5 | `theorem` | [equitableOn_iff_exists_eq_eq_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-iff-exists-eq-eq-add-one.md) | 62 | `result-track:a622d21ca1bd498bd0155c9fe6bbbfe11c71577064e4f31418742042497b9eac` |
| 6 | `theorem` | [Subsingleton.equitableOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/subsingleton-equitableon.md) | 71 | `result-track:edb6c9315752839690dad22b2d77a1591ef7225ad3faed90282b5e973e524d8b` |
| 7 | `theorem` | [equitableOn_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-singleton.md) | 77 | `result-track:dc0882d7d33ae4d7a2497110676581500912b9ee4c6ab6d320300a9feacb59c7` |
| 8 | `theorem` | [equitableOn_iff_le_le_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-iff-le-le-add-one.md) | 91 | `result-track:b4c8e860a21909903e24c79a518c1d6d0082fa39ef596174d06e48fd98cc5e35` |
| 9 | `theorem` | [EquitableOn.le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-le.md) | 114 | `result-track:af83d1b0f73873de366675240a86fdbd9da3dcb08bde6aa9a03e74a44a86b953` |
| 10 | `theorem` | [EquitableOn.le_add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-le-add-one.md) | 119 | `result-track:3ec88c227c129b5b7bb4fe64c61f42a02e4de72962769b7b2f543e1e3115ca10` |
| 11 | `theorem` | [equitableOn_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/SetEquitableEquitableSourceEdition1.lean/declarations/equitableon-iff.md) | 124 | `result-track:1920ae726dae8e9417cb7ad7a7ab5faa985557eab4e3ff805e402ef7073d928d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=94b51ea488847716ea94dc715da333ccbd081a5efbbf0d30830fa62b5bcdeb1c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Equitable/Variant31a8d47a9d6a4cc2e265eaa1848d9604b5ad074758002178d05f6bd98b2ca202.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
