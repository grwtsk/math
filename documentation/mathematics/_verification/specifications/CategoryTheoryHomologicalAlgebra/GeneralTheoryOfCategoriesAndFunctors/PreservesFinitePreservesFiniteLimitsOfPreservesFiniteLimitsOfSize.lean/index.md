# Verification target: Preserves Finite Preserves Finite Limits Of Preserves Finite Limits Of Size

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33a4383ccdb403086d1c2475da5afb5180c14658",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33a4383ccdb403086d1c2475da5afb5180c14658`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PreservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitelimits.md) | 40 | `declaration-track:8ca281e547695ae9d884c1fdc9dc4d44e7aaed84e0086f9c3cbaad1d2def3d78` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-4.md) | 48 | `declaration-track:2aad41ea94ee3abddb8906a8c53d7556e34dd7dcb910e410dd26407b99ce07b2` |
| 3 | `lemma` | [PreservesLimitsOfSize.preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preserveslimitsofsize-preservesfinitelimits.md) | 55 | `result-track:585f5393d4a28a3b7c491aafe9c2c49b81f175b6523aa6c5025123c8da1fa454` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-5.md) | 62 | `declaration-track:346ae8aed77e836e33101f76cfca860c7fd972569b857c5baeb4a6297d1f5504` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-6.md) | 67 | `declaration-track:3d74e6cf7f9e1088d337fb1a0b8e78e4fec3ed5b72c4b022c810145a3265deb6` |
| 6 | `lemma` | [preservesFiniteLimits_of_preservesFiniteLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitelimits-of-preservesfinitelimitsofsize.md) | 73 | `result-track:0af569ff5af110c945011ea879873a1fc814fe78c95d600bbb2314a8fdcc663a` |
| 7 | `lemma` | [comp_preservesFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-preservesfinitelimits.md) | 82 | `result-track:2941eb928b38e90ca53c56063e9494ec0024c27f1a5bb58d6cc34af92641b086` |
| 8 | `lemma` | [preservesFiniteLimits_of_natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitelimits-of-natiso.md) | 87 | `result-track:4d6ac3a41e2b7e2d330d6fd432cb0c1bd21b769223100993a32d5f6af2568ead` |
| 9 | `class` | [PreservesFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfiniteproducts.md) | 94 | `declaration-track:abe86d34ed65dd44d73efb6719124654d976074e018f9b985ecdb94c32ccfacb` |
| 10 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-12.md) | 97 | `declaration-track:92021c058203d9348b273a794ed765a57d0333aafd96308f6239028f943cd4dd` |
| 11 | `instance` | [comp_preservesFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-preservesfiniteproducts.md) | 103 | `declaration-track:742f21f5e54dabc6b0b277e2e335d0c81b46d65226b85a7b35b81d4bdbd35752` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-17.md) | 108 | `declaration-track:af84ddeb259d670adca281a9a5439e693d28fca604c08e4d8b51bb561b206450` |
| 13 | `class` | [ReflectsFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitelimits.md) | 115 | `declaration-track:c1ef4797ab79e722d7bff57e968e4e96ada1c1ce9383526e22dbe04d9bd3c9ba` |
| 14 | `class` | [ReflectsFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfiniteproducts.md) | 127 | `declaration-track:e7682c02236096ac38031c59f30b61f1f8533d94fdd4283b1ff15bdb974de303` |
| 15 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-8.md) | 130 | `declaration-track:4ef35ac6ab4334079839b6e9ad6b9b336af93a881a68eab9b61305e8b34d0141` |
| 16 | `lemma` | [ReflectsLimitsOfSize.reflectsFiniteLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectslimitsofsize-reflectsfinitelimits.md) | 138 | `result-track:1280713c2b5ba96f67764a1c8f2848a1e96317366f38ce3936f128acf68756ed` |
| 17 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-13.md) | 145 | `declaration-track:960fe10794ef64e28a4ecc9a4b66df24f12d5fec760a8bff6a6ff747adcdc055` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-15.md) | 150 | `declaration-track:9c431ce49b4294a4e365841d005870d50c6de0ce78b95754d9c5e4f412513c88` |
| 19 | `lemma` | [preservesFiniteLimits_of_reflects_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitelimits-of-reflects-of-preserves.md) | 158 | `result-track:b2681c772cdee9957af40293b7f10a204cf9be38dec0defe770ef841d6099bad` |
| 20 | `lemma` | [preservesFiniteProducts_of_reflects_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfiniteproducts-of-reflects-of-preserves.md) | 166 | `result-track:4cf22346da9724bf589dc8e20c570221b0ee42cde4ead8a65ea0af3c327147e5` |
| 21 | `instance` | [reflectsFiniteLimits_of_reflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitelimits-of-reflectsisomorphisms.md) | 170 | `declaration-track:2f78deb5308dab5be051b5f757f6ee5c2921fe0baa35cdd271fa2dae949fb096` |
| 22 | `instance` | [reflectsFiniteProducts_of_reflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfiniteproducts-of-reflectsisomorphisms.md) | 175 | `declaration-track:854f9cfdec3a21db5c59108f18696c5511aabe0755e7afda5fa5181d4f98943e` |
| 23 | `instance` | [comp_reflectsFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-reflectsfiniteproducts.md) | 180 | `declaration-track:d554d7a483f0916a998947da39f14cdb21765a76172246db2b46eaec7d031f09` |
| 24 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-9.md) | 185 | `declaration-track:54fe28ac7e93ec92b8eada37fdf4b7e6616aba16c2780fb70733e3b651fbb5fa` |
| 25 | `class` | [PreservesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecolimits.md) | 191 | `declaration-track:ebb3647c101ada81f7aabeddaf80924549668d503100d6cee511e27eb3190e67` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-14.md) | 202 | `declaration-track:9b3c15e4910518e85e8bb8853bf261fd153dd256861331153a653287ae355005` |
| 27 | `lemma` | [PreservesColimitsOfSize.preservesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservescolimitsofsize-preservesfinitecolimits.md) | 209 | `result-track:fd1016e786119f5ebe85479398b3686ebda8c7f98b06d5b8d5528b1e3e8607d8` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-10.md) | 216 | `declaration-track:5cc2b80cc72d46692b07c9fffecbd567362897b94481fd5e09e6baf19bc82008` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-2.md) | 221 | `declaration-track:1f8f8228ef1aef2914f9415fe66a46c8551ece4a6e6a678d3ac78968a80d5e9c` |
| 30 | `lemma` | [preservesFiniteColimits_of_preservesFiniteColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecolimits-of-preservesfinitecolimitsofsize.md) | 227 | `result-track:8e316c91e490a8021d4fedb6941e39b63d74302664d4c80ffa52be5ce093e083` |
| 31 | `lemma` | [comp_preservesFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-preservesfinitecolimits.md) | 237 | `result-track:42d0a73727b319e1157c57964ce44f1b3e4a0e0f2d448afe2ad6ecaa8c51804c` |
| 32 | `lemma` | [preservesFiniteColimits_of_natIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecolimits-of-natiso.md) | 242 | `result-track:e6cf4f2e219f94aa64f590c2f02973ec3890da93c7469b498229a86d3efea5c8` |
| 33 | `class` | [PreservesFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecoproducts.md) | 249 | `declaration-track:7b84c74953f03e98743ebed37ec197a6a6b5c96d0a2bf9052c37a6d64e9f0b75` |
| 34 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-18.md) | 253 | `declaration-track:fbde808e0ff6f497dbb00958bbbfcb0c64c28d9f2fb38626131f9ff9618baed1` |
| 35 | `instance` | [comp_preservesFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-preservesfinitecoproducts.md) | 259 | `declaration-track:193af4025876cff7b380a55b53ffea4d5636e06d4cf7a39570bbfc87e1db26eb` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:231bdfea90548dfac8d733fcff5e03578d1feb3abe641ed333d5289c5d132df6` |
| 37 | `class` | [ReflectsFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitecolimits.md) | 271 | `declaration-track:9f0c4a8fbadbe17e23d201f6c1a95915157c7d7161fcd71901a3c504a7b6ac6b` |
| 38 | `lemma` | [ReflectsColimitsOfSize.reflectsFiniteColimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectscolimitsofsize-reflectsfinitecolimits.md) | 278 | `result-track:b4fc70c214218a1c61e2b56cc35d6418197cf5b30bb2c977dff2e870159140f0` |
| 39 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-7.md) | 285 | `declaration-track:4db04cede1ccead77089c08b8bf9fcf2b8e656e5785a5684a4a9d4344896a260` |
| 40 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance.md) | 290 | `declaration-track:16e8b0c2720978b83f97bb37591f535861fe8442a701fcb08291fd1af6dd222c` |
| 41 | `class` | [ReflectsFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitecoproducts.md) | 302 | `declaration-track:2b585507ff04c36b6142398e2894654ed17ad6277eee0c8afee7e413536804ea` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-16.md) | 305 | `declaration-track:9e530c05526108d932f5c743e8f3df2f82a47204d83ed30d926bf0fef0ff96fa` |
| 43 | `lemma` | [preservesFiniteColimits_of_reflects_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecolimits-of-reflects-of-preserves.md) | 315 | `result-track:fd2573ec72d617bc4e5e663c7cfc0c981eba22665f80c921754cc4502f53d605` |
| 44 | `lemma` | [preservesFiniteCoproducts_of_reflects_of_preserves](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/preservesfinitecoproducts-of-reflects-of-preserves.md) | 323 | `result-track:586e9ac5d874e2b8413c87e0065cbc2c23ba61a47bfac228a99c330e424ba969` |
| 45 | `instance` | [reflectsFiniteColimitsOfReflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitecolimitsofreflectsisomorphisms.md) | 328 | `declaration-track:33e8a322cfc6e0993d0c1c5d176244b1cb4049846c9cf6a876ed870e1687ea10` |
| 46 | `instance` | [reflectsFiniteCoproductsOfReflectsIsomorphisms](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/reflectsfinitecoproductsofreflectsisomorphisms.md) | 333 | `declaration-track:9f6093202d3379190b483fcfee56be90742d0e8ae697c1d1fabce605462d4dc0` |
| 47 | `instance` | [comp_reflectsFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/comp-reflectsfinitecoproducts.md) | 338 | `declaration-track:b200a946ecddc06b3035d06d71ffeb78d1f4c8ddc26f0d7dbead791a4dbda241` |
| 48 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/PreservesFinitePreservesFiniteLimitsOfPreservesFiniteLimitsOfSize.lean/declarations/instance-source-edition-11.md) | 343 | `declaration-track:69fb40ad31dcbe70c373922953d0240e5ff1a96e378ed64b8a03f719444db615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca7e51e11066597f4286182f7fa6c540b18a6277713b905853031a2eead6881e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Finite/Variantd6af5aac105eb94b6fb98ab24190c9015fee38e73bd6e50aa260612da8814d10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
