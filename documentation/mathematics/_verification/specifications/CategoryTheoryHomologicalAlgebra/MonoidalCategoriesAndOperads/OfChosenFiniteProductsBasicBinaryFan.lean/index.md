# Verification target: Of Chosen Finite Products Basic Binary Fan

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44e1b1f1c70c37962a067ac9c6920d0eac40b86e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44e1b1f1c70c37962a067ac9c6920d0eac40b86e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Category` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.PEmpty` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BinaryFan.swap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-swap.md) | 46 | `declaration-track:c8ec03a0ebe93130b5f8529ff6bca6bb5f5d3f1255fe7f796cb6792ff8f13a4b` |
| 2 | `theorem` | [BinaryFan.swap_fst](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-swap-fst.md) | 51 | `result-track:abfc0db538b7c6f86a6eb8fa494692c4836598a60483f6a14b8d0fe6994a6f60` |
| 3 | `theorem` | [BinaryFan.swap_snd](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-swap-snd.md) | 56 | `result-track:d71f520be9804716f2398d6ce195e06327470478580fb16f7d258bf1638db36f` |
| 4 | `def` | [IsLimit.swapBinaryFan](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/islimit-swapbinaryfan.md) | 63 | `declaration-track:6e4bf1ea374e169ca762b589a001d8d83b7294e59d37272ccf7eee2edd8ea345` |
| 5 | `theorem` | [HasBinaryProduct.swap](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/hasbinaryproduct-swap.md) | 77 | `result-track:ed308098eb7eb817155984f4c290a3bc81fe8ae2607fe22cd5f324fa8d4c65ba` |
| 6 | `def` | [BinaryFan.braiding](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-braiding.md) | 85 | `declaration-track:b3bc2989d8b2ca6b53fd1c185bb8a5353ff878b2a495034ec1e4ce38cf3e53ab` |
| 7 | `def` | [BinaryFan.assoc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-assoc.md) | 95 | `declaration-track:cd53f2eeb0d0413d7ae161073973e7b7000950c4bd54b13cfa2ce67dcce164c7` |
| 8 | `theorem` | [BinaryFan.assoc_fst](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-assoc-fst.md) | 101 | `result-track:f23b15619de65723e10e1a76f7135796c934b5582d35021f35c31070f73f277a` |
| 9 | `theorem` | [BinaryFan.assoc_snd](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-assoc-snd.md) | 107 | `result-track:b006f141ec342b379c10d9e85bb2b339e8b7c206832a5d1dec1139b2a1c74555` |
| 10 | `def` | [BinaryFan.assocInv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-associnv.md) | 118 | `declaration-track:6dd66ee26c2afe7d5e4efe0fc05f55d7bc326547cc96e13f55905e5ee1311f8d` |
| 11 | `theorem` | [BinaryFan.assocInv_fst](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-associnv-fst.md) | 124 | `result-track:b01a06150358edaa97798a8ac36d94939788b14e5c5df6352d1abb7ac1648753` |
| 12 | `theorem` | [BinaryFan.assocInv_snd](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-associnv-snd.md) | 131 | `result-track:e76e64adff5d50214ded2dd0fa6129a89445fa2bbf50191817811a5ccaf125f1` |
| 13 | `def` | [IsLimit.assoc](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/islimit-assoc.md) | 140 | `declaration-track:42216df5e3ecdcb2f0e54d5abc264e1d95e876ee146c0feb166749615521e835` |
| 14 | `def` | [BinaryFan.associator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-associator.md) | 168 | `declaration-track:d814f00e30aae53bbab2c3364217d729e81d82fad2543475f9365bd3976ff031` |
| 15 | `def` | [BinaryFan.associatorOfLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-associatoroflimitcone.md) | 177 | `declaration-track:7655fa6f461dfab3401cd26aa789f927fb7834ca15325d07691c893ac5f7afda` |
| 16 | `def` | [BinaryFan.leftUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-leftunitor.md) | 186 | `declaration-track:bad48c9bd2a02ba17380eeb77224575cffa7123e3c442f2618e0bb31efdb651c` |
| 17 | `def` | [BinaryFan.rightUnitor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/binaryfan-rightunitor.md) | 210 | `declaration-track:fbf9e5e2c5bc087f90b69494fddb40e0e6d464e667ee6717766a50adfe1875db` |
| 18 | `def` | [tensorObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/tensorobj.md) | 251 | `declaration-track:1b95b6f4c20b6fa0cd7122929395fd1327990ceb2013c2663516faa9a7ebd7b5` |
| 19 | `def` | [tensorHom](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/tensorhom.md) | 257 | `declaration-track:0eddd72b803d3ed890e53ef167a61b342f7c997801f1a45e5962a39fedacfbd6` |
| 20 | `theorem` | [tensor_id](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/tensor-id.md) | 262 | `result-track:05c25c0793f81fcf74b99c572a1bcb797bf75ae53ba306dd44bdce2b7640b182` |
| 21 | `theorem` | [tensor_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/tensor-comp.md) | 269 | `result-track:882c18f87154c5a41aa2199963f19bc18804595a6f75a3dd461f53015454f07c` |
| 22 | `theorem` | [pentagon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/pentagon.md) | 277 | `result-track:9f2a23514ae28170dfbc3e72ba30c741ca0419d0d3902d3cc81532747ab21089` |
| 23 | `theorem` | [triangle](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/triangle.md) | 295 | `result-track:6de94d54ed29564c835a69f2d605ba052a756c6e667d88cb558686bf648207e1` |
| 24 | `theorem` | [leftUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/leftunitor-naturality.md) | 303 | `result-track:20e89afb7ff1048074e65454f7060630d68e328089704b6807bd2b3d39b6b5e6` |
| 25 | `theorem` | [rightUnitor_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/rightunitor-naturality.md) | 310 | `result-track:007f8c3b096ac8431117015375c6f44311c4f9c257b38c988d15e5bb697ebefe` |
| 26 | `theorem` | [associator_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/associator-naturality.md) | 317 | `result-track:8015f9c8a96306c473e6ae139655b123fccda725b58124e30d36cd553e06133e` |
| 27 | `def` | [monoidalOfChosenFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/monoidalofchosenfiniteproducts.md) | 334 | `declaration-track:6bd3d88cf1933379c6f03442ab7ff2e92da0b1cb2897fdf69a2095fb9fe3cb60` |
| 28 | `def` | [MonoidalOfChosenFiniteProductsSynonym](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/monoidalofchosenfiniteproductssynonym.md) | 362 | `declaration-track:a5a74a706a2ac65cedcf49f863d788a4966e57d67bbd722b9255a2fd00430146` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/instance.md) | 367 | `declaration-track:375dafd34d111822c52af1a967da49ab61c3f8a1057bc2135f2882a1544d2e70` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/OfChosenFiniteProductsBasicBinaryFan.lean/declarations/instance-source-edition-2.md) | 371 | `declaration-track:a760ed80f80473b83fd1dfccbb7c0c750093b546c8ff926597813090202a11d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=628e29254b5eb4772a9c173881b7b795aabe1d437e7f241487cfaa2080aea831 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta2e1bd71be3f049101eba224b2b938fc5539e38cf7615315b9bd0e58282556f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
