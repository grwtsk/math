# Verification target: Category Theory Cat Comm Sq VInv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b22904ec7b1ad38631410caeda69bc17d53b48",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b22904ec7b1ad38631410caeda69bc17d53b48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CatCommSq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/catcommsq.md) | 34 | `declaration-track:b1080b75c13429d6ca22099621602fb4f053ca64c5730c56e1417f39fdfd0428` |
| 2 | `abbrev` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/iso.md) | 43 | `declaration-track:0ddc40f4a5a724d60d5c6700ee07602707725b69c2b8e617a9993e8de74db687` |
| 3 | `def` | [hComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/hcomp.md) | 47 | `declaration-track:e71e6711ee1b7bb6dd7307dea1f2561d121b3578e5b476cd8edd74fa6527491c` |
| 4 | `def` | [vComp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/vcomp.md) | 56 | `declaration-track:18d09dbc63e16a62e1c36ca0e1df4fee1ef2afb801afa5340d18ab4dd8f2a96a` |
| 5 | `def` | [hInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/hinv.md) | 69 | `declaration-track:307f0a3671e606d267dc8fbb204b1307c49dc90b01e7b995e05f3baa1373bba0` |
| 6 | `lemma` | [hInv_hInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/hinv-hinv.md) | 76 | `result-track:9b747149528cf79a17e70ad502b639742961679232e150c5d1b96c8a156a095e` |
| 7 | `def` | [hInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/hinvequiv.md) | 94 | `declaration-track:f60b46d566260b2e09bca712e36d82c8081c22de3fa98a192f6d047df87278b9` |
| 8 | `def` | [vInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/vinv.md) | 108 | `declaration-track:85d1f2a9db79626fab5784fbd43e86f88c0186b09ecef8228a72c25d2935273e` |
| 9 | `lemma` | [vInv_vInv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/vinv-vinv.md) | 116 | `result-track:a2e1f964ff82700db83685e4dcdf47f117b63616f312cd46c074ef5c793453ea` |
| 10 | `def` | [vInvEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryTheoryCatCommSqVInv.lean/declarations/vinvequiv.md) | 139 | `declaration-track:23dc61db3c3dde53df6396d9882b38fdb0de185f4208ae0919790a3941a6c7a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ed8a749805031da94d2b1756997b079d14c52bc829213c33862c91c9d24f8300 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CatCommSq/Variantc3a9a25eb38dd47455b78912ae504ac0182062be57d75ccd5de65fca4e555317.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
