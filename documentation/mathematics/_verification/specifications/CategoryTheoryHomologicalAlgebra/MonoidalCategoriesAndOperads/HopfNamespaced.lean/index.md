# Verification target: Hopf Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05e092319b760c3557eaa999efeb961c644b14af",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05e092319b760c3557eaa999efeb961c644b14af`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Bimon_` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Conv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Hopf_Class](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/hopf-class.md) | 40 | `declaration-track:64897f9d4816d1090fcc1573bcf5089cc7b63f3c5cc2dea402e4483fc44bad07` |
| 2 | `theorem` | [antipode_left](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-left.md) | 58 | `result-track:c1da3715636a65bc0dce12b81a56c3bc0adca15832ac76815ac99299578f7743` |
| 3 | `theorem` | [antipode_right](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-right.md) | 62 | `result-track:09a366d1203e27a7447db59a07e2cdbc977fbd884230bf65b85d5fefb1b46c05` |
| 4 | `structure` | [Hopf_](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/hopf.md) | 71 | `declaration-track:b13d5d7a3d7c3654eee4160a59e3b47c114f28e5ed7f7cf81e33fa0eb5a1b568` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/instance.md) | 87 | `declaration-track:139cfe71548906fed726b29a19cb748b3257a8bf85bb0f07fa9856db9ab575e3` |
| 6 | `theorem` | [hom_antipode](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/hom-antipode.md) | 92 | `result-track:3e39113c08d3a3dabd69f52b4016ac021f4e5aeadb5be166eae4cc528880f324` |
| 7 | `theorem` | [one_antipode](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/one-antipode.md) | 128 | `result-track:193d1c79e823758644ceea2bf943e0e6f2bdef15928adf5d2d37cf90c6fed615` |
| 8 | `theorem` | [antipode_counit](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-counit.md) | 137 | `result-track:77a7429439133d4745a1ddbab766c48d92f11d9715ef264198d15f97f3dd5a8c` |
| 9 | `theorem` | [antipode_comul₁](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-comul-source-edition-3.md) | 149 | `result-track:e907644d9729c33c31f411ead4df7d21023bed41a5d976c25d29d9ecb78a37d8` |
| 10 | `theorem` | [antipode_comul₂](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-comul.md) | 197 | `result-track:072b9eb60b26e23728c006c95325f04273f7340bfcac5579e0b8f70a4fe34983` |
| 11 | `theorem` | [antipode_comul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-comul-source-edition-2.md) | 271 | `result-track:930b990d0d982ee06ff57f02a35a8cc75d04178819449b1a77564128fc8f54b8` |
| 12 | `theorem` | [mul_antipode₁](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/mul-antipode-source-edition-3.md) | 292 | `result-track:793a8b3aa95d7c548f2d727e1615be982d5ee585f161196ad0a9a2c4fc85dacf` |
| 13 | `theorem` | [mul_antipode₂](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/mul-antipode.md) | 345 | `result-track:00ec3a891b65dc6f4bb915365f20c8a94f5e2e095c48b5455ce0048834338bd8` |
| 14 | `theorem` | [mul_antipode](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/mul-antipode-source-edition-2.md) | 450 | `result-track:3a765e3fda9067fe772b50028c25ddb4af4fcb8de5da7ed7b4215009751b0e72` |
| 15 | `theorem` | [antipode_antipode](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/HopfNamespaced.lean/declarations/antipode-antipode.md) | 493 | `result-track:d717de1a8db0fe5cdcb108595c2f5dc4a7b756fb7c7ce711dea87cf15ff6274d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=66f72f178009cdad6586936b814e64f19b5df91f4e58e11be632d93d8f9b1d38 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantfe547e70670b0a3db2dedc8c99e8541f690841b5e38fde74aba484f995934f5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
