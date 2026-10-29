# Verification target: Plus

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e024d48c9ccd1996869493ad494fcbcc3f9b447e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e024d48c9ccd1996869493ad494fcbcc3f9b447e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagram.md) | 40 | `declaration-track:0d74736d9f2d07f6f583b1b313e560ae231379256837543ea63ea3ec21d46333` |
| 2 | `def` | [diagramPullback](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagrampullback.md) | 48 | `declaration-track:63973d8a1bade406fc264df16406b4621a63d2b4a9ac9c874a0db2cd98440352` |
| 3 | `def` | [diagramNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagramnattrans.md) | 57 | `declaration-track:946f073813db8620a97550d42a87d0dd78bc7e4dd5f072d219d5d65731b6612a` |
| 4 | `theorem` | [diagramNatTrans_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagramnattrans-id.md) | 66 | `result-track:e3f8a6983e7569839ffa77e536043665f8d5cb2a0e00e80e5b3c2e7d607463cc` |
| 5 | `theorem` | [diagramNatTrans_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagramnattrans-zero.md) | 73 | `result-track:0694c1991aac22f8864a138b6ac28a976e156042131024c7cc222ac6878c0f00` |
| 6 | `theorem` | [diagramNatTrans_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagramnattrans-comp.md) | 80 | `result-track:f088c09ac9639b56e6e2172f6b4857e456b8a76ec5a547ab6b7cdce6a0e38e31` |
| 7 | `def` | [diagramFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/diagramfunctor.md) | 89 | `declaration-track:91ddfa7686eef2da1dd24c5c933c24718b68125c5a131305fbaf63197fd9e3b7` |
| 8 | `def` | [plusObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusobj.md) | 97 | `declaration-track:a23c03c20f2797c9fa515c2a0d74dd72433669278ed9dab172b67f1b9948a570` |
| 9 | `def` | [plusMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap.md) | 135 | `declaration-track:652067d767017e1f19f9992f4a3be1c28cb51476a6bccc65cf84f6f5fcb6dd86` |
| 10 | `theorem` | [plusMap_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap-id.md) | 148 | `result-track:057ea7a0f293e228dd377bea1a9986ce499cfa256d7baa3ee94579ea1ca17a85` |
| 11 | `theorem` | [plusMap_zero](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap-zero.md) | 157 | `result-track:1ed961d8c1f6ddea7ae3fa0eb8efb184e39fe1af39f41c505e4a8fcc4163ef01` |
| 12 | `theorem` | [plusMap_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap-comp.md) | 163 | `result-track:331f089e1253da81060b57c050a905d96925e6ea5bcd6e0673f53edc6ac34d33` |
| 13 | `def` | [plusFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusfunctor.md) | 172 | `declaration-track:f7c7568b1434ac8fc92fa5a5541a282de3b3bba60c8204cfc8de6915f273f5f7` |
| 14 | `def` | [toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/toplus.md) | 178 | `declaration-track:b8ed7471773796aa2ac62286a9ebf3620ba52cc5cc49eff6b15248f0b062e3a4` |
| 15 | `theorem` | [toPlus_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/toplus-naturality.md) | 195 | `result-track:7d5df8d71f05760124982fd6a133420256328db0ebd0798008adf5b677075058` |
| 16 | `def` | [toPlusNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/toplusnattrans.md) | 208 | `declaration-track:3fd57f892a353ee29975d621eeb8fd34b612a1a9a4937c3516535f962b0ff462` |
| 17 | `theorem` | [plusMap_toPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap-toplus.md) | 213 | `result-track:84610effc6145174907d09f8fb05239872fc78959c27a078bdf6ed5775a774ca` |
| 18 | `theorem` | [isIso_toPlus_of_isSheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/isiso-toplus-of-issheaf.md) | 233 | `result-track:a3b9e0103dca684ce221e8dd8e8bb1caad22c02abfe419f29c6d12171c6855ae` |
| 19 | `def` | [isoToPlus](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/isotoplus.md) | 250 | `declaration-track:fd5771e50bb98636c30250753fc0a610f5b1a69532d5adc030953bc05eeb0fde` |
| 20 | `theorem` | [isoToPlus_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/isotoplus-hom.md) | 255 | `result-track:b8dee5d04a1553a538ef3745e0f8b46a0449cfda8f0474ac40b31516cbe4ca96` |
| 21 | `def` | [plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/pluslift.md) | 259 | `declaration-track:d2671363680a4dd90680fcd4ea7c45cb16f5353ec8e43a6a4b91a6d64ecc5ed8` |
| 22 | `theorem` | [toPlus_plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/toplus-pluslift.md) | 263 | `result-track:d33e762d42e10c14ff67f318d22a8f573f04e37792689538a8a3cb92cc2b73a7` |
| 23 | `theorem` | [plusLift_unique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/pluslift-unique.md) | 271 | `result-track:24039af14c2f965e63e8c685cf72239f3e5859194e365e681ceefbb636a8c26a` |
| 24 | `theorem` | [plus_hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plus-hom-ext.md) | 277 | `result-track:1188db6cfe769eddd28487742bc56e0bcb762ab8a7655efdfbb3d629e90afb16` |
| 25 | `theorem` | [isoToPlus_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/isotoplus-inv.md) | 287 | `result-track:aa421b30c575fb21cf084163ef2e52bd9739c029d20fd4fc8e3eada21b45325a` |
| 26 | `theorem` | [plusMap_plusLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusmap-pluslift.md) | 294 | `result-track:6534707f9bcfe9bc2bce2afb250ea43dae5731e9b161b3c51217f64b8ae75f8b` |
| 27 | `instance` | [plusFunctor_preservesZeroMorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Plus.lean/declarations/plusfunctor-preserveszeromorphisms.md) | 299 | `declaration-track:68fe2ae5585aaa5cfe8c8aa83f131f951e5efdd6c8fb8d65707d8bafa3e8affc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ca8ca9c0a3219ef97d7a4520de8ae64f9aed91e9099102cb6f2d3e54372fc2d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Plus/Variant0b88d584353a39a0f9e259ab023b91fb096610589c31b7639ca59e4789a048dd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
