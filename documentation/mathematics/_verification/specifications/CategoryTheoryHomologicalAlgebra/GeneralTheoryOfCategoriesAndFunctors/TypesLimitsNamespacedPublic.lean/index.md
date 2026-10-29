# Verification target: Types Limits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "266a8768da6f50a77e25b8a5370e7365c7d0279a",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantccd8ffa83f4c896212099cbeaf0e5fc516b8819dca52746979fb3e9b34ce9b91.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `266a8768da6f50a77e25b8a5370e7365c7d0279a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantccd8ffa83f4c896212099cbeaf0e5fc516b8819dca52746979fb3e9b34ce9b91.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantccd8ffa83f4c896212099cbeaf0e5fc516b8819dca52746979fb3e9b34ce9b91.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneOfSection](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/coneofsection.md) | 40 | `declaration-track:5f00e82f115637488675e5732bc45bf1e540a33a24916163ac28ad9943c871a8` |
| 2 | `def` | [sectionOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/sectionofcone.md) | 46 | `declaration-track:cc0878a9c920f9fb69e94964820a7700d2c2164e9bc792b7b40a11538a017f68` |
| 3 | `theorem` | [isLimit_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/islimit-iff.md) | 49 | `result-track:8a6d6aa132f9982fcb89cac9d6ef89c140eca86e9a2295582579891522bf5a08` |
| 4 | `theorem` | [isLimit_iff_bijective_sectionOfCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/islimit-iff-bijective-sectionofcone.md) | 61 | `result-track:f51861404a17c5d25ff383bcfc868e10b3ecf7c262c76d18cd47ac8755cb393a` |
| 5 | `def` | [isLimitEquivSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/islimitequivsections.md) | 68 | `declaration-track:a24d534cce30074ad76e9f06112abcdc8b54b8b9758a2797cc9bd614e3174be6` |
| 6 | `theorem` | [isLimitEquivSections_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/islimitequivsections-apply.md) | 77 | `result-track:2f0d514e64b9151879ae76a7549bd8a33c077a1e2361a68558a17f74c6a8fb54` |
| 7 | `theorem` | [isLimitEquivSections_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/islimitequivsections-symm-apply.md) | 81 | `result-track:75840624101fadd1d7e1581a4a5c7bd4d731cb41e95b13d823f61a2b0bcfd522` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitcone.md) | 117 | `declaration-track:a1ff7d6f6b94b38acfd23574984cb69cc2f215675f843b2931e7ddcde7ea9788` |
| 9 | `lemma` | [limitCone_pt_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitcone-pt-ext.md) | 124 | `result-track:9f52d9b3b40cc2ca2eb6635ce0cec4c6481a2abb40b3f91c57fdb859bb8a1f11` |
| 10 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitconeislimit.md) | 131 | `declaration-track:198dbfc7ed3aa4392d79babe7bd18a0a00ef63922521b5eff0a9d453edff770c` |
| 11 | `theorem` | [hasLimit_iff_small_sections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/haslimit-iff-small-sections.md) | 143 | `result-track:73b86fbfff34787173444a6fb0c57f27efdc1b0d14cccc1dfc1c7946862814d1` |
| 12 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitcone-source-edition-2.md) | 156 | `declaration-track:b82ba4c12590e4136b4892791a2761cc8df87eb3e099d28dbf599f14d2df06a1` |
| 13 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitconeislimit-source-edition-2.md) | 162 | `declaration-track:48833eea3d1f6ea837772008f4a1dcda2be1100639abb275fff569c743a198d3` |
| 14 | `instance` | [hasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/haslimit.md) | 185 | `declaration-track:cf09de086fc5f53a4893e681c938e9b282ada915e2cff6e7cf5d1dfb9ac2d16f` |
| 15 | `instance` | [hasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/haslimitsofshape.md) | 188 | `declaration-track:f8c64030b1aa20e6aac61ecd78b055437436f1dacb15db02d84f846077f7803b` |
| 16 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/instance.md) | 195 | `declaration-track:c5130b2040cb7c1cdcf375fd05dabc4a20b9695f4a6d75b55f8398edd93abd9e` |
| 17 | `def` | [limitEquivSections](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitequivsections.md) | 204 | `declaration-track:18e23e85f50499e368a9d5774ef8cf7a8381c030c7d521f98f142fd6873fb93c` |
| 18 | `theorem` | [limitEquivSections_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitequivsections-apply.md) | 208 | `result-track:0d22b688e83c7e847c560758ca7c79df65a9aeef8b5c45f8154d8e1b948abdbb` |
| 19 | `theorem` | [limitEquivSections_symm_apply](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limitequivsections-symm-apply.md) | 213 | `result-track:532278f5624643833a06f48dd63392c1dc52fe08dd4ac93c93df477bd87becbd` |
| 20 | `def` | [limNatIsoSectionsFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limnatisosectionsfunctor.md) | 218 | `declaration-track:bb8762d9daeca3dad6724d519523d2adfb9adb4187b6cc79e0b73d2f5d3333bd` |
| 21 | `def` | [Limit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limit-mk.md) | 226 | `declaration-track:629c4d8e91cfa28cd955f0d960f12968f10f27c8e8826a076d8fa7c94c0335d4` |
| 22 | `theorem` | [Limit.π_mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limit-mk-source-edition-2.md) | 231 | `result-track:b3439a1517030c80a93962c3f2ab7f935fe867345b96d22d610062328f2840e6` |
| 23 | `theorem` | [limit_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limit-ext-source-edition-2.md) | 238 | `result-track:26a9b63c5b0b0e75fcb2eaf2e519c5147fe06e92465d45c571f424f3898e95a3` |
| 24 | `theorem` | [limit_ext'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limit-ext.md) | 245 | `result-track:1f7db49b8247bca313f18168ff5aa07cf584a1ed612365742f00851f20856793` |
| 25 | `theorem` | [limit_ext_iff'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/limit-ext-iff.md) | 249 | `result-track:15b4c9904066f00fae25365bf2f7269ea2c8a38efdec4980dec2ff901b4318d8` |
| 26 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/example.md) | 265 | `declaration-track:2349bd75a2a9a5076c2c13e69afa9cfdefcdd8c5060b252b590b75b5b735c652` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/example-source-edition-2.md) | 266 | `declaration-track:313044bab9d62e4bf1651a5e63ff7230a9a974ff9ea699ac771fc720ea2b47bd` |
| 28 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/example-source-edition-4.md) | 268 | `declaration-track:888018c95f3f5cae824cc2413cc8a2db1dce21cda71fd7a5174f7d6e555cdb4e` |
| 29 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/example-source-edition-5.md) | 269 | `declaration-track:9fe5c86c653dbaaf93a3f4d5c664309402b2261b43d6fb04add634634481c55e` |
| 30 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/TypesLimitsNamespacedPublic.lean/declarations/example-source-edition-3.md) | 271 | `declaration-track:482e1578abd301228a40af5e70e555c020ef883d72e934282138515e5b3ed2a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1fad6c050c659a7613b1c914cb3a15c379298bf201d2aa6ae4d9a817e3ba6c27 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantccd8ffa83f4c896212099cbeaf0e5fc516b8819dca52746979fb3e9b34ce9b91.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantccd8ffa83f4c896212099cbeaf0e5fc516b8819dca52746979fb3e9b34ce9b91.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
