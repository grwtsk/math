# Verification target: Module Module Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b3d3d1d7e9a8e34bd233cfa61203aac03cfa590`.

Source path: `GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean.json)

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
| 1 | `abbrev` | [moduleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/moduletopology.md) | 136 | `declaration-track:883a38e932fd074df0a95f55df3d7246ccd3833790660bf7a4ac0e3116d1f4dc` |
| 2 | `class` | [IsModuleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/ismoduletopology.md) | 141 | `declaration-track:d81bc317277beb05c77b5f73544ed12add2c12effeabd99a98c328b32dc7ed5a` |
| 3 | `theorem` | [eq_moduleTopology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/eq-moduletopology.md) | 146 | `result-track:f5454af37c189a767f3a1f016963c02dcb685967ee9c3d0d88d951ea6e2122f8` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 154 | `declaration-track:9dec51e88a8fbe3921603aad852bec4eefa3a4a13937b19b08c0e3920440f4cc` |
| 5 | `theorem` | [ModuleTopology.continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/moduletopology-continuoussmul.md) | 160 | `result-track:10f17820bb013b4330e9b75097addae466c517e2c626e6eb32123cfb84edf74d` |
| 6 | `theorem` | [ModuleTopology.continuousAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/moduletopology-continuousadd.md) | 172 | `result-track:1752b030eba053730086c03ddc45a3d333815b1443f8224f594c179db284062c` |
| 7 | `instance` | [IsModuleTopology.toContinuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/ismoduletopology-tocontinuoussmul.md) | 175 | `declaration-track:9aa15b463edbc9f632ee93159a35601b687e8f1b909d3ff9b5185ba43eff4dc2` |
| 8 | `theorem` | [IsModuleTopology.toContinuousAdd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/ismoduletopology-tocontinuousadd.md) | 179 | `result-track:60cabd412a8d7efd59749958a44188f00bc2f0a509ca970fdda65a6bd8ef3bc6` |
| 9 | `theorem` | [moduleTopology_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/moduletopology-le.md) | 183 | `result-track:1fdcf2846bff796421fed7fc1d89427a25f6e5ae591c4680a4fe2a9347f90a7b` |
| 10 | `theorem` | [of_continuous_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/of-continuous-id.md) | 198 | `result-track:5a47c4df8ee8229edf2811a5d6c7dcd1bfeca83f0ffa76111609c81e6ee75622` |
| 11 | `instance` | [instSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instsubsingleton.md) | 207 | `declaration-track:dccddcf69fab359f0ec08325db67cd4483fce1701d592cee220b416913aa0c48` |
| 12 | `theorem` | [isoₛₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/iso.md) | 222 | `result-track:8a4dae732f5a570f2dfe4d7f67fa1fe79daf9f108b7313471f375fe2310032df` |
| 13 | `theorem` | [iso](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/iso-source-edition-2.md) | 247 | `result-track:d8f5478a2165c5be7bdea668aac03765b90bd1a63cc70f8fa87642f5d55c646f` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instance.md) | 266 | `declaration-track:2297e5f76682a787dcd375be1f1815e248a91a133999e8d5f12291bc2fda0139` |
| 15 | `instance` | [Module Module Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/tooppositeismoduletopology.md) | 303 | `declaration-track:3fd3b9e149fa0bc5cacdee9a6ffffa1fa5ff5a26ca35d67d88084f0970c12180` |
| 16 | `theorem` | [continuous_of_distribMulActionHomₑ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-of-distribmulactionhom-source-edition-2.md) | 321 | `result-track:d4aa2a5ac25a0446c56e88226d5f6dd97eadbc8857a0509da2fbc21dbb71dace` |
| 17 | `theorem` | [continuous_of_distribMulActionHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-of-distribmulactionhom.md) | 334 | `result-track:676abaa684b51ecb17044bb35c0afec38a915a7c98607d3a4032e4b61a460f9c` |
| 18 | `theorem` | [continuous_of_linearMapₛₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-of-linearmap.md) | 341 | `result-track:bf998c1a8c6ed6dacdecbd956c1fe8dbb31b6181fa8573dba8ae3481d17966c8` |
| 19 | `theorem` | [continuous_of_linearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-of-linearmap-source-edition-2.md) | 348 | `result-track:ccbe0a45baba90d58c2c834df4d61d72a0dfeed99b00591524dd4c82ee97e1b5` |
| 20 | `theorem` | [continuous_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-neg.md) | 352 | `result-track:6ed8ddffdd7ce9a8d59c65a52ad5f314f11e00afbab0d44ae9be18b953c6751b` |
| 21 | `theorem` | [continuousNeg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuousneg.md) | 358 | `result-track:a05392d7adc8b7d30f481e19b3e01dfefce789c946a9a15c369510cb8eed63bb` |
| 22 | `theorem` | [isTopologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/istopologicaladdgroup.md) | 363 | `result-track:a894be061565d77387353b092be8d5589b1277b76f40eddfc4a705104c675464` |
| 23 | `theorem` | [continuous_of_ringHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-of-ringhom.md) | 371 | `result-track:692982305809a7033d1f56b81520b59613aae411cd34a3e62a00a7a20af697cc` |
| 24 | `theorem` | [isQuotientMap_of_surjectiveₛₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isquotientmap-of-surjective-source-edition-2.md) | 393 | `result-track:9707737f61a02153f4d648fba55f11294208b4cabd372867972a1083db700d14` |
| 25 | `theorem` | [isQuotientMap_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isquotientmap-of-surjective.md) | 467 | `result-track:6e14242c9936efbef5c18214e1b46774a4908cf560a292e25e556bcaf10c7d7b` |
| 26 | `theorem` | [isOpenQuotientMap_of_surjectiveₛₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isopenquotientmap-of-surjective-source-edition-2.md) | 472 | `result-track:6d1d7a035f9a49bad75cec83a64e2e1df6685dd0cb053191b2c4d07db73f01c3` |
| 27 | `theorem` | [isOpenQuotientMap_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isopenquotientmap-of-surjective.md) | 479 | `result-track:22e605e4da5525283afba6f45c2e193ce0084419273c827dfb0eff1f10ddd1eb` |
| 28 | `theorem` | [isOpenMap_of_surjectiveₛₗ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isopenmap-of-surjective.md) | 486 | `result-track:2a6a6b6b5e5930f10202bad31c5d7b343f4b7dca41c6d3ff078044a82ad8f289` |
| 29 | `theorem` | [isOpenMap_of_surjective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/isopenmap-of-surjective-source-edition-2.md) | 499 | `result-track:5804d0712a86be2753cfc63e1eb90ebf4db135226d14334f82774b613db49adf` |
| 30 | `lemma` | [Module Module Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/eq-coinduced-of-surjective-source-line-504-occurrence-2.md) | 504 | `result-track:da32aadd6b32af9128258e59413a4586bec9dfdd9df53dd1058f91ec9776ce4f` |
| 31 | `lemma` | [Module Module Topology Namespaced Public](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/eq-coinduced-of-surjective.md) | 511 | `result-track:44750699cd28fea34eb2a4400eda99cf386411bca959ef5581fd81731c708181` |
| 32 | `instance` | [instQuot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instquot.md) | 516 | `declaration-track:fde80f12827d77077747f686e9ba388b99e0f8b262111a3d121e517d7fd7caf2` |
| 33 | `instance` | [instProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instprod.md) | 533 | `declaration-track:070721067b02d371641c9a1cc8e863b1eaf6a1a54b9ed97bcc109fa78aee8bb0` |
| 34 | `instance` | [instPi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/instpi.md) | 576 | `declaration-track:ee696fb1653d3a16c12bc9315892d7770a74fb283fc0376423ae4a6e412f44f4` |
| 35 | `theorem` | [continuous_bilinear_of_pi_fintype](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-bilinear-of-pi-fintype.md) | 621 | `result-track:a134e795b7a6e12d5412aa589d4be509bb6b31963237854adb5d2241d86ccf92` |
| 36 | `theorem` | [continuous_bilinear_of_finite_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-bilinear-of-finite-left.md) | 657 | `result-track:3f624d3b9363d9c7aaf2236e645c5afb2d746d5bc97ded6e3a1f8bcf3c531de1` |
| 37 | `theorem` | [continuous_bilinear_of_finite_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-bilinear-of-finite-right.md) | 676 | `result-track:d0c5cd00ac6e467584620bf9e4f29071256daec0ec6d69db8ea3bf97afd22ca4` |
| 38 | `theorem` | [continuous_mul_of_finite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/continuous-mul-of-finite.md) | 697 | `result-track:e9492e08627c75131fe95605be4b6de03fac73b16916a36222ec41cbe2525e62` |
| 39 | `theorem` | [isTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/ModuleModuleTopologyNamespacedPublic.lean/declarations/istopologicalring.md) | 704 | `result-track:ba7db894531186e018934c5eb28ef103fab682327b1b86e4a2fc32aada3b9ebe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a4b4cc1b8f824b74d35c98f2d11c9d4f396848d5a695226ece9c81f3023ed376 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/ModuleTopology/Variantceda11350e08b17db55fa50a730b318b8e36a5747caf75b0fd2bd9da4728e9a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
