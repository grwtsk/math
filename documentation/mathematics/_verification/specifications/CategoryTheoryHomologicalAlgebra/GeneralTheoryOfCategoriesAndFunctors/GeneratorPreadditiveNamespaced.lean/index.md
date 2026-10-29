# Verification target: Generator Preadditive Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8de606d58c913af9e409b98acbd775d0c78f417c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8de606d58c913af9e409b98acbd775d0c78f417c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Generator.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Preadditive.isSeparating_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/preadditive-isseparating-iff.md) | 34 | `result-track:21f1f7ce22965995824d05963639aabfa3c229ef802885653fa3d739f61aecdd` |
| 2 | `theorem` | [Preadditive.isCoseparating_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/preadditive-iscoseparating-iff.md) | 39 | `result-track:82d47026a6f40a7410fc36f2eaacf4a3c81271393ee1f3f774f438bbec230a9e` |
| 3 | `theorem` | [Preadditive.isSeparator_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/preadditive-isseparator-iff.md) | 44 | `result-track:f8d5ea5b604c5c29c33c7d3c8e265df8212f8a3950514412eea361ef526e48cb` |
| 4 | `theorem` | [Preadditive.isCoseparator_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/preadditive-iscoseparator-iff.md) | 50 | `result-track:d9f5d7394360a7f81800245c0346671a774e487801a98a37ba67f4cc5666b9e0` |
| 5 | `theorem` | [isSeparator_iff_faithful_preadditiveCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/isseparator-iff-faithful-preadditivecoyoneda.md) | 56 | `result-track:07c6465c9c86835b0377f5c15e235edf5523af9a7710eb06165613f6327bdac5` |
| 6 | `theorem` | [isSeparator_iff_faithful_preadditiveCoyonedaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/isseparator-iff-faithful-preadditivecoyonedaobj.md) | 63 | `result-track:9375c92b45dd49bca33c728aaf1192681be0fd8517e955e2343ad56a78f3fa3e` |
| 7 | `theorem` | [isCoseparator_iff_faithful_preadditiveYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/iscoseparator-iff-faithful-preadditiveyoneda.md) | 69 | `result-track:176efa3fc66fba78370ec68b93dcd6d8f8804ce70e3f6ed22790d125355bd919` |
| 8 | `theorem` | [isCoseparator_iff_faithful_preadditiveYonedaObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GeneratorPreadditiveNamespaced.lean/declarations/iscoseparator-iff-faithful-preadditiveyonedaobj.md) | 76 | `result-track:120ba2b518b1f0e93f9b6e887ab8529e7abb332c408a2df0971c85dfa6ee2ec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2c86b55592d0f1fe676eb563942a85141c2be5725d3e359a5bb8ea4a5d458e06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant04ec4b45f9606dfc76e8d90626538e55682a878a7d25484795dde42169603cd3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
