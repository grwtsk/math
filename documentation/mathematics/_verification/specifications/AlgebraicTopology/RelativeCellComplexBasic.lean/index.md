# Verification target: Relative Cell Complex Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5310f2893bcc4f457e3fa16649690a57ab43769b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8713f26f063f82abeab41fb789c49db6416099fcb5f19d8cf2f23a155832d47d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/index.md) · [Full source](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5310f2893bcc4f457e3fa16649690a57ab43769b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8713f26f063f82abeab41fb789c49db6416099fcb5f19d8cf2f23a155832d47d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8713f26f063f82abeab41fb789c49db6416099fcb5f19d8cf2f23a155832d47d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.RelativeCellComplex.AttachCells` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RelativeCellComplex](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/relativecellcomplex.md) | 44 | `declaration-track:357327a4c84b969a62ff556b0ef89354afb479a220490f26c20725909bacb71d` |
| 2 | `structure` | [Cells](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/cells-source-edition-2.md) | 56 | `declaration-track:f3fc91f41c44fd61a55b590fefbd4933080eb8e2d1554f4cf380907536a10fd5` |
| 3 | `def` | [Cells.i](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/cells-i.md) | 66 | `declaration-track:f7b3114c2b9fd1d39ef27246b727a54ba32e279d2a0f13bf7a732502410d5e9c` |
| 4 | `def` | [Cells.ι](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/cells.md) | 70 | `declaration-track:41ac34fa5e79a3d728717e3cbcf9849c3a8e3b0ff964092679fed8c84b423878` |
| 5 | `lemma` | [hom_ext](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/hom-ext.md) | 73 | `result-track:485ad00769709873058784b3ae6f92a27e2b2c1cb999b7dd5e6c04877e457c49` |
| 6 | `def` | [transfiniteCompositionOfShape](../../../../AlgebraicTopology/RelativeCellComplexBasic.lean/declarations/transfinitecompositionofshape.md) | 96 | `declaration-track:195671461e417bf503d8648a3bc8b87dfdc726ba38df0e177d8328a1ab6ec827` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=99ab1474d61759b0c1386bccb59a6306bff2f0c6afed2afa0f70381c594dd3a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8713f26f063f82abeab41fb789c49db6416099fcb5f19d8cf2f23a155832d47d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8713f26f063f82abeab41fb789c49db6416099fcb5f19d8cf2f23a155832d47d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
