# Verification target: Decomposition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b885b0ae48c94dd2ebf96c1b42dcb173ceeb33d6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.GaloisObjects` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.CombinedProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sum` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [has_decomp_connected_components_aux_conn](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/has-decomp-connected-components-aux-conn.md) | 66 | `result-track:7fdf930f6668f0fcd58fdaa73e52fca2b1e75fb6c5aa897158114d45b9d7537f` |
| 2 | `lemma` | [has_decomp_connected_components_aux_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/has-decomp-connected-components-aux-initial.md) | 73 | `result-track:ea3f6e5d40f115da3e4c1e222de9a9963d27bf0f8aaa0a19e09bb22158d452ad` |
| 3 | `lemma` | [has_decomp_connected_components_aux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/has-decomp-connected-components-aux.md) | 84 | `result-track:6481055eceb9f624453be3d83a888f35687a9d0909317393d0348e8e79f07fe4` |
| 4 | `theorem` | [has_decomp_connected_components](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/has-decomp-connected-components-source-edition-2.md) | 121 | `result-track:168978b2a30eabc507d0020e79ed1a5b008bcdb50ecbc0e0f2c7d297d39fbc31` |
| 5 | `theorem` | [has_decomp_connected_components'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/has-decomp-connected-components.md) | 128 | `result-track:0b46eea9b19b6d38e176635c0d83f2d71168b30e4d4e2789134458d3ed32d4bc` |
| 6 | `lemma` | [fiber_in_connected_component](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/fiber-in-connected-component.md) | 136 | `result-track:2ae21fb41c906b81d7fff1364e77525589e8cf1cf91f8851a1a3d4731393991b` |
| 7 | `lemma` | [connected_component_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/connected-component-unique.md) | 148 | `result-track:a136bf2290b6bead8dd8a656bd490cc48033966b304f85855fa3bfc03947a0ea` |
| 8 | `def` | [selfProd](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/selfprod.md) | 207 | `declaration-track:5249cba533ea68b9a879e53f4e86c850dbb0ced0da9220a97db0aea39cab7050` |
| 9 | `def` | [mkSelfProdFib](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/mkselfprodfib.md) | 211 | `declaration-track:347cb88360774dcb4b592707ba622228a4593e88b9992a027c8d15a09f10f23a` |
| 10 | `lemma` | [mkSelfProdFib_map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/mkselfprodfib-map.md) | 215 | `result-track:f899bdd333f9a52a2881e9b13158ae26ebf74a5f4f34f69e075beeb61eab8970` |
| 11 | `def` | [selfProdProj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/selfprodproj.md) | 227 | `declaration-track:cef9f94cfcc4509b9c93cf1070060e050a532ede833fb7eb3077643e96eccd9b` |
| 12 | `lemma` | [selfProdProj_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/selfprodproj-fiber.md) | 231 | `result-track:d0fca257e92032bb5cf54aa593a664d62685036e70cc8591fba91076900857eb` |
| 13 | `def` | [fiberPerm](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/fiberperm.md) | 240 | `declaration-track:be7f30d24f0beeebc79ff8c28427706f07112346fecda20861e6df5a82010892` |
| 14 | `def` | [selfProdPermIncl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/selfprodpermincl.md) | 250 | `declaration-track:571c20dffce7d7d04a1b026f2ba460467ee04882473ac561735a1676fe2d7014` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/instance.md) | 253 | `declaration-track:6e5192321407b17151f44f984e3647e9ddb72d21103f94c1377d30577f98bd6b` |
| 16 | `lemma` | [selfProdTermIncl_fib_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/selfprodtermincl-fib-eq.md) | 256 | `result-track:37f8ca8931af7c96d7dd55b14b312645c2d7f0c209d22bdcf0e36f3a049981c3` |
| 17 | `lemma` | [subobj_selfProd_trans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/subobj-selfprod-trans.md) | 274 | `result-track:83fa95780ad0bedd5a598c0b4256d262a701d775d49dd8971c7e4e7bbd411307` |
| 18 | `lemma` | [exists_galois_representative](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/exists-galois-representative.md) | 281 | `result-track:731019067d7b75c4164188382d0843e6dd2702cc2985856997e070a39ae06a3b` |
| 19 | `lemma` | [exists_hom_from_galois_of_fiber](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/exists-hom-from-galois-of-fiber.md) | 303 | `result-track:04b3b0ee2d06322930ceda00897ff95abce1e28edc5db348f7d6d4d6ee8201b4` |
| 20 | `lemma` | [exists_hom_from_galois_of_fiber_nonempty](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/exists-hom-from-galois-of-fiber-nonempty.md) | 310 | `result-track:e7bb31553502cca9bcd4f72e41b01a685d4f8e6bd71482473477a05b9fc1068a` |
| 21 | `lemma` | [exists_hom_from_galois_of_connected](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/exists-hom-from-galois-of-connected.md) | 318 | `result-track:af7b18763439131c6bcbe990d4d38cdd52a243eb5f3a8dca1e89f6ecae2a92dc` |
| 22 | `lemma` | [natTrans_ext_of_isGalois](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/DecompositionNamespaced.lean/declarations/nattrans-ext-of-isgalois.md) | 324 | `result-track:3103f0d2e08adf0f0ac1a9245ccac3d0fc1972ecadc8f87793f78ac1f84522d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a5ad0ee4c182ca09a840f2090756b05c872beee2a7e2711a2a6d4ee961dad05 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant8565db3966c9209de647a50b6a30c412f3a76b235f03fe8125b925dc9b8a1a57.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
