# Verification target: Parametrized Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c7323772deecb18ec5ce5d8ba80ea433b7452c0",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c7323772deecb18ec5ce5d8ba80ea433b7452c0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ParametrizedAdjunction](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/parametrizedadjunction.md) | 58 | `declaration-track:25785d00b48769a37dcefe616922e7c0542bdc9c7152b780da5232fe83d111ab` |
| 2 | `def` | [mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/mk.md) | 79 | `declaration-track:0605cded2ff2c937017116db9742cdc9134e27761e19f25c5dcb0048d16c9242` |
| 3 | `def` | [homEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv.md) | 94 | `declaration-track:02b2251509f17739aa951d3aed4a9f52fa590f3544b7649b968010f827de833f` |
| 4 | `lemma` | [homEquiv_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-eq.md) | 97 | `result-track:8cfde6f1078d45086f726e9118eec06bfd88d3eafa7b1d24c474f23eca733307` |
| 5 | `lemma` | [homEquiv_naturality_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-naturality-one.md) | 100 | `result-track:79773d7d7a34d824240cc6ece6c257e458cf2de1efb804f0ec36c2a7dbf1eb42` |
| 6 | `lemma` | [homEquiv_naturality_two](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-naturality-two.md) | 109 | `result-track:68373bb3981f62863b812e3f77474919f59aed196e8ae67d52134da298e2d9ac` |
| 7 | `lemma` | [homEquiv_naturality_three](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-naturality-three.md) | 114 | `result-track:075ab9fedcf4f66e297034154b94e55d149a4724422d95a84d294f8cec7468c5` |
| 8 | `lemma` | [homEquiv_symm_naturality_one](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-symm-naturality-one.md) | 119 | `result-track:637d666fa4852984b735923054d4d98992be96e672ecad1f5b192e7036f6d786` |
| 9 | `lemma` | [homEquiv_symm_naturality_two](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-symm-naturality-two.md) | 126 | `result-track:a0da50d541483c767b144df601b6c77bdcd7f38f96b97b531b6de5cf4dbaf3fb` |
| 10 | `lemma` | [homEquiv_symm_naturality_three](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/homequiv-symm-naturality-three.md) | 133 | `result-track:c89a2d3d3edad732ca22a412535ea4925f3750d9ea3f2d77d7c9733f92807d7f` |
| 11 | `lemma` | [whiskerLeft_map_counit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ParametrizedNamespaced.lean/declarations/whiskerleft-map-counit.md) | 140 | `result-track:dd4fb0da97d2783d3d5f606c37baa2c8c452257606ea87675dca94e625890535` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=206b618ed082c9d765aeacf46fe2abfb05f3ba8f11a507456818766a5b422faa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Parametrized/Variant1ae3d3de31dbe16773d3bac403a966b1068836384219b69b6ec2f05fd5209688.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
