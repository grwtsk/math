# Verification target: Walk Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ce924b6647115c1d064d6cd40d9d3829a9b4f2e",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ce924b6647115c1d064d6cd40d9d3829a9b4f2e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean.json)

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
| 1 | `inductive` | [Walk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/walk.md) | 54 | `declaration-track:0adab6de177b6ec7267d3aa2600ce35b6d5c8eaf9d989d9f493ae816fffcf332` |
| 2 | `instance` | [Walk.instInhabited](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/walk-instinhabited.md) | 62 | `declaration-track:9165a4861fe1f0e28b413a5be7cd61dbe0d445b4be1b04fc9bd26214a74c619a` |
| 3 | `def` | [Adj.toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/adj-towalk.md) | 66 | `declaration-track:9175a86dee92e9563aa7d9abbd49ec5bf93f23c992fbd8d95886d908481fdf92` |
| 4 | `abbrev` | [nil'](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil.md) | 75 | `declaration-track:27caa3677dfd86865f5c5c297b64d46bdfc050d117d1f1ab02effc3049f75b95` |
| 5 | `abbrev` | [cons'](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/cons.md) | 79 | `declaration-track:ab55e5c2a19edcfe7f42a3adfb7e872bd564a2c8070f2c7175c7660fe56b762c` |
| 6 | `theorem` | [exists_eq_cons_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/exists-eq-cons-of-ne.md) | 81 | `result-track:46953c2d1781a564dbbf8953f8306471992cda4f78fa56f64c909bc4c63ed93c` |
| 7 | `def` | [length](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length.md) | 87 | `declaration-track:59fa527d7127d79ef4346f0c308fcf23a3be44ee08b2f9033b65ab69f38f93e5` |
| 8 | `theorem` | [length_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-nil.md) | 92 | `result-track:f21fbba60b3430e9b35d20e67166754e2fd68a182655582bcc1136a00af1ddcc` |
| 9 | `theorem` | [length_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-cons.md) | 95 | `result-track:e44bb8b48e93012d76f342a3780a5b90e98dacb1948e8a0ca3114410a29725f2` |
| 10 | `theorem` | [_root_.SimpleGraph.Adj.length_toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/root-simplegraph-adj-length-towalk.md) | 98 | `result-track:316e69c6af3626cb2a5f03fe22d71106c712f1aa354ddd10781f1ec0c3a601a2` |
| 11 | `theorem` | [eq_of_length_eq_zero](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/eq-of-length-eq-zero.md) | 101 | `result-track:7fd6e4759d29b87a7eded8ca228b0a2d8ce74e5a9c60f7f207d753fa37495066` |
| 12 | `theorem` | [adj_of_length_eq_one](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/adj-of-length-eq-one.md) | 104 | `result-track:78e296769b50000a21c6dd42acea6985f4c9ce0a4252af87290e96648f5b5952` |
| 13 | `theorem` | [exists_length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/exists-length-eq-zero-iff.md) | 107 | `result-track:6e72cbfc7b94734e407394c891d77163400eef891d7a167ac6e809f8beff7955` |
| 14 | `lemma` | [exists_length_eq_one_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/exists-length-eq-one-iff.md) | 111 | `result-track:0a3b447f381d449c0e011832cb35e9ca8e7f82efa772f90179e3f475a7d96a94` |
| 15 | `theorem` | [eq_of_length_le_one](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/eq-of-length-le-one.md) | 114 | `result-track:ad9d92eab49558ff5756deab2f45ccd5d52b7e902cd1902f1cd189e918760496` |
| 16 | `def` | [support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support.md) | 118 | `declaration-track:de2651bab23bd9f23a641e67b57fe64316248ee4f575c03366a1a075ad7ca7d9` |
| 17 | `def` | [darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts.md) | 123 | `declaration-track:287f472847ef2c572cef6a8baa7f56e36478e4284e6e784cbd55e9214b3b28bf` |
| 18 | `def` | [edges](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges.md) | 129 | `declaration-track:e4885fa5a50fb86d0bf32770b1ea66d1dbe1881728e6a1360445f4682070c185` |
| 19 | `theorem` | [edges_eq_map_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-eq-map-darts.md) | 131 | `result-track:e24ee9f75275164e05ce596c8f537fea83043d1bc0a05349a8590c8d97459358` |
| 20 | `theorem` | [support_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-nil.md) | 135 | `result-track:5a3a28969bd8446bb29e94371cde306c6b3ac2b33461f712aa2cec96b5031ab0` |
| 21 | `theorem` | [support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-cons.md) | 138 | `result-track:3aeb7f18d197eca0522619e22c5340b1701336a5e13399e41bce96f84c6e307a` |
| 22 | `theorem` | [_root_.SimpleGraph.Adj.support_toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/root-simplegraph-adj-support-towalk.md) | 141 | `result-track:deb0215af489e0370e6e824af596d0afe80625e1f0b8102cdd210ad88f2aa2b1` |
| 23 | `theorem` | [support_ne_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-ne-nil.md) | 145 | `result-track:65a7e7e1b7065dd36038e3e8e7bfac64ca622e97e3c5fb2d8933035edea46bff` |
| 24 | `theorem` | [head_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/head-support.md) | 148 | `result-track:2d6d06db10787581355a773917575f95095166eb812e2f7424dffe89411bc0db` |
| 25 | `theorem` | [getLast_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/getlast-support.md) | 152 | `result-track:20b66a50341bb5b9de3ccb0d818a976073d0d454b2caeb2fcbc6e7392b5e4966` |
| 26 | `lemma` | [cons_tail_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/cons-tail-support.md) | 157 | `result-track:0fdf6787c20f25f5c8af5dc17c320322b0184e9794e4ad84ec831ff1aa4c7b0c` |
| 27 | `theorem` | [support_eq_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-eq-cons.md) | 161 | `result-track:d9ee3cd5b6572def1074b8557347ed72014f89d6d1ec4033a73c3a653c224991` |
| 28 | `theorem` | [start_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/start-mem-support.md) | 165 | `result-track:cfc97604207d06322db939c65ffc88231c914a943e07492848703844598d6bf6` |
| 29 | `theorem` | [end_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/end-mem-support.md) | 168 | `result-track:2000661e96cdbe6f1878569f5dfede3845dfa7788e34713a82ecc1d0b4ee445b` |
| 30 | `theorem` | [support_nonempty](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-nonempty.md) | 171 | `result-track:a23596b41a43b5e0414858d81f87b29e61e9f3079cc90228213742b1948278d5` |
| 31 | `theorem` | [mem_support_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-support-iff.md) | 174 | `result-track:a32667bcccc11fef3b0f92816fc7e25210434510e2ff51752cbdc31bbc6d16e6` |
| 32 | `theorem` | [mem_support_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-support-nil-iff.md) | 177 | `result-track:f01e80a845006d6e3e34112f2e93921d74f715ae5cc08fa769cc0e3480b9265d` |
| 33 | `theorem` | [end_mem_tail_support_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/end-mem-tail-support-of-ne.md) | 180 | `result-track:de112397df8ee5d880b7f5be5edf18e0ac76d931dc3adffc9e806db21b2a7b87` |
| 34 | `theorem` | [support_suffix_support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-suffix-support-cons.md) | 184 | `result-track:6741180c6a5639422f117cdacc890725f22ad67d173468822f31041d3aafaff1` |
| 35 | `theorem` | [support_subset_support_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-subset-support-cons.md) | 188 | `result-track:b38e17d95e9afbd05a266b46d7ea869639f6630a2b0881e609ed5c092ca828c4` |
| 36 | `theorem` | [coe_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/coe-support.md) | 192 | `result-track:9fc87960c64585d6dbaf1a8906eab6076b1c0353bfef416a00bebb9a1347ea47` |
| 37 | `theorem` | [isChain_adj_cons_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ischain-adj-cons-support.md) | 195 | `result-track:f64bf4f771c2cb020f48d0c7f054c1b04001e041c0121683d3778fbd1312e45a` |
| 38 | `theorem` | [isChain_adj_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ischain-adj-support.md) | 200 | `result-track:07d5ec4154cf431945b93f4f0fd8c4855870a12dd8b2b1136f3385457953ad78` |
| 39 | `theorem` | [isChain_dartAdj_cons_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ischain-dartadj-cons-darts.md) | 204 | `result-track:0228a3096dbbf69bd06c7f39cbafcbd1e3add6a21ba64a259c47ffded59e4be1` |
| 40 | `theorem` | [isChain_dartAdj_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ischain-dartadj-darts.md) | 210 | `result-track:9110bc77a5f2e3bbddd5562dafea55d72b42529f80d203734e6ca4181f7b2b7e` |
| 41 | `theorem` | [edges_subset_edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-subset-edgeset.md) | 217 | `result-track:3d16e8a0b2b629d3b6d928b27ac3666896e1bb1595aad8e8d1a2dfb2f8cd3d49` |
| 42 | `theorem` | [adj_of_mem_edges](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/adj-of-mem-edges.md) | 224 | `result-track:d22540a5ee584cabcd99d667fcf8fe5b85734f5af47645c316dfaf75d6c7c80d` |
| 43 | `theorem` | [darts_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-nil.md) | 228 | `result-track:6821a146ed25570c772ec8119ba722f3663c1264710faafabcb3456723857b50` |
| 44 | `theorem` | [darts_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-cons.md) | 231 | `result-track:0385e96b0bfb36c947a17834127bcf1c2d46cfe20c64927f74825b8a0fc54a41` |
| 45 | `theorem` | [_root_.SimpleGraph.Adj.darts_toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/root-simplegraph-adj-darts-towalk.md) | 234 | `result-track:9bc4723c3411e4945ae77c07f264161103247be2680acb4daf7e6877105362d4` |
| 46 | `theorem` | [cons_map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/cons-map-snd-darts.md) | 237 | `result-track:4c7278cbc79a7f73e4f7d3ea0988fcf6fde8aa01dd1d9ade09b0262ea2720104` |
| 47 | `theorem` | [map_snd_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/map-snd-darts.md) | 240 | `result-track:a495dc11a87273b7a6e2153763e822b9f94595543f64788a5de8ecef8009ba2a` |
| 48 | `theorem` | [map_fst_darts_append](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/map-fst-darts-append.md) | 243 | `result-track:146fdf5c611934ace90802f82e292ec33e21b6b79f8f7a8dbc57243800a4cbc2` |
| 49 | `theorem` | [map_fst_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/map-fst-darts.md) | 247 | `result-track:948f1a7328a9e2cffd5789c635647040b723fcabdfee6b0cd331014b875557b7` |
| 50 | `theorem` | [edges_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-nil.md) | 251 | `result-track:552e2603c733bf6f2accfd650fbce1c7d1e59f09456300b5580247093daf7b26` |
| 51 | `theorem` | [edges_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-cons.md) | 254 | `result-track:d3e42716381dacb7580332ef6ca45a057e7694349a6eb8c216e685efcfb2c738` |
| 52 | `theorem` | [_root_.SimpleGraph.Adj.edges_toWalk](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/root-simplegraph-adj-edges-towalk.md) | 257 | `result-track:541a07e9f7351844273d8072f0065ebee72317a04e33850c5c79a4ca1499d12a` |
| 53 | `theorem` | [length_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-support.md) | 261 | `result-track:7b9bacd39cc2baeafa651aabcde8d432d25e384f9d72e771259cfdf59cce272a` |
| 54 | `theorem` | [length_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-darts.md) | 265 | `result-track:3b9bcb3cb1a58928f709e0cd03dfee57942920e7d9ee393834f5956498bc31e7` |
| 55 | `theorem` | [length_edges](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-edges.md) | 269 | `result-track:291163ce1e702e6d97be92780e0bbe9e8efba4f1df1c996bebab0f3f8763a708` |
| 56 | `theorem` | [getElem_edges_eq_edge_getElem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/getelem-edges-eq-edge-getelem-darts.md) | 272 | `result-track:2bef257393be5b6e3ffdaf4d8bbfe3630b5db81ed102c1c0e52227639f904726` |
| 57 | `theorem` | [edge_getElem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edge-getelem-darts.md) | 277 | `result-track:8601049c2d8da7005d7cbbeb080af9cdb4bbcb09872a77ff66ad77a84ca86ae0` |
| 58 | `theorem` | [fst_darts_getElem](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/fst-darts-getelem.md) | 282 | `result-track:7bf56a452e0804081fdf843f1eeb6e48d32f498dae2490c78e9e310b6a18f071` |
| 59 | `theorem` | [snd_darts_getElem](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/snd-darts-getelem.md) | 287 | `result-track:77736abde0bc17ce5aadce5f20bed384dd642cdfd0cebdef849a512dff346ae6` |
| 60 | `lemma` | [support_getElem_zero](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-getelem-zero.md) | 292 | `result-track:f6090e611324d6c798f5b2d7fdc0a45e49e059c235cb82a57877de64f90ff915` |
| 61 | `lemma` | [support_getElem_length](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-getelem-length.md) | 295 | `result-track:35e8600770eba7c2e1bf6435187b1caab0f9762bc739761a4bcdc3b9d060d2d2` |
| 62 | `theorem` | [mem_darts_iff_infix_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-darts-iff-infix-support.md) | 298 | `result-track:a78bcaff31714f1b06faffac6589bd1fb5f1a46b8d70eb29e4d1f97138ec5956` |
| 63 | `theorem` | [mem_darts_iff_fst_snd_infix_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-darts-iff-fst-snd-infix-support.md) | 308 | `result-track:f4487e5393a1bc05fcc4b215937f71611f97625cd1fdfac1f230c45f522282a5` |
| 64 | `theorem` | [dart_fst_mem_support_of_mem_darts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/dart-fst-mem-support-of-mem-darts.md) | 312 | `result-track:d67a5fe0a5c82d0bc68e850ff1c291d41bfc9ef146bb8690993e1f8b72a9696f` |
| 65 | `theorem` | [mem_support_iff_exists_mem_edges](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-support-iff-exists-mem-edges.md) | 320 | `result-track:439785688f588c6714970cb3614c8d9345ebf860ae67757c4d8a7e896e1403c1` |
| 66 | `theorem` | [darts_nodup_of_support_nodup](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-nodup-of-support-nodup.md) | 324 | `result-track:d23f7f8494ee09010c8c75236214cc1ef546f1337986d2e168067d5f35903377` |
| 67 | `theorem` | [edges_eq_zipWith_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-eq-zipwith-support.md) | 332 | `result-track:d56093002a6dad7b764094fa62244120cd685f860b249574ea8cbb7efb7655c8` |
| 68 | `theorem` | [edges_injective](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-injective.md) | 338 | `result-track:ce945105e684238303f5b3634affe89b4d3abdf30290455ad91be1fd754741fc` |
| 69 | `theorem` | [darts_injective](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-injective.md) | 346 | `result-track:b58b3ef302778cef2a0d90b8b2aba191de0a042d85bc915c2d7a45b66138af7f` |
| 70 | `def` | [edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edgeset.md) | 350 | `declaration-track:a2d5315370230bcb82ce768d17ed24ea6e5732f79ff8b7c925398ac737a5b140` |
| 71 | `lemma` | [mem_edgeSet](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-edgeset.md) | 353 | `result-track:da7369c289de5bee13efed66133739e31ecc7b1d601d660e73bff5e24313feec` |
| 72 | `lemma` | [edgeSet_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edgeset-nil.md) | 356 | `result-track:eb55af76380540752392b18cdc6f01015ee3e5ce99b63dd7b91b29b108786b98` |
| 73 | `theorem` | [edgeSet_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edgeset-cons.md) | 359 | `result-track:4f5d104463578749085fea337f0e3baafe418a229b94d0d5e4bc02f975e19dd5` |
| 74 | `theorem` | [coe_edges_toFinset](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/coe-edges-tofinset.md) | 362 | `result-track:b4e221e3851aadfe29871bb1d5c80398ec57dbb2ee6681d068d6430013176194` |
| 75 | `inductive` | [Nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-source-edition-2.md) | 370 | `declaration-track:ec2e3b85467a8abc5c31daeda45fb9edb2a0081be9d5e78ad36fe13c590b9f37` |
| 76 | `lemma` | [nil_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-nil.md) | 373 | `result-track:7ceb3c328684d673ebbb5c26f34e9c997eca29fafc66ceb5dc35dccd4d037d24` |
| 77 | `lemma` | [not_nil_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/not-nil-cons.md) | 375 | `result-track:5b25659727c055f2fd23022208d4f6e7dd06b0478b24b1396c74b7dcded5e453` |
| 78 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/instance.md) | 377 | `declaration-track:1b2256760a1d0acd94b3f628f759e2f7854856bed53926231fb657bbe7bdef3b` |
| 79 | `lemma` | [Nil.eq](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-eq.md) | 383 | `result-track:9db866e6575669efab0730b6e7d5ec02adbf5dc9eddafa755e25707b21ac86da` |
| 80 | `lemma` | [not_nil_of_ne](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/not-nil-of-ne.md) | 385 | `result-track:eeb5d289e1e33d779eca515d04f18ef07c140f89182ff40c63feeed2ca53f642` |
| 81 | `lemma` | [nil_iff_support_eq](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-iff-support-eq.md) | 387 | `result-track:ee3d9c151ac91ed0c6d0250aadfb0765a770b26c836812c21c12084c673a35cd` |
| 82 | `lemma` | [darts_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-eq-nil.md) | 391 | `result-track:bf938a7f9ab74ddde73357c00716655bea3ac3db38c68d516b614940b5447a76` |
| 83 | `lemma` | [edges_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-eq-nil.md) | 395 | `result-track:0365a2c9939725cb5bcd066d95aa41dce9b33035a8ef4970444193f4a5089dbd` |
| 84 | `theorem` | [edgeSet_eq_empty](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edgeset-eq-empty.md) | 399 | `result-track:a3bc91c256b42b76b00afcf969c8074247e65dc10b759a1e2961ceb904cb21a3` |
| 85 | `theorem` | [length_eq_zero_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-eq-zero-iff.md) | 403 | `result-track:a17c41a53b05f3c0363daa493a601232bf013f66c2179678b99a155c7c51b1df` |
| 86 | `lemma` | [nil_iff_length_eq](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-iff-length-eq.md) | 409 | `result-track:443d82aa56d8bfe051e13d3b76b768ed4db39a7659b2addea6e2cf2bd7814c7c` |
| 87 | `lemma` | [not_nil_iff_lt_length](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/not-nil-iff-lt-length.md) | 412 | `result-track:308bad93e16c93fb2ec6e5bd35d5cc3079611adceee572b459c180c384b80499` |
| 88 | `lemma` | [not_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/not-nil-iff.md) | 415 | `result-track:acd7d77da2e36fbff65b87391221c2b867878a3e7845937d9bafa58487b9c5c1` |
| 89 | `theorem` | [eq_nil_iff_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/eq-nil-iff-nil.md) | 421 | `result-track:a89a46cf48ef0740895f72659d6ecfd443994d6ace0b5d7cd01486ce92518fd3` |
| 90 | `lemma` | [nil_iff_eq_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-iff-eq-nil.md) | 427 | `result-track:22c6487a914ac17590ff72268a598c7a1d88b9a6ea3955d9506223c632ee2911` |
| 91 | `lemma` | [nil_of_subsingleton](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-of-subsingleton.md) | 430 | `result-track:e952eaf880a2098a334dd9a16e258c65c6f5d8cb890960ae0747e1ce4c95ea25` |
| 92 | `theorem` | [nil_of_bot](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-of-bot.md) | 435 | `result-track:ddc1ad04c976234cc8817c486276585da611bcc42131b6e84da1ddfe5b344865` |
| 93 | `theorem` | [exists_nil_iff](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/exists-nil-iff.md) | 439 | `result-track:c8e57db85fcf2ddcf4cd1ac99f940fecacf1ff5d2b836e89b0b0a4b838614437` |
| 94 | `def` | [notNilRec](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/notnilrec.md) | 444 | `declaration-track:27ea0da5ba3f559c7aa152e61648daf3c540f79a3ccc2c3f22ca2042c0827236` |
| 95 | `lemma` | [notNilRec_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/notnilrec-cons.md) | 452 | `result-track:e1e882296b2dcee95fccf5c564356640905ec2f20c4e80a75c9f002c4ab3f775` |
| 96 | `theorem` | [end_mem_tail_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/end-mem-tail-support.md) | 457 | `result-track:52234d226514ecec9b587d62f8cd0528c6644057b8a521423bb63a9bb129644b` |
| 97 | `theorem` | [mem_support_iff_exists_mem_edges_of_not_nil](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/mem-support-iff-exists-mem-edges-of-not-nil.md) | 460 | `result-track:c0763007b2fa96cf52bbc770a0637fb6b00f8b7f02641726a3617c09898b9cd5` |
| 98 | `theorem` | [nil_of_isIsolated_of_mem_support](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/nil-of-isisolated-of-mem-support.md) | 466 | `result-track:a2e6caaa3871615d6954c7d91bce019e75cd91c5a99502bdf32f21e5b12c13ed` |
| 99 | `theorem` | [exists_boundary_dart](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/exists-boundary-dart.md) | 474 | `result-track:3370943c85e033641532011d1e84160bb45d0892f0e8a602174b9d3c60e0b1e8` |
| 100 | `def` | [ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofsupport.md) | 487 | `declaration-track:3be0fe7de5eef298e559b20e6685074f3d85fadf5987c330be3001afedde8f97` |
| 101 | `theorem` | [ofSupport_singleton](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofsupport-singleton.md) | 495 | `result-track:e6d0b33d40a0784480f81742e6919f9403f0b20b0b2f30de294c59f30f128133` |
| 102 | `theorem` | [ofSupport_cons_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofsupport-cons-cons.md) | 500 | `result-track:d095274d2aa7207d3139bee6262c5c108b38495c334484c087b25deedaa32df5` |
| 103 | `theorem` | [support_ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/support-ofsupport.md) | 507 | `result-track:43e8576e1b87e419e570e0388f413fdeadd42f82bd7778b2923afe5f6ff34b04` |
| 104 | `theorem` | [length_ofSupport](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-ofsupport.md) | 515 | `result-track:b8ae6e179c1a0b2bd22ccd73774d6434259cb10327995acc1f4d632188e1c608` |
| 105 | `def` | [ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofdarts.md) | 521 | `declaration-track:0d4cf380796403ac84453e8bbcbbd8c4a41cffa7995278d5687c02fda693737e` |
| 106 | `theorem` | [ofDarts_singleton](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofdarts-singleton-source-edition-2.md) | 529 | `result-track:aae77313700d12a320048c71fde3c9c21f0e858db2bf23a5ce3273d24f000d34` |
| 107 | `theorem` | [ofDarts_singleton'](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofdarts-singleton.md) | 532 | `result-track:38a3ea1446439a39cf4c49cf503f37b68706c2bcb1afc95694b4e88bbb9deb93` |
| 108 | `theorem` | [ofDarts_cons_cons](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/ofdarts-cons-cons.md) | 536 | `result-track:cd52c1be11fb589db3c4e685f3b8d427a88f351b00855b701cc1d51e3d5df312` |
| 109 | `theorem` | [darts_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/darts-ofdarts.md) | 544 | `result-track:a0c069c3479862cce424d0aac38c8238471ed7a5512d7aa9db2c39da95e76392` |
| 110 | `theorem` | [edges_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/edges-ofdarts.md) | 552 | `result-track:007bb92ba28eb7aaa835658e8de141f2d7c2ecf05d4dd89f1e96c6c0c0d17ed4` |
| 111 | `theorem` | [length_ofDarts](../../../../../Combinatorics/GraphTheory/WalkBasicPublic.lean/declarations/length-ofdarts.md) | 557 | `result-track:ac385f28dbbe78de4a3a2e887a180a83446cb86b5ba091307174fdcaecd1ba8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae479f260c31ee70f5f69b4bf6683d152e8fc15cf827b14b426376d4683e50af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Basic/Variantef3405e64d8923b7579502a68fe883edec2eea891feebe46b435d43f1aa42d42.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
