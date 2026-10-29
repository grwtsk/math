# Verification target: Monoidal Linear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1a028736ecd29e7becbd196edaa03a7a07a06ce",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1a028736ecd29e7becbd196edaa03a7a07a06ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Preadditive` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalLinear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/monoidallinear.md) | 30 | `declaration-track:02683a14423b6b203cc1cb90d21bda1d33864b74af7114f70194cb3d03654eab` |
| 2 | `instance` | [tensorLeft_linear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/tensorleft-linear.md) | 41 | `declaration-track:a77ccc9405f71d920dbdb6878ef6563f9e7b49194a56565bce684623b195421b` |
| 3 | `instance` | [tensorRight_linear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/tensorright-linear.md) | 43 | `declaration-track:9707886ede068e8a8749ee8ccc1ad30697fe6472236eb76799a2ae90b625ad16` |
| 4 | `instance` | [tensoringLeft_linear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/tensoringleft-linear.md) | 45 | `declaration-track:793caa6f1d980c2c0eeffd9717f87ce841747478c05c2a647f2aa6ff98d3300b` |
| 5 | `instance` | [tensoringRight_linear](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/tensoringright-linear.md) | 47 | `declaration-track:d87ab91bb0eec0efb76a9a76117ee9f321d2d7aa729db914a24c4ae810f4377b` |
| 6 | `theorem` | [monoidalLinearOfFaithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/MonoidalLinear.lean/declarations/monoidallinearoffaithful.md) | 51 | `result-track:ceaea8710550659a1a3ab0c5ed2a06b52cb52b959400d45ce881c227c22973b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=352056485fc66d9083d2371fb85d1e3a369d292c3f3b505a9c3acd462e9fa87c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantf9d11546ec2ce23ff133cba76cdf2be02d34f6bfbf19d3c73c090b6f56c9a043.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
