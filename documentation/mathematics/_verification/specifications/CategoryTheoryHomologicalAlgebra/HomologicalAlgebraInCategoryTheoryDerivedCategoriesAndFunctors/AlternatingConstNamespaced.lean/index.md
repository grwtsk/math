# Verification target: Alternating Const Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "450d4490a88b041f0dcc8dc6c551f29a8a562375",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `450d4490a88b041f0dcc8dc6c551f29a8a562375`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.ExtraDegeneracy` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alternatingConst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconst.md) | 36 | `declaration-track:eeaa6ba6a39e026fc43fb902acd84947b31218f200b38c44c128d5c6b4d3e6dc` |
| 2 | `def` | [alternatingConstHomologyDataEvenNEZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconsthomologydataevennezero.md) | 57 | `declaration-track:68d0c7c522c9d7cab5cbdf299966f4e2ee98ebb3cb7c2c58a343dc087ea8c9f0` |
| 3 | `def` | [alternatingConstHomologyDataOdd](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconsthomologydataodd.md) | 64 | `declaration-track:4a16b4c6cb2467b31dadbb10c1743d6a73018c3e6186349e05f4447e9b65d697` |
| 4 | `def` | [alternatingConstHomologyDataZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconsthomologydatazero.md) | 70 | `declaration-track:467ee0be36c3e3c819673f2d0f9fe5bbdcaae024166d50b1c0a188b231a03050` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/instance.md) | 74 | `declaration-track:745f9bdf343899cfcf7c33055cd78bfcde3d6701af1db64ec9fce738b8ebfd24` |
| 6 | `lemma` | [alternatingConst_exactAt](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconst-exactat.md) | 82 | `result-track:b31041414805e6378c7629e823db6a4b7d1bd4d8d8a7eb29bf10412190253081` |
| 7 | `def` | [alternatingConstHomologyZero](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconsthomologyzero.md) | 90 | `declaration-track:f286c2cf5553770be581b8cac73c2aaf46c4194e31553e50598ef9af53402816` |
| 8 | `def` | [AlgebraicTopology.alternatingFaceMapComplexConst](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/algebraictopology-alternatingfacemapcomplexconst.md) | 98 | `declaration-track:3a85f6be336e9747927300fd4800e82909ed6821bf975bb831339095c13077f5` |
| 9 | `def` | [alternatingConstHomotopyEquiv](../../../../../CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/AlternatingConstNamespaced.lean/declarations/alternatingconsthomotopyequiv.md) | 109 | `declaration-track:5117a5a7b9fdcdb07bb29fb96e5f877d5f5c3d66d912de851126daf866fbf1e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6af78ce11bc2c919552538436db58ec9030c9c475f441ca0d8cbac2caf8346f8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/AlternatingConst/Variant74e575ca9f53a59b12c338329a8b6f2d0e84a8f63583df86facac19bc024eed7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
