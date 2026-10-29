# Verification target: Limits Of Shape Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c885cc5e9fcf9515654585e37977719b8ec9583",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c885cc5e9fcf9515654585e37977719b8ec9583`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [strictLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/strictlimitsofshape.md) | 56 | `declaration-track:b07d40ee6d3f5a8f5261210efbb1ac8781b3aa92e278172d97daf549e3e5cb63` |
| 2 | `lemma` | [strictLimitsOfShape_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/strictlimitsofshape-monotone.md) | 61 | `result-track:ee373b04ceaf27fefc0b408493cf02a2e3277311bc3f0655686a29223873894f` |
| 3 | `lemma` | [strictLimitsOfShape_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/strictlimitsofshape-bot.md) | 67 | `result-track:6fa707c37330c388c3d5baaf7495c27f3077e3696f4551b23f98f765ce934f78` |
| 4 | `structure` | [LimitOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitofshape.md) | 75 | `declaration-track:57ce23faad7e128dd5f9e95af270f742a902b7008eb6a5399454b4ba56aa0144` |
| 5 | `def` | [limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limit.md) | 85 | `declaration-track:6d6480365d8bf92c012d589c18d7e4dd408248e74783769cec4cc61da406d42e` |
| 6 | `def` | [ofIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/ofiso.md) | 93 | `declaration-track:87be4f764367fc766d38dee70a65534143c29c141a0244a24555bc01e00d89ec` |
| 7 | `def` | [ofLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/ofle.md) | 101 | `declaration-track:e9b1c1c1e22e37719f19d2a9e64dcc17f3e6ad9171eae405f2e9a8ebaf9efafb` |
| 8 | `def` | [reindex](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/reindex.md) | 108 | `declaration-track:1ba2f0751afe03262089c6690ad806869b94cbe419b44f9d157ad64c36bd22b5` |
| 9 | `def` | [toStructuredArrow](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/tostructuredarrow.md) | 117 | `declaration-track:d1c4402f644f747f48eca038eb425bf61110cea26a9217cdc09ebe1185e0a637` |
| 10 | `def` | [limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape.md) | 128 | `declaration-track:78c4b8babe5e44ac673dbab633a27fcb317d319ca07dae92200251f11f44f29b` |
| 11 | `lemma` | [LimitOfShape.limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitofshape-limitsofshape.md) | 132 | `result-track:7d6f12768c21ccc2ca93ffbc5c5e685136412c5e1c7bcc02168fc44d1931893a` |
| 12 | `lemma` | [strictLimitsOfShape_le_limitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/strictlimitsofshape-le-limitsofshape.md) | 136 | `result-track:ed02f1c2fdbd6c397fc66cbff45ee3bf77cffb56bff67c3ed2ed640b47ec985d` |
| 13 | `lemma` | [limitsOfShape_bot](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape-bot.md) | 142 | `result-track:990b292d0457759bc1a47a8a812620a04ccf5963e3b398014c8b9e12163eb52e` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/instance.md) | 147 | `declaration-track:0817e0badea725a299085ad1a492edb8bf827eb0ddd1144530310fd4058b86ba` |
| 15 | `lemma` | [isoClosure_strictLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isoclosure-strictlimitsofshape.md) | 151 | `result-track:99507faa8bdda16cd319f0b96a96305296c54ddffee052d1b73b891a49806cd7` |
| 16 | `lemma` | [limitsOfShape_monotone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape-monotone.md) | 162 | `result-track:6a7a5f21c6407efb65c1b018d2e3a03a72b43f277b7501a58b8b5f9e14a9337b` |
| 17 | `lemma` | [limitsOfShape_isoClosure](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape-isoclosure.md) | 168 | `result-track:f40d4a097eff35a0abcacac761ddea1399002fc32ea85c6ad4bcb778aee1d29e` |
| 18 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:8eaa4074e6c81d1d91410367f915c9169e616f08d85c7f42fa0f744013d98590` |
| 19 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 185 | `declaration-track:a66905b8f121379320c8a0ef62ea8d19d235c81d3f3789c4fbe9b55825e6c861` |
| 20 | `class` | [IsClosedUnderLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape.md) | 193 | `declaration-track:4ff559a3499474ead169d09ec93629de82801af26687453dc8594c89e7cb1501` |
| 21 | `lemma` | [IsClosedUnderLimitsOfShape.mk'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape-mk.md) | 197 | `result-track:bd7579e313f78e798ba49ae2daa64a1005829d844dc3e5aff433f334413f5118` |
| 22 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 205 | `declaration-track:5c5510cb4df476cbc6380f7ce8ea090fd69b6ae4261fd3d08b4b9a2b87eef280` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 208 | `declaration-track:e18195a64b58b3413c46c8db3da545289df338da0abbb563ab0f73165bcbf9b8` |
| 24 | `lemma` | [LimitOfShape.prop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitofshape-prop.md) | 218 | `result-track:1e94d51b57c8d927e39a1db366586d344a2ba8ac0f3476b8bb029322ec6ece82` |
| 25 | `lemma` | [prop_of_isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/prop-of-islimit.md) | 221 | `result-track:30d03b325fe920e1ce4b7035383d60c7a22ee7ea36a85ec37e82fb905c7ce82a` |
| 26 | `lemma` | [prop_limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/prop-limit.md) | 225 | `result-track:a7933ae352dc277aeb7521dd4b33c7e4b8d89c9ee1ab9e42ac307c6aaef71e87` |
| 27 | `lemma` | [prop_pi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/prop-pi.md) | 231 | `result-track:f5023a7ccfdf43991c0864af40953548142af53034d59ae12a0c848ef2378abc` |
| 28 | `lemma` | [limitsOfShape_le_of_initial](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape-le-of-initial.md) | 237 | `result-track:ed6faf22fa82aaf0e46f30a5ae5ff3b6f48e358778309d0c6cb8313a6c553cbe` |
| 29 | `lemma` | [limitsOfShape_congr](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/limitsofshape-congr.md) | 242 | `result-track:43134b61cefef13a57ade8b670819c1d0030435f65dd080d0a8bfb50f7dcdd90` |
| 30 | `lemma` | [isClosedUnderLimitsOfShape_iff_of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape-iff-of-equivalence.md) | 248 | `result-track:bc06afa5d527e180f66ca159502114d0bfd68ebc373a639a9803dee2a30c0662` |
| 31 | `lemma` | [IsClosedUnderLimitsOfShape.of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape-of-equivalence.md) | 254 | `result-track:04f5d1aeeed55a7528774b7c5c9a30c03623cbd9d51e6ee5349f5a8eb136cdd5` |
| 32 | `instance` | [IsClosedUnderLimitsOfShape.inverseImage](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape-inverseimage.md) | 259 | `declaration-track:657f98c9ac1f6c754b867d48bca45110e4bc32596052962b958d03d517f53fde` |
| 33 | `lemma` | [isClosedUnderLimitsOfShape_inverseImage_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfShapeNamespacedPublic.lean/declarations/isclosedunderlimitsofshape-inverseimage-iff.md) | 264 | `result-track:b53553d14a7816a067ca59a0e572444040f328ca5c463c351948b15370a93df6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=713072251798645a8a5002ca2b114c3923f6e586a13bc052bdc788da370ffc0d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfShape/Variant1c1896c6dfb88e332dfa000356fa78230549cce9ec56f74f8b930459df06187e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
