# Verification target: Is Inverted By

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e68e6813a7da16b07fa6c424812e5a9f6405c318",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e68e6813a7da16b07fa6c424812e5a9f6405c318`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInvertedBy](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby.md) | 31 | `declaration-track:2d6ed7b7f7b93d26490552c9f6d42b2883858055b3e0425a47b0edc1fcc5c85a` |
| 2 | `lemma` | [of_le](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/of-le.md) | 36 | `result-track:1749ea3eb453c1ce3f479e36461db74da0fe45a1bf23924f5643fe2139ff9af6` |
| 3 | `theorem` | [of_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/of-comp.md) | 40 | `result-track:49558e322824e9b1b18e2f287754af035e9e49db6d8bf090a9d41da490a55438` |
| 4 | `theorem` | [op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/op.md) | 47 | `result-track:f65341a84d35bdf05e04fe42a8971c55961514c971435a6c16a8739e784595b9` |
| 5 | `theorem` | [rightOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/rightop.md) | 53 | `result-track:2d8c448c9abcaec8bd5725121bbd73cdf3b601fee8c333bf557fa2199446da5e` |
| 6 | `theorem` | [leftOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/leftop.md) | 59 | `result-track:c18abc745d5560596157265ad0731981a72c8f24bbfd4b03e55a29f0a62eabe0` |
| 7 | `theorem` | [unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/unop.md) | 65 | `result-track:a711214de1f7e8cecea833fb381a59802d4f2723de5d90556301134fb898bcc0` |
| 8 | `lemma` | [prod](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/prod.md) | 71 | `result-track:ba3228efda8fffeee8c18cc17ad38c13c5a0c5d3de83c6531b31b1dbd640704c` |
| 9 | `lemma` | [pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/pi.md) | 79 | `result-track:2f54f1f90ed9e83c5801e864be768e08c34ba5737edf64c7976442b6fb2ac48a` |
| 10 | `def` | [FunctorsInverting](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/functorsinverting.md) | 92 | `declaration-track:d400ab62c2b29f8b6aeb2a569d1da28699fd8fc0b7cbb526217211ff59539f9a` |
| 11 | `lemma` | [FunctorsInverting.ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/functorsinverting-ext.md) | 96 | `result-track:f987368b8b8a49840fbe4a95007f8ee7e20477ce8c9c49b65c9847c3b8db34d3` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/instance.md) | 103 | `declaration-track:cfaf56dee7502f2f868b58d74e445d45f7fad79b3f3c0bf2371e4232a4ee8076` |
| 13 | `lemma` | [FunctorsInverting.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/functorsinverting-hom-ext.md) | 107 | `result-track:29eb9a5a4c34d60f886f4bdf0956c6fbfb6affd8a658ef70c467fefdecda1959` |
| 14 | `def` | [FunctorsInverting.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/functorsinverting-mk.md) | 112 | `declaration-track:7b2b2ccc85bc3b603cd123d777accdcef3e4f2f733c665e95c28c5d7e1846ec5` |
| 15 | `theorem` | [IsInvertedBy.iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-iff-of-iso.md) | 116 | `result-track:25fec8f898907286dfded742ffd51ca7aa61386fbc898c1d00b94df689d3464e` |
| 16 | `lemma` | [IsInvertedBy.isoClosure_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-isoclosure-iff.md) | 122 | `result-track:7b691ff8865a32623f00819ea385b57ee1a3273e09f200fee04ad2490e943394` |
| 17 | `lemma` | [IsInvertedBy.iff_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-iff-comp.md) | 133 | `result-track:550e3f54c6de4a432f61bd37344b786647fe5ddeaf95c05be0689c9314f1589a` |
| 18 | `lemma` | [IsInvertedBy.iff_le_inverseImage_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-iff-le-inverseimage-isomorphisms.md) | 143 | `result-track:0ed37279f65fb6e5264497a01296f22d9fae22ba4807f03e7b4068af1651217e` |
| 19 | `lemma` | [IsInvertedBy.iff_map_le_isomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-iff-map-le-isomorphisms.md) | 146 | `result-track:88bb3fc639f3d8d3dbbd5e779484e4df37c60fb2b4a1d0bcc1e577855cbd5e87` |
| 20 | `lemma` | [IsInvertedBy.map_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/IsInvertedBy.lean/declarations/isinvertedby-map-iff.md) | 150 | `result-track:713d22027c814e00f2f5830f7518684a55d4b1a090055fe5008180cd0a76dfab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c48b3ec404c4e236584c5e6084f85e3db92f038e7121977935c00b3dda663eb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/IsInvertedBy/Variant8fcd72bd7ebc58f94fb131588895ec728da27a9ba09996370726ab5fcaf56b93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
