# Verification target: Tate Cohomology Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1aaf97fd8f9dd3f9da3f5e55e1f02f85831d8b0c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant1a370632637c01fc2b7a55218bd68faf0cbcfedf87eaa2cc2e7c4e45b2f611cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1aaf97fd8f9dd3f9da3f5e55e1f02f85831d8b0c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant1a370632637c01fc2b7a55218bd68faf0cbcfedf87eaa2cc2e7c4e45b2f611cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant1a370632637c01fc2b7a55218bd68faf0cbcfedf87eaa2cc2e7c4e45b2f611cb.lean.json)

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
| 1 | `def` | [Rep.tateNorm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-tatenorm.md) | 71 | `declaration-track:940d4503f2ddbaf394f1b023a16909fe9bcf85f4e9e4fd5112fa7be5b04ba78a` |
| 2 | `lemma` | [Rep.tateNorm_eq](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-tatenorm-eq.md) | 74 | `result-track:629a8a645d45c6b2e6bf8831321f9520713fce58201bdc94d82efc80070f0745` |
| 3 | `lemma` | [Rep.norm_comp_d_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-norm-comp-d-eq-zero.md) | 80 | `result-track:b456241410f40eaee4089d967659c383c5e340c047efbd9af5bd6c78f2f8117e` |
| 4 | `lemma` | [Rep.tateNorm_comp_d](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-tatenorm-comp-d.md) | 84 | `result-track:cfa36d14c313c2b6a721c06be80dae1924e9465dc9da0b87dc0ae189de38aa6c` |
| 5 | `lemma` | [Rep.comp_eq_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-comp-eq-zero.md) | 88 | `result-track:22467f2158955fc12bc5b3a5caceecd476352dc888b42383d12ca8f3cf2e280e` |
| 6 | `lemma` | [Rep.d_comp_tateNorm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/rep-d-comp-tatenorm.md) | 92 | `result-track:7b8d764b8ff3305190f0f4ae5f035adadc19130db446037e07babfe15247731c` |
| 7 | `def` | [tateComplexConnectData](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplexconnectdata.md) | 98 | `declaration-track:ffc85db1bddb5e016980028532fedca3ca715981919b9813e69ffc67db28ecd8` |
| 8 | `abbrev` | [tateComplex](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex.md) | 105 | `declaration-track:fb7e45b9b62cda0f63caf1947eb30a98273c8f3c84435a00d0a86c99e91c52db` |
| 9 | `lemma` | [tateComplex_d_neg_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-d-neg-one.md) | 108 | `result-track:2d73fa2f15a1afb374b84dbff279589b007d46dee69aa404aef9712e7897862b` |
| 10 | `lemma` | [tateComplex_d_ofNat](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-d-ofnat.md) | 110 | `result-track:908163d21b8a30a5f113814cbf460b41c5f95317e424452dd38a1e2f77782c38` |
| 11 | `lemma` | [tateComplex_d_neg](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-d-neg.md) | 113 | `result-track:014dfe8da737b85b3ce8e63f94ab4f306ad0478f02e51724afc1323963ed11e5` |
| 12 | `def` | [tateComplex.map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-map.md) | 118 | `declaration-track:9abd15c6f850ec1e091538f1c9bbd090c9079fb613979e6359d699c2fc5fecb3` |
| 13 | `lemma` | [tateComplex.map_zero](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-map-zero.md) | 124 | `result-track:a41509c480d9eceda65f7a9b1c33019932db86acd0f19e2393142576fb933fe0` |
| 14 | `lemma` | [tateComplex.map_add](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-map-add.md) | 127 | `result-track:1eaef8d1103418609d460aa7a016fdd8f8c8e4e458e6721fc73a9b2cd1bc6bbb` |
| 15 | `def` | [tateComplexFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplexfunctor.md) | 140 | `declaration-track:3a0377abac32e9c5442a39d35b3f3cc8cf2083e324914412d6a7b7c0114f0b0b` |
| 16 | `def` | [tateCohomologyFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecohomologyfunctor.md) | 148 | `declaration-track:a74b1bc5f1379f20c3722a9ec2d42d7c43adc963d734cf89e69f6e47b6fe8a1e` |
| 17 | `abbrev` | [tateCohomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecohomology.md) | 153 | `declaration-track:d1f330c858ed9e06721de4db21e9c387731dc576607f2db3bc751c2de2073f99` |
| 18 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/instance.md) | 160 | `declaration-track:5fafecf239d150c43a07b90d25614e6f27b68df345526104da30aff0d4847757` |
| 19 | `def` | [tateComplex.evalNonneg](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-evalnonneg.md) | 165 | `declaration-track:722915fb14362395aa286ce99df5e20701b104220317ff08b785549b1631c56e` |
| 20 | `def` | [tateComplex.evalNeg](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/tatecomplex-evalneg.md) | 172 | `declaration-track:b2c0e14a2b6b4fd6c128412c38597fd5893abee686621824bf91d3e369080b59` |
| 21 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 177 | `declaration-track:e69368d14ab7b4e788e6d752d0d4449b6084001c466d1f2dad2ebfe91b6fd56c` |
| 22 | `lemma` | [map_tateComplexFunctor_shortExact](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/map-tatecomplexfunctor-shortexact.md) | 179 | `result-track:b4b689dbe850a9b1e020ce4839135bf31310d325ce8d71ad62d33193be1c7ad1` |
| 23 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:699e36d847048720c7ce04a4f9d5b85abda15e70b57212887a59cda3d92afdcf` |
| 24 | `instance` | [preservesFiniteLimits_tateComplexFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/preservesfinitelimits-tatecomplexfunctor.md) | 193 | `declaration-track:7773e5afb11b1437b8560397fe724e3e620093d32f098478d23f4ae1818ddc4d` |
| 25 | `instance` | [preservesFiniteColimits_tateComplexFunctor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/preservesfinitecolimits-tatecomplexfunctor.md) | 198 | `declaration-track:d5cadf3bc2fed9740d61e5ba5d4b3f9f48cd4dc58071099d25847d04c2fc15a9` |
| 26 | `abbrev` | [δ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/anonymous.md) | 207 | `declaration-track:cd976c2bf6b6c9cc1bb3d8fa2a6a1dce4a5b2d24fa9abdc7fe921242f0c3ba9c` |
| 27 | `lemma` | [map_δ](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/map-source-edition-2.md) | 213 | `result-track:f695c184d468038149881971d19a42ea7dad3e9b0d2b09d4f839aa30568d42fc` |
| 28 | `lemma` | [δ_map](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/map.md) | 217 | `result-track:c188983035ed5716cff64e6d32d739c92898f21bbc238010261f335c5d6b0af2` |
| 29 | `lemma` | [exact₃](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/exact.md) | 221 | `result-track:798b71650c9f5e07a85029c35d18a3d619a327681ea6d709b1a99b048d101b0d` |
| 30 | `lemma` | [exact₁](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/exact-source-edition-2.md) | 225 | `result-track:f3f80819d6e0ff9076f9834f8d54b63570f19158b83bd882a6799d24fbfb66c1` |
| 31 | `lemma` | [δ_naturality](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/naturality.md) | 229 | `result-track:6b88160478820bdce4351e4018ad40405d593a9a2ebfe198e172a4998a4cff2f` |
| 32 | `def` | [isoGroupCohomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/isogroupcohomology.md) | 240 | `declaration-track:8dc0558ab180d5360e4553318b940ab35dfbbcf731f36842dd9e622973cc3b25` |
| 33 | `def` | [isoGroupHomology](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/TateCohomologyBasicNamespacedPublic.lean/declarations/isogrouphomology.md) | 248 | `declaration-track:80e147fb580e55d0efa15c27f06caeb87252373e0b44484dc980a1f2a0b00a38` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=091ce87b337d5b81dd4fc0ca406a527b796efafab8e70030a7270429869c979a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant1a370632637c01fc2b7a55218bd68faf0cbcfedf87eaa2cc2e7c4e45b2f611cb.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Basic/Variant1a370632637c01fc2b7a55218bd68faf0cbcfedf87eaa2cc2e7c4e45b2f611cb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
