# Verification target: Combinatorics Composition Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "743743d60cec862274d7d70ca71dbe0c2522cc39",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `743743d60cec862274d7d70ca71dbe0c2522cc39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Sort` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Composition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/composition.md) | 108 | `declaration-track:b1deab6c3afe9901d16a9e77b9a5cc18fb718e740ce1ee2a699f4374ac4b9359` |
| 2 | `structure` | [CompositionAsSet](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionasset.md) | 123 | `declaration-track:9e1d01864f25090e2ca3aa87277e67ce80e0538806df626474e778547fcbfa83` |
| 3 | `instance` | [(anonymous)](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/instance.md) | 132 | `declaration-track:0905f446b481f46e2c32e47df4684b8ca143ae69b186e4f999af495a09563a02` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/instance-source-edition-2.md) | 147 | `declaration-track:236fc5c5cfb5d96fbc80c95829eda6f5df9b9623900672b01ef37d4c8076670e` |
| 5 | `def` | [length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length.md) | 152 | `declaration-track:c04416ac6fa9572b4da70255346455229eb2eb94eeb7f8da559fab9a14335bbc` |
| 6 | `theorem` | [blocks_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks-length.md) | 156 | `result-track:a1b9bfd8bc77c93bd2f5de112cdce28a4b456e5c8681150e405671da545fea3b` |
| 7 | `def` | [blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfun.md) | 164 | `declaration-track:091a72d4bf1b921edb5f0a54af6d1318cf11113729c5f1711ace48dfb6f587e3` |
| 8 | `theorem` | [ofFn_blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/offn-blocksfun.md) | 169 | `result-track:d311d4d029903762b8ddc70354d5aa6833e5d4f2d96b8440d611d5131b2327f0` |
| 9 | `theorem` | [sum_blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sum-blocksfun.md) | 173 | `result-track:767a42d237b60c70af3ebd3769141307e38aa4df2992c2e095fad18df2b9a5b0` |
| 10 | `theorem` | [blocksFun_mem_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfun-mem-blocks.md) | 179 | `result-track:75c7e72f2b853de1d808209f20e353224882674d79d62307f0a466c657f0b107` |
| 11 | `theorem` | [one_le_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/one-le-blocks-source-edition-2.md) | 184 | `result-track:b48cdd26987610315def708ac616f28cc995b89228cfd1880da106c72f51da04` |
| 12 | `theorem` | [one_le_blocks'](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/one-le-blocks.md) | 191 | `result-track:11ffc340a25f29fea56ebee122758bf556e37d38003f922988d532c307062c7f` |
| 13 | `theorem` | [blocks_pos'](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks-pos.md) | 198 | `result-track:e93f25ca28562b65a74eab291871dfc6c98d566d5eb47736b4f4f3b3096f1a54` |
| 14 | `theorem` | [one_le_blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/one-le-blocksfun.md) | 202 | `result-track:d310b6041278450fc69be899eaca9c31079e5e5beac40e3fe254fb4a68cb63ab` |
| 15 | `theorem` | [length_le](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-le.md) | 206 | `result-track:a60a0d0603d146e092114a26e99eea6e7fc00dfc0aeefee159ead7f53e452968` |
| 16 | `theorem` | [length_pos_of_pos](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-pos-of-pos.md) | 211 | `result-track:c4d93ba3a779d2526c4197b322dc083efd6e37f50b4f3fae474d27d8274ded98` |
| 17 | `def` | [sizeUpTo](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto.md) | 218 | `declaration-track:ce683521c60625e0c3b376e9ccb7a82553a4e78760cac79d7691e888e49d39b3` |
| 18 | `theorem` | [sizeUpTo_zero](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-zero.md) | 223 | `result-track:decb99b08ebd04f93de9db7ae689f2e28308e738be25f44f65af475ed8d3ae5d` |
| 19 | `theorem` | [sizeUpTo_ofLength_le](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-oflength-le.md) | 226 | `result-track:3a6e7c2382c00e224ff68a20eb7adfc26888659dae67c49e772774d08805ba72` |
| 20 | `theorem` | [sizeUpTo_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-length.md) | 233 | `result-track:9bf6e8fa301bda2e0e24b79b6f5dc224d459ae97c4e0863d0355e0f01105178c` |
| 21 | `theorem` | [sizeUpTo_le](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-le.md) | 237 | `result-track:e944626c3559a0da1a8f56d8ec5714dfd47e097b4f58dd6625ee939420778a3d` |
| 22 | `theorem` | [sizeUpTo_succ](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-succ.md) | 242 | `result-track:f58974b87077d8385e474a83e487d4f20776ef4dbce0cf9adf0f9636f4adfe1f` |
| 23 | `theorem` | [sizeUpTo_succ'](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-succ-source-edition-2.md) | 248 | `result-track:f8d565266fc8c0eab02b42434a79a376e68c576bd97495215abc3794648807b8` |
| 24 | `theorem` | [sizeUpTo_strict_mono](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-strict-mono.md) | 253 | `result-track:bb4c505cb753659d553617595568bb2e088ff6a6ce768077606ebbf1238b0513` |
| 25 | `theorem` | [monotone_sizeUpTo](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/monotone-sizeupto.md) | 258 | `result-track:99eefe36830abb90c5423373c43c8d6f106c2a7da8ad812516edb3680c72dc6c` |
| 26 | `def` | [boundary](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary-source-edition-2.md) | 265 | `declaration-track:b4d13de7a642e0a28f873c70ece894d6d106f028e49aafda5320704a6a713139` |
| 27 | `theorem` | [boundary_zero](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary-zero-source-edition-2.md) | 271 | `result-track:4b5445d66d9de0367b42ab33a4a3fbd6f5fd3ddf740027f38c830b6f00312899` |
| 28 | `theorem` | [boundary_last](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary-last.md) | 275 | `result-track:15b4c66ee7cd31b7c332fef9904fc5895bb16246a728c5bc404a8f2565722e30` |
| 29 | `def` | [boundaries](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundaries.md) | 282 | `declaration-track:55a4a2dc5bcb7d508c03e6880394d335255f2b2e670a8ae58877445accaaec53` |
| 30 | `theorem` | [card_boundaries_eq_succ_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/card-boundaries-eq-succ-length.md) | 286 | `result-track:3ce1496e1450bdbd3abaac2449cf2434769f12c507ae7e69fadb040195b9b879` |
| 31 | `def` | [toCompositionAsSet](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/tocompositionasset.md) | 291 | `declaration-track:cb8f61dcea5fc26dddd9da332eb159567a95b8ccebdbce80473b45883b1347c4` |
| 32 | `theorem` | [orderEmbOfFin_boundaries](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/orderemboffin-boundaries.md) | 304 | `result-track:d56ac40def4136cb0517bb4e99dca1488941d5ffab02a8e121c1f7db4efeb408` |
| 33 | `def` | [embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/embedding.md) | 312 | `declaration-track:9249fcd25b2d9367427d6444b71736fe0f0c7d25148398d8ec7bd6b71a4396c5` |
| 34 | `theorem` | [coe_embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/coe-embedding.md) | 322 | `result-track:94db326eb9c21ae77a1ed572b17467aeb6938b037aa06ec9cd10e2bf7b29fac4` |
| 35 | `theorem` | [index_exists](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/index-exists.md) | 330 | `result-track:022fd537bf6bf267a74fc93b3b00efd76a2c2e71f5369cbef9f5c0a4bdcaf712` |
| 36 | `def` | [index](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/index.md) | 340 | `declaration-track:3e7e941954f08a9ff6c3c8d567513e7b331e13977134de17ed2fa70f2f942652` |
| 37 | `theorem` | [lt_sizeUpTo_index_succ](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/lt-sizeupto-index-succ.md) | 344 | `result-track:55ecc82904508708c2eecb8826752e5b5bcc7986409337bad2c01132334660e4` |
| 38 | `theorem` | [sizeUpTo_index_le](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sizeupto-index-le.md) | 348 | `result-track:0bb4c6a7bac8e7d34d3a61548fb9b70848c741c9ff3c2f7421f52b974320e22e` |
| 39 | `def` | [invEmbedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/invembedding.md) | 366 | `declaration-track:6b35017c900e83dad35f19e4267cacfd5673d240d4517dedf72c9897e4f85279` |
| 40 | `theorem` | [coe_invEmbedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/coe-invembedding.md) | 374 | `result-track:1bd59e3f9315e62671395c0ceb20846de7ecf5b925e6647cc5a3db4ae668c7a3` |
| 41 | `theorem` | [embedding_comp_inv](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/embedding-comp-inv.md) | 378 | `result-track:3604acd0c1f37b11215ab3552212fdb0b22cf9d5612d7d8f61dc6ed607b5b373` |
| 42 | `theorem` | [mem_range_embedding_iff](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/mem-range-embedding-iff.md) | 383 | `result-track:87cb77a848fdf8358f55344a7a8b334d577605571842ec110b45963f96bc27e7` |
| 43 | `theorem` | [disjoint_range](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/disjoint-range.md) | 403 | `result-track:cbbb0054dbddb909e1677465a8af20563642d77ce879c8b823bbbbeefde0bbbf` |
| 44 | `theorem` | [mem_range_embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/mem-range-embedding.md) | 420 | `result-track:524f747e9e60716aa5554cc003721fd030394e3e0dd12d4a5ef69babc64a856d` |
| 45 | `theorem` | [mem_range_embedding_iff'](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/mem-range-embedding-iff-source-edition-2.md) | 428 | `result-track:d2d35016048007bd8bdc43bdd0dc6be684fbaa490272b0d11e3102b256eb844f` |
| 46 | `theorem` | [index_embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/index-embedding.md) | 439 | `result-track:f9b63c7d9c38b721d2cfd7193f15c72b0d11cb765db2c856d2dc4ff662a234a1` |
| 47 | `theorem` | [invEmbedding_comp](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/invembedding-comp.md) | 446 | `result-track:728e2732744acfc0ccf63796ce02bba448c3e0d9081b3e4a3d0b90c6e7d8fdb8` |
| 48 | `def` | [blocksFinEquiv](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfinequiv.md) | 453 | `declaration-track:64bb731e6bd6a9947d5cf5facc35e4d300cf4b7f2e6a03b2babb09a4f6dd04cc` |
| 49 | `theorem` | [blocksFun_congr](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfun-congr.md) | 467 | `result-track:44515397f70299ab968ad0d30f4fb8a83137d600d63f43a76c93fdfad2bb4d11` |
| 50 | `theorem` | [sigma_eq_iff_blocks_eq](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sigma-eq-iff-blocks-eq.md) | 479 | `result-track:7165a7ca6f5808edf70d02e7c93eca70985c6bb5b12755853dcd22c5c843ddb5` |
| 51 | `def` | [ones](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones.md) | 495 | `declaration-track:e9d055cc00723a960d3722bd5086a8c5014c1fcd5f81c37f66be423eccadf194` |
| 52 | `instance` | [(anonymous)](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/instance-source-edition-3.md) | 499 | `declaration-track:99177d9527a56c775229f086e8140cc9016e4e23544862ede5c44b0db5cff663` |
| 53 | `theorem` | [ones_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones-length.md) | 503 | `result-track:949ad9f3cd108f5fb89d980c6245e2552d21b5581b2815c2ae50e9b83160bc1c` |
| 54 | `theorem` | [ones_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones-blocks.md) | 508 | `result-track:4897fb6efbc6f808a59c0be037743db333ff2d910fad22501ea9ef8e8137d5d5` |
| 55 | `theorem` | [ones_blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones-blocksfun.md) | 515 | `result-track:9cfce8c0d476feb1e697b2f8b3cb5572c54d8fe63c5b597d561673bdd9bf4188` |
| 56 | `theorem` | [ones_sizeUpTo](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones-sizeupto.md) | 520 | `result-track:040243e46f8ceafe4fe9188b3e387891a5958ab9af744d1f491e11fa46a96633` |
| 57 | `theorem` | [ones_embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ones-embedding.md) | 525 | `result-track:428b43812b6c836dd6b0b743ca72e972d438d557aa539408b7d7589e89e9cac8` |
| 58 | `theorem` | [eq_ones_iff](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/eq-ones-iff.md) | 531 | `result-track:3d0b7b8292add43959bb6f6b868a75d9ee78203081f41e92473d51f4e1d1a52a` |
| 59 | `theorem` | [ne_ones_iff](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ne-ones-iff.md) | 544 | `result-track:c327cc95cb17ea43584965c1a98de7622f49361b9c2c7b2c4ead3ad596dacd91` |
| 60 | `theorem` | [eq_ones_iff_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/eq-ones-iff-length.md) | 550 | `result-track:8f11182ae72317ace134c66e25f27fbc6c134709a52f81a9672ca547bd884180` |
| 61 | `theorem` | [eq_ones_iff_le_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/eq-ones-iff-le-length.md) | 570 | `result-track:528c09131413b6c98e2b629558fc24a31b05e8ef5dc20ebc61cc173f55f18998` |
| 62 | `def` | [single](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/single.md) | 577 | `declaration-track:d7d4e9678fa97289388d75f1ae07258ed90c55930c3e8cad9fab983fb8577880` |
| 63 | `theorem` | [single_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/single-length.md) | 582 | `result-track:d12e1d1f7d3d25b681d409b10382e643049f2f010fa79170342e28c27bf6efd7` |
| 64 | `theorem` | [single_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/single-blocks.md) | 587 | `result-track:9a33b84ad0c979ad0fd8f12a98cad45ecc1c9b17e2056236639a4ca68245996c` |
| 65 | `theorem` | [single_blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/single-blocksfun.md) | 592 | `result-track:02248cf66677d18dc7c697e8f4f34013492465279dc8a854c98b8f6234d78845` |
| 66 | `theorem` | [single_embedding](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/single-embedding.md) | 597 | `result-track:08ae728f580da7f11c8ced9670ecc0f7b6e1975d6c807c003001e5c343686ffa` |
| 67 | `theorem` | [eq_single_iff_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/eq-single-iff-length.md) | 603 | `result-track:407dbbacf71b3f23e1e945638878fa9343b3a23e5a873c1e90acfd3af02b4167` |
| 68 | `theorem` | [ne_single_iff](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/ne-single-iff.md) | 617 | `result-track:10f08c6f2d1012944bba09d623ba67c5a1447371e6ae7c21b741cce8a70a4ced` |
| 69 | `def` | [splitWrtCompositionAux](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/splitwrtcompositionaux.md) | 657 | `declaration-track:0736eab1bd8cf0118c1d0953e98103d7cc943fb4b7a8c4ca2dba968198602b81` |
| 70 | `def` | [splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/splitwrtcomposition.md) | 667 | `declaration-track:f5d7c20a5ab746b35fac5c064ce2188d26f8b47d77425bbe58902cc92d10f22d` |
| 71 | `theorem` | [splitWrtCompositionAux_cons](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/splitwrtcompositionaux-cons.md) | 677 | `result-track:9c541aac0bab0a2adb90067749c3a1907c638c894146754dc5892f0f0db843ec` |
| 72 | `theorem` | [length_splitWrtCompositionAux](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-splitwrtcompositionaux.md) | 682 | `result-track:0eeb5398eb6d24d2d6592755afe2a539620f0fa5c47ad40fbca7ba72919f428f` |
| 73 | `theorem` | [length_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-splitwrtcomposition.md) | 692 | `result-track:4a89703e2feed33ef402f8bc4e42e83690290554152cbdeb84c54c6ed947006a` |
| 74 | `theorem` | [map_length_splitWrtCompositionAux](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/map-length-splitwrtcompositionaux.md) | 698 | `result-track:b07b553e42c280ab8148ba455bac6670050628a91182b4b9d65017f66a160ab5` |
| 75 | `theorem` | [map_length_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/map-length-splitwrtcomposition.md) | 711 | `result-track:c8c8eebdb00094979af5a0381b56be92458777d053e8d3e9ad2e8f35490a56ae` |
| 76 | `theorem` | [length_pos_of_mem_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-pos-of-mem-splitwrtcomposition.md) | 716 | `result-track:1a491ce0f7ca77a54fb5bdf54fe786e51a6fc3d1088ed51bfa6ee73798de9c2c` |
| 77 | `theorem` | [sum_take_map_length_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/sum-take-map-length-splitwrtcomposition.md) | 724 | `result-track:0799346b4a89691300ff8ff0806311fd83f50ed43c87365e44e503077d36ab16` |
| 78 | `theorem` | [nthLe_splitWrtCompositionAux](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/nthle-splitwrtcompositionaux.md) | 732 | `result-track:c969eaf7cf0194c347c6b7399dec77d6ccad11f6f5d62fd97e03843418f1e9f6` |
| 79 | `theorem` | [nthLe_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/nthle-splitwrtcomposition.md) | 752 | `result-track:5d993367743bb1ff5ac371e1de58694aa0b531ba58fb2b618f5a53eddfcb4e3e` |
| 80 | `theorem` | [get_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/get-splitwrtcomposition.md) | 759 | `result-track:31f35a32c4d8b2f301e138d078601b3eeb37a7f29a21a9c80ded9da4e556b0d1` |
| 81 | `theorem` | [join_splitWrtCompositionAux](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/join-splitwrtcompositionaux.md) | 764 | `result-track:e503e2c015bf145e99025ecd6c0fc1e40ac6703c642a4ca15c8954c34a662aa6` |
| 82 | `theorem` | [join_splitWrtComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/join-splitwrtcomposition.md) | 777 | `result-track:66b96d420ab8a3dd724c3fb0b0e70643984a72f29a569e85fff2774092b7916e` |
| 83 | `theorem` | [splitWrtComposition_join](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/splitwrtcomposition-join.md) | 785 | `result-track:26e0784205dd705f42e22a35defb902ca5f5cd2c5ab6f3bb25a2c62453a93bb5` |
| 84 | `def` | [compositionAsSetEquiv](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionassetequiv.md) | 803 | `declaration-track:9bcf490452554bc0d0295797c860347dab8604d0653365278d36635c2f9e2d0e` |
| 85 | `instance` | [compositionAsSetFintype](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionassetfintype.md) | 873 | `declaration-track:ab3a343947aebb2a1d3820ac9f962df966d09d2f70d3a3e91af2a79515e3617e` |
| 86 | `theorem` | [compositionAsSet_card](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionasset-card.md) | 877 | `result-track:f4041db59c57f301306357be947e80a9dd10dbdde43d4ee7b2ac15822cef5682` |
| 87 | `theorem` | [boundaries_nonempty](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundaries-nonempty.md) | 887 | `result-track:e10d5d04fe64fde5f191710363bcc51528edddf867402417f41aeadc5b0a8e74` |
| 88 | `theorem` | [card_boundaries_pos](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/card-boundaries-pos.md) | 891 | `result-track:cc8b10b5caa57db3ad1783f1281672a57a23e6016481674aa3b89789637fdd13` |
| 89 | `def` | [length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-source-edition-2.md) | 896 | `declaration-track:c48e57d86ea89db5fa66bb80b57b64d3c5968b136620d7421cad6d1f4c7329db` |
| 90 | `theorem` | [card_boundaries_eq_succ_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/card-boundaries-eq-succ-length-source-edition-2.md) | 900 | `result-track:7a626776dde0f1f584f4005e88648959ab06c979fcfac4c435024d599450db85` |
| 91 | `theorem` | [length_lt_card_boundaries](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/length-lt-card-boundaries.md) | 904 | `result-track:b519f6e82a9f0dffe06134c0dab4b1c73f010d083485e7d0750db63e45b5fd78` |
| 92 | `theorem` | [lt_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/lt-length.md) | 909 | `result-track:8aba5bf4fac09f9e5cad042dc4a37d39620450f5787fd97713641c7aa7cd602c` |
| 93 | `theorem` | [lt_length'](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/lt-length-source-edition-2.md) | 913 | `result-track:9fd5c090ea97ee4684f5df75ef2ffc735c052a4b2929b08a8399da8bae62e905` |
| 94 | `def` | [boundary](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary.md) | 918 | `declaration-track:61e8248f0342b91a45ccd4693275638c2c0ff5296d1063cd70b4effc537bedae` |
| 95 | `theorem` | [boundary_zero](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary-zero.md) | 923 | `result-track:19af5b0673050b012b6516674b84c6f06f1024011194147f4ab48c8292fbd002` |
| 96 | `theorem` | [boundary_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/boundary-length.md) | 929 | `result-track:6c7942692bebd73734709a92d2f56dc423df7e9a116ffa1d15395930f78f46ee` |
| 97 | `def` | [blocksFun](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfun-source-edition-2.md) | 935 | `declaration-track:20cd19d59213b568c392771976918f73beff5bd3e3b515ca4f68ff52f281a97c` |
| 98 | `theorem` | [blocksFun_pos](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocksfun-pos.md) | 939 | `result-track:315f1e39cc5656d8e0c04d6f3a0b5b522f15ecf82a4ebd869484f5edc2cd6c5c` |
| 99 | `def` | [blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks.md) | 946 | `declaration-track:e4d56ebf3ed4701e4976ca8e330ec4d3230eac689826a862d17d8c52af79c2c5` |
| 100 | `theorem` | [blocks_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks-length-source-edition-2.md) | 951 | `result-track:dd7eaf95bfd9a904c13ab2afad5d606a01c98d179a221b8e1ffa4950f6addc4b` |
| 101 | `theorem` | [blocks_partial_sum](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks-partial-sum.md) | 957 | `result-track:28ed05171ab2b7338a43cfd09f0836a5f30a7371b60793b07c1385f903b9e91b` |
| 102 | `theorem` | [mem_boundaries_iff_exists_blocks_sum_take_eq](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/mem-boundaries-iff-exists-blocks-sum-take-eq.md) | 971 | `result-track:93370b9db20dc58b3a30d719510f18a126f7eb6d36033dd0eb491466b88391b3` |
| 103 | `theorem` | [blocks_sum](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/blocks-sum.md) | 987 | `result-track:eac8fe5f01935d4248470c460c8e629aff788457b74da783fd549fbfd5cdb1e2` |
| 104 | `def` | [toComposition](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/tocomposition.md) | 995 | `declaration-track:231fab636558f25916ca68d08a4b434c6aef85c58d033639dbeb1ab684682c81` |
| 105 | `theorem` | [Composition.toCompositionAsSet_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/composition-tocompositionasset-length.md) | 1013 | `result-track:71e4f9b9797ef3a95a3258ec00d0131823deca37dce9e11ccd20ff2ebdee7b04` |
| 106 | `theorem` | [CompositionAsSet.toComposition_length](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionasset-tocomposition-length.md) | 1019 | `result-track:e0558173009ecd16f338f68ad4703f3f63a3adb9039ba3725c2d14bee418e8d2` |
| 107 | `theorem` | [Composition.toCompositionAsSet_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/composition-tocompositionasset-blocks.md) | 1025 | `result-track:5664ee24fda6cb4790f6fec4533068f9c23c8d4d9bbc44eba3ef2f42d32c6fc3` |
| 108 | `theorem` | [CompositionAsSet.toComposition_blocks](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionasset-tocomposition-blocks.md) | 1051 | `result-track:53a63c85c3154cd5b9fb3d715b838d0e9183af28e4c04420975d79bfaeac124b` |
| 109 | `theorem` | [CompositionAsSet.toComposition_boundaries](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionasset-tocomposition-boundaries.md) | 1057 | `result-track:05af4fdbb8ecc3b5a98f1fe359608c38b3860f2deaa427f3210a505114c19e20` |
| 110 | `theorem` | [Composition.toCompositionAsSet_boundaries](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/composition-tocompositionasset-boundaries.md) | 1073 | `result-track:24de5847b73c427593692c7f4527e95ebb466023a53f02ad7852cea02874ada2` |
| 111 | `def` | [compositionEquiv](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionequiv.md) | 1079 | `declaration-track:95f8e0bd4075515c0b4deb5cd7b64bf367c42fcf7124abfb9fcd564b9956ae5f` |
| 112 | `instance` | [compositionFintype](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/compositionfintype.md) | 1091 | `declaration-track:f808d7eab9eaa57e212941f5d3b61654fa5a8645bd79aa27d64609139c063cdd` |
| 113 | `theorem` | [composition_card](../../../../Combinatorics/CombinatoricsCompositionNamespaced.lean/declarations/composition-card.md) | 1095 | `result-track:55fd771c0b370e11f8b598724d3c156b3e5eef35c572bf381428319a3db90a1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6346c2743e3f5fdb6fb72823945981b3bfbbfeb3d7d880e778d5a87c1137b202 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Composition/Variant566c36549e08f786ba50a51dad2b33f8768face49e3733ab5641cd6a38747570.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
