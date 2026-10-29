# Verification target: Coset Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17575735a218e0e4ddda4336f57576e40bbab48b",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17575735a218e0e4ddda4336f57576e40bbab48b`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-leftcoset.md) | 64 | `result-track:8933bbcdda601756c73335e114e41a3bc14199450867fc1469abeb6cb46597ef` |
| 2 | `theorem` | [mem_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-rightcoset.md) | 68 | `result-track:a23cd54cbd88c50930693b5bf05dc86add4e1018431f95067cac6741bd78bc72` |
| 3 | `def` | [LeftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcosetequivalence.md) | 73 | `declaration-track:98030ba9a9e48096d61b7bfddbce05e8658b5b436063b0a4cbd86eeaf098a8b4` |
| 4 | `theorem` | [leftCosetEquivalence_rel](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcosetequivalence-rel.md) | 77 | `result-track:8d6474be8670d004260122d622c8cd92d9eda14ccdca4b3d90d0817a702335fa` |
| 5 | `def` | [RightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcosetequivalence.md) | 82 | `declaration-track:beba42944ff6011d08d79b4f80822bc82e49d0a43f2d67d0021199675b125358` |
| 6 | `theorem` | [rightCosetEquivalence_rel](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcosetequivalence-rel.md) | 86 | `result-track:bd8625e77dbdd0a0c7aad53f0374ffc4c3f4ceb68bdb9f74f6f22b2a253c58a3` |
| 7 | `theorem` | [leftCoset_assoc](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcoset-assoc.md) | 96 | `result-track:65f7f9598333368deacffbc487e35fb46462a9d023a310d154e67a75a242b7d2` |
| 8 | `theorem` | [rightCoset_assoc](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcoset-assoc.md) | 100 | `result-track:cb929358a53a44b8b35524457f604ff0449c583ea9f0732f6bfd0c3fc2b3c586` |
| 9 | `theorem` | [leftCoset_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcoset-rightcoset.md) | 104 | `result-track:4be0fbec00e7683cc4f1969eaf91c7d566fd78299fac8d0d3e211e3f205a4980` |
| 10 | `theorem` | [one_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/one-leftcoset.md) | 114 | `result-track:47d9d41e6a2118edf952c36dc8bb2db88db56a64a6f595a21d9aba217366c917` |
| 11 | `theorem` | [rightCoset_one](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcoset-one.md) | 118 | `result-track:d5d258a1898c28f1bc55f64f9ddfd7c94ad69ee212619708735606cc56310675` |
| 12 | `theorem` | [mem_own_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-own-leftcoset.md) | 130 | `result-track:082abf0aa90c0e12e5bde7fd2d51a7b85b5a4fc74fe37f7ddd9d1a58800e3919` |
| 13 | `theorem` | [mem_own_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-own-rightcoset.md) | 135 | `result-track:ead1cd0d10102cbc18928e3533bb96c7d0510582bf41dd2f53ec6a95301cb18b` |
| 14 | `theorem` | [mem_leftCoset_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-leftcoset-leftcoset.md) | 140 | `result-track:5c1a9f398b9fb5e5a93b1ccd11c4759080d2cd43b63c875c1788eb698f177bfb` |
| 15 | `theorem` | [mem_rightCoset_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-rightcoset-rightcoset.md) | 144 | `result-track:597f52b1a35f45d8a9cb1c326069c9c2a1b3aaa4025e6afad264343690440a79` |
| 16 | `theorem` | [mem_leftCoset_iff](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-leftcoset-iff.md) | 154 | `result-track:f53d736e94637e7d39e277a88e6b9ebe284d98a40a5316f246c04185855079d4` |
| 17 | `theorem` | [mem_rightCoset_iff](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/mem-rightcoset-iff.md) | 158 | `result-track:514f9ec65e91ed5bba97a4036674f21c937b7c69bbdcf9350570e84332e28872` |
| 18 | `theorem` | [leftCoset_mem_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcoset-mem-leftcoset.md) | 170 | `result-track:1514a7c879a8a666f068cdb3e551966795bdb6a33034e289ab87cf582a062f05` |
| 19 | `theorem` | [rightCoset_mem_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcoset-mem-rightcoset.md) | 174 | `result-track:36ed0d39e5c5c652c0c61516baabfedac997720e5f7677f74d3aa62025a952ff` |
| 20 | `theorem` | [orbit_subgroup_eq_rightCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/orbit-subgroup-eq-rightcoset.md) | 178 | `result-track:6a99bf28f77a42acf46dd49561bbf0ce603443d32f7fd5fcb785339fa6058a99` |
| 21 | `theorem` | [orbit_subgroup_eq_self_of_mem](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/orbit-subgroup-eq-self-of-mem.md) | 182 | `result-track:32a24aaf39d3404b8c8e33720513a6566f6171a5a89f8772d6ab666aafa3a5be` |
| 22 | `theorem` | [orbit_subgroup_one_eq_self](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/orbit-subgroup-one-eq-self.md) | 186 | `result-track:90db99d30ad596cfacba9569eec0d92a6f2caa1958aec849decc437b8133b08d` |
| 23 | `theorem` | [eq_cosets_of_normal](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/eq-cosets-of-normal.md) | 190 | `result-track:fa86a88ca0972e8e2c27648becc94a7ef0118beaae34c406f7ac6fb92e76b4d7` |
| 24 | `theorem` | [normal_of_eq_cosets](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/normal-of-eq-cosets.md) | 194 | `result-track:25e8347116a1ccea5249f50a1f3a5d6a4548df6e2d86f7554f9853bc1fb4db95` |
| 25 | `theorem` | [normal_iff_eq_cosets](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/normal-iff-eq-cosets.md) | 199 | `result-track:8620ac65f89ad9a18701aab1e24c78070feb5a8d3bc39cfbf71aaa67bd7426ab` |
| 26 | `theorem` | [leftCoset_eq_iff](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcoset-eq-iff.md) | 203 | `result-track:cf530188d52c7f56e043739ffa41fb5535584781292387bc39fbe53ca99ae1c4` |
| 27 | `theorem` | [rightCoset_eq_iff](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcoset-eq-iff.md) | 217 | `result-track:fb9832c15a5cbe24f5f407773a651fc825ac839f2b39ce45f5c3b9d2d5c8a730` |
| 28 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftrel-r-eq-leftcosetequivalence.md) | 236 | `result-track:853651cf764376549751a63ba7c0e7af70bc866613f01f175197bb24051032f1` |
| 29 | `lemma` | [leftRel_prod](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftrel-prod.md) | 243 | `result-track:0591bca94ba4f41e103f9b46acc96b58833fa7e8d429ad512e99d0af2e8e8c7e` |
| 30 | `lemma` | [leftRel_pi](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftrel-pi.md) | 251 | `result-track:377bd73f7ae124fd5616f8e76be20b4d45449a3df8e9ebda92277751399200dc` |
| 31 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightrel-r-eq-rightcosetequivalence.md) | 256 | `result-track:b8698824fabadf421480e1ccf2903c801da536a79438216c1e51880a8a6cdcf4` |
| 32 | `lemma` | [rightRel_prod](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightrel-prod.md) | 263 | `result-track:eba2bfaeaabccfe9abefc32c56ff00c0789b4fc9ff7a00ebbaedfbf3009ce3e0` |
| 33 | `lemma` | [rightRel_pi](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightrel-pi.md) | 271 | `result-track:3c6118d085733eecc1ee431714632c967cad7f75d8f9c9dc579cec954fadaa75` |
| 34 | `theorem` | [strictMono_comap_prod_image](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/strictmono-comap-prod-image.md) | 291 | `result-track:88756bed8d5e2126135bc1029bc053b35e0f778d9722fdb775fc089ed3a06016` |
| 35 | `theorem` | [eq_class_eq_leftCoset](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/eq-class-eq-leftcoset.md) | 302 | `result-track:1945a0ca4dee3ac695fe07d31cdadbdb39de3161d278c63a4aa2ae5a8419077c` |
| 36 | `lemma` | [orbit_mk_eq_smul](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/orbit-mk-eq-smul.md) | 309 | `result-track:7ca8fae54106c08f7c3c78562bfc5e69962dd55945f736901c79ca6b6682519f` |
| 37 | `lemma` | [orbit_eq_out_smul](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/orbit-eq-out-smul.md) | 315 | `result-track:f4f6b50266853ca800850b069685c71b58ca4ab2e6966cff8b0a2f82efdc18f9` |
| 38 | `def` | [leftCosetEquivSubgroup](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/leftcosetequivsubgroup.md) | 329 | `declaration-track:cdcc8f30a470c517b0bdbed8135602c04d3e30a5fc416b86d8492540f121e5a7` |
| 39 | `def` | [rightCosetEquivSubgroup](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/rightcosetequivsubgroup.md) | 335 | `declaration-track:9e39847cd4342a0780a1000a2b15878138387da4632a618cd102e895d23a602b` |
| 40 | `def` | [groupEquivQuotientProdSubgroup](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/groupequivquotientprodsubgroup.md) | 342 | `declaration-track:25691c64c00a72512aaa29446324d0fba5e9bd5ce165f79254232f67fb506c27` |
| 41 | `def` | [quotientEquivProdOfLE'](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientequivprodofle-source-edition-2.md) | 363 | `declaration-track:e34b9893a28f2f22d930608290e09319e79abb0d977b1a20cd034747a9fb2f30` |
| 42 | `def` | [quotientEquivProdOfLE](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientequivprodofle.md) | 394 | `declaration-track:c803a70e6bc499b0229cf4d30242eba38017b9b6dfbd59c9d1e6be68e384600e` |
| 43 | `def` | [quotientSubgroupOfEmbeddingOfLE](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientsubgroupofembeddingofle.md) | 400 | `declaration-track:3315448b2b9a71e58d3ad839867ed0a304b972fdd71c0344c0b25be4f8fa0178` |
| 44 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientsubgroupofembeddingofle-apply-mk.md) | 412 | `result-track:eafdf7bc8efb6eec4e72c2460ec670bdaf780193a7d6aba7db916438853dfa81` |
| 45 | `def` | [quotientSubgroupOfMapOfLE](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientsubgroupofmapofle.md) | 419 | `declaration-track:7d385dd6e3a11080fdcfb65e44b7afcbef8cd620a1ac3a741fdd1614e337a903` |
| 46 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientsubgroupofmapofle-apply-mk.md) | 426 | `result-track:40f8817eaddca9b07d7526aee38a6d9d7cad4b1320d8d3ec037508ac0e42f308` |
| 47 | `def` | [quotientMapOfLE](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientmapofle.md) | 432 | `declaration-track:bbbc38a62f8352918e6eb99eb48018bcaeda427522d84ffa099d62cc84fd032a` |
| 48 | `theorem` | [quotientMapOfLE_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientmapofle-apply-mk.md) | 438 | `result-track:5ce14f62dc5d73c88d6c97f2797a87d6ad276d37dda98fd1523ec5a0e0d6aa7e` |
| 49 | `def` | [quotientiInfSubgroupOfEmbedding](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientiinfsubgroupofembedding.md) | 445 | `declaration-track:b9af4a196d1e4b0cc593fec05871dc057df12ba11d5eb3335eddcbced60f7b8b` |
| 50 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientiinfsubgroupofembedding-apply-mk.md) | 454 | `result-track:10dc7ff598e1a3ea1215a227343949f6634a5d7547d5f7f0481670b6897be214` |
| 51 | `def` | [quotientiInfEmbedding](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientiinfembedding.md) | 461 | `declaration-track:8582abd41beb2e27f27d345dc5f72a26bfea1660d4b65ec31b05e6119187b4cb` |
| 52 | `theorem` | [quotientiInfEmbedding_apply_mk](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientiinfembedding-apply-mk.md) | 469 | `result-track:e050998ff5bdc06d6584262cd62e60d2f55d4f4f39338f9cb566faa8dcd3450d` |
| 53 | `def` | [fiberEquivKer](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequivker.md) | 482 | `declaration-track:2c1be439ce3728277f58345e3f2fc8cca89611582c2a5e9adce19eded0514ad0` |
| 54 | `lemma` | [fiberEquivKer_apply](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequivker-apply.md) | 490 | `result-track:8dcde8d605367d8919fbe4c74ffab15d7782cc92d2c335b20bcbf2a9ad4509ac` |
| 55 | `lemma` | [fiberEquivKer_symm_apply](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequivker-symm-apply.md) | 494 | `result-track:15cda34062cbe14d01f1fd4fe54faff0bc0e9fd37593034893596eff6436d9ea` |
| 56 | `def` | [fiberEquivKerOfSurjective](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequivkerofsurjective.md) | 501 | `declaration-track:4878ec3c7e2dd229edca73d87ff3f6161252930ecb4e035003a1ecffe83312a4` |
| 57 | `def` | [fiberEquiv](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequiv.md) | 507 | `declaration-track:b8c1b81b73b56a43d4284f82673426ae374e768b36bb14586428b67196f28b69` |
| 58 | `lemma` | [fiberEquiv_apply](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequiv-apply.md) | 511 | `result-track:3e57357d77e7bdbe43c147f3fd86fd9bec80315deb1c0c544b4257897417465b` |
| 59 | `lemma` | [fiberEquiv_symm_apply](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequiv-symm-apply.md) | 516 | `result-track:e2be6eace28520cdde5f03a3d9b8ee77a3e25f72f07dd3aa72431e070b529635` |
| 60 | `def` | [fiberEquivOfSurjective](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/fiberequivofsurjective.md) | 522 | `declaration-track:44de6faef788b5bc39479bd8cef2c688f26bf653cee6d24586951cd24e9d35e5` |
| 61 | `def` | [preimageMkEquivSubgroupProdSet](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/preimagemkequivsubgroupprodset.md) | 538 | `declaration-track:478e9898938b0095572b041979ab2ef8d9ed65c1246dc078e1cabd545ab24b8f` |
| 62 | `lemma` | [univ_eq_iUnion_smul](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/univ-eq-iunion-smul.md) | 556 | `result-track:f5ff2dbf41065ece141ce4fad912784814c323d85517831df3b43dffb74a7a27` |
| 63 | `def` | [quotientEquivSelf](../../../../GroupTheoryAndGeneralizations/CosetBasicNamespacedPublic.lean/declarations/quotientequivself.md) | 566 | `declaration-track:436bda787b37553d9903a4d8417f40a782ebf2f49ac500e4bda045082965c52a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=453a4c9562461132b19f8d8c6be3055cb5d3da1d9790d34eb38fb6b60218b1c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantf8fef19959726268e69097922d300837648ce6dd8a9e7eea05016d888f596c8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
