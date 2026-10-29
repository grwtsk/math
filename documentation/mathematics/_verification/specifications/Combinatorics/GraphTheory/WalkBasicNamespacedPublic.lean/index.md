# Verification target: Walk Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd01ef05596b135e068047cafb2d320a3ebe5e88",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd01ef05596b135e068047cafb2d320a3ebe5e88`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean.json)

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
| 1 | `inductive` | [Walk](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/walk.md) | 62 | `declaration-track:74975625fb277ac6d5e8e3131de042654a45058797666fe77fcbd8bee87ce297` |
| 2 | `instance` | [Walk.instInhabited](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/walk-instinhabited.md) | 70 | `declaration-track:852f578f578d2149c03563b40043ea8e21d1eb85fbb3d486086eee8d00df034f` |
| 3 | `def` | [Adj.toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/adj-towalk.md) | 74 | `declaration-track:7ed0043f6fd200c1c226c8994073d24335b666f104c2e9164423c6ea8657603a` |
| 4 | `abbrev` | [nil'](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-source-edition-2.md) | 83 | `declaration-track:e472cdb28bfb5ef4e4283c91771744510925e4938a07656484b200d665f7973f` |
| 5 | `abbrev` | [cons'](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/cons.md) | 87 | `declaration-track:bbf6c4913685c09c19fd24870da8ec640d1e63e0663d383bc96020cd04f6f6ab` |
| 6 | `theorem` | [exists_eq_cons_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/exists-eq-cons-of-ne.md) | 89 | `result-track:a5b743d81159e4623fe1b71d8104808e12af8be17de24913a81dc60b99f3ec42` |
| 7 | `def` | [length](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length.md) | 95 | `declaration-track:86dc15066d6e5a3b160b4fc49831ee88b6cc70b4492cd988037aef8b721f9dee` |
| 8 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-nil.md) | 100 | `result-track:6daea9dcb8258c340e2cd3a52dbf9ee3c87c51fc618b8ba3323822297fd7d067` |
| 9 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-cons.md) | 103 | `result-track:eb369f2fca27672cbb7d231698a59ac5e9c5f379ea9de4707a6f6026bef80d86` |
| 10 | `theorem` | [Walk Basic Namespaced Public](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-towalk.md) | 106 | `result-track:606e92d6e678c4b4a3b7bad9fd46fd7d27f5bacf622553bd12ffdcc91f58029f` |
| 11 | `theorem` | [eq_of_length_eq_zero](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/eq-of-length-eq-zero.md) | 109 | `result-track:dcc7fd44466f83e53ad98f7d2f9af3e0c34f408c4f4c12deb73b9fa7ff6219df` |
| 12 | `theorem` | [adj_of_length_eq_one](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/adj-of-length-eq-one.md) | 112 | `result-track:cc7515b416e96daa8fb10e8942a6832e324b9bdf40c932b66f1925f319be1fb8` |
| 13 | `theorem` | [exists_length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/exists-length-eq-zero-iff.md) | 115 | `result-track:c1e24b73d8ccce1b701f2dede62d546b2996dd3d0a4ed399f4077e0631c8d4ba` |
| 14 | `lemma` | [exists_length_eq_one_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/exists-length-eq-one-iff.md) | 119 | `result-track:0f79fde80e4e9a66c0a7378e14f864f80ed2eb59fe0f1747f58c75cf1e37fdf9` |
| 15 | `theorem` | [eq_of_length_le_one](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/eq-of-length-le-one.md) | 122 | `result-track:9a57208e26524e5f29ca682d7a54a1ee48a516d59ee8e62ab5c68f025b221627` |
| 16 | `def` | [support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support.md) | 126 | `declaration-track:8111460a25f968f8282468a5ea6dfcfe35396f14b0ccc8b1a0c69383b0fe5409` |
| 17 | `def` | [darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts.md) | 131 | `declaration-track:8e307aad2e58476df3e1ee8eefa6f01f771fc62ff83e4fbdcc28ee57296a8cf6` |
| 18 | `def` | [edges](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges.md) | 137 | `declaration-track:5d3ce860ed2fab1d0dfccd23f501299720fc73270337e3708065966f61ddd4bc` |
| 19 | `theorem` | [edges_eq_map_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-eq-map-darts.md) | 139 | `result-track:684cbf09af6180868dc1eda58b1578b014118465dec34b2e2e2679d80c091b4a` |
| 20 | `theorem` | [support_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-nil.md) | 143 | `result-track:e71cf621b473baaed623b2c3935f90d6500363e23655a4e064428c82a2abf643` |
| 21 | `theorem` | [support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-cons.md) | 146 | `result-track:b4174ecdf8e5ab6e49ed3e5c0af0fa70a96132bc4a6258361ed0e2dc879adca5` |
| 22 | `theorem` | [Walk Basic Namespaced Public](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-towalk.md) | 149 | `result-track:a6924a4896112cc976d297c938dfeadf594fc10b109b1fd7316bc95463255f9a` |
| 23 | `theorem` | [support_ne_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-ne-nil.md) | 153 | `result-track:c12b4167e04001930f06c43ee8b056f502ff65852b3ce774632027d332beb212` |
| 24 | `theorem` | [head_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/head-support.md) | 156 | `result-track:08748e9595b584fcc3bdee199d3224407ae71a38cc6b2fc080c8dc3223fbc849` |
| 25 | `theorem` | [getLast_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/getlast-support.md) | 160 | `result-track:e74b447dda5da936658207f44a80f66725dae49bb0d17ac4aa03c9c2dc818faa` |
| 26 | `lemma` | [cons_tail_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/cons-tail-support.md) | 165 | `result-track:4dc1c96e891f82c72287367ebc14a90957d2e1de1809ac1094564a3cfb70c6c2` |
| 27 | `theorem` | [support_eq_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-eq-cons.md) | 169 | `result-track:f3dc8fa8d96597ee491a5028a329462da75e72dd1eacc1d7ab4198b552f1321c` |
| 28 | `theorem` | [start_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/start-mem-support.md) | 173 | `result-track:0343892b9f6fc0f1b636ace5c490e26ec6c14b45ab6b62475e68c6ee162bf2b4` |
| 29 | `theorem` | [end_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/end-mem-support.md) | 176 | `result-track:558efb2969e3b80fbd37424991b5a6961d246d5334b98b5d272e2ab333070a59` |
| 30 | `theorem` | [support_nonempty](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-nonempty.md) | 179 | `result-track:d0e0aacd678b8c755a6020425d47e8ea487ffc46737ffb0484b1addea7f4338f` |
| 31 | `theorem` | [mem_support_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-support-iff.md) | 182 | `result-track:c73410d624596f6a97fe1513f88f277970c69855d2255705cd1c491d1a0d8f8e` |
| 32 | `theorem` | [mem_support_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-support-nil-iff.md) | 185 | `result-track:6404f2d74d57ea246fb52f2dad4d2b49d652bdd6bca7af02e9e97acb7a0859ce` |
| 33 | `theorem` | [end_mem_tail_support_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/end-mem-tail-support-of-ne.md) | 188 | `result-track:43b3742f26d0ba19c8b35303887fe4ef26f6748428d0d793d3c5c3b13b1c715a` |
| 34 | `theorem` | [support_suffix_support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-suffix-support-cons.md) | 192 | `result-track:16e4094fcfbff53f36cb99a6f7a6d5c30f4d1ba9e1c408ef61fe1baa3d6acf38` |
| 35 | `theorem` | [support_subset_support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-subset-support-cons.md) | 196 | `result-track:b9585904f0fccb7f98ab29a560162a592629abccc17db4664e8a3897f7b6f23d` |
| 36 | `theorem` | [coe_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/coe-support.md) | 200 | `result-track:d0dd77a7bf3c91fe3eccba25421dce982e8262fe4bfe1fdd0fe4efdb6de515fb` |
| 37 | `theorem` | [isChain_adj_cons_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ischain-adj-cons-support.md) | 203 | `result-track:21c1b3745fe3e2f867d0717da3647dd70621e9465ce09e09152178cc53304fd6` |
| 38 | `theorem` | [isChain_adj_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ischain-adj-support.md) | 208 | `result-track:91eadda51a1477987babb94278991d1a9180394f22e74f1a1a0b9e701848dfb2` |
| 39 | `theorem` | [isChain_dartAdj_cons_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ischain-dartadj-cons-darts.md) | 212 | `result-track:e646b270b554fb050df1ec473fd82d2449417c835bfbc83ab26b7bdddea3391b` |
| 40 | `theorem` | [isChain_dartAdj_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ischain-dartadj-darts.md) | 218 | `result-track:9d3391606d11f9c34059d06d577d6a3bed852da868b3ba079fff7f790e9062ce` |
| 41 | `theorem` | [edges_subset_edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-subset-edgeset.md) | 225 | `result-track:289dfdb0f49dc30818fdd7805eb3653263c3b1ba8992281a34e0c9109f13625c` |
| 42 | `theorem` | [adj_of_mem_edges](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/adj-of-mem-edges.md) | 232 | `result-track:7fce14b4ebde3fee98ca4e68ece10bffee5219574359173018ffd6855c7b6c9b` |
| 43 | `theorem` | [darts_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-nil.md) | 236 | `result-track:1414207ddb9bf6b528170442d434518837329be932835db7aa8c36ea1dc7c6a3` |
| 44 | `theorem` | [darts_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-cons.md) | 239 | `result-track:9a2c5951d8e7079d6121a91c91576e956046a21ae18c6e877be56db64e60e675` |
| 45 | `theorem` | [Walk Basic Namespaced Public](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-towalk.md) | 242 | `result-track:5e229919314116708ed98cb7c464b2097d3b4a1fb2e53173d107c3b196f4de6f` |
| 46 | `theorem` | [cons_map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/cons-map-snd-darts.md) | 245 | `result-track:4817c69c8a7505fead89460207cffebfb02aeb74af3d535101b4bcc3bcdc60d8` |
| 47 | `theorem` | [map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/map-snd-darts.md) | 248 | `result-track:5b371a567b06f68bf5e1b4f350beb1247c13473e3712ef91442124d0512fba75` |
| 48 | `theorem` | [map_fst_darts_append](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/map-fst-darts-append.md) | 251 | `result-track:1a8b7f3853924a4a8c88cb910ce3191177b6a36114f5447a7b58b4f7a4a7de48` |
| 49 | `theorem` | [map_fst_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/map-fst-darts.md) | 255 | `result-track:4b1321472b64396a153a9a04c78526c1da3a0ebee6e0f14d941bc5e6999b1d85` |
| 50 | `theorem` | [edges_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-nil.md) | 259 | `result-track:9dcc06a9400d0fd755441d0d4f90c545e64b3dae006e780050afe421f8ff8d90` |
| 51 | `theorem` | [edges_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-cons.md) | 262 | `result-track:cdef82b933d5e05247079c742cdefae9a79144312dc06c3aa2b4833f505a7e6d` |
| 52 | `theorem` | [Walk Basic Namespaced Public](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-towalk.md) | 265 | `result-track:c18e5586cbea16302c9aa114e1297a2e81bb8973c4b20a7668822d1c08b24334` |
| 53 | `theorem` | [length_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-support.md) | 269 | `result-track:3eb482505458ae3f66bc26b45e0f3ef22ad1351b2ebae45c4ad990ef27c4c729` |
| 54 | `theorem` | [length_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-darts.md) | 273 | `result-track:00cde6a8fc7970f1155af9b0f01d31902115b9b63f41b7db93b861e51d77e28e` |
| 55 | `theorem` | [length_edges](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-edges.md) | 277 | `result-track:c0f49d4a5014fc979dc36090dff9500b0071dce55ff793835c449560e4094687` |
| 56 | `theorem` | [getElem_edges_eq_edge_getElem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/getelem-edges-eq-edge-getelem-darts.md) | 280 | `result-track:67092d54382e41ccd5d84aca77096372f449003187440ba6326a2743fc8386b8` |
| 57 | `theorem` | [edge_getElem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edge-getelem-darts.md) | 285 | `result-track:aff033dea1a869e79789c0f7a54f690008551bdfc3c8595146c2a2308744b64f` |
| 58 | `theorem` | [fst_darts_getElem](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/fst-darts-getelem.md) | 290 | `result-track:983d2bbaa264575f18bc84ee6116fa668b72ed16ab948848e6654583126016b5` |
| 59 | `theorem` | [snd_darts_getElem](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/snd-darts-getelem.md) | 295 | `result-track:d62a6408adee2a931de7f2d87c35ccf8a1554868056c943949881ea7dbc92e6f` |
| 60 | `lemma` | [support_getElem_zero](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-getelem-zero.md) | 300 | `result-track:662b3585dffc547f80acba0859e115469735ca3917fde30cd3b56b4a30c8a63e` |
| 61 | `lemma` | [support_getElem_length](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-getelem-length.md) | 303 | `result-track:375a23db532f077d2e1aa19f04761484d16e3047b1d38856d5e55caf51e8e5c7` |
| 62 | `theorem` | [mem_darts_iff_infix_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-darts-iff-infix-support.md) | 306 | `result-track:a02c73114c635982403091139ecc5967ffd52297077d7d4e6b52553b4a0b4695` |
| 63 | `theorem` | [mem_darts_iff_fst_snd_infix_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-darts-iff-fst-snd-infix-support.md) | 316 | `result-track:a8b572484d5e242b3640bc1a80109dd5b3395d609ee30849e996fddc5789e03e` |
| 64 | `theorem` | [dart_fst_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/dart-fst-mem-support-of-mem-darts.md) | 320 | `result-track:5311916f96401d70726b0fe125d8a074676e6b4842a0d7fd9c7fa382f6137a74` |
| 65 | `theorem` | [mem_support_iff_exists_mem_edges](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-support-iff-exists-mem-edges.md) | 328 | `result-track:8dfa8ab79598cb01284fde6da17804f996776887bd4b711daad5dd0090e1d37d` |
| 66 | `theorem` | [darts_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-nodup-of-support-nodup.md) | 332 | `result-track:c39853c661aa49b210f98533bec21142bc36f0ef9e751346ad696acadb7201d7` |
| 67 | `theorem` | [edges_eq_zipWith_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-eq-zipwith-support.md) | 340 | `result-track:ce15c012f673be9cda8b36b2d5739fdfdef6b59be0cf41658c19f92812513032` |
| 68 | `theorem` | [edges_injective](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-injective.md) | 346 | `result-track:2f958e234f493081fdccb231facafb8a897758ed39d5418539bd3fff207bd982` |
| 69 | `theorem` | [darts_injective](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-injective.md) | 354 | `result-track:07e584d4f01d7be0a019c4c6ae019bb16e96f3ea2b1afb5d4a8c0bdec837fc3a` |
| 70 | `def` | [edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edgeset.md) | 358 | `declaration-track:0ac9422c2e2ce91b42a9996fbc4cad21eae1325acf5fedf347744d0df8174906` |
| 71 | `lemma` | [mem_edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-edgeset.md) | 361 | `result-track:51a46d8a880137e506ed2bc9b63a473dc83adaf2f14f509cc0c759a10a8b8d94` |
| 72 | `lemma` | [edgeSet_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edgeset-nil.md) | 364 | `result-track:88842ea24ae233257deba1f92180c2d16b0b09c01b99c6bc8becac7360b764b5` |
| 73 | `theorem` | [edgeSet_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edgeset-cons.md) | 367 | `result-track:53a4eebb4758918586c64dea437547493850ffeaa723d532265317591275b1a4` |
| 74 | `theorem` | [coe_edges_toFinset](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/coe-edges-tofinset.md) | 370 | `result-track:eba0fafd900d7fc1ab94595b40c5b04d8a84ad836dcf73168180fd95e8fc5834` |
| 75 | `inductive` | [Nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil.md) | 378 | `declaration-track:1b0cf216b1583f0d0231543bf79d45fe8d611444ea2ac26b3acf4dcc7d30835f` |
| 76 | `lemma` | [nil_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-nil.md) | 381 | `result-track:97b11b1f1b590363dbd00fccaaf8dd9635c576532e2406b5ee79678147695461` |
| 77 | `lemma` | [not_nil_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/not-nil-cons.md) | 383 | `result-track:fe01cfb5ca6791859947df24b560fb2cb9fea6d8b5a84df21cea3603f548baf9` |
| 78 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/instance.md) | 385 | `declaration-track:e5d47528750a4823b2e232d424a1aed5580e7208a38f6466bbba55324b3fc73d` |
| 79 | `lemma` | [Nil.eq](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-eq.md) | 391 | `result-track:9882732d66d2c99c0b67aa411bd67feaa940278bc6117b3b8cddc4f4504ee357` |
| 80 | `lemma` | [not_nil_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/not-nil-of-ne.md) | 393 | `result-track:f25d85cb9a3af1986b0c35282b941819377b82ec2b6ccf4da77e3e4d04a0934c` |
| 81 | `lemma` | [nil_iff_support_eq](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-iff-support-eq.md) | 395 | `result-track:a941d75f770c57d80b3571e24922e0cd39df31f9215745030cbaaf8cc3f3462e` |
| 82 | `lemma` | [darts_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-eq-nil.md) | 399 | `result-track:22ef629bf0f4822fa86b823b13a4b9f4a25de5cf46d7aebbf63735471f76f226` |
| 83 | `lemma` | [edges_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-eq-nil.md) | 403 | `result-track:2a88888faee6455214c7aa457e2e799488b548fc8418147360b0e669b7f0dfdd` |
| 84 | `theorem` | [edgeSet_eq_empty](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edgeset-eq-empty.md) | 407 | `result-track:afdfff654fdf19a609c90173c55bc2777cfc278b7476d0cf34b49d1b4be4fedf` |
| 85 | `theorem` | [length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-eq-zero-iff.md) | 411 | `result-track:4c284658f2a6811eb4efec2f475697f3f29cf5251d4976a92728a2c748a3ee9e` |
| 86 | `lemma` | [nil_iff_length_eq](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-iff-length-eq.md) | 417 | `result-track:8b79e3302d31e94df4daaea30377dafe2d7d062721a7dddd8fce62c01db98e16` |
| 87 | `lemma` | [not_nil_iff_lt_length](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/not-nil-iff-lt-length.md) | 420 | `result-track:2d386bbd7324b493efcad5cc2864629c0aee6fd5540e67eee3be365cdfd8fea4` |
| 88 | `lemma` | [not_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/not-nil-iff.md) | 423 | `result-track:55b38244af5736ec5c8f91a76d683ad68110cf8dd492a879fb97fdc7262b7bc3` |
| 89 | `theorem` | [eq_nil_iff_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/eq-nil-iff-nil.md) | 429 | `result-track:a9873b69b71e43e6a31b1ef325da0a5e27d62c7691d93123c3e4a56e104c3908` |
| 90 | `lemma` | [nil_iff_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-iff-eq-nil.md) | 435 | `result-track:b3221842c42a12a7eaa302e37f7d82017e95f703b621176ee16c86dfb392528c` |
| 91 | `lemma` | [nil_of_subsingleton](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-of-subsingleton.md) | 438 | `result-track:25b7bce83b4cd5bd75d16635bce2f9a1a575cb3f461cf27cf1a7b10afad33e23` |
| 92 | `theorem` | [nil_of_bot](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-of-bot.md) | 443 | `result-track:5ffc6eb4db23d14bbc4ee14777552b8a7c59729af6fc4fc450063677cfc2a1f5` |
| 93 | `theorem` | [exists_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/exists-nil-iff.md) | 447 | `result-track:92f94a90eab429b97f254bf23c11073501e38af12eb331c49929f02d5a8ca578` |
| 94 | `def` | [notNilRec](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/notnilrec.md) | 452 | `declaration-track:54b93fe4a487bce9253943f86fe33e65a0366e1be1949ad8d3a97a67f9b676fc` |
| 95 | `lemma` | [notNilRec_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/notnilrec-cons.md) | 460 | `result-track:6a1b862ddc1b39102b9a6c63ec30e4490fa1fcebae7d5124b8c534452f3cf4da` |
| 96 | `theorem` | [end_mem_tail_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/end-mem-tail-support.md) | 465 | `result-track:b7d7e496286ce821df0a30ad0c40125ee062c6ce8664c5fb30e31417a40ab37b` |
| 97 | `theorem` | [mem_support_iff_exists_mem_edges_of_not_nil](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/mem-support-iff-exists-mem-edges-of-not-nil.md) | 468 | `result-track:e4429b862ba1a3fad775c7b1d6d97c295cce99f7a6e18c2fcd31c9814d808fa9` |
| 98 | `theorem` | [nil_of_isIsolated_of_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/nil-of-isisolated-of-mem-support.md) | 474 | `result-track:e355e048c73013240a8557f21544d8c52e65f210f72bc06ecc7723fea29fbe54` |
| 99 | `theorem` | [exists_boundary_dart](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/exists-boundary-dart.md) | 482 | `result-track:0c2336dbb5af4bb91fea47745301ab0dee9d446e319295539a17d14d2f25aa9b` |
| 100 | `def` | [ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofsupport.md) | 495 | `declaration-track:2274e030811df18901a065a2708953ec9e6e7c5142b71f5a064c8f9ce468e483` |
| 101 | `theorem` | [ofSupport_singleton](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofsupport-singleton.md) | 503 | `result-track:6792c58d4ef95eb1751acefeff4cf06cb541564a07c9c108fc4b6a41b765fdaf` |
| 102 | `theorem` | [ofSupport_cons_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofsupport-cons-cons.md) | 508 | `result-track:9ac017003ca5df126975f2724cc1ceeebde7a0e7574748ec03008280f0fd2336` |
| 103 | `theorem` | [support_ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/support-ofsupport.md) | 515 | `result-track:a77b261b7a611031c3ba60552ba22d249647940a3e462148154a4ea143b319bd` |
| 104 | `theorem` | [length_ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-ofsupport.md) | 523 | `result-track:9306e038b8c12f8f47e9f3fb355cc66cff51b9aa2d0e24f983f6a3103058d789` |
| 105 | `def` | [ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofdarts.md) | 529 | `declaration-track:c3da7823ca1a0bc4b36a3498df6cf1ef8982a7f50ed98907322bd4277c22fb3a` |
| 106 | `theorem` | [ofDarts_singleton](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofdarts-singleton.md) | 537 | `result-track:0f4b95229515c237a346e4072cea5c7d45ad9b6732341989f87215a7744913f7` |
| 107 | `theorem` | [ofDarts_singleton'](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofdarts-singleton-source-edition-2.md) | 540 | `result-track:3b8c5eaab89d511a16b67d5310ae9743bd3c7da3c3d52c716c83660886a3717e` |
| 108 | `theorem` | [ofDarts_cons_cons](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/ofdarts-cons-cons.md) | 544 | `result-track:fc3b4d108516c39fef9865072a9311106f52cb4fd8d5e7031ce240d6c56dfc1a` |
| 109 | `theorem` | [darts_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/darts-ofdarts.md) | 552 | `result-track:160ad95158fcaadf0d1e8a71a2e4f3fb57d291d534ea7e21082b19d5dac4e3e4` |
| 110 | `theorem` | [edges_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/edges-ofdarts.md) | 560 | `result-track:97e5b204ac9399f00d6dd9c745bc847ec60ed5dd4d905624bef7ce91fed34afa` |
| 111 | `theorem` | [length_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicNamespacedPublic.lean/declarations/length-ofdarts.md) | 565 | `result-track:8a13b339ba09dc0c0e3b47a010c3ccdbcaeab595dc8e7bd8a42a4f841247217b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ae6da5d6ce598561db240d28f632b32cb436fd7552c950fc08ccb40f6825d24 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variant044ebf7653d1a6ec7fa4ea1f664ee648ef0ad028f332f64531de085e55f03ddb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
