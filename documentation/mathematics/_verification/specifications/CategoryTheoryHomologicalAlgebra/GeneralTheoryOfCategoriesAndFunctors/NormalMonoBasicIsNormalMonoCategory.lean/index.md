# Verification target: Normal Mono Basic Is Normal Mono Category

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2dfe7ec370a0c1cb4473eb4245e33f102d86be89",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2dfe7ec370a0c1cb4473eb4245e33f102d86be89`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.RegularMono` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormalMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalmono.md) | 43 | `declaration-track:8d171d9a64a5e64e6f7d72280e74c0895cbb4506896f68579d08b795f6e30cf9` |
| 2 | `def` | [equivalenceReflectsNormalMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/equivalencereflectsnormalmono.md) | 54 | `declaration-track:6198e2351dc838f9d303d710f583375a8355a643247f4849edb903b3c74191ce` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:ad79ed75b5f9a1ec9e13fad0c673df10179c3565b54504825684ba0099ea9508` |
| 4 | `def` | [NormalMono.lift'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalmono-lift.md) | 79 | `declaration-track:ca5449daa68c81cb2f52a936bc67f6d4bb3d9828c62041b5996ac2cc8bbbb9df` |
| 5 | `def` | [normalOfIsPullbackSndOfNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalofispullbacksndofnormal.md) | 88 | `declaration-track:9b328542b65d3c6a10b015dd67ea4073450b01e571966ae58a3a17761f399c70` |
| 6 | `def` | [normalOfIsPullbackFstOfNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalofispullbackfstofnormal.md) | 107 | `declaration-track:4a2da92b754b54c2d8bbb8f91fcb0b91f1e6f419296a93523b57cf79c2cf5352` |
| 7 | `class` | [IsNormalMonoCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/isnormalmonocategory.md) | 117 | `declaration-track:92d1ddfde76cfe11e021229f2beacb1e79222e86f033015f1ea81c8db4b84cc5` |
| 8 | `def` | [normalMonoOfMono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalmonoofmono.md) | 128 | `declaration-track:d8a3250c8fc40203b9a2c58078edff71f01f345b34a2f16b450da967a8dbe9ae` |
| 9 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:6ee74acfd918945703a20acdf7e5d60ebf629a1b33b823c53b495f3dfb25d916` |
| 10 | `class` | [NormalEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalepi.md) | 144 | `declaration-track:e83672d7050d5577b1b5544f7655a199a7947ccb7731171f705fd18f64983d32` |
| 11 | `def` | [equivalenceReflectsNormalEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/equivalencereflectsnormalepi.md) | 155 | `declaration-track:5a513dfaa079edc4a858c53288808dc9a7ebc2c9f45e727602cd5cd6a0d23117` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/instance-source-edition-4.md) | 169 | `declaration-track:fee7e5e6f086c1135ebdc8947c8b8853b994929a5b44690b501089e03feebe8d` |
| 13 | `def` | [NormalEpi.desc'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalepi-desc.md) | 177 | `declaration-track:0fd1a71fbc478ed1e2de2bc5403ceaf4acd5593b5cb63d7ee0d77e2ac2f65054` |
| 14 | `def` | [normalOfIsPushoutSndOfNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalofispushoutsndofnormal.md) | 186 | `declaration-track:fc97bfa02e5dda56348e7c7d3c7a043edeb92fe54cd8a9d302ab7be49763ea7f` |
| 15 | `def` | [normalOfIsPushoutFstOfNormal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalofispushoutfstofnormal.md) | 205 | `declaration-track:61068c17b29dd5be8f21b2505943dc16f13e0f5a3083918e990c5500c918780e` |
| 16 | `def` | [normalEpiOfNormalMonoUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalepiofnormalmonounop.md) | 217 | `declaration-track:a6c0439726bb12e473c98047b90a448f9aad990e3a63483b2031f002be8f15f8` |
| 17 | `def` | [normalMonoOfNormalEpiUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalmonoofnormalepiunop.md) | 235 | `declaration-track:e97ad72e45c2784f32bdc09fd6ec91e1b086e6b42efb4b35de318c7ffb93eefe` |
| 18 | `class` | [IsNormalEpiCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/isnormalepicategory.md) | 257 | `declaration-track:4d34cb3422b4f23db62d8ed959ea0c82df0e12b57318745e445632be0854297b` |
| 19 | `def` | [normalEpiOfEpi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/normalepiofepi.md) | 268 | `declaration-track:0d2a2906ab21b2c6e74fd7a8819e2c9fa1a29a47ee4182bfb460925cbb03a972` |
| 20 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/NormalMonoBasicIsNormalMonoCategory.lean/declarations/instance.md) | 271 | `declaration-track:639b8d457443ffaa9bb4a4bd6c6a16f9a453ee8e92d3e31d89c97a5def2b5dca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=415837cae686d0c05b469b26d667125b3bb0034f4d294546772ea03b357517f5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant542963fe7bfe56af162822790beaeb2b1346b12bbe4571c7c12d3e5d5dedacf9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
