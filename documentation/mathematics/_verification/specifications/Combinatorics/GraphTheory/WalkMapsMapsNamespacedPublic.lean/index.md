# Verification target: Walk Maps Maps Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694306045d11b3a2c7a6603d0e0dae6569482e12",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694306045d11b3a2c7a6603d0e0dae6569482e12`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean.json)

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
| 1 | `def` | [map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map.md) | 53 | `declaration-track:3c94f69709caa7c49e2b6ee78ce337b85564df1394478e791d8259ed99f48ad7` |
| 2 | `theorem` | [map_nil](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-nil.md) | 60 | `result-track:b5fcffc9f4db7f4b2f9955c016828dba8d8d915799813b4e29cc26e71515596a` |
| 3 | `theorem` | [map_cons](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-cons.md) | 63 | `result-track:5d57a23ab6bf8ab6b84ed18232837c9882e8a68a7863fb4da413978e308104f1` |
| 4 | `theorem` | [map_copy](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-copy.md) | 66 | `result-track:1f086d0672f7a454d5350bf072785b7f1958825d3e4c728198d9abcf2d5a4f7c` |
| 5 | `theorem` | [map_id](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-id.md) | 72 | `result-track:c0eb92c306206467ffdf5904ca0f6d65ff73c1bd1d897ab376f366849d2d42f9` |
| 6 | `theorem` | [map_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-map.md) | 76 | `result-track:937623149a64cacec14da6414a2210974e9ad1dd7ddad6d58d34263c66632423` |
| 7 | `theorem` | [map_eq_of_eq](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-eq-of-eq.md) | 81 | `result-track:6b5683e98518ad82d48068bd21545753d59ade85c290fe18accc81ad12c81b0c` |
| 8 | `theorem` | [nil_map_iff](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/nil-map-iff.md) | 88 | `result-track:2497dbd8ca661df7cf5a9f7d7b15902fb030d2f10ed87d2edad6bd932a8bb5a4` |
| 9 | `theorem` | [map_eq_nil_iff](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-eq-nil-iff.md) | 92 | `result-track:91ea600825dc45eeac3773535e3abcebc321889fd101d239e7c6582e9d0da4a7` |
| 10 | `theorem` | [length_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/length-map.md) | 95 | `result-track:38d020ddbf598f68920a8fe183ff97a1cf32735c93a5949b3e95842c47c26128` |
| 11 | `theorem` | [map_append](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-append.md) | 98 | `result-track:99b58c6d675c9ff382a76eca8b69bfe737b504e50d21bd38a7f06362e2ab5e0e` |
| 12 | `theorem` | [reverse_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/reverse-map.md) | 102 | `result-track:697100e051b8eb36edbc0c7dc1aaf9610dd2455620fd772c569d1a0321701dc4` |
| 13 | `theorem` | [support_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/support-map.md) | 105 | `result-track:7f1571eb2eabf2a836e790cbe2d5d567c440a159f48d92d6a82480a1ff802163` |
| 14 | `theorem` | [darts_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/darts-map.md) | 108 | `result-track:ab8d89e329138d06a10f8f168228fdbce4d51e3661a70e37360e7dad5cdc9257` |
| 15 | `theorem` | [edges_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edges-map.md) | 111 | `result-track:a29dfe098ad5d73927b05a2b6b505ad19a7a17047909bb67c7c88a85577c85ff` |
| 16 | `theorem` | [edgeSet_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edgeset-map.md) | 115 | `result-track:76317f13a0361731361689d169be3b5f9467172a5f855a7e0b960c8126254314` |
| 17 | `theorem` | [getVert_map](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/getvert-map.md) | 118 | `result-track:bf673273c8b787f7990da1891dafc04a95e127b122b6d528bc70e15fbd21e525` |
| 18 | `theorem` | [map_injective_of_injective](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-injective-of-injective.md) | 121 | `result-track:aba2e17ab2412de6a65492f9b4f2ab8aa33f01fa4a4ea9e7d5086ca0a448a763` |
| 19 | `abbrev` | [mapLe](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/maple.md) | 138 | `declaration-track:15696e86fdc8a4f522e24cb358ef4684e51997a132b2342ff6ba264010e885b2` |
| 20 | `theorem` | [length_mapLe](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/length-maple.md) | 141 | `result-track:1e05999b032fb857039655696ce074166be7e7ded0618a9872442e925dceaf08` |
| 21 | `lemma` | [support_mapLe_eq_support](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/support-maple-eq-support.md) | 144 | `result-track:04b4f369981ae255d44320521ebf78db9a9ecc20de8944fb0667c111b3f3deea` |
| 22 | `lemma` | [edges_mapLe_eq_edges](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edges-maple-eq-edges.md) | 147 | `result-track:9238a55897bab18dfbdb84aa5354bc34be5ecc930548985dc5e1e41fc1d39be6` |
| 23 | `lemma` | [edgeSet_mapLe_eq_edgeSet](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edgeset-maple-eq-edgeset.md) | 150 | `result-track:98c4566e210fc42a4d7e7bb94356fa71289183db4700a6d4e592ec3fdc0987a7` |
| 24 | `theorem` | [reverse_mapLe](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/reverse-maple.md) | 153 | `result-track:9f47c8e183724363de38ccc1316ba0903a05e6c1a26c1a9f33a10ff2a1819b57` |
| 25 | `theorem` | [mapLe_append](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/maple-append.md) | 156 | `result-track:d8e96d21cfe143db9ee6d2b5ecf317dea24eef5ae9883ecf921cebeaca67099c` |
| 26 | `def` | [transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/transfer.md) | 166 | `declaration-track:d14e75b65c8eb986e5ec7445545cdee67e4387d34b143c8eb06c7d2069b6e98c` |
| 27 | `theorem` | [transfer_self](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/transfer-self.md) | 173 | `result-track:26b7d6799f822afe6013a2a596e44ab077d9a45ac3a96f29cb60900bd2ebb315` |
| 28 | `theorem` | [transfer_eq_mapLe](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/transfer-eq-maple.md) | 178 | `result-track:7ca4560fb02eedd0b8945101b78e42852bd548dbafb84dfbd1b776505e54b564` |
| 29 | `theorem` | [nil_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/nil-transfer.md) | 185 | `result-track:be00ab161f0ad0f1d8ed94ae7d592d8b2476e9166cc2896682cd933d8aa9e6fd` |
| 30 | `theorem` | [edges_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edges-transfer.md) | 191 | `result-track:7784510528cd4ab216b8bc3444c9fecf780990d3c04efca9333ac7ef0ab74a78` |
| 31 | `theorem` | [edgeSet_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/edgeset-transfer.md) | 195 | `result-track:37815dc5d79c9b06520cf87247765535dec1fea253181856f6187c674cbe8050` |
| 32 | `theorem` | [support_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/support-transfer.md) | 199 | `result-track:529a0c59af826094f16d2d000a06d5d480ddf32a7027622d4469fc372ba2e5f0` |
| 33 | `theorem` | [length_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/length-transfer.md) | 204 | `result-track:083a84b4e9a2aee717419010ee784c3d25c9f65b2a54b6d788ff8c0592e174ec` |
| 34 | `theorem` | [transfer_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/transfer-transfer.md) | 208 | `result-track:6fa2cc4ff6f07a5f03ea2ff51d763c306069c81ac08f70536cdc43b646d02ebf` |
| 35 | `theorem` | [transfer_append](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/transfer-append.md) | 214 | `result-track:0c91c11b521f91e2ef328bfd002c3cc65b029484a43203e5993f32afd97c6ff8` |
| 36 | `theorem` | [reverse_transfer](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/reverse-transfer.md) | 222 | `result-track:c047f0d94eeaab5ec9204f3ffd228ac60c066d2162bf27a38f490a6910ffcbce` |
| 37 | `def` | [induce](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/induce.md) | 233 | `declaration-track:373e019dc5f15769d7b2c1947203465db21d208caf0651a6948e4cd22c510c8d` |
| 38 | `lemma` | [induce_nil](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/induce-nil.md) | 239 | `result-track:21d606ba3e81382d38cffec7b8e81ad30635ba1a497363fa09cbb147c673c0ec` |
| 39 | `lemma` | [induce_cons](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/induce-cons.md) | 241 | `result-track:6fef308dd74cfac630727bb8c88a1b3479a3ecc7b732c1597b29ee8eae9187fe` |
| 40 | `lemma` | [support_induce](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/support-induce.md) | 244 | `result-track:96e7beac095f8feab11c1fe23332be61b6e73f676a8c9250341abac8dbdaea29` |
| 41 | `lemma` | [map_induce](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-induce.md) | 249 | `result-track:bba515d779088ab77db0a1d0cc0b66f1fc9e9e87d53af0357045e982c3dacdc8` |
| 42 | `lemma` | [map_induce_induceHomOfLE](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/map-induce-inducehomofle.md) | 255 | `result-track:8a14bd0377ae2b5a0b3ee5d25f74c551207600dfe039cce8cbc2ec21fcf622b4` |
| 43 | `abbrev` | [toDeleteEdges](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/todeleteedges.md) | 264 | `declaration-track:fb222ac9f3c5619dbe1aa01cd5a5f838aba4ea84399b66080683fb61cbb3e636` |
| 44 | `theorem` | [toDeleteEdges_nil](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/todeleteedges-nil.md) | 271 | `result-track:2b93aa4448a8bd816367c9b38c9b28b13a0b10cb5ae938207b5b7b5b996d30d2` |
| 45 | `theorem` | [toDeleteEdges_cons](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/todeleteedges-cons.md) | 275 | `result-track:c934d05ec8caf3aef5fb2f73e5973e404fd35aaf9add146d76f431940880b17c` |
| 46 | `abbrev` | [toDeleteEdge](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/todeleteedge.md) | 283 | `declaration-track:528a480c29e828bae0f684b69d747adfac27e17e02cb7b490c796b92fc7c7d42` |
| 47 | `theorem` | [mapLe_toDeleteEdges_eq](../../../../../Combinatorics/GraphTheory/WalkMapsMapsNamespacedPublic.lean/declarations/maple-todeleteedges-eq.md) | 288 | `result-track:6fd526b323731fc5abd35195a1a4b5a7c503949199818d0c74b82d00d36073d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7969582f260d86fa1473f9be3c651362bd2d1117280bc44c6e99620429060854 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Maps/Variantf90c37876d127bfe1f9bfd58ab2a71b3960d2cd499922f3dcc6dc73dc3361e9c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
