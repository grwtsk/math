# Verification target: Is Inverted By Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0d19de6eaa7551c5193af4e000d04bd39360d6c",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variantb99ed60884d5052b58438615729a13181f03bc5d26494970f8610fada91d70ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0d19de6eaa7551c5193af4e000d04bd39360d6c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variantb99ed60884d5052b58438615729a13181f03bc5d26494970f8610fada91d70ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variantb99ed60884d5052b58438615729a13181f03bc5d26494970f8610fada91d70ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby.md) | 43 | `declaration-track:045ebb5cfa8bc33a4b0b0f0c1c4d4c83c54c6227115d39d3801a05e87104ef71` |
| 2 | `lemma` | [of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/of-le.md) | 48 | `result-track:0116356fd8ba25f9459fa140f64120d4c35fe1f64a0ebbadc0d22fc8bfaad241` |
| 3 | `theorem` | [of_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/of-comp.md) | 53 | `result-track:f167a0d76486e51cdfacdc7372a25e6a4f454611fb299274c79446c1ff8eb36e` |
| 4 | `lemma` | [of_comp_of_reflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/of-comp-of-reflectsisomorphisms.md) | 60 | `result-track:ae9056f2d96fdd21d02ecf455a3d8900c7a16b2c9d6a6ef77b96eac2f2568581` |
| 5 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/op.md) | 69 | `result-track:cedbce126277820b02b3deb856fa933ab3e0d76b7fa8a9b4a89350ee6efd6a81` |
| 6 | `theorem` | [rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/rightop.md) | 76 | `result-track:a638d574ed4b87d24c4f43ee5dcb8f7f43fc3f7547a5570f7b269bc028ac3da7` |
| 7 | `theorem` | [leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/leftop.md) | 83 | `result-track:b80a8b42e1a23d4c6e9e6fdc0ec3cba1c9e70089410867751617701756296434` |
| 8 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/unop.md) | 90 | `result-track:7437bb51b44dbc8cc9835e93f0783c6d4128755e01835d364f7f0483ad3a118a` |
| 9 | `lemma` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/prod.md) | 96 | `result-track:2828f81d823e6510f179eb0a10b09d0a81f3149f6e0c9179d70ac6a34abc6abf` |
| 10 | `lemma` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/pi.md) | 104 | `result-track:930a9921d8ff38c534f642031b9bcb4d2f5587b42bf502cff00298ab4a2f62e9` |
| 11 | `def` | [FunctorsInverting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting.md) | 117 | `declaration-track:a9f960579c8835c1d79e24b70468b24d643704a23d1e0d5471a2b6d3cd356648` |
| 12 | `lemma` | [FunctorsInverting.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting-ext.md) | 121 | `result-track:62475bccf3d264f94ab17925ff947ab8cbf4ba105d208976eadb637baa6593aa` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/instance.md) | 128 | `declaration-track:fc9cc86fded1ef25df2f20462f750e157d2cbb44b511850d27fc822cc133c7c3` |
| 14 | `lemma` | [FunctorsInverting.id_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting-id-hom.md) | 132 | `result-track:fbdedd769398242fc711710e48ebec41ae566a6711e5b78ea37aeee8b37eede8` |
| 15 | `lemma` | [FunctorsInverting.comp_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting-comp-hom.md) | 137 | `result-track:b5a2daca304564cceda004012b04fa4043025a0cf3c6f06ab3d5a806fc60bc9a` |
| 16 | `lemma` | [FunctorsInverting.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting-hom-ext.md) | 142 | `result-track:39895cad2667e26666127c7fb9e15086c0c5e3f9a938b7fe0be053fe56930d29` |
| 17 | `def` | [FunctorsInverting.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/functorsinverting-mk.md) | 147 | `declaration-track:4a204affb7eb7cb52b36b50ef2e1ea57382b27827f700fd861cc219efe9cbce5` |
| 18 | `theorem` | [IsInvertedBy.iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-iff-of-iso.md) | 151 | `result-track:31eadf91864be0f1b26346fbda0effda4076f14e2dac4a07b9b87edb3bfe303d` |
| 19 | `lemma` | [IsInvertedBy.isoClosure_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-isoclosure-iff.md) | 157 | `result-track:19d0a59e7e7861470a8abfed564706b7b51dfc881defecc0fa5dc4ea42345a17` |
| 20 | `lemma` | [IsInvertedBy.iff_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-iff-comp.md) | 168 | `result-track:5d7cb24dd86eabbc5f54bee1e2e462ad908525cccb7d334f2258b331ca6e8389` |
| 21 | `lemma` | [IsInvertedBy.iff_le_inverseImage_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-iff-le-inverseimage-isomorphisms.md) | 178 | `result-track:020bd00517dd5d85a8d512fe2c37b006d5eee238196b2baa95b08e44fce5fc17` |
| 22 | `lemma` | [IsInvertedBy.iff_map_le_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-iff-map-le-isomorphisms.md) | 181 | `result-track:80a62415b18ed07577a000872a510b8dde18fc0de686229e429de6040633d619` |
| 23 | `lemma` | [IsInvertedBy.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-map-iff.md) | 185 | `result-track:5c09dd7d57bb7d8a11b8cec5632a0f0e70166ad4fc6a2f06511143e0889c4ffc` |
| 24 | `lemma` | [isInvertedBy_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedByNamespacedPublic.lean/declarations/isinvertedby-isomorphisms.md) | 190 | `result-track:9459695f73b5dd1d03de8d4f97dc656a033579e2cfa0e2c80b5e49f021eb76b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17285583f192688c6163ec96cead1f795c0085eb6c2ae36cc84ca80a415253fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variantb99ed60884d5052b58438615729a13181f03bc5d26494970f8610fada91d70ea.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variantb99ed60884d5052b58438615729a13181f03bc5d26494970f8610fada91d70ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
