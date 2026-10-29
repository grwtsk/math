# Verification target: Has Conical Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44194be9a5dc3557d524ae91f9676e25d20cf227",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44194be9a5dc3557d524ae91f9676e25d20cf227`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasConicalLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimit.md) | 52 | `declaration-track:aa14e5ba68471a5dd84429c387ca54b962c23b12b07d726964deb3cc88d13089` |
| 2 | `class` | [HasConicalLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimitsofshape.md) | 61 | `declaration-track:f20a991cf735fc542b7d627f94a4d2464d8a73b11611deecec9d7f4cfbd40fd7` |
| 3 | `class` | [HasConicalLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimitsofsize.md) | 72 | `declaration-track:9e20e64731a61c37050b932b03c0773c17107f0d5266e64514701f27306f09ec` |
| 4 | `abbrev` | [HasConicalLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimits.md) | 81 | `declaration-track:b0fa9664d99742b1d5cb7bcb1d27de61a69c426955aa352b494fd186b030fa86` |
| 5 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/example.md) | 92 | `declaration-track:58c9074695cd4f5245213b124cba02ea861ac4a312488e4205cfdc3ca4092ee4` |
| 6 | `lemma` | [HasConicalLimit.of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimit-of-iso.md) | 95 | `result-track:07ff37f0c3a3994771e4cdabbdfd1d1cf77c084f5ae58ccf81f4686372de5ea3` |
| 7 | `instance` | [HasConicalLimit.of_equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimit-of-equiv.md) | 100 | `declaration-track:844480d6ced1d20c21309b5880baf13fe1661780c01e3fa8515454a7fcb12f97` |
| 8 | `lemma` | [HasConicalLimit.of_equiv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimit-of-equiv-comp.md) | 104 | `result-track:be74d8c703e20ce1644699d44a37d488073e748250192c6c9634adbe577ce722` |
| 9 | `instance` | [HasConicalLimitsOfShape.hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimitsofshape-haslimitsofshape.md) | 113 | `declaration-track:4b8e8e7b16576f148192b4a37596ee65d14f55dc5ff29adb85a41cb6e9d02b68` |
| 10 | `lemma` | [HasConicalLimitsOfShape.of_equiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimitsofshape-of-equiv.md) | 117 | `result-track:b7ccacfc36e25079fb035855f7b2a81201fd26528f77c0ec60435a5029139acd` |
| 11 | `instance` | [HasConicalLimitsOfSize.hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/hasconicallimitsofsize-haslimitsofsize.md) | 122 | `declaration-track:9f5af1de4c7f0e8f390b23afd3feeba2a55d7daf6ce5d3d73d41bfa8c5d8cd22` |
| 12 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasConicalLimits.lean/declarations/example-source-edition-2.md) | 126 | `declaration-track:bdbd80c6ab1856e86fe8e64af2f749126b872996534aa7e0d7a140558441897b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ea28b2ec2313e8d43798b2808fc717d0273b859e0e4e13a8846803e921d2d9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HasConicalLimits/Variante4788ca1bdbc2e67ffbf01166b1011ea6b39b0c2540509c3db56c458d15f3976.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
