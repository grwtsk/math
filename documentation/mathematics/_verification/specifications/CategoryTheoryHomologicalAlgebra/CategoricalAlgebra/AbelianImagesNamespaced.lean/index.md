# Verification target: Abelian Images Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d035bf48a8cad1ee5185b81aab459ff2b21e09c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d035bf48a8cad1ee5185b81aab459ff2b21e09c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [image](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/image-source-edition-2.md) | 49 | `declaration-track:b89018d8bab9aa17361437bf2971273a57c46c9131d8ec9954f1afd3b7ab5e9e` |
| 2 | `abbrev` | [image.ι](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/image.md) | 53 | `declaration-track:ab19e9a3a82314eed40306a65f23e533b53e72916c7cb9e2386b915437244b08` |
| 3 | `abbrev` | [factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/factorthruimage.md) | 57 | `declaration-track:be216071c76a925d0d93989f35f0f034c4fc92a164fb6952f80f928207a02097` |
| 4 | `theorem` | [image.fac](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/image-fac.md) | 61 | `result-track:02bbaa5d58780b07266900888426dca9e44ee5919a3bf2fbff07fc37d368b677` |
| 5 | `instance` | [mono_factorThruImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/mono-factorthruimage.md) | 64 | `declaration-track:efe33cba49b743368a57353d6ad7d9ccf9c593e1d8e36fb7b7e0323fae3665eb` |
| 6 | `abbrev` | [coimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimage-source-edition-2.md) | 72 | `declaration-track:c166c445a5c34a2fde52b9bec779344006a702e6d6fb641fc0b8f1f63be3e097` |
| 7 | `abbrev` | [coimage.π](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimage.md) | 76 | `declaration-track:94b80585f8c2d7c5cc4fc34ba3007162c8b3e97fbdd47a006f4f02345400c111` |
| 8 | `abbrev` | [factorThruCoimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/factorthrucoimage.md) | 80 | `declaration-track:ab6e2def4c2804f0030a2fb0e9a4100626ada2eca00c53eb25c0405b59953686` |
| 9 | `theorem` | [coimage.fac](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimage-fac.md) | 84 | `result-track:a14e0dfea6ddf669ca2ed84e26fd234b20ba4bd138f51e36d7f7ca49c4eb1e25` |
| 10 | `instance` | [epi_factorThruCoimage](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/epi-factorthrucoimage.md) | 87 | `declaration-track:5c822e50c6ffdf6092eacb1d18f078defb56547e442ad8bf0bc23f16105bc8cf` |
| 11 | `def` | [coimageImageComparison](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimageimagecomparison-source-edition-2.md) | 98 | `declaration-track:e1893d07f39f4e663b02344da5cff1f15273a820305db3079bd380dd4c331481` |
| 12 | `def` | [coimageImageComparison'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimageimagecomparison.md) | 103 | `declaration-track:2ceb96dc1f3910a1fdb032d6ed869c738cf87b2e615629457266c4147553ed68` |
| 13 | `theorem` | [coimageImageComparison_eq_coimageImageComparison'](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimageimagecomparison-eq-coimageimagecomparison.md) | 106 | `result-track:a206a95248d342fdd03b2432de103e89e023d4c81d7b77e3a62e62f817ff8a9c` |
| 14 | `theorem` | [coimage_image_factorisation](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimage-image-factorisation.md) | 112 | `result-track:a591b91564572d31f8e1a978b1fee2c6ea8a005c125d3e651fc31ac73c2dbbda` |
| 15 | `def` | [coimageImageComparisonFunctor](../../../../../CategoryTheoryHomologicalAlgebra/CategoricalAlgebra/AbelianImagesNamespaced.lean/declarations/coimageimagecomparisonfunctor.md) | 117 | `declaration-track:714e8c7c02178dc307a2f5657357ca77843aaeb8d6d2b13693c630b389ffa8ee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfd6e620a790ee6c86d7c051c21fb89241750c74ec1c792a411ebf70b2c53784 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant87ed9ededa2e56dcb09158ef7eb5fae4fd92fbb68e59804c4951d8f620b46878.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
