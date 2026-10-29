# Verification target: Forall2 Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23f5b72ecb6c408ff541ecf2a0d009a6c36e1e3f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Forall₂.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-imp.md) | 43 | `result-track:59c444dd3341784bbdcac620d92db48b804bd6141dea28c8764f107baacc0812` |
| 2 | `theorem` | [Forall₂.mp](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-mp.md) | 46 | `result-track:f8cb8d6cb352a01942b3d529894946aab9c4a9bff85212c86215ea89cb801791` |
| 3 | `theorem` | [Forall₂.flip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-flip.md) | 52 | `result-track:db790f8638474d983924c7701b086d2c47432c25add70352fbeeccffc173349a` |
| 4 | `theorem` | [forall₂_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-same.md) | 57 | `result-track:19545abae0cec4ed8ecf9caa86062c2ef070b5a41b11aea82ed79e9526954704` |
| 5 | `theorem` | [forall₂_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-refl.md) | 61 | `result-track:8626550bb622a667b8cab71b97e9f55a0adaa84b3c053cc236f1e81ae96c264f` |
| 6 | `theorem` | [forall₂_eq_eq_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-eq-eq-eq.md) | 65 | `result-track:72f4d3bb2f877f7bf3303ef0ee40481bbcb8946335052a636c1d626e2847d01a` |
| 7 | `theorem` | [forall₂_nil_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-nil-left-iff.md) | 76 | `result-track:3807b2c55337144aebc9f68991522210f256387bccc5c1e49669e6c8482f7823` |
| 8 | `theorem` | [forall₂_nil_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-nil-right-iff.md) | 80 | `result-track:52c24484c44c50cd86ba6ccbaf62548d33eeef460b8030b1aa57d1075bf781eb` |
| 9 | `theorem` | [forall₂_cons_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-cons-left-iff.md) | 83 | `result-track:fdb69d7004e8eb3b7d4a4f9d0e30ed330736c2bb0e5c8a21dc77982a67b41d7b` |
| 10 | `theorem` | [forall₂_cons_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-cons-right-iff.md) | 93 | `result-track:87afa7d33f1eb08e79383eee7a74c02eca084e41eba8d338256b5bf648d914bc` |
| 11 | `theorem` | [forall₂_and_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-and-left.md) | 103 | `result-track:a2b682bb68c9e0afd6aaf75235a151d2c7eddee8ef43f5e63e22b83b2f0ac544` |
| 12 | `theorem` | [forall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-map-left-iff.md) | 113 | `result-track:39a341e46f139cf3b3c3901f4bd8c2a5c3799fdc3e94300ec2038ed3bc39dfa0` |
| 13 | `theorem` | [forall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-map-right-iff.md) | 119 | `result-track:2c201d23ef95fb6db6aae2d6d615c170c0a5dafda0da5ebf5d7859584fa63117` |
| 14 | `theorem` | [left_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/left-unique-forall.md) | 124 | `result-track:994f5bd39b8ffe2b679122fc37d501e04142e703173929d9403ad999dbdacda0` |
| 15 | `theorem` | [Forall2 Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su-source-edition-2.md) | 129 | `result-track:6a314f46d5510a479d52e53b71275e792d68ae102fdc77355797378b10bc1089` |
| 16 | `theorem` | [right_unique_forall₂'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/right-unique-forall.md) | 132 | `result-track:8b6479fac9c984186d4ad7e937db5ed1a134194936e9d3c829567dbd40729780` |
| 17 | `theorem` | [Forall2 Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su-source-edition-3.md) | 138 | `result-track:fb394a4cdb4d95f60fe7f6412d159ad9bb84d44c82c400f4e01de5ac9dac4811` |
| 18 | `theorem` | [Forall2 Namespaced Public](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-su.md) | 141 | `result-track:47c7c1dd6b7d064f12a09832142feaaf4bf52eebd16cdec8f64faf4ba7532d9d` |
| 19 | `theorem` | [Forall₂.length_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-length-eq.md) | 144 | `result-track:379ce01486e843898a63a76eb0e89db59dd2747ceab691a878759a0d12f972e7` |
| 20 | `theorem` | [Forall₂.get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-get.md) | 148 | `result-track:f9b81aefee8d6d693420e3525050971799d6996bb44e33aa431342d2f5a5e23e` |
| 21 | `theorem` | [forall₂_of_length_eq_of_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-of-length-eq-of-get.md) | 154 | `result-track:c61281f1f77c031e07476da2a6847d5a9cfa66941c42bd301e63293a857bc77b` |
| 22 | `theorem` | [forall₂_iff_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-iff-get.md) | 163 | `result-track:bf9214b0bba41e576792b85fdf99cb1694f21eb891139ae764b09bec43fbbfd8` |
| 23 | `theorem` | [forall₂_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-zip.md) | 167 | `result-track:bae0e1e2b89fddb71517293e269a582965ff74a8573e838e90ae4d5dcff3bba5` |
| 24 | `theorem` | [forall₂_iff_zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-iff-zip.md) | 174 | `result-track:efd26644431ce934ca6ccdbe0962342c5b1ea429c04e6fca2628f0335b03a2cb` |
| 25 | `theorem` | [forall₂_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-take.md) | 191 | `result-track:e53019f125bc08c249e7161a2b1a7099b0bfb7ebb40f0bca9c48261ce8c4a835` |
| 26 | `theorem` | [forall₂_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-drop.md) | 196 | `result-track:35eaf68fa72906025ae23e6ade638e652b41f27d9b8b5f27b0cb9173d28cd297` |
| 27 | `theorem` | [forall₂_take_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-take-append.md) | 201 | `result-track:257591dce551e6da5be50a3ec660b84b48c478f68d877c2f5efec8dd8e99d0a9` |
| 28 | `theorem` | [forall₂_drop_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-drop-append.md) | 207 | `result-track:f564a4c8dd44fab8df9eacc516964e503056129ced7efd611aedf6eb38475c74` |
| 29 | `theorem` | [rel_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-mem.md) | 213 | `result-track:7757382df574d6c3d359ddd64d4812fdc0fe26e4d7d92c1d6cfb62e80a2e6e08` |
| 30 | `theorem` | [rel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-map.md) | 219 | `result-track:7e75f565926f815fb8684b4b71e45fb96a7a0198e0998e3bee213c1a5902ed32` |
| 31 | `theorem` | [rel_append](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-append.md) | 223 | `result-track:6dce6449a99fcc62e9c34cd14e640be2a3f5a2843704eb739422acc4ed45ab0a` |
| 32 | `theorem` | [rel_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-reverse.md) | 227 | `result-track:68ec87713444f4ea52764bada845172936b25b1fa684beae5a27affddeef64f9` |
| 33 | `theorem` | [forall₂_reverse_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/forall-reverse-iff.md) | 234 | `result-track:fbebc4bab2ca140075b4b91233deeda27d0ca1220764c9911ce2cdbe23bc1f9c` |
| 34 | `theorem` | [rel_flatten](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-flatten.md) | 241 | `result-track:9247bac770847551222102ca0f5caf9b4b867e62b52812ba4cd6f5672b63211f` |
| 35 | `theorem` | [rel_flatMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-flatmap.md) | 245 | `result-track:ea9761bc9a1bc55ffe707e58fe3de45e4a8deec94adc5ac93564eba6dffdc8d4` |
| 36 | `theorem` | [rel_foldl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-foldl.md) | 249 | `result-track:661e2eeb7352a97f04dad8986aadb6b2946713c843ca6b0558280cb86c2086e1` |
| 37 | `theorem` | [rel_foldr](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-foldr.md) | 253 | `result-track:52f101efdbecf9e71790384c3cab82f7be49a66bc49e2790a86faf595895e278` |
| 38 | `theorem` | [rel_filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-filter.md) | 257 | `result-track:55bdd43a3e62250726d372cb9a30e99aca97cf2305e60d83ab8a4ddd7bf4ba32` |
| 39 | `theorem` | [rel_filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/rel-filtermap.md) | 270 | `result-track:d072305211a28ee897abffa537dc9dbb60d00a5b0f974d47f1c028b19b604631` |
| 40 | `inductive` | [SublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall.md) | 281 | `declaration-track:91d93016981d57089c7a08b2f464d8c4940f4670343a644cce1f5f3feb46ddb0` |
| 41 | `theorem` | [sublistForall₂_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall-iff.md) | 286 | `result-track:4dedca515a976b2de946cb826c2523f6f12e41d2e952d2f77c3ca6828ea9f0f2` |
| 42 | `instance` | [SublistForall₂.is_refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall-is-refl.md) | 310 | `declaration-track:5e5a0476f0f0b01f6fb13e5e8b78b09b3903abe815e72901bb99813f7b92bad4` |
| 43 | `instance` | [SublistForall₂.is_trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall-is-trans.md) | 313 | `declaration-track:dc1d815b990f56245ce14562a5957822869f14c4ba3d94623c89747167d24342` |
| 44 | `theorem` | [Sublist.sublistForall₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublist-sublistforall.md) | 332 | `result-track:e5ca245e1eb66624177069539c8d3d438547cae4b77abb8e37c47c687f84d8dc` |
| 45 | `theorem` | [tail_sublistForall₂_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/tail-sublistforall-self.md) | 336 | `result-track:861e25d802fd97fff702749002d20ebda94f9d55b9cd72be3c9e9932a7d86707` |
| 46 | `theorem` | [sublistForall₂_map_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall-map-left-iff.md) | 340 | `result-track:24c4c3ea6104fa031449141217cbc259aafe88c4a3056ebbe6d7075b770fdf4a` |
| 47 | `theorem` | [sublistForall₂_map_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Forall2NamespacedPublic.lean/declarations/sublistforall-map-right-iff.md) | 345 | `result-track:3eeed51342496fea3749c23b0a9ba4673991620b8c27fd07fcc6207964741a94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e45e6cf231bb6f6f265049c20652347151b3699d4f8fdcfbb0f57a4235c4756 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Forall2/Variant0ddb1d3c8d5e806a74910e42040e1848057ae7cb9595a9d80a504e58a7f9754c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
