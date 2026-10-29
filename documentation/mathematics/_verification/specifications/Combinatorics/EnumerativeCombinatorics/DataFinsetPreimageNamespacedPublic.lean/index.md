# Verification target: Data Finset Preimage Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0517ae93f2847f018e1218f01014bfb504ea779",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0517ae93f2847f018e1218f01014bfb504ea779`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean.json)

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
| 1 | `def` | [preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage.md) | 39 | `declaration-track:59705cd9db56a4f5802c287e666fbbf190010d955cf0dfe76f3c235d898dfbd4` |
| 2 | `theorem` | [mem_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/mem-preimage.md) | 43 | `result-track:bc6bdb0f9d2601a7d2d835e4cdae0b1e535a37ebcb75eea3784dd2b820e80626` |
| 3 | `theorem` | [coe_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/coe-preimage.md) | 48 | `result-track:b2abf8701498425be2a653d2c21c2d8d7dc3cd36cd9b77e91bf0d3ae4df1ab3b` |
| 4 | `theorem` | [preimage_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-empty.md) | 53 | `result-track:698b8d24a442da714df494de56528f01dcda78562d32a5e30742ede2f8e49900` |
| 5 | `theorem` | [preimage_univ](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-univ.md) | 57 | `result-track:db14d3f45ac0687f9d3079ddbbb52a687ad2b1978ae9dc75a0c02c1b161f77fc` |
| 6 | `theorem` | [disjoint_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/disjoint-preimage.md) | 61 | `result-track:badfccb1696856e832dd629f59f0da53e8c2e9d2ecd50e16753f2efc7aab6d24` |
| 7 | `theorem` | [preimage_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-inter.md) | 68 | `result-track:397061a7273c9284a9ca97d7b60f910173d0d9c87ee2a4bbb2e0ddf6d3e0e31c` |
| 8 | `theorem` | [preimage_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-union.md) | 77 | `result-track:ab1cb1fbde647e2060fb4a88718d8c01c8ac2557d6aa69d33497cd72103a4fff` |
| 9 | `theorem` | [preimage_compl'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-compl-source-edition-2.md) | 84 | `result-track:78776f4a59ccc92b2f8c9b742583d651d2e2d2ed42f9163a8c244294bf09924b` |
| 10 | `theorem` | [preimage_compl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-compl.md) | 90 | `result-track:65ef1ec5f8b86b989a51315346216b3983ce49c53a4ef9c77fbc3714fc74f72f` |
| 11 | `lemma` | [preimage_map](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-map.md) | 96 | `result-track:a3135f4544840a3a59485eeb44fde71c57f4e0cfbe71b321072b0d0e80f92d75` |
| 12 | `theorem` | [monotone_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/monotone-preimage.md) | 99 | `result-track:f8ccf8c14fd0b54e6854511bf4de559b18e9efbf35b55c862b2d5d3ee01025c7` |
| 13 | `theorem` | [image_subset_iff_subset_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-subset-iff-subset-preimage.md) | 103 | `result-track:c7dc36978f0352ded04f9170885b872cf4bc11a5213040158ac1e13accf63b64` |
| 14 | `theorem` | [map_subset_iff_subset_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/map-subset-iff-subset-preimage.md) | 107 | `result-track:b53a664254d2665e4c4ad16a564edeb472f246015b6ec016f468f4a30a197745` |
| 15 | `lemma` | [card_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/card-preimage.md) | 111 | `result-track:579e669137717df2c3b167d8d80f41e022a660fe573526f52799657634018be8` |
| 16 | `theorem` | [image_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-preimage.md) | 115 | `result-track:1a65bc1895a3752a176d9b54aab56b79f0e6a8589783191e1a3cd41c3a5b545b` |
| 17 | `theorem` | [image_eq_preimage_of_leftInvOn_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-eq-preimage-of-leftinvon-injon.md) | 121 | `result-track:8a928cd2f61a09463b0cd2380d8bbe7c555d666336cb11041bfb7ed883a1eed5` |
| 18 | `theorem` | [image_preimage_of_bij](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-preimage-of-bij.md) | 127 | `result-track:6b4050eb42b21366b1c93af420c52038b220ae5949a5c66d682b612ecc831a4e` |
| 19 | `theorem` | [image_preimage_of_bijective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-preimage-of-bijective.md) | 131 | `result-track:24ae36275a85bf44b7689c9d652133c64d10a441f537e1566a9b688af00f9ec8` |
| 20 | `lemma` | [preimage_subset_of_subset_image](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-subset-of-subset-image.md) | 135 | `result-track:e2b54e3b4b67ff9f764652a36639c76c896f85c76f8196d217a8d0353d547f11` |
| 21 | `theorem` | [preimage_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-subset.md) | 139 | `result-track:ce312c87c496c55d975f7b55240004b178c78b61a086558c34c472556b3cbc1a` |
| 22 | `theorem` | [subset_map_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/subset-map-iff.md) | 142 | `result-track:511178cdda1d4d8581d4af91c46753560e13a3d925d065afeb5671f48d1f21cb` |
| 23 | `theorem` | [image_eq_iff_eq_preimage](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-eq-iff-eq-preimage.md) | 147 | `result-track:01ad531ac62aa584d4328a72631925f656089e27fbc487eb7f422c9df313815e` |
| 24 | `theorem` | [sup_preimage_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/sup-preimage-self.md) | 153 | `result-track:869bc1817a201fab555bee5e58a5a29b2563cb49e81fee5d538c5b679854f165` |
| 25 | `lemma` | [sup_preimage_val_id](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/sup-preimage-val-id.md) | 162 | `result-track:c1344052b96e46bed75a5a4e4a6562ef864d48f552602f81a02a4d8e72cd3738` |
| 26 | `theorem` | [sigma_preimage_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/sigma-preimage-mk.md) | 176 | `result-track:e94fb168bb2b91008cc17d554ccd3c9b80769d5ded5726b9f223f0c5dd49d4e0` |
| 27 | `theorem` | [sigma_preimage_mk_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/sigma-preimage-mk-of-subset.md) | 181 | `result-track:500d94194e8e97ff12594ed9a9ff03fa4e94667173fcef9da6a0242ffa8022e2` |
| 28 | `theorem` | [sigma_image_fst_preimage_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/sigma-image-fst-preimage-mk.md) | 186 | `result-track:9708edb22d0703944f870a63ea97c305c2548dc42089336d3057c152878e0524` |
| 29 | `lemma` | [preimage_inl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-inl.md) | 191 | `result-track:7969081279e18a6e8a12901d33bc34b19344aa4ae479f7594576b2bd6fc7a373` |
| 30 | `lemma` | [preimage_inr](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/preimage-inr.md) | 195 | `result-track:325b6dd63a2950ccb0f28fb428018c0233dffc4c7e8f3a4446d4a8f54083b126` |
| 31 | `def` | [restrictPreimageFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/restrictpreimagefinset.md) | 207 | `declaration-track:c319a7b75cb4eeadbf2370d926bc56e94dc9aa9e79a2529ac3c20039be4dfe81` |
| 32 | `lemma` | [image_symm_eq_preimage_of_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-symm-eq-preimage-of-finset.md) | 213 | `result-track:0b92759735584d3c4ccfdcf8f5b779354aea891c6500806fac3d83f412ddf9f7` |
| 33 | `lemma` | [image_eq_preimage_symm_of_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/image-eq-preimage-symm-of-finset.md) | 217 | `result-track:4fe0a00168af4844659f36cd5fa4c9dcbfdce3aa789066d8af65683aebbf0cd3` |
| 34 | `lemma` | [Finset.restrict_comp_piCongrLeft](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetPreimageNamespacedPublic.lean/declarations/finset-restrict-comp-picongrleft.md) | 225 | `result-track:f8dfc195bc3925a21c5be66afd82de4d1962e79606ee7fbe06bdab74061e5e3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=176c4a5c004349297559792866a4b0286114e6be854f8dfa1a67f6177cb4bdb0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Preimage/Variant4ea814d6cf89468ae9c5f0922cff2c7f42ccc0008388d7f3d8cfac65274af69d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
