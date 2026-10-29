# Verification target: Module Cat Presheaf Obj

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e99949f30354fd0f8a546ca4d261e532a162858b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e99949f30354fd0f8a546ca4d261e532a162858b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PresheafOfModules](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/presheafofmodules.md) | 35 | `declaration-track:865e1a6e92f624aa6f19c97c0b52e0d7ddb041498fa67a8ad3797233a2b527f8` |
| 2 | `def` | [obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/obj.md) | 48 | `declaration-track:1181f7b5a5bb6b12283ef4a9dbeb93915d5866d4235e52a7d787e4f3d07d8e98` |
| 3 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/map.md) | 56 | `declaration-track:634d4e0b06ede2edfbfcb6d356943f79b0f551d1ee513320bb5932255cad9338` |
| 4 | `theorem` | [map_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/map-apply.md) | 62 | `result-track:d2eb3a814da64872ba8d7976c013d407e60042f0028271fe7dd9de205ce2d596` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance.md) | 66 | `declaration-track:2364a5bd89972c57216b3fb1b4be56d7d7464604ab57dac7f9500714ea3f8b7c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-11.md) | 69 | `declaration-track:f58cac3fc04dbcf7425173c2ac5c05a7d9f2f7cc4ad00db42dc65592f165f759` |
| 7 | `theorem` | [map_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/map-id.md) | 74 | `result-track:469e68ad936fbbba1ccef86bd6fd49349555dd18c3facd4d3d794edf107addad` |
| 8 | `theorem` | [map_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/map-comp.md) | 80 | `result-track:8b9b8c4c54ef3701bb8639b572b2ed6afbd7703a365fc33ed8b31abbae729c7a` |
| 9 | `structure` | [Hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/hom.md) | 86 | `declaration-track:e1d992abe186e8311f16ca748aba0640d22c3f9b8c78e05e15f23eac31ec6b43` |
| 10 | `def` | [id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/id.md) | 93 | `declaration-track:819838208c1cbc564d85b7595a73e70de3923cc57b17317f8b0fdf7f19981b1c` |
| 11 | `def` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/comp.md) | 98 | `declaration-track:cfecd6487a3b7a5e12dc72b1b727fec3e66c3d91648df9106445ccee6978281c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-3.md) | 104 | `declaration-track:4a37e20f669fd338672cf36d8d14b278107f048a72416c68f86d48165d6c8a4c` |
| 13 | `def` | [app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/app.md) | 116 | `declaration-track:769ee3c07b10e8523a4383ce5dae98a21096d485dcc8d6c93f5f8cbbfd83d7dd` |
| 14 | `lemma` | [comp_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/comp-app.md) | 121 | `result-track:ad1c832aa5922ff656fe1d94230bbb5c596b5c0a201a3efca589de9ea1187362` |
| 15 | `theorem` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/ext.md) | 125 | `result-track:1f6a78c3639d790e45dd4829ec1b2712525713ffc44f7ff6691c4d172860310f` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:25141d8e73c00e34c2258a40c424e6e5e6020e93318d95543433d14ac1d2bd28` |
| 17 | `lemma` | [zero_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/zero-app.md) | 138 | `result-track:bd1da621696d3d4a0a79ecfd01fbce39f998e1c515042f28d19d23522b124806` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-5.md) | 142 | `declaration-track:51b05b4bede87d279d3fdb1568fa14581018d1cb985b291d5735d10908d0c2a5` |
| 19 | `lemma` | [add_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/add-app.md) | 147 | `result-track:a1f07583c3aa353a1f2d871f2fca5738874d25e649d441df10ea0879421b72b1` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-4.md) | 149 | `declaration-track:4f309565571c710897536f5de783872ef9634546e3931e174b266d97e2ff17d8` |
| 21 | `lemma` | [sub_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/sub-app.md) | 155 | `result-track:098a22f50446bd834bfbb78309f4675b784c83b1e8b96e8ba8268e1d9465da22` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-8.md) | 157 | `declaration-track:afeca224286987749c54aa8f39c64ab57be87504165fc8c8d270affa4c318963` |
| 23 | `lemma` | [neg_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/neg-app.md) | 163 | `result-track:71246651c85bf792fee9098aebd4e17af2b8bfad5bd47b65f72481e28eeb0808` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-9.md) | 165 | `declaration-track:e81a4db1dd774edd0217cc727e08cd74540b6299dbbdbc3a2eb6d752b3750110` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-6.md) | 173 | `declaration-track:597f718e7cdd10d1d5641560d84463cc062087d85969a31d9a5f86b0b6a60b67` |
| 26 | `def` | [toPresheaf](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/topresheaf.md) | 185 | `declaration-track:cc9eb21aa5c5b47fb7f189fd5fb79c5ecf388effa61898c32cb7849ef71cfe87` |
| 27 | `lemma` | [toPresheaf_map_app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/topresheaf-map-app.md) | 192 | `result-track:7e02a01fa7dec9638981152a811a81fe98b2c6fb9c10ee2b7d796def396f12ee` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-7.md) | 196 | `declaration-track:8f2f5ce83391c9c72994ac8b6399efdeb9578f5a0bbe1c2ab1b0391ff0f737c7` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ModuleCatPresheafObj.lean/declarations/instance-source-edition-10.md) | 198 | `declaration-track:ee0ef1893e3e618ce8e44ef1606c0def71d91f47acfce78ac7ee82ec5c343299` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f63b22bea6a2e2784def4a9d817f63d9225a02e6fb38ed0bff2ec755b403460 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant3572c8e06715ee3413789426e2bc9c273392f7c2cd4856e9f4ebe8f3acc36a8a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
