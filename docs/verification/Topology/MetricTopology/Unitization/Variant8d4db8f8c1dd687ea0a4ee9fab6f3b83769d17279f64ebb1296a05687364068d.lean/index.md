# Verification target: GRWTSK.Topology.MetricTopology.Unitization.Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cfe02a686b402dfd4337b57e152d31ed0155b4b",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cfe02a686b402dfd4337b57e152d31ed0155b4b`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitMul](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/splitmul--6ea534b59df606ec628f64ef.md) | 79 | `declaration-track:6ea534b59df606ec628f64ef08026930fecdb0078377ac4f9707ea4c47d32801` |
| 2 | `theorem` | [splitMul_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/splitmul-apply--ede06239af3c512ac06dfcee.md) | 85 | `result-track:ede06239af3c512ac06dfcee0f2f0a647365530f6213b6057ab5fe7d41787a31` |
| 3 | `theorem` | [splitMul_injective_of_clm_mul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/splitmul-injective-of-clm-mul-injective--ecfcff50ec2dc06b5047c45e.md) | 92 | `result-track:ecfcff50ec2dc06b5047c45efbf552458543a23393f76ec0fc002397924aeb3d` |
| 4 | `theorem` | [splitMul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/splitmul-injective--6fe6574c4d77c0e9d13176b1.md) | 111 | `result-track:6fe6574c4d77c0e9d13176b1edffddb43e594a8ce5e3ba4420ee7419dca55764` |
| 5 | `def` | [normedRingAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/normedringaux--73289ba0f755e3a5746ae3ed.md) | 123 | `declaration-track:73289ba0f755e3a5746ae3ed381bc6037398514d9e2e79746877473440b3aadd` |
| 6 | `def` | [normedAlgebraAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/normedalgebraaux--98d93a8b59d445f9c60fafa8.md) | 134 | `declaration-track:98d93a8b59d445f9c60fafa87816bcdb4c0eb4bd09b172c86979dd5fcd4e2b8e` |
| 7 | `theorem` | [norm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/norm-def--a64b09fb4c3344cbfaa5ef96.md) | 139 | `result-track:a64b09fb4c3344cbfaa5ef96157cb19d1340b3b8c3d727c4027e0499086ebf54` |
| 8 | `theorem` | [nnnorm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/nnnorm-def--3c8b0b6097d9db1105bd3609.md) | 142 | `result-track:3c8b0b6097d9db1105bd3609c0fa173250ed6d4a93650a8c0282f19d9ffe6be8` |
| 9 | `theorem` | [norm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/norm-eq-sup--64b214118ed2c286fb41b376.md) | 146 | `result-track:64b214118ed2c286fb41b376ae4b1fd4f7daf21693774b0e378fe6908ea0b4d8` |
| 10 | `theorem` | [nnnorm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/nnnorm-eq-sup--e0952d7e0472596a742dd223.md) | 152 | `result-track:e0952d7e0472596a742dd223d05aa6c025a6b06e25de58947224f1af72bf16da` |
| 11 | `theorem` | [lipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/lipschitzwith-addequiv--4680b6fa8e1d8330844aed50.md) | 157 | `result-track:4680b6fa8e1d8330844aed507c6b7ae7d55edbb20157b39e0c5fffdf8945b2db` |
| 12 | `theorem` | [antilipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/antilipschitzwith-addequiv--585638e4dcded1761f04a0cc.md) | 175 | `result-track:585638e4dcded1761f04a0ccf1bc1234c946e8e0a50a49c2b339d216da29a89a` |
| 13 | `theorem` | [uniformity_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/uniformity-eq-aux--70d421bdeb18c595d2b3f1f3.md) | 193 | `result-track:70d421bdeb18c595d2b3f1f3200a8c631f5cb0bc50b09ddd2d9d8ffb6e88906f` |
| 14 | `theorem` | [cobounded_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/cobounded-eq-aux--92e68a996f1f0c426624d347.md) | 200 | `result-track:92e68a996f1f0c426624d347656f013b265c786397fa40819203f127502e7b88` |
| 15 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instuniformspace--52245b3cea50dc971eb45493.md) | 208 | `declaration-track:52245b3cea50dc971eb45493d5086e3df245f9f1395947cd244aafe44140b38f` |
| 16 | `instance` | [instBornology](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instbornology--d50e43400d43fed5451b42a1.md) | 212 | `declaration-track:d50e43400d43fed5451b42a1b71fa2a4f635242c1d14623ef4facfa90c89bc43` |
| 17 | `theorem` | [uniformEmbedding_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/uniformembedding-addequiv--6f62430420e3251908ac7d5f.md) | 215 | `result-track:6f62430420e3251908ac7d5f56aa48e94a54dee018deb9fc272e0d40b4c35125` |
| 18 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instcompletespace--a9520deb7f0f645cda7735fe.md) | 220 | `declaration-track:a9520deb7f0f645cda7735febf239c28782784d6724c85a336dc4f2d80394a2c` |
| 19 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instmetricspace--42f71906fdd395da89d89401.md) | 227 | `declaration-track:42f71906fdd395da89d89401fda4a34550a9b7564d19bb977cb98fd694b70788` |
| 20 | `instance` | [instNormedRing](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instnormedring--5bb8133117003c3d65fd10c0.md) | 233 | `declaration-track:5bb8133117003c3d65fd10c062594e23799486e3ffeb0524bfa3152f76b211dd` |
| 21 | `instance` | [instNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instnormedalgebra--060cb12c3ddbe60181077f7d.md) | 241 | `declaration-track:060cb12c3ddbe60181077f7db9ec4cb5e4bdca960caea37fabbd9eae5bc20d3e` |
| 22 | `instance` | [instNormOneClass](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/instnormoneclass--ef7e2caa48df0d7754e31cf3.md) | 245 | `declaration-track:ef7e2caa48df0d7754e31cf322d94c27fda05b8c11a3747ceccb588b593fc3df` |
| 23 | `lemma` | [norm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/norm-inr--1002b605a7805e6ac16d1f0f.md) | 249 | `result-track:1002b605a7805e6ac16d1f0f8647aaf8fe5ff3e85fbaf0e573bf25e993aa6d9a` |
| 24 | `lemma` | [nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/nnnorm-inr--0c3fb6ba1cf0c3811b2c275c.md) | 252 | `result-track:0c3fb6ba1cf0c3811b2c275c0dda35fabc19a37cf85ca219c54fcedbd46e7a33` |
| 25 | `lemma` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/isometry-inr--7ad42e363ae8fdf4cf87385c.md) | 255 | `result-track:7ad42e363ae8fdf4cf87385c77b55e3f97796094f4d43125102b2c0a7c03091a` |
| 26 | `lemma` | [dist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/dist-inr--e5765b4aed27c02f9128a62b.md) | 258 | `result-track:e5765b4aed27c02f9128a62b7f7adc75d08278c80510309a17913fec13d527e5` |
| 27 | `lemma` | [nndist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/nndist-inr--c285fba45cb39431a07f3ce0.md) | 261 | `result-track:c285fba45cb39431a07f3ce091b78d2a02fd1998573ae7f27754c70e70581862` |
| 28 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/example--859a1fe7b3f3f0f94b367686.md) | 266 | `declaration-track:859a1fe7b3f3f0f94b36768615a260b8fd351cd2278fd648a7ab2f246d65c103` |
| 29 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/example--db5e2934db2b535f173c78ec.md) | 267 | `declaration-track:db5e2934db2b535f173c78ec00a212f04ff24152afec84de2ca1f29f28180ad3` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant8d4db8f8c1dd687ea0a4ee9fab6f3b83769d17279f64ebb1296a05687364068d.lean/declarations/example--97bcb348cf5f91aab96626da.md) | 268 | `declaration-track:97bcb348cf5f91aab96626da380b08df616ae19d56dd9c1618524e6d1eca58c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
