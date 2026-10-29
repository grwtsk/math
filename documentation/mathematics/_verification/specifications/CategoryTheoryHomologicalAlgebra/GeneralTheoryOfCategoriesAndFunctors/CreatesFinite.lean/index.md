# Verification target: Creates Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5346116830bf7855b6898e0c3e4f1a95f700bf29",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5346116830bf7855b6898e0c3e4f1a95f700bf29`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.AsType` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CreatesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitelimits.md) | 29 | `declaration-track:72bf95dd78923054c6d907065a4167af9a0da7ba444dd2135949265f76efd17d` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-7.md) | 38 | `declaration-track:96a4d20973051d52bf06cdcd70b425f2cac40895067009c78aef838d6eaf3b4d` |
| 3 | `def` | [CreatesLimitsOfSize.createsFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createslimitsofsize-createsfinitelimits.md) | 45 | `declaration-track:26cc70f7175ae5049ee3ec6b095a6d4f6bb6293a65d1b0807f931f41a7904eb1` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-10.md) | 50 | `declaration-track:bbbb55ebce165a2fa31eabca16514da5e53180708341b68097fd53788b686742` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:3b427c1b4f4dbd95c7268beba4fb32a0ddf9df26337f0a96df622dc2d9bfb859` |
| 6 | `def` | [createsFiniteLimitsOfCreatesFiniteLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitelimitsofcreatesfinitelimitsofsize.md) | 59 | `declaration-track:2a1d065b0e983059cabd5317c4ae8bc0f874d3a6b17f6fa4b651cd8aae16f8dc` |
| 7 | `instance` | [compCreatesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/compcreatesfinitelimits.md) | 66 | `declaration-track:088b64eddb494309a7cff27843e719e477ebae7f1697e2aa3a1e48b64f52bc1d` |
| 8 | `def` | [createsFiniteLimitsOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitelimitsofnatiso.md) | 71 | `declaration-track:fc23a1c8d5e85647c655ab31a46e13ed3c101051634eee19dd4e483303ac42b1` |
| 9 | `theorem` | [hasFiniteLimits_of_hasLimitsLimits_of_createsFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/hasfinitelimits-of-haslimitslimits-of-createsfinitelimits.md) | 75 | `result-track:001e55300fee2d8eb9e464c8744651a63d76b1827b42f5d85a9f804ee5d66723` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:26eb5f6a795959d62d8dd608b60c8b9dd521b87dfff86fd04a60ce8963db4a88` |
| 11 | `class` | [CreatesFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfiniteproducts.md) | 87 | `declaration-track:6c5cf1bd4a5b7c9c677847e0a0e2a30c357b29252599cb499d9f886437230727` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-6.md) | 96 | `declaration-track:74a79e72c665d6a0f422526906f11b8522082188fe0f4e324875793140f45649` |
| 13 | `instance` | [compCreatesFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/compcreatesfiniteproducts.md) | 101 | `declaration-track:10c3c9a428fb24956d45bc146504b8abd7079dacd5956aab11762be5900172cc` |
| 14 | `def` | [createsFiniteProductsOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfiniteproductsofnatiso.md) | 106 | `declaration-track:d82b6532f3f58f5348dcfbc5607e91eb995aeac59225ce39c33c9665f2cbea6d` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-11.md) | 110 | `declaration-track:c9beaedb3132135e6fb0a6ccab8b87730676e31a035068eb358e9a7d606e6d7d` |
| 16 | `class` | [CreatesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitecolimits.md) | 117 | `declaration-track:eba901afd7e658b05aafbf0ee54d4e65f5a1130a2106d097ae3697ac16d84e4a` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-8.md) | 126 | `declaration-track:b3240ec6b9d722218065ac33f290a844ca7fe34d87a95f1ef9eb7c0d62081aa9` |
| 18 | `def` | [CreatesColimitsOfSize.createsFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createscolimitsofsize-createsfinitecolimits.md) | 133 | `declaration-track:eec0cfbed6f065f81ec2d3a239f491398de38e391187240faa1ef441dc465c3c` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-12.md) | 138 | `declaration-track:f1b3fa22c2134b5bbadcd04ac75abcd83b19816d2231d7c5770fe78ac161e069` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-4.md) | 142 | `declaration-track:6772a7be16060817b944a2a615dd7bcde9a4ad6e946d8254093395dc7af856b4` |
| 21 | `def` | [createsFiniteColimitsOfCreatesFiniteColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitecolimitsofcreatesfinitecolimitsofsize.md) | 147 | `declaration-track:38b90bd83966e9db03d26fdfe3b5e608642ee911b8a8086d057ecfd66356a1aa` |
| 22 | `instance` | [compCreatesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/compcreatesfinitecolimits.md) | 154 | `declaration-track:6d693e690b886a7ce833f351463fb581f8e4be7ed5a56319819ed2f713a83a04` |
| 23 | `def` | [createsFiniteColimitsOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitecolimitsofnatiso.md) | 159 | `declaration-track:93dc7561ee58d4a1e2eedfaf670c431663b0bb26df8e69c36c744fa70aa31a85` |
| 24 | `theorem` | [hasFiniteColimits_of_hasColimits_of_createsFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/hasfinitecolimits-of-hascolimits-of-createsfinitecolimits.md) | 163 | `result-track:03b2c27aace66c614b3848b619c4adbca6f05ebc7085ba807d7a1bf732c67f9e` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-9.md) | 167 | `declaration-track:ba6b2e3deaf0f7025924a50e7d98123fe2e55b2f2661f153458b68e4c7a62078` |
| 26 | `class` | [CreatesFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitecoproducts.md) | 175 | `declaration-track:86a0813c86cb34c1140a07859281cca438822c793c35c1d72e5664273a088bb4` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance-source-edition-5.md) | 184 | `declaration-track:7195da4efd4b19c1e471debe5a17e65da122e9d035076e358a0bdad7386aff72` |
| 28 | `instance` | [compCreatesFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/compcreatesfinitecoproducts.md) | 189 | `declaration-track:180c93ea1a085430912f829a20cda2a2c077f4295a34014db9e4e1f982557453` |
| 29 | `def` | [createsFiniteCoproductsOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/createsfinitecoproductsofnatiso.md) | 194 | `declaration-track:3e882e288a94db1d9b18efef17e8dde86ad21e35cfe36a94714f7bb6219c5a73` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CreatesFinite.lean/declarations/instance.md) | 198 | `declaration-track:13e233cb0d2afc8b225dfa8b419180ac814c819f8c1f1388623fa25b4547207e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48d39c2b0cada15fd821d01e74420adaf8e07b1bf4052cd26c5b83534f5c8639 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variant0af4d0d05ad9a1942bd22d5a39b0a85622accd79f71846d6530123d5e690e5e6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
