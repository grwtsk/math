# Verification target: Extensions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6336d844b01f085078ceefb08895ff97027da8a1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensions/Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6336d844b01f085078ceefb08895ff97027da8a1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensions/Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensions/Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsClosedUnderExtensions](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/isclosedunderextensions.md) | 45 | `declaration-track:be33369927bef6f0e4caf8cb9d5d1456e800244646178cc3fe83efe5b0cfc62b` |
| 2 | `lemma` | [prop_X₂_of_shortExact](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/prop-x-of-shortexact.md) | 49 | `result-track:8de86558d4590e37061800e0c6e36b5f66afc0f0e73d4cadc2c8557bd94db138` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/instance-source-edition-2.md) | 54 | `declaration-track:9bb293200c91f4e8f4decedb9cfe74ff914178b0e4e95df549df5d862ecd01b7` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/instance.md) | 57 | `declaration-track:81a19f245e20e3bff49185efdb4c4d2967d9b92e8a02fcf23b04a4db9f4a5f54` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/instance-source-edition-3.md) | 61 | `declaration-track:e92fe0a99541f3f79791d59763726598128e65bdcf63e875873c2e65cc94d8be` |
| 6 | `lemma` | [prop_biprod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ExtensionsNamespaced.lean/declarations/prop-biprod.md) | 72 | `result-track:7e7f4ce0f191ac1d5eb098a88f37e62ac57f0219c2e527503af99846194a1c1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=62edfb5c74e64e5cde5d78f7ad6c66a364877c4a28caeb9840b64a263ff22f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensions/Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensions/Variant9c1101655460a430198e3cd052283fa60d018e44ea82facf5224a58384c902fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
