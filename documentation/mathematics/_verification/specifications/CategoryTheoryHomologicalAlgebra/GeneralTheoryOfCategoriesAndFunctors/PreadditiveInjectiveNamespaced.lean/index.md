# Verification target: Preadditive Injective Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5241c9dbb65ae2a76e9cfbf45a576e113720ff82",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5241c9dbb65ae2a76e9cfbf45a576e113720ff82`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Projective` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective.md) | 42 | `declaration-track:591d91a98ffd01f21277cb246502896ec764e530e6831a74316251e09ffc5e5d` |
| 2 | `structure` | [InjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injectivepresentation.md) | 53 | `declaration-track:8fdb19d647aa373d0fcc1edbaa0038970d69fefe58d8837a33f11fc19a05a446` |
| 3 | `class` | [EnoughInjectives](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/enoughinjectives.md) | 69 | `declaration-track:b2249d4327d77718906951e9632be98467ad23dbd4c0518d27ebbc51f63b0f1a` |
| 4 | `def` | [factorThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/factorthru.md) | 82 | `declaration-track:0f6fb1fb822cccad2a45b560661c967476cc2c0cdd84602429642ca7feea614c` |
| 5 | `theorem` | [comp_factorThru](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/comp-factorthru.md) | 87 | `result-track:954c19740aec941cc09733cb91fdde474b9205508d21fa9867c42701530a04eb` |
| 6 | `instance` | [zero_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/zero-injective.md) | 96 | `declaration-track:9bac52bdbec78d270b8acc205a87f782c15352efdd208fb3173d2b86977371a2` |
| 7 | `theorem` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/of-iso.md) | 102 | `result-track:3f06652de0779d3cedf2a8022b3827ee89d93ff2ef43e30144cf2eefc43c614e` |
| 8 | `theorem` | [iso_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/iso-iff.md) | 110 | `result-track:0ae169a5e2210fbf6b7d2f850be985ebb0569b0a085de3919ce1371833692ada` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-12.md) | 115 | `declaration-track:d117a9a7bc73d7f437d7f26fbbb1b653c19e2ec55c1719cc6b5424ff5e72bdf8` |
| 10 | `instance` | [Type.enoughInjectives](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/type-enoughinjectives.md) | 129 | `declaration-track:6732a7dd4f4b948db41d03a4d394bad2e971dddf0dd7a99e141e68952a98d266` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-6.md) | 140 | `declaration-track:69f4f8864311355a621ebf27ea8791e8f5e79ff12aa60e0414e7bd04750a07cb` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-11.md) | 149 | `declaration-track:c353a053cb4ce5ec449ef58a74d57485f1ec15ff2be340032449170fe7aa9a95` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-10.md) | 156 | `declaration-track:981c6c3635ff95f6d8aff08d4183d0c02994ecd3e27894d7e54adedf879990a0` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-5.md) | 165 | `declaration-track:4c6aa3f2be5e1115146218b7f482d6d1526dc9f852ec2ab9bd4bd3e609fa7f0b` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-3.md) | 173 | `declaration-track:1336520603afc848229412d38e0648577ffa213e8fc86e3256f46dc9ef0e3f2c` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-9.md) | 177 | `declaration-track:98142dcbbd2aded27b3cc523145ed1121730386ebadc92e65bbbb42b697c48e3` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-8.md) | 181 | `declaration-track:93d47a872ce019af0f1f08ca432db14c0fe8938bd987e3df3f1048fcd84b7d4e` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-7.md) | 185 | `declaration-track:82013edd56ed2bb58e7d26d0633af2ab5dc9d9a8b01baef72ca78131c8e45c2b` |
| 19 | `theorem` | [injective_iff_projective_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective-iff-projective-op.md) | 189 | `result-track:412047b369ae25783750b18f08b3aa2fe69927fcb8098abd96f7cba9da34aea6` |
| 20 | `theorem` | [projective_iff_injective_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/projective-iff-injective-op.md) | 193 | `result-track:00f3ed619623ca5e2a9cfffd8fd5c38ebe875e77ce1c749da778347ded82aa8a` |
| 21 | `theorem` | [injective_iff_preservesEpimorphisms_yoneda_obj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective-iff-preservesepimorphisms-yoneda-obj.md) | 197 | `result-track:f367fc47d4020c5e4566a4b1360dc6a401326efa55c2a44640f20746927bf238` |
| 22 | `theorem` | [injective_of_adjoint](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective-of-adjoint.md) | 211 | `result-track:f6c29438cf712773ed49b6fcdf6a6c26119f4050d3d5294294b872755e422e56` |
| 23 | `def` | [under](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/under.md) | 226 | `declaration-track:b91101880d35aba52b26743f1b5f9145528d5402cab32d5fcb2b24ee23143cfd` |
| 24 | `instance` | [injective_under](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective-under.md) | 230 | `declaration-track:9562b114c590435c84a6f7fffb3ae7b12c37d05269f06bbfcf84dbf8df7705a0` |
| 25 | `def` | [ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/anonymous.md) | 237 | `declaration-track:8b0f830384cecc1e4e3949dc0d5346c8d2618c129489c9f5b54d76ec46ce909d` |
| 26 | `instance` | [ι_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/mono.md) | 241 | `declaration-track:ce7cbb026357e172c37dd821806312a4f22bbb77f06429915039a7dc44d8e236` |
| 27 | `def` | [syzygies](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/syzygies.md) | 252 | `declaration-track:9e6fae5a493e04baf34bf45bdf63e0b638d386111d8e7d65a41ad4084498ea5e` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance.md) | 256 | `declaration-track:0310f84f2288a9a7ad39e8b9d405fa099af5c7a84ca6e2ab29c6c567e783cfd9` |
| 29 | `abbrev` | [d](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/d.md) | 264 | `declaration-track:0e13c19c2129c69a8452398c2345029b4ce26fd91eb86a6bb1920094b0a0ddac` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-2.md) | 272 | `declaration-track:04ec963e2183e4dd6d05503baa6e5bec54a74d9bdb43ce6896c4ba1562023106` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/instance-source-edition-4.md) | 275 | `declaration-track:246488cf5e6e7a3b123e8f2b35fc462924d69fc38862c4887a80fd47dfbe1878` |
| 32 | `theorem` | [enoughProjectives_of_enoughInjectives_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/enoughprojectives-of-enoughinjectives-op.md) | 278 | `result-track:ac6ab333daf0f384d27dc96001e8f0ebcf8cf941c69eba7a39cf3e44f6d8ae4b` |
| 33 | `theorem` | [enoughInjectives_of_enoughProjectives_op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/enoughinjectives-of-enoughprojectives-op.md) | 282 | `result-track:a2acea911c6750c253a9d1e8b3e11bf963d8cefc3d61a0833a255dbb831a8520` |
| 34 | `def` | [Exact.desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/exact-desc.md) | 303 | `declaration-track:d131b43859c8126629699d32ea0fc20e8ce374a3ba58a71b0500920259366adc` |
| 35 | `theorem` | [Exact.comp_desc](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/exact-comp-desc.md) | 309 | `result-track:b9495022f756dba633cdbfa574b5069e1ddd79739217a05f7cbabd8ae23a30a3` |
| 36 | `theorem` | [map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/map-injective.md) | 322 | `result-track:3a6329b1fd12fbd65d7e42b501199d057896a9cbbdb848cfebee37e2f4855b1b` |
| 37 | `theorem` | [injective_of_map_injective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injective-of-map-injective.md) | 332 | `result-track:149102f166b1d273dd9368336e952431a74d912445941a677054aa72cb1cec71` |
| 38 | `def` | [mapInjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/mapinjectivepresentation.md) | 345 | `declaration-track:969e22104c3837432853951d978d95df78ab821d01dd5c548af879e2d841d414` |
| 39 | `def` | [injectivePresentationOfMapInjectivePresentation](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/injectivepresentationofmapinjectivepresentation.md) | 362 | `declaration-track:1dbc2357bb4bc8fd62095fc60150f7480e4100045606391f383abc4d45fc5c89` |
| 40 | `theorem` | [enoughInjectives_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreadditiveInjectiveNamespaced.lean/declarations/enoughinjectives-iff.md) | 370 | `result-track:b05ceec072ab5ef0cb9536facb18e78a8b0ce51ec1365bd6a943cf370bb20e02` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a1a9909040a3d1a80e62a75378486bd9ee79fefbc13a50ad4b2c7baec95b5d7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Injective/Variant680dda3b7f46bc0aec7a17cdb127e89af525038b6726780e58bf1e4b7ae71085.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
