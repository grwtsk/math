# Verification target: Has Limits Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e660253d98b1ff988ef969d2a3f6a96995292573",
  "lexical_observation_count": 106,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e660253d98b1ff988ef969d2a3f6a96995292573`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean.json)

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
| 1 | `structure` | [LimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limitcone.md) | 82 | `declaration-track:df4a1a7d3a56b99b487d79d84bd0149a12e33e11c9f3ce6eaa51cd71699ca614` |
| 2 | `structure` | [ColimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimitcocone.md) | 91 | `declaration-track:968a04ad27df82544a493d33d89073b7ffa6e89d64b6db8dd972690e7c6c8bf1` |
| 3 | `class` | [HasLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit.md) | 98 | `declaration-track:6ea42134cfff1fc3ca7f6d5a7597af532512f7d0f4afef20ade2453dc49f1083` |
| 4 | `class` | [HasColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/hascolimit.md) | 104 | `declaration-track:6e22a92dd5b1572144ef0fc0ca150c90245a6ef8e8689627aeb457131755dbb4` |
| 5 | `theorem` | [HasLimit.mk](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-mk.md) | 109 | `result-track:7d50f275de734538221f4e75ebee9002c62c8bcbd7ec3acb89e6d82094f674f2` |
| 6 | `def` | [getLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/getlimitcone.md) | 115 | `declaration-track:d2f6aafc589247046194ba14305d88cdd2d82828c31ebb0289839af4a776c379` |
| 7 | `class` | [HasLimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofshape.md) | 121 | `declaration-track:0000995ee485376bdebbbaef051e6be7cf757f7d228ab78c478a54d81655d102` |
| 8 | `class` | [HasColimitsOfShape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/hascolimitsofshape.md) | 127 | `declaration-track:0c3adf0c8110a1a8c118eab0de0f0f3e7e15cab54f594995b16383ad55c55d29` |
| 9 | `class` | [HasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofsize.md) | 138 | `declaration-track:ec8cd49d4e459d436f5bb450ca636c3a613bf7e6e0b4ad74c98276e8bc42f1ac` |
| 10 | `class` | [HasColimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/hascolimitsofsize.md) | 150 | `declaration-track:83adcd3a90add10b8a09b5f02cf1d7a4ce359752b8736deca6926af8c6bfd027` |
| 11 | `abbrev` | [HasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimits.md) | 159 | `declaration-track:a2fa8aae3a1f41c00df3709c541a138e9f2bf60ab0f052f3a1f3e8282465c2d8` |
| 12 | `theorem` | [HasLimits.has_limits_of_shape](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimits-has-limits-of-shape.md) | 163 | `result-track:2ce0b52a96da93d2d74a0eea5c2300fe24e8392464c4aeabad7051c54efdd7d4` |
| 13 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/instance.md) | 171 | `declaration-track:5010cca117e6caa2ab6ed57cc3b1d2c3100b9f62ce3428ffe5debd1ce715429d` |
| 14 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 177 | `declaration-track:cdb583fbabdf5372edee358cab0b64a7d522d4304be1e01b3ec6d88a882a496a` |
| 15 | `def` | [limit.cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-cone.md) | 184 | `declaration-track:40cf0c5d6b92f14e4ef47a0bf2bc8aa7e6a0ac5c1ffa44edfd274d0d2370f804` |
| 16 | `def` | [limit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit.md) | 189 | `declaration-track:adca89d2eaf9ffc76be8cea72962c43fb68ebeb6628533b5bb8324a87e2ce93e` |
| 17 | `def` | [limit.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-source-edition-2.md) | 195 | `declaration-track:c170f09bb8ce9c736daec91b931ff0fa53f366741ebd2f2c3a19b15762937777` |
| 18 | `theorem` | [limit.π_comp_eqToHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-comp-eqtohom.md) | 198 | `result-track:eaac307642c09d70a6d7e5407650c346adf8995f71462e8e831b29dbe41c8949` |
| 19 | `theorem` | [colimit.eqToHom_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimit-eqtohom-comp.md) | 204 | `result-track:188fbf45e1e76300f2ce46af3965ee6b02efc218f1146db084ced36610f129ed` |
| 20 | `theorem` | [limit.cone_x](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-cone-x.md) | 210 | `result-track:51f74c793f413c00226e26c5f632c80c9d3e54da7a559d2bc39c8a4db9f9e0ed` |
| 21 | `theorem` | [limit.cone_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-cone-source-edition-2.md) | 214 | `result-track:d88abc97ad7b2cf8d8000803d1e12205fd10f1d5d60f42a0b070457e2bd5bf22` |
| 22 | `theorem` | [limit.w](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-w.md) | 218 | `result-track:de13b09301305dea71cd83ccb07b694ace5bfb848c06c16493d98e91596a974f` |
| 23 | `def` | [limit.isLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-islimit.md) | 225 | `declaration-track:03d0ef00fd789c54160b4496816afed914e0912907c456f572c5a72b6a28aea8` |
| 24 | `def` | [limit.lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift.md) | 231 | `declaration-track:3dfdd776341f8eb8745e4eb8cb1a3a42403ec17ee2ebfdc69faa60e216c4e81e` |
| 25 | `theorem` | [limit.isLimit_lift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-islimit-lift.md) | 235 | `result-track:e07aa2baf226b134cf3f7f01ad43e1f50e7f944c5f7b682788e02d7aa10f5970` |
| 26 | `theorem` | [limit.lift_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-source-edition-2.md) | 240 | `result-track:be03737618bbb16dacf71351fb6ebd891d30d39cc2f4adfc57d0456fcc2e572e` |
| 27 | `def` | [limMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limmap-source-edition-2.md) | 257 | `declaration-track:89cb3fb6e3c1a03ee58a0df5df93d4a59bbee504154a03c4dceb23713280e898` |
| 28 | `theorem` | [limMap_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limmap.md) | 261 | `result-track:64cc465d148b7b8583bb76391a854f38da4283a98ac3b616036a205dfaad20b8` |
| 29 | `def` | [limit.coneMorphism](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-conemorphism.md) | 267 | `declaration-track:2aa66b9201f46ca1fce2e1c708b080042b5e64c640c5523ab68a58c4e942dc2d` |
| 30 | `theorem` | [limit.coneMorphism_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-conemorphism-hom.md) | 271 | `result-track:ad850133b6ddbd4bbdd8f01aaa34484d3bcc1d8b790967d11f71a40c6f794383` |
| 31 | `theorem` | [limit.coneMorphism_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-conemorphism-source-edition-2.md) | 276 | `result-track:488858b38a1362b7092b0124e9078346cc92d1422ae1b2d2c39248abe1d85150` |
| 32 | `theorem` | [limit.conePointUniqueUpToIso_hom_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-conepointuniqueuptoiso-hom-comp.md) | 280 | `result-track:ec1cfcf132caa5597320170e5b2c0d0d04c700ef1345530a6bd9da69c7487cd8` |
| 33 | `theorem` | [limit.conePointUniqueUpToIso_inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-conepointuniqueuptoiso-inv-comp.md) | 285 | `result-track:df04a65ede3abd1967dc63cf35d2fe9a496210bd4a15761b9bcfb0adaef15d18` |
| 34 | `theorem` | [limit.existsUnique](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-existsunique.md) | 290 | `result-track:ac4f613c31d6d1ba0cf388f30ce59d122636fe395e8bd64f02b77a20dcfacf55` |
| 35 | `def` | [limit.isoLimitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-isolimitcone.md) | 298 | `declaration-track:e58d5400f5004499de35f9f67e059f6927f5d182a558298710a0d75e9efdf008` |
| 36 | `theorem` | [limit.isoLimitCone_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-isolimitcone-hom.md) | 302 | `result-track:b60f4c8589fdf7a668af0d275036c07bdde90ced17a3d2748efeda92cf6485a2` |
| 37 | `theorem` | [limit.isoLimitCone_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-isolimitcone-inv.md) | 308 | `result-track:7ffd26ad93154935a3254314fdc283c2e90e0a2e7ba3b741265fdc9da1b95ce5` |
| 38 | `theorem` | [limit.hom_ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-hom-ext.md) | 314 | `result-track:f361dab17268c7185b8c8d6d460311f3c3c785c1be018de41ddee5b886a9ad36` |
| 39 | `instance` | [isIso_limMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/isiso-limmap.md) | 319 | `declaration-track:6b1f69efe8c0c2f4677e217444e5f0f580dee642d0f416a06d2a919fa8a7c9cb` |
| 40 | `theorem` | [limit.lift_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-map.md) | 324 | `result-track:175d72df038c1554a31bced8aef1c1cd010e043672906b03f2ca531fc46c8e15` |
| 41 | `theorem` | [limit.lift_cone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-cone.md) | 331 | `result-track:651da13787c3e13bebe04658e4abc2ea4103bc9cedd956c3832970e8fc848fe1` |
| 42 | `def` | [limit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-homiso-source-edition-2.md) | 339 | `declaration-track:72933ab468ddc64447ee4f5d9810245d0c1b4006b14979d2abd433684d1e9e4a` |
| 43 | `theorem` | [limit.homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-homiso-hom.md) | 344 | `result-track:91017a3a6fbe5958f3e3410451f8d9a4432df7e20944ad741e9c4402af641569` |
| 44 | `def` | [limit.homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-homiso.md) | 352 | `declaration-track:1f97cbd7a5d31e1b6d9fb014872f8fbbc6f5e4d02c29412a28b31d3ef412382d` |
| 45 | `theorem` | [limit.lift_extend](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-extend.md) | 358 | `result-track:b39220cab25f706ac62c35fdc39cfe702f39c4ede626ec5398fe1b3d13aac454` |
| 46 | `theorem` | [hasLimit_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-of-iso.md) | 363 | `result-track:40a9460d07604da30bee38ef81b835b00f6353edd6532b745c4579b4b6777e20` |
| 47 | `theorem` | [hasLimit_iff_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-iff-of-iso.md) | 369 | `result-track:fbdd8ad075dc4d55ea8440d41589f61fa3a8eebdf8524bfb0994b92dc774baa4` |
| 48 | `theorem` | [HasLimit.ofConesIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-ofconesiso.md) | 376 | `result-track:e0fa743209212d5e3654d320e3384395f8e1999d8133e62affec6fcef28c36f8` |
| 49 | `def` | [HasLimit.isoOfNatIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofnatiso.md) | 387 | `declaration-track:b9db43b7aa9ff1e91eecf604f7ff0ba06877a6bc5411de59631ec72ac2c1fc4c` |
| 50 | `theorem` | [HasLimit.isoOfNatIso_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofnatiso-hom.md) | 391 | `result-track:45711b7d45a663ae6bfb08b1d5e16950bdf9975788423b8ec86635cd5af33ff2` |
| 51 | `theorem` | [HasLimit.isoOfNatIso_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofnatiso-inv.md) | 396 | `result-track:2a6e349b9f0b92721611c988b3f81de56815cdd61319ae6cdfc3476a31b8f01a` |
| 52 | `theorem` | [HasLimit.lift_isoOfNatIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-lift-isoofnatiso-hom.md) | 401 | `result-track:307fea331525de0f65212c1e70225f7a1f168fd4bf921e332964946cfe6d05bf` |
| 53 | `theorem` | [HasLimit.lift_isoOfNatIso_inv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-lift-isoofnatiso-inv.md) | 408 | `result-track:3c44a668279c911d406ed8e0830a4938898448759cf79b1a5a6fd50bddf6eab7` |
| 54 | `def` | [HasLimit.isoOfEquivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofequivalence.md) | 421 | `declaration-track:5c4eec7073d04ffa1fdb04b70b3bb839c0d85982915ad44269146155347df118` |
| 55 | `theorem` | [HasLimit.isoOfEquivalence_hom_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofequivalence-hom.md) | 427 | `result-track:a8c1ebb59a71fe3f01a6b3883fbc12772ef1e712111f3e9a1525a723cf615c34` |
| 56 | `theorem` | [HasLimit.isoOfEquivalence_inv_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-isoofequivalence-inv.md) | 436 | `result-track:ada3542ea7cd95e1ec1aeec460649158478396eec529448ec8eca1ea4bfcf0e5` |
| 57 | `def` | [limit.pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre-source-edition-2.md) | 450 | `declaration-track:eddb22ce554030271a5ec30e296241d0c2e00975405f390ace8ca6796910c97d` |
| 58 | `theorem` | [limit.pre_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre.md) | 454 | `result-track:75ba782c3445b14e2fea9b33732eb3dae988fd06f659bb717944ca4453f022a0` |
| 59 | `theorem` | [limit.inv_pre_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-inv-pre.md) | 458 | `result-track:8dceb95d7e837600926c11e7274e4397e8d6214d293b0bea2674da5611f6eefe` |
| 60 | `theorem` | [limit.lift_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-pre.md) | 463 | `result-track:816ac30545b24d3f269c53acec91552b11f64afac2632bdbfaa1fe2ccbc3b4ac` |
| 61 | `theorem` | [limit.pre_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre-pre.md) | 470 | `result-track:eb2ceaa8ee24da83ae3f32241c97a097bc6e58bca1789af526fa211f25cb856a` |
| 62 | `theorem` | [limit.pre_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre-eq.md) | 482 | `result-track:c329437fe5eecf23b5d967923f9f84d96260981583d1bfdec138d6da9ea1fc66` |
| 63 | `def` | [limit.post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-post-source-edition-2.md) | 496 | `declaration-track:3b068ccb0bc6e366a88f204e7394ea690d5ce6908a0023287e973156f1de0c99` |
| 64 | `theorem` | [limit.post_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-post.md) | 500 | `result-track:31ed87ed247eab36d5688cf105bed27b0a8963148076ba410a1b12a4d301b287` |
| 65 | `theorem` | [limit.lift_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-lift-post.md) | 504 | `result-track:90ed24cc2f0974e22219bc9f7fc94d6face6b8b2bb3e81e4bf6ba78ebeeb697f` |
| 66 | `theorem` | [limit.post_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-post-post.md) | 511 | `result-track:4eca487592cfb6e37c8a2ada00df7e203397eaa112f47dab7b191190c527c04c` |
| 67 | `theorem` | [limit.pre_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre-post.md) | 522 | `result-track:7f680cad7c1f163e471d963dcbd8505877711d85dedceea0694ba907b237f0a1` |
| 68 | `instance` | [hasLimit_equivalence_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-equivalence-comp.md) | 533 | `declaration-track:7dcaf87e023582f184f5915a5688e9bdbd19c63ca79d06220101b81738554a61` |
| 69 | `theorem` | [hasLimit_of_equivalence_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-of-equivalence-comp.md) | 542 | `result-track:d6dff793688474ebcb2c209e99fe5ebb1854846f9dbe58a2513c894d1653f3d1` |
| 70 | `lemma` | [hasLimit_equivalence_comp_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-equivalence-comp-iff.md) | 547 | `result-track:08d3fc51826940d4d817d1a634d7ce5ac952b7b8e3ac6f95195d82abe8505e9a` |
| 71 | `lemma` | [hasLimit_inverse_equivalence_comp_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimit-inverse-equivalence-comp-iff.md) | 551 | `result-track:c9653dcba3f77471a95a4322cddbe020d08e93b1671f190297b107cfacf35a4b` |
| 72 | `def` | [lim](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/lim-source-edition-2.md) | 563 | `declaration-track:257c5a7460480919618203db1331369fb3d99bdb43458c4332667cef3ecb16db` |
| 73 | `def` | [lim.π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/lim.md) | 569 | `declaration-track:06ba10dec0cf00b1ef982feef3c8a922b19627b0c214e4056be058c25a4683b7` |
| 74 | `theorem` | [limMap_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limmap-eq.md) | 575 | `result-track:e1e49360e0964ace38e51a83efb3d8ee49495581e1a702d92686a7ab7922e628` |
| 75 | `theorem` | [limit.map_π](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-map.md) | 578 | `result-track:84a86cada8e745c4428a3d3c601677de02fc8c6a7600d31d4b69a9ac504b69e1` |
| 76 | `theorem` | [limit.map_pre](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-map-pre.md) | 581 | `result-track:6d6f319d19560a89c1e3c10bd8a405e19753b5a5177fe5e42d2d860c065b259a` |
| 77 | `theorem` | [limit.map_pre'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-map-pre-source-edition-2.md) | 587 | `result-track:9263bf2bf92d6513e6d54de3d141b266333fec779e37b1a894092922d4cfbff9` |
| 78 | `theorem` | [limit.pre_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-pre-id.md) | 592 | `result-track:82beb551cc28851801bc34f4e56b6d18294585c007c80c13b230c4ccf4f786ac` |
| 79 | `theorem` | [limit.map_post](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limit-map-post.md) | 598 | `result-track:7f0d03d52cd0eb5f30a5b5343e66e076ba910649e5e25a27b41d5bc50a614bbf` |
| 80 | `def` | [limYoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limyoneda.md) | 612 | `declaration-track:7b9b53ac19d44d8625e9a71375af5b4261310c6f36b6538c3a6f6c3f95195f7c` |
| 81 | `def` | [constLimAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/constlimadj.md) | 617 | `declaration-track:fe071341b00701fc6a76a40ad94c2ed7ad41486915192cc22bc3608eb86ef313` |
| 82 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 627 | `declaration-track:a1e1bfb318b24dfd73a0817952368829daa63a8a18e424563c0eca9a5f4326cb` |
| 83 | `instance` | [limMap_mono'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limmap-mono-source-edition-2.md) | 632 | `declaration-track:b6bc8d25326d7b8b4404e047e04f0e1c942d387f943e5448e560413372c20dd0` |
| 84 | `instance` | [limMap_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/limmap-mono.md) | 636 | `declaration-track:0468080b230524e441365ef93303bb39d0970f9d5a2b2f6de875ca46d3be293a` |
| 85 | `def` | [coneOfAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/coneofadj.md) | 654 | `declaration-track:fba718d177acb7fb19086fc93d5deafb9e9ea5b000319df922530d1153256f88` |
| 86 | `def` | [isLimitConeOfAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimitconeofadj.md) | 661 | `declaration-track:5bb9f557a8bee523aa562cca52ebeb0c69768f460295ca7aaa46b6af4083be7f` |
| 87 | `theorem` | [hasLimitsOfShape_of_equivalence](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofshape-of-equivalence.md) | 676 | `result-track:51fa36ac5e92e26b567cc9361f34784ecc6922c2d730519f262bad6a5e153bd2` |
| 88 | `lemma` | [HasLimitsOfShape.of_small](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofshape-of-small.md) | 685 | `result-track:d388035f1ec9281232358f855d356c0a5ae6e9476d6e520356ca65f40b47643c` |
| 89 | `lemma` | [HasLimitsOfShape.of_essentiallySmall](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofshape-of-essentiallysmall.md) | 694 | `result-track:1aa68feb9741aebe769fc7991eaf2273122eb31777aabe261a158f85612114c3` |
| 90 | `theorem` | [hasLimitsOfSizeOfUnivLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofsizeofunivle.md) | 703 | `result-track:0ba28b3240312ced963874d2af04627781ad8a7d4c68bf7ca0688cbf40525726` |
| 91 | `theorem` | [hasLimitsOfSizeShrink](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/haslimitsofsizeshrink.md) | 715 | `result-track:8e376e8ab7847ae86a20e1f0b3822932610b354a8662ea894b3e76d822832a78` |
| 92 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 719 | `declaration-track:e24fc4b2ee66ac8874b707043f748c53b3a93b18af34e525c646aade62bef3a0` |
| 93 | `def` | [colimit.homIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimit-homiso.md) | 730 | `declaration-track:117277e16f231685f96a7ff72d6ba9e28b5054db3877ca50af33a21dbdaf2456` |
| 94 | `theorem` | [colimit.homIso_hom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimit-homiso-hom.md) | 735 | `result-track:26c252430e040f3a807a3204636e22b9d6e0cccd37e173d4d9acecde8f948ed6` |
| 95 | `def` | [colimit.homIso'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimit-homiso-source-edition-2.md) | 744 | `declaration-track:527647e676b92f1bc950ef60fb7e7b320f118fa994323f9c911780fc6960191b` |
| 96 | `theorem` | [hasColimit_of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/hascolimit-of-iso.md) | 753 | `result-track:a0f965a3ae31c6bb8a46ff9d7e2db70bcf65456d68376e2070e938fbd3b17c1e` |
| 97 | `theorem` | [HasColimit.ofCoconesIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/hascolimit-ofcoconesiso.md) | 760 | `result-track:6c7a04db998da4b2ee7649886a9e972e602a364abf0cae202c1c93ca760b6206` |
| 98 | `def` | [colimCoyoneda](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimcoyoneda.md) | 790 | `declaration-track:632fd84f47ad707aec2f2998540823e0df01b190bb25b24deabe0e52dc13b9d4` |
| 99 | `def` | [colimConstAdj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimconstadj.md) | 796 | `declaration-track:7e8d03f0c68d32038d17facd1bee4ba5e44eafb2c7a2c8b164dea813bf1b2430` |
| 100 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 806 | `declaration-track:cc3b31bc0c7d4c867d25a54843b7e2a280eef7b94ddc43f76381b3d55b208bc7` |
| 101 | `instance` | [colimMap_epi'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/colimmap-epi.md) | 811 | `declaration-track:6f46f1c5af5d3ef84a8a47ac9ed5716ff6968cb236cd6cbd00c9fbfa53c26dd7` |
| 102 | `def` | [IsLimit.op](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimit-op.md) | 823 | `declaration-track:b8ff7547ff0e0775d1c72663a75c96d8ae2a34f85a5cbbd9990c18e5b893451d` |
| 103 | `def` | [IsLimit.unop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimit-unop.md) | 839 | `declaration-track:242c67bcb5e46c615968ddc0bb272bbfd5cc8e321bf4c11ed31c4d7298663742` |
| 104 | `def` | [isLimitOfOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimitofop.md) | 853 | `declaration-track:ec428e555c18955a44d9c29668d671644654607e19d769c59576de3087d4d6e2` |
| 105 | `def` | [isLimitOfUnop](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimitofunop.md) | 858 | `declaration-track:f96f12cd859623f1408a1e41cd4fec8454f7ae6cae624ee769a5e16c4fbd5224` |
| 106 | `def` | [isLimitEquivIsColimitOp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/HasLimitsNamespacedPublic.lean/declarations/islimitequiviscolimitop.md) | 864 | `declaration-track:a85722b79766c31d2681d23a0fc12cf0fd835785dd2aeca4887ee2692cf38fd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d292fd2dfbb59776641ddf4259190628687bc68e6d61970999f6a7850760b36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/HasLimits/Variant84df666d0ff0ac385db71e5c71a9646853a09c8c8e36676236edb26001df3db6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
