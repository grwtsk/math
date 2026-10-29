# Verification target: Conj Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b558f270c1cd5ea7ea0d4d51187e66a42cea29b",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b558f270c1cd5ea7ea0d4d51187e66a42cea29b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Units.Equiv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Endomorphism` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.HomCongr` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conj.md) | 44 | `declaration-track:df88c807734be3800fdad28ca4333a3d3e96d26188e724bd3919bcc768b38cc5` |
| 2 | `theorem` | [conj_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conj-apply.md) | 47 | `result-track:06fcbe73c30a012094656d9e4dedc4882f469b77e52e78a729d88ad380dd0263` |
| 3 | `theorem` | [conj_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conj-comp.md) | 51 | `result-track:7c44fc6d571cb54a1a16a51387b58b69d13b4575f47d867b1586a70d6c523f1b` |
| 4 | `theorem` | [conj_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conj-id.md) | 55 | `result-track:c39b10ea77488a6947a366082423116bcee5c68bdf8990bf1baf064a4fc975bf` |
| 5 | `theorem` | [refl_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/refl-conj.md) | 59 | `result-track:1370ac5764b8ad513ced6b5a5a9565525d3138fc49025cfb41b607a09ce6de0e` |
| 6 | `theorem` | [trans_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/trans-conj.md) | 63 | `result-track:4b24beae01f3ac3a275769dc15427a5aac0eac94ffaf063f69c686957bc4811f` |
| 7 | `theorem` | [symm_self_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/symm-self-conj.md) | 67 | `result-track:174216e244f9ff5cf4214c964158270b7d909f0e937d468a3a6853a47645fa01` |
| 8 | `theorem` | [self_symm_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/self-symm-conj.md) | 71 | `result-track:3e5ac68efff521cbc21d4a1775be52daea06537ece575ef69dd1115db1e19df3` |
| 9 | `theorem` | [conj_pow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conj-pow.md) | 75 | `result-track:45db19715fbd87c4a81f94fdca1b2cc3504b249e993c86d10a472342e5eb7240` |
| 10 | `def` | [conjAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut.md) | 80 | `declaration-track:58e094208a635aae7da76fdb098cc6095cba184eec36acd4ccdc8d024b493e70` |
| 11 | `theorem` | [conjAut_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-apply.md) | 83 | `result-track:6041d9e581296cfd7ede7816e22cd585c3d90279603aa2a6405ba52456041ba2` |
| 12 | `theorem` | [conjAut_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-hom.md) | 86 | `result-track:da37921900403bdf224edbc89b2037a09d024dc73055cc748023103e5820bf40` |
| 13 | `theorem` | [trans_conjAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/trans-conjaut.md) | 90 | `result-track:e9182fee9349d6af944e03b361aee34f6850692860d282f4c85e4d0ed8dafcc1` |
| 14 | `theorem` | [conjAut_mul](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-mul.md) | 95 | `result-track:78169f35b6ea2fa112bb553aded3e35daeeee41dc14e15186deacfdea40d645b` |
| 15 | `theorem` | [conjAut_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-trans.md) | 99 | `result-track:6b028b29c14d6f6e3bb76d05307e626d8058394330085a9cb27427cadb6f9e0e` |
| 16 | `theorem` | [conjAut_pow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-pow.md) | 103 | `result-track:c0ddac0e2332aae6229e1f00efba0fd6170a7ef6b636eb30041e608ac2b9d6aa` |
| 17 | `theorem` | [conjAut_zpow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/conjaut-zpow.md) | 107 | `result-track:f8a1616bd6d8e57c96e9882aeca052737eaebef176565fa880979ccd649c929f` |
| 18 | `theorem` | [map_conj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/map-conj.md) | 118 | `result-track:beb20b53d10e4490ed1db3112154d0c5e98504f0e9e8654647fdb47b382ded18` |
| 19 | `theorem` | [map_conjAut](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ConjNamespaced.lean/declarations/map-conjaut.md) | 122 | `result-track:06f02b1cfae8e3e5214a029d04c842912ed33db223fd847c2161659767a45d1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae7f6e984adb45a5a643debf3431f008f5848ff99d3e2ae9afda12b1b0d097f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Conj/Variantd40eb96b9e932f2d4c2016c0c78b2554b5ba7c13a0249ff6058fe4bdcbf56442.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
