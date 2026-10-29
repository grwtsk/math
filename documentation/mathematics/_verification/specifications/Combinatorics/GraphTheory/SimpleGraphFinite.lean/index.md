# Verification target: Simple Graph Finite

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "feede69e73628a44e81353f30d98986f4befa9ee",
  "lexical_observation_count": 82,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `feede69e73628a44e81353f30d98986f4befa9ee`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Maps` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Card` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset.md) | 53 | `declaration-track:a65ddcae4f5751ff5b193deec9b8054b921e7c9b3d40d931d9ee4d51cef8242f` |
| 2 | `theorem` | [coe_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/coe-edgefinset.md) | 57 | `result-track:880851f44d4c2006b2787cfa39b5eb89986d5f120f5391405b81396a36302054` |
| 3 | `theorem` | [mem_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mem-edgefinset.md) | 62 | `result-track:7da074f1dec52331279755ab04f0d8bba5af1b3a851f19df2d0546e7ae81c555` |
| 4 | `theorem` | [not_isDiag_of_mem_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/not-isdiag-of-mem-edgefinset.md) | 65 | `result-track:a2511b485029cc29ad7c44f68fc8b719eedaedea43c9f4a40776461d35e86da1` |
| 5 | `theorem` | [edgeFinset_inj](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-inj.md) | 68 | `result-track:85a33607c19e3df628e7fb3f589b8b90be2aebb1beb2e742390db197b6485c9d` |
| 6 | `theorem` | [edgeFinset_subset_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-subset-edgefinset.md) | 70 | `result-track:3b813ad693b692c1190928f89a2c92e43ca4d621766d69e92f0d640086feb570` |
| 7 | `theorem` | [edgeFinset_ssubset_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-ssubset-edgefinset.md) | 72 | `result-track:4f00de06c9034716d5531747879b8facfa00983b225f3917f30dd08b8dafac65` |
| 8 | `theorem` | [edgeFinset_bot](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-bot.md) | 81 | `result-track:25f61a56034fcdb8bcfd6047d6706da3f59cddf5c42815c84a592898264b7b29` |
| 9 | `theorem` | [edgeFinset_sup](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-sup.md) | 84 | `result-track:6b531c74571272a07e1a2e671fd028cb108f459484befd105d1eb9ebc85f95c8` |
| 10 | `theorem` | [edgeFinset_inf](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-inf.md) | 88 | `result-track:0ac365e44a480d2cf19ebf32a040f627244a716ee64f8677651bc30fa594b335` |
| 11 | `theorem` | [edgeFinset_sdiff](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-sdiff.md) | 92 | `result-track:2e5c15e423f9a0f82a47e5b24a1a0e052753bd93c078ef2901bbb0d059f8b782` |
| 12 | `lemma` | [disjoint_edgeFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/disjoint-edgefinset.md) | 95 | `result-track:31e23e662ea0cb5a22b4f5223e8ec774e7854a288fe851f2735632d3f2956ae2` |
| 13 | `lemma` | [edgeFinset_eq_empty](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-eq-empty.md) | 98 | `result-track:5038fbb50f3eadc233993dc194e71d6fd6240dafddbb4433ae2a583a55db0174` |
| 14 | `lemma` | [edgeFinset_nonempty](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-nonempty.md) | 101 | `result-track:f9ef29faea0c0932deb0d146a366b1b7893ac41a540ec870026960def3e80032` |
| 15 | `theorem` | [edgeFinset_card](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-card.md) | 104 | `result-track:5fa7f179712f96b8e1441df304d3699b1d7b9355fe54e02e26924ae58df3c1f3` |
| 16 | `theorem` | [edgeSet_univ_card](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgeset-univ-card.md) | 108 | `result-track:cad71dabb5e57df64958b4fdcaefcccc327c11c94316767d7735dcd29a0eea23` |
| 17 | `theorem` | [edgeFinset_top](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-top.md) | 114 | `result-track:8992efd3a0721c990dbcfcd77fbacf0462034c6a55a380b1a6e842f9745e281c` |
| 18 | `theorem` | [card_edgeFinset_top_eq_card_choose_two](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-edgefinset-top-eq-card-choose-two.md) | 118 | `result-track:84bdda1c032f6f43e23357adfa1abfc6fa80f46da6b29ce8313ea8dbd230115b` |
| 19 | `theorem` | [card_edgeFinset_le_card_choose_two](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-edgefinset-le-card-choose-two.md) | 123 | `result-track:74cb2de8c0918f3f68d414c6d9489841331df0c1db578fa9279542dd023e928f` |
| 20 | `def` | [neighborFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborfinset.md) | 147 | `declaration-track:590c1b93b8100c6e1ea3ef3e2aeab0f0377bca6b6f54333fb092c1ffaabb2f34` |
| 21 | `theorem` | [neighborFinset_def](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborfinset-def.md) | 150 | `result-track:1f542b30f76777e24ed81d68aed73e019d577fda40f84cfd01261434a8e3c76b` |
| 22 | `theorem` | [mem_neighborFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mem-neighborfinset.md) | 154 | `result-track:b8fea534eb6b0c725cb4079dd2a5667adc16cba13619922af03d1bc00c14215c` |
| 23 | `theorem` | [notMem_neighborFinset_self](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/notmem-neighborfinset-self.md) | 157 | `result-track:a703e5a87e70fa45fb9bfd805adff60b1e6748bbd428e98bc71983d61181330a` |
| 24 | `theorem` | [neighborFinset_disjoint_singleton](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborfinset-disjoint-singleton.md) | 162 | `result-track:7e855b64972ede51090242e31808771d3880130551cf68552f9bfe0ab47c43aa` |
| 25 | `theorem` | [singleton_disjoint_neighborFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/singleton-disjoint-neighborfinset.md) | 165 | `result-track:3c51f7d59c77825cdd22ff39865eb2fd2621084b696e1d82080c326be742f488` |
| 26 | `def` | [degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree.md) | 169 | `declaration-track:2b75856cf90045e95ec65760c065ea3c7953aacc85976e98786909a47fb0dc6e` |
| 27 | `theorem` | [card_neighborFinset_eq_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-neighborfinset-eq-degree.md) | 172 | `result-track:e33709d46029b57490d983cc856956481aa69f5362926f56a64558b4f164adbf` |
| 28 | `theorem` | [card_neighborSet_eq_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-neighborset-eq-degree.md) | 175 | `result-track:3a55247d191ba28f94436e9ce8b8e6a86b0478ac72fe3d495adf171d8e02e4d3` |
| 29 | `theorem` | [degree_pos_iff_exists_adj](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-pos-iff-exists-adj.md) | 178 | `result-track:d4aac47f7e6b8127f7de4cadc7de6c47c8dffcdc171ae4a5285493b890284b7c` |
| 30 | `theorem` | [degree_pos_iff_mem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-pos-iff-mem-support.md) | 181 | `result-track:8bbb7ada5efb79e94db4e189df6c6aca551925ac47cb8702276bef9776c4cc97` |
| 31 | `theorem` | [degree_eq_zero_iff_notMem_support](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-eq-zero-iff-notmem-support.md) | 184 | `result-track:8b1aeba77348b6eb01cee255bbcda9fcd63c6b3d16142a53f5ceb3ffaa6950c3` |
| 32 | `theorem` | [degree_compl](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-compl.md) | 190 | `result-track:d8d47a0a301e86a3480353eee027d28833691af67dfdc3b3e041c1caae6b7007` |
| 33 | `instance` | [incidenceSetFintype](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/incidencesetfintype.md) | 196 | `declaration-track:216efed0a1b84d8739977210377f835943d486ab9d0347fd8249a1911b0a9548` |
| 34 | `def` | [incidenceFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/incidencefinset.md) | 200 | `declaration-track:9cb5d952c62a4fdcd172e58734584350fc006ab6431182ce335617723604015e` |
| 35 | `theorem` | [card_incidenceSet_eq_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-incidenceset-eq-degree.md) | 204 | `result-track:f8e93de0bf6b5b5d7da84b264f6b127db174baf29a57714488d5f09ecf228b1f` |
| 36 | `theorem` | [card_incidenceFinset_eq_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-incidencefinset-eq-degree.md) | 210 | `result-track:197a9622e8c36dd91486ddd2824c15bb10fbc1a88321f26675564e7aa40b398e` |
| 37 | `theorem` | [mem_incidenceFinset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mem-incidencefinset.md) | 215 | `result-track:3ea35b94c3f706b557028faf3a2fb05d1e918251644590c23b96e452026f1c41` |
| 38 | `theorem` | [incidenceFinset_eq_filter](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/incidencefinset-eq-filter.md) | 219 | `result-track:8760971299b159d04bdef23e9baaabe82edbb0946e36cd9be4e86d80f0ef16bc` |
| 39 | `theorem` | [incidenceFinset_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/incidencefinset-subset.md) | 225 | `result-track:377bf7c81174b8624217a30f363f82eeec606cb7a62fc9ca8ebc5757c4436d31` |
| 40 | `lemma` | [degree_le_of_le](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-le-of-le.md) | 232 | `result-track:d92905afa00bc48ac7a5b3889b9f71d1014a3d432f09874d68c1f97359559f3e` |
| 41 | `abbrev` | [LocallyFinite](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/locallyfinite.md) | 242 | `declaration-track:a915fa1787af00a322293f5aeff99ee1728abad7dfc3a7b27aaef32af3578417` |
| 42 | `def` | [IsRegularOfDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/isregularofdegree.md) | 248 | `declaration-track:ae0d563aecc9c491026295e2760e86b599fa2e60c069b7927a363630268c6139` |
| 43 | `theorem` | [IsRegularOfDegree.degree_eq](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/isregularofdegree-degree-eq.md) | 253 | `result-track:ae219373aee3750b999977b3fd27f078cdbe6259fcafeb494326ddef715ef8b7` |
| 44 | `theorem` | [IsRegularOfDegree.compl](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/isregularofdegree-compl.md) | 256 | `result-track:c2c9576ef3447ed3396c6866e37574792f3e9240355575f3664db6440579f324` |
| 45 | `instance` | [neighborSetFintype](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborsetfintype.md) | 267 | `declaration-track:287705ffe5a85cac6fdefdffc364c3819a4169e23f079d00668b555cc29b39c4` |
| 46 | `theorem` | [neighborFinset_eq_filter](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborfinset-eq-filter.md) | 274 | `result-track:2c0f5eb7fcdf9a702d3e23ea7d29e436e7833c448bbe9c16be8b63a899682fac` |
| 47 | `theorem` | [neighborFinset_compl](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/neighborfinset-compl.md) | 277 | `result-track:d1a7edfffa2a7850071661c331cb6401561272cdb33075807efd58a61a4ceb1c` |
| 48 | `theorem` | [complete_graph_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/complete-graph-degree.md) | 283 | `result-track:5d2b03a802db90bd7ebe18a82faf2bef6042135a3409b63c22bd80a223fbd451` |
| 49 | `theorem` | [bot_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/bot-degree.md) | 289 | `result-track:499ee066f3ff55f1215c808426267281f0fff91598d215d214213286ade70021` |
| 50 | `theorem` | [IsRegularOfDegree.top](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/isregularofdegree-top.md) | 293 | `result-track:3f11158bd6f25947d371c7c16accb3d9c9266d1dac028648210ee8c9aeb1d176` |
| 51 | `def` | [minDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree.md) | 301 | `declaration-track:9de127679680fe4f303f40b54e1e70c7ec7b4cc44f9277f20fdc9617165d5c2c` |
| 52 | `theorem` | [exists_minimal_degree_vertex](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/exists-minimal-degree-vertex.md) | 306 | `result-track:1efdd57837e285284cb058b509314570872bc4a440803230b1bacfce2d57a117` |
| 53 | `theorem` | [minDegree_le_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree-le-degree.md) | 313 | `result-track:ab702f10e8de4eb6b6fe443ee69843c7160997d6d54d86130f615e386d5c24e1` |
| 54 | `theorem` | [le_minDegree_of_forall_le_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/le-mindegree-of-forall-le-degree.md) | 321 | `result-track:c42db13573963d3b02094a202cc5e76131d4c17a102c9da84b8de612dd58a289` |
| 55 | `lemma` | [minDegree_of_isEmpty](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree-of-isempty.md) | 329 | `result-track:69dac2079c1862cfe500ac70847841d82ddd9975c96a7688790fcc29f3c4ad9e` |
| 56 | `lemma` | [minDegree_le_minDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree-le-mindegree.md) | 335 | `result-track:1be0fb3e7b7b0af4c7a053cb612a9c3bd4383e96671c934e6abb4201356cf076` |
| 57 | `def` | [maxDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/maxdegree.md) | 346 | `declaration-track:b47e9e51c98f1cd5e1550da206221d465dcb6db536682ea6f89a260487960ed5` |
| 58 | `theorem` | [exists_maximal_degree_vertex](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/exists-maximal-degree-vertex.md) | 351 | `result-track:87f4854908c44e0bb5cab09481285ae1a4326f925db936bc7a31d1c3da6afb03` |
| 59 | `theorem` | [degree_le_maxDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-le-maxdegree.md) | 362 | `result-track:f467a94191bea278f82c44883ba94fa60abe47dee62bd295e844f1402c1c5bcc` |
| 60 | `lemma` | [maxDegree_of_isEmpty](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/maxdegree-of-isempty.md) | 368 | `result-track:6d687c02dffa1538cd6e6adb8b9e865cd08a5bd49759e023c2436491b3b774df` |
| 61 | `theorem` | [maxDegree_le_of_forall_degree_le](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/maxdegree-le-of-forall-degree-le.md) | 374 | `result-track:ee1832cb14f95c7148de4fb102a507c336ff2cf260b430d01263031fad07fd6e` |
| 62 | `lemma` | [maxDegree_bot_eq_zero](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/maxdegree-bot-eq-zero.md) | 383 | `result-track:a5cd61fa6a5f4775a8f17c0805727c610842a01ec00629d2363796883a133873` |
| 63 | `lemma` | [minDegree_le_maxDegree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree-le-maxdegree.md) | 387 | `result-track:3317a669e90ee24cdb741c259b01bd747b577c487fa169ac81406fa0541f14ee` |
| 64 | `lemma` | [minDegree_bot_eq_zero](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/mindegree-bot-eq-zero.md) | 394 | `result-track:a8673a2db984bb33703b24d02a327ca735e780244192bab80e26c75bac0e064f` |
| 65 | `theorem` | [degree_lt_card_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-lt-card-verts.md) | 397 | `result-track:e28dd1dbb878c1ab08d2534efa03898e5666662ba6cc1bd383b14fbbc791a838` |
| 66 | `theorem` | [maxDegree_lt_card_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/maxdegree-lt-card-verts.md) | 407 | `result-track:b146fbf7ba68365bab138177bff463a48e823a98645ac18e354b345502d463df` |
| 67 | `theorem` | [card_commonNeighbors_le_degree_left](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-commonneighbors-le-degree-left.md) | 413 | `result-track:b46397063295d83d937c4853d273e2bf0d3d3e43d26ef6f7306f0f0a72a00f0f` |
| 68 | `theorem` | [card_commonNeighbors_le_degree_right](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-commonneighbors-le-degree-right.md) | 418 | `result-track:11784fa3804d35e900082b4255d9f2a16ebc210e4f0afb65bcdbb36f0dc61a29` |
| 69 | `theorem` | [card_commonNeighbors_lt_card_verts](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-commonneighbors-lt-card-verts.md) | 422 | `result-track:a378d56464b4f5a62a3a9d4431efda02f0c5ab99a228cad6edd1fd39574dc121` |
| 70 | `theorem` | [Adj.card_commonNeighbors_lt_degree](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/adj-card-commonneighbors-lt-degree.md) | 428 | `result-track:ccfd8299c92747f4da4c12a7c647852bab40a1718935fbe1ad5864007f969f91` |
| 71 | `theorem` | [card_commonNeighbors_top](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-commonneighbors-top.md) | 444 | `result-track:78d6546a9fd11710abb0720359070b85b9263e479a8563d84a10740a84608837` |
| 72 | `lemma` | [edgeFinset_subset_sym2_of_support_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/edgefinset-subset-sym2-of-support-subset.md) | 457 | `result-track:8eea48927beaac433c974036759ef6b604477e0e191fe8acf058743beaf91ef2` |
| 73 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/instance.md) | 464 | `declaration-track:38766572d421a15f79fd6a5432c648d758fc7d1c7611f45a9b41d2759fb01e2b` |
| 74 | `theorem` | [map_edgeFinset_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/map-edgefinset-induce.md) | 467 | `result-track:50240fdffdc3536075d5a05fc3c6fc5177e567724502288b7cf0d6e63b24d3d2` |
| 75 | `theorem` | [map_edgeFinset_induce_of_support_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/map-edgefinset-induce-of-support-subset.md) | 483 | `result-track:2c2701f92498a6c7d0770e64d23857df40947651ec4b9934f5c4c8c01a4a61a6` |
| 76 | `theorem` | [card_edgeFinset_induce_of_support_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-edgefinset-induce-of-support-subset.md) | 490 | `result-track:482bad678d64db5d1c2417a626d9c830ddb9f50963e915824eeaf7b654dd6287` |
| 77 | `theorem` | [card_edgeFinset_induce_support](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/card-edgefinset-induce-support.md) | 494 | `result-track:d6a6375c25e41fa583f0c10c2c1ffb3d9dcdbfbd2a8d7c2256694691c70244ef` |
| 78 | `theorem` | [map_neighborFinset_induce](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/map-neighborfinset-induce.md) | 498 | `result-track:87c46dd584c01cb16657bf4f11c38efbd070ecc8a2132f5e05164c0f081a3ebc` |
| 79 | `theorem` | [map_neighborFinset_induce_of_neighborSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/map-neighborfinset-induce-of-neighborset-subset.md) | 503 | `result-track:3efdf33e101b6c29fb949947938cd5f721008f3fafe1bc08bf708669b1919951` |
| 80 | `theorem` | [degree_induce_of_neighborSet_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-induce-of-neighborset-subset.md) | 511 | `result-track:a725068c596ec916c44970a37f81880f54c2ee76d52169ae74df1f4b40051a88` |
| 81 | `theorem` | [degree_induce_of_support_subset](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-induce-of-support-subset.md) | 518 | `result-track:8bd31a042ce8fb8860733cd26b8c6d35a32acf77caf187457cc049248d42fdfb` |
| 82 | `theorem` | [degree_induce_support](../../../../../Combinatorics/GraphTheory/SimpleGraphFinite.lean/declarations/degree-induce-support.md) | 523 | `result-track:6132242f2b453819988d275e6c2f8ddf8649d7ac1aa935c3084ecb40d145b4b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c7dc31e0a878a7fb1b04d4bbdc8d96a37733a52f5aca5618b9042e677176fea4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Finite/Variant10dee6a8006561ed7596878cf7283a8c9f35690c6837b2d2eebf869441205424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
