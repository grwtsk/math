# Verification target: GRWTSK.Topology.MetricTopology.Constructions.Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c56a292096f226d7e5f5e6d944a19610440e0fae",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c56a292096f226d7e5f5e6d944a19610440e0fae`.

Source path: `GRWTSK/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bornology.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PseudoMetricSpace.induced](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/pseudometricspace-induced--cbdc32b6fa104821f6193e38.md) | 31 | `declaration-track:cbdc32b6fa104821f6193e3874e605996d57506d35de291fabdeb43804d86bcf` |
| 2 | `def` | [Topology.IsInducing.comapPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/topology-isinducing-comappseudometricspace--66cbf054de9846dad3a7e59c.md) | 48 | `declaration-track:66cbf054de9846dad3a7e59c93c73694c2adb4060ba061bb452d8586a00eaf50` |
| 3 | `def` | [IsUniformInducing.comapPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/isuniforminducing-comappseudometricspace--e68b066b9ce2f85ac70678b7.md) | 58 | `declaration-track:e68b066b9ce2f85ac70678b78218a5570a52a4314db0b42480dc3001651e155e` |
| 4 | `instance` | [Subtype.pseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/subtype-pseudometricspace--b5eb38449da668353e834c66.md) | 62 | `declaration-track:b5eb38449da668353e834c66d75b397698dc8a464d672a3fe4f19762f8b5a83f` |
| 5 | `lemma` | [Subtype.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/subtype-dist-eq--cb746f8fc0d032fe7bce2c4d.md) | 65 | `result-track:cb746f8fc0d032fe7bce2c4db276ddf4b1e0b691647607fef917150bc83c4ef6` |
| 6 | `lemma` | [Subtype.nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/subtype-nndist-eq--4952c2963dad5dc34d1bd537.md) | 67 | `result-track:4952c2963dad5dc34d1bd5379260dcf7b683df580d4e899adedc66478f9e0b76` |
| 7 | `instance` | [instPseudoMetricSpace](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/instpseudometricspace--b960a2018258b94e7d32671f.md) | 72 | `declaration-track:b960a2018258b94e7d32671f5db8268d40d45057e4111aefc7f5712c903668f2` |
| 8 | `lemma` | [dist_unop](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-unop--995af24980a965ec6af48473.md) | 76 | `result-track:995af24980a965ec6af4847399f1c9e21dda1162698f920ca2d6127bcdc22446` |
| 9 | `lemma` | [dist_op](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-op--8d6c17428294717dd0a990df.md) | 79 | `result-track:8d6c17428294717dd0a990dfca7f0c660ed92cdc6fb539e2f11d662eb9b4c90f` |
| 10 | `lemma` | [nndist_unop](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nndist-unop--042453989e2ba111e3c1c158.md) | 82 | `result-track:042453989e2ba111e3c1c158d503e85bac6822dd7bceab70f7a29db4e935f409` |
| 11 | `lemma` | [nndist_op](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nndist-op--ae4f3d16705d038570a3ad29.md) | 85 | `result-track:ae4f3d16705d038570a3ad29b41db5333fb25b444760b45292fdd1acc6b39327` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/instance--6e36eda86ddb1886e0051799.md) | 91 | `declaration-track:6e36eda86ddb1886e0051799442fb80e0aa7dbe3d04414ea1f0853dd77c7357d` |
| 13 | `lemma` | [NNReal.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-dist-eq--2f3240b3285ee4c0e7825b8f.md) | 93 | `result-track:2f3240b3285ee4c0e7825b8fd6d51e1aa3f395b6c3123f573d259ae3f65406f0` |
| 14 | `lemma` | [NNReal.nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-nndist-eq--82287d490e1dced4a8d784d9.md) | 95 | `result-track:82287d490e1dced4a8d784d97a66b85ff22b138c8895259f5850f0182f42d88c` |
| 15 | `lemma` | [NNReal.nndist_zero_eq_val](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-nndist-zero-eq-val--bdeb34788fe74213ecfd7871.md) | 102 | `result-track:bdeb34788fe74213ecfd78716ababc34fba451a356c578fccc45755f9335182f` |
| 16 | `lemma` | [NNReal.nndist_zero_eq_val'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-nndist-zero-eq-val--edd4549ed98cba700a6f018c.md) | 106 | `result-track:edd4549ed98cba700a6f018ccbc62547c5652c2529a5a46c0733850c2314184c` |
| 17 | `lemma` | [NNReal.le_add_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-le-add-nndist--11a820c11c67f5fd410bdbba.md) | 110 | `result-track:11a820c11c67f5fd410bdbba7ddac4167b3829b062e046aaa2b8fa4ee00a1333` |
| 18 | `lemma` | [NNReal.ball_zero_eq_Ico'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-ball-zero-eq-ico--d0c85035267a70f372fb94d2.md) | 116 | `result-track:d0c85035267a70f372fb94d2f44ad10fcd5ea23e7c41d3637751920a56765213` |
| 19 | `lemma` | [NNReal.ball_zero_eq_Ico](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-ball-zero-eq-ico--d9789836279e4e38bd8bb16d.md) | 119 | `result-track:d9789836279e4e38bd8bb16d3bb489949fb702a80b3ff59d54020694b82eea13` |
| 20 | `lemma` | [NNReal.closedBall_zero_eq_Icc'](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-closedball-zero-eq-icc--5f3510c2ae4e6bb8cd934d33.md) | 126 | `result-track:5f3510c2ae4e6bb8cd934d33ed86c423e786af5fb1e6ea9df317b64c59f04fea` |
| 21 | `lemma` | [NNReal.closedBall_zero_eq_Icc](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nnreal-closedball-zero-eq-icc--07fd5a570ce905e89cca66a2.md) | 129 | `result-track:07fd5a570ce905e89cca66a210af206d399de20ac5f6bd4ba9c4d187d17246ae` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/instance--ebcae67ecaeb1134f56ebc97.md) | 139 | `declaration-track:ebcae67ecaeb1134f56ebc971d1e9983b1fb3c1dd489c3886a7dc90dded6149d` |
| 23 | `lemma` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-eq--b79375e41e090ce5324c77b6.md) | 141 | `result-track:b79375e41e090ce5324c77b6ca22d08a4ca1c960e40158cd884a41bfddf487c9` |
| 24 | `lemma` | [nndist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nndist-eq--531a28cc28d134722cfec526.md) | 143 | `result-track:531a28cc28d134722cfec526a0be53c0183317a311836e57cc3ef1a71576615d` |
| 25 | `lemma` | [dist_up_up](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-up-up--ae20bf430bef1876c70976f9.md) | 145 | `result-track:ae20bf430bef1876c70976f9b69d13cce053e0ef9cd24d1269610cb45588de63` |
| 26 | `lemma` | [nndist_up_up](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/nndist-up-up--82d61910c387b4c7d6111114.md) | 147 | `result-track:82d61910c387b4c7d6111114cb38f851b9275241e80b4114eb5c47337d5ba0ff` |
| 27 | `instance` | [Prod.pseudoMetricSpaceMax](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/prod-pseudometricspacemax--04b35ba61ca1faa385083eca.md) | 154 | `declaration-track:04b35ba61ca1faa385083eca2fb9714363cf2948342f552e7d7aa2f850ea6ec1` |
| 28 | `lemma` | [Prod.dist_eq](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/prod-dist-eq--6f295548433f7ec05de28007.md) | 165 | `result-track:6f295548433f7ec05de28007b45fe442df13331128b5d44150ddf09ab671be6a` |
| 29 | `lemma` | [dist_prod_same_left](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-prod-same-left--99299ea5ae1e4b74752162c8.md) | 168 | `result-track:99299ea5ae1e4b74752162c838c52fdb3301aeefd1c9b51d52e12880f033ca29` |
| 30 | `lemma` | [dist_prod_same_right](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/dist-prod-same-right--88e33e3c3ae80326b1db40ac.md) | 172 | `result-track:88e33e3c3ae80326b1db40ac859863dfb5e244d98025f013bd11b443e6b9de47` |
| 31 | `lemma` | [ball_prod_same](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/ball-prod-same--fc47cd3478c80216c1c900b9.md) | 175 | `result-track:fc47cd3478c80216c1c900b9e262697ef36fe7dea8a3ba36f7d88546c22a27a4` |
| 32 | `lemma` | [closedBall_prod_same](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/closedball-prod-same--1a7fb5ab2772577c8bc7ff80.md) | 178 | `result-track:1a7fb5ab2772577c8bc7ff809a129ac6578e70d9b61a669cf1e371cbc082190e` |
| 33 | `lemma` | [sphere_prod](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/sphere-prod--be98d14445e88a650661d157.md) | 181 | `result-track:be98d14445e88a650661d1570d1beb49c49408075db1004e0d190a48de9df06c` |
| 34 | `lemma` | [uniformContinuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/uniformcontinuous-dist--fcb3aaaec9bf937e9268735b.md) | 195 | `result-track:fcb3aaaec9bf937e9268735b0789ee5fd231f37ec9e2ae642cfcc4a3977dc568` |
| 35 | `lemma` | [UniformContinuous.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/uniformcontinuous-dist--e56e14e4361234aaa5300af2.md) | 204 | `result-track:e56e14e4361234aaa5300af27598351159a50bcfd6216e89a767e1b4c66cafc3` |
| 36 | `lemma` | [continuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/continuous-dist--dea0236019344e10ac9b4701.md) | 209 | `result-track:dea0236019344e10ac9b470110a308f69d371098db063bb235b364f67a3657f7` |
| 37 | `lemma` | [Continuous.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/continuous-dist--1f3f3759a298f5ffc7528f13.md) | 212 | `result-track:1f3f3759a298f5ffc7528f1335a0b39285028eb6c93c1c8baf93acf27e3595e5` |
| 38 | `lemma` | [Filter.Tendsto.dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/filter-tendsto-dist--0bf1e5a154962c75bc0d8a64.md) | 216 | `result-track:0bf1e5a154962c75bc0d8a64e28c6f48168272dd79f16f8fc02adc027598f171` |
| 39 | `lemma` | [continuous_iff_continuous_dist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/continuous-iff-continuous-dist--edf079bb295edf4e7f4a6b92.md) | 221 | `result-track:edf079bb295edf4e7f4a6b92f55f1d8adf16fa33091767f5a5b30533bea6f946` |
| 40 | `lemma` | [uniformContinuous_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/uniformcontinuous-nndist--83ec233c6c68430d64db9ede.md) | 227 | `result-track:83ec233c6c68430d64db9ede40c396f30ab2be636c6e0294777e7168882b6579` |
| 41 | `lemma` | [UniformContinuous.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/uniformcontinuous-nndist--98b54f74dd170eeb77359ae7.md) | 230 | `result-track:98b54f74dd170eeb77359ae740752733fcfdd7fc6e52a3db8c69980c4c2c3d5a` |
| 42 | `lemma` | [continuous_nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/continuous-nndist--62006f94ef5f111b50424241.md) | 234 | `result-track:62006f94ef5f111b5042424161e9598d28de9320bc57539bb93211adbdc2191c` |
| 43 | `lemma` | [Continuous.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/continuous-nndist--79155e4a48a56b83fb19455f.md) | 238 | `result-track:79155e4a48a56b83fb19455f60ca70abe216c3e0fe9f48f1ee80f65a24b2e212` |
| 44 | `lemma` | [Filter.Tendsto.nndist](../../../../../mathematics/Topology/MetricTopology/Constructions/Variantf7eacfa1da043bfc17403dd09f485ae4dc17f23cc52921ae380d4181255c0d24.lean/declarations/filter-tendsto-nndist--6dc57560ea8707f8d119d748.md) | 242 | `result-track:6dc57560ea8707f8d119d7480c62dbc9e0e5b2579beb3b142a171ee164ec2772` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
