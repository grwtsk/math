# Verification target: Cartesian Grp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfface652db09297d6826da5765e2aa546d74e63",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantc681c60ad7265e44216b8b7d8317be10e390807fd02daf12a378ff6b93296975.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfface652db09297d6826da5765e2aa546d74e63`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantc681c60ad7265e44216b8b7d8317be10e390807fd02daf12a378ff6b93296975.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantc681c60ad7265e44216b8b7d8317be10e390807fd02daf12a378ff6b93296975.lean.json)

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
| 1 | `def` | [GrpObj.ofRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-ofrepresentableby.md) | 35 | `declaration-track:d1d654f9f62cd3c4229d90c8d5f67023661b8844abded91ff456f42c79b55487` |
| 2 | `abbrev` | [Hom.group](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-group.md) | 59 | `declaration-track:533a5538f3fbb174d968bdf61f90bb7f6a69ce02de4660f320cb47787de075d5` |
| 3 | `lemma` | [Hom.inv_def](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-inv-def.md) | 70 | `result-track:3bf1988b0d665124a52d6fbf6d24483cfb82aa7d5f3e99f6fd4ad11a7ca5fea3` |
| 4 | `def` | [yonedaGrpObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrpobj.md) | 76 | `declaration-track:9ce14524441636a1ba5e2fde9a73a88573c61461984fc70a9c9fb37657e65bc4` |
| 5 | `def` | [yonedaGrpObjRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrpobjrepresentableby.md) | 85 | `declaration-track:20013b7984a1ba81b4de60bfe6c4982dfa5039d6f041ed7643ee794c62ab383b` |
| 6 | `lemma` | [GrpObj.ofRepresentableBy_yonedaGrpObjRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-ofrepresentableby-yonedagrpobjrepresentableby.md) | 90 | `result-track:41e8144e0f8f241ff3f512385f2e68d6e253a6f2981e16c5228e8dc802d3947e` |
| 7 | `def` | [yonedaGrpObjIsoOfRepresentableBy](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrpobjisoofrepresentableby.md) | 103 | `declaration-track:39ca4f9648b1142f005dc522987697b7bc4d7002e7886d69e03178c195362b89` |
| 8 | `def` | [yonedaGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrp.md) | 118 | `declaration-track:2252f9651ac604cb176e61f6ee96000b9046542cc8ebb377e4d1cf0204629cae` |
| 9 | `lemma` | [yonedaGrp_naturality](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrp-naturality.md) | 126 | `result-track:3322914661d790c271200ff9e9072fb8dba1e87c2adfb969413813b82eba3c24` |
| 10 | `def` | [yonedaGrpFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/yonedagrpfullyfaithful.md) | 132 | `declaration-track:f9c4702e4989f442b4f76ff3847651d4d5fbf814bee85806ed785615c307171f` |
| 11 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-6.md) | 145 | `declaration-track:c890ceedee67b936dd6f53dace7cdba5ff846cb79e590149ee3d5aa169228315` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:67b6f8395e087021d11cb726c8308836365d76996f2d21a2112c97065a6ea69d` |
| 13 | `lemma` | [essImage_yonedaGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/essimage-yonedagrp.md) | 150 | `result-track:acdc2752c0ed17bc67b01fc6842955efe75fcb5d8cb2f1f89723c753c80b7fe7` |
| 14 | `lemma` | [GrpObj.inv_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-inv-comp.md) | 161 | `result-track:3e33fa52c8292c39b25fa792c5e76931de434dc396da6ba6626cde43ac774a55` |
| 15 | `lemma` | [GrpObj.div_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-div-comp.md) | 165 | `result-track:87d55a1a49830474f786526a85f6b81f2ad49aec55a848649c902bc8969b59bc` |
| 16 | `lemma` | [GrpObj.zpow_comp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-zpow-comp.md) | 170 | `result-track:c127f6127637ee4783bf3cd058c1b8f9663a60eda1c6e4d7cb414a834d2c3c8b` |
| 17 | `lemma` | [GrpObj.comp_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-comp-inv.md) | 175 | `result-track:1fb178d5cdf7508c66bfdaa1e702be8960653170ff9bfeb7a6a059467f099c87` |
| 18 | `lemma` | [GrpObj.comp_div](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-comp-div.md) | 179 | `result-track:c7c58d2c117ece0bf54f802199464ef076ed387591931977cfb571b9f918535c` |
| 19 | `lemma` | [GrpObj.comp_zpow](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-comp-zpow.md) | 183 | `result-track:c8dd31520ea37faaf61c37a77e42728b1f6413863bd3cb83ba63d20f6ecbd0c3` |
| 20 | `lemma` | [GrpObj.inv_eq_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-inv-eq-inv.md) | 188 | `result-track:937cf6669f34deb06b6bf665de6c9f973604d86a83a9a777f3684611cdcf50c9` |
| 21 | `lemma` | [GrpObj.one_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-one-inv.md) | 191 | `result-track:58c8f2df701a3887d33d0fd4729127e4b027cd6a516cda705785b1e96177d368` |
| 22 | `lemma` | [Functor.map_inv'](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/functor-map-inv.md) | 198 | `result-track:51cc3e6c8d0822c4a13026bf0eabf327e2ab49aafb505adecbc010579cdc1c05` |
| 23 | `def` | [GrpObj.conj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-conj.md) | 208 | `declaration-track:e4d27e01d50e4bb2e6f91962b6f439a8d64c2163283c6c5b8c58aff2d3dffe26` |
| 24 | `lemma` | [GrpObj.lift_conj_eq_mul_mul_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-lift-conj-eq-mul-mul-inv.md) | 212 | `result-track:869e04b9fe9f2daba11e72b0b61bce858ae4b34ac26ce62acd766f0f4e2365de` |
| 25 | `def` | [GrpObj.commutator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-commutator.md) | 225 | `declaration-track:5bae394e6ca7ffdd760cb0908a950a9d1f5ababa2ff8f509d42b6e74537f8814` |
| 26 | `lemma` | [GrpObj.lift_commutator_eq_mul_mul_inv_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-lift-commutator-eq-mul-mul-inv-inv.md) | 229 | `result-track:e81bd1c786d52c8edf750f6b0a8caa7c5035878b2412beef9cd04255d08f4160` |
| 27 | `lemma` | [GrpObj.η_whiskerRight_commutator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-whiskerright-commutator.md) | 234 | `result-track:725bd66bc06b27232024f7bd73e2f69cce4d544a08f49e027aecde631902cd62` |
| 28 | `lemma` | [GrpObj.whiskerLeft_η_commutator](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-whiskerleft-commutator.md) | 238 | `result-track:5b6748f123eb28781d327358c726bf8ad49570316eb1759b5bafbe1638639d71` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-7.md) | 244 | `declaration-track:cfb4f69d2ff652559d5c9d1b4ccde6aebbb5a5eac0dafed45752db2b2197e1f9` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-5.md) | 250 | `declaration-track:bda53beee87a073a3eed2b15470c23025e5952921c6ae45c560a7fd5093d9a6f` |
| 31 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-3.md) | 256 | `declaration-track:760a425f4d6327c5ad8c4b8aaadd41efa9128a1adaecbc5c10bb6035ea6eca50` |
| 32 | `lemma` | [hom_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-one-source-edition-2.md) | 261 | `result-track:54d7589075fe5072c353032973a85f7bf06d36f33c9aa64e982be812c4578cd1` |
| 33 | `lemma` | [hom_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-mul.md) | 263 | `result-track:b3e9cf427b197fb68691510b1ef2e154bb77e66b1e243666a5845ed727164b23` |
| 34 | `lemma` | [hom_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-one.md) | 268 | `result-track:4c0f352fcbd717b935901baf34d0e99db75ffedc9163bc0fe4e337dc1d9bb4e1` |
| 35 | `lemma` | [hom_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-mul-source-edition-2.md) | 270 | `result-track:dc37176472167683849663ab1d63d919ba4fb18b9a4b9c94cca641a5b408c738` |
| 36 | `lemma` | [hom_pow](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-pow.md) | 272 | `result-track:bb19405c1b0288352cc1d58588074bb72d968ea045e4acd0170bf9f2d2c6b5da` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance.md) | 282 | `declaration-track:518eb6ad70e3a93d73405ca1d0bb8ace51d385a1b847a4fdf6cda701ea611a2e` |
| 38 | `lemma` | [hom_hom_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-hom-inv.md) | 287 | `result-track:922e5ec6349105e382a22a81f4ce3eb38da17c8715bb3bbea44c9293e3e40ba2` |
| 39 | `lemma` | [hom_hom_div](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-hom-div.md) | 289 | `result-track:cf8cfd0523266162fcf8bbb7bc169f425918d0dac8821a34c14a091d571d4e6f` |
| 40 | `lemma` | [hom_hom_zpow](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-hom-zpow.md) | 291 | `result-track:d2d6badd9283becf1bee6fec38ef97c917af8ef18892299e2c8e17fe81c4edc7` |
| 41 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-8.md) | 300 | `declaration-track:ef5dce6aaeeac0bb86b8f1504470c1e6fb50302f95e2268568702f98f5c56645` |
| 42 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/instance-source-edition-4.md) | 303 | `declaration-track:95ba283f4f3f96a7582dc23fb46151710a617ea92d934580a9fc836cec6cdc5a` |
| 43 | `abbrev` | [Hom.commGroup](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/hom-commgroup.md) | 311 | `declaration-track:ba17e34eabd8457484b2924e8d5347cf61cd7ff20fe7323f514f1a4f81fec3f3` |
| 44 | `lemma` | [GrpObj.conj_eq_snd_of_isCommMonObj](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/grpobj-conj-eq-snd-of-iscommmonobj.md) | 319 | `result-track:e92141b9d7817578ddbb8fe89cc70598bab16fe8ae6ea6dfec3b8249b22b8884` |
| 45 | `lemma` | [isCommMonObj_iff_commutator_eq_toUnit_η](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/CartesianGrpPublic.lean/declarations/iscommmonobj-iff-commutator-eq-tounit.md) | 327 | `result-track:5241123eb70d09b788e31d4f663c86bd41cc010d3357f5b6a38f88c39b3f9794` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fa88ba9b4bca956a7d4ec3144d36bc535db99a1821fc9ae9995ea168160168e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantc681c60ad7265e44216b8b7d8317be10e390807fd02daf12a378ff6b93296975.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variantc681c60ad7265e44216b8b7d8317be10e390807fd02daf12a378ff6b93296975.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
