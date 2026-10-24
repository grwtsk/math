# Verification target: GRWTSK.Topology.MetricTopology.Unitization.Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1ef98fecb3dd05982098e92f1a3ef3af3439b0d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1ef98fecb3dd05982098e92f1a3ef3af3439b0d`.

Source path: `GRWTSK/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Unitization` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Mul` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitMul](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/splitmul--66add5fc0bd7736131b205d3.md) | 84 | `declaration-track:66add5fc0bd7736131b205d3c86feded05ef3cf87bf05e5fc96b684aa4200b12` |
| 2 | `theorem` | [splitMul_apply](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/splitmul-apply--30086a9f0990a3ac26402c89.md) | 90 | `result-track:30086a9f0990a3ac26402c890f50240c38ef57533426fd1ad7621f809be7d692` |
| 3 | `theorem` | [splitMul_injective_of_clm_mul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/splitmul-injective-of-clm-mul-injective--1eb2b775ed1a15d34d773539.md) | 97 | `result-track:1eb2b775ed1a15d34d7735396f07d95c842e385be63d648a8a86a3533f8b1cd0` |
| 4 | `theorem` | [splitMul_injective](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/splitmul-injective--273fafa181441e3e47c8b551.md) | 116 | `result-track:273fafa181441e3e47c8b551c1d5795f2f30a3b5fb4394c02fe7efccdb1ae677` |
| 5 | `abbrev` | [normedRingAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/normedringaux--ba22e2818a8827ad9dfb3bb9.md) | 127 | `declaration-track:ba22e2818a8827ad9dfb3bb9ef24f7abc3709a2d5f79acbe3374094b6427a1f0` |
| 6 | `abbrev` | [normedAlgebraAux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/normedalgebraaux--9989314d1858333850fc1c5d.md) | 135 | `declaration-track:9989314d1858333850fc1c5d5743416da3e17ea991439199d00d4d8be4bccdda` |
| 7 | `theorem` | [norm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/norm-def--bb4fb8fa7d9d64a5eb28299a.md) | 140 | `result-track:bb4fb8fa7d9d64a5eb28299a46e39a42feafdd466f059a9c44ff22f855a843f5` |
| 8 | `theorem` | [nnnorm_def](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/nnnorm-def--f7916dd4b9ef8c8ee46f3e64.md) | 143 | `result-track:f7916dd4b9ef8c8ee46f3e644565fd073dab284e5c6ebd924522610381a5dc0e` |
| 9 | `theorem` | [norm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/norm-eq-sup--b81cafc15001b3fbf6ec7e09.md) | 147 | `result-track:b81cafc15001b3fbf6ec7e09f7595c00ea2c92340c8f545bf1ad4e3500309f89` |
| 10 | `theorem` | [nnnorm_eq_sup](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/nnnorm-eq-sup--f9049acda82f8596f94a5cef.md) | 153 | `result-track:f9049acda82f8596f94a5cef5b301e6055296e3f037c5b9e4bb5a2ac26497461` |
| 11 | `theorem` | [lipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/lipschitzwith-addequiv--860e322438ed422e0c9f37b3.md) | 157 | `result-track:860e322438ed422e0c9f37b324fd9513d8f3a2a50bc39f53d71e05b09df207fe` |
| 12 | `theorem` | [antilipschitzWith_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/antilipschitzwith-addequiv--c5d0c592b79d30759d7d0140.md) | 175 | `result-track:c5d0c592b79d30759d7d01402a24e54ddd566021e70b70f1040dff12ce70c93f` |
| 13 | `theorem` | [uniformity_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/uniformity-eq-aux--b359b63e2358a834f335f365.md) | 193 | `result-track:b359b63e2358a834f335f365cb6b2a622cfbd8f7b565b7cdd755a969aed5540b` |
| 14 | `theorem` | [cobounded_eq_aux](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/cobounded-eq-aux--81b9740e1a171bc543d6a47a.md) | 200 | `result-track:81b9740e1a171bc543d6a47a484ac7f63157d6ed8ead70d8d0a1afe585969ad9` |
| 15 | `instance` | [instUniformSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instuniformspace--c9cd14ebb0caaacd353e487c.md) | 208 | `declaration-track:c9cd14ebb0caaacd353e487ca55e1e287a990d2767ebcce63e6b46e18654f7b5` |
| 16 | `def` | [uniformEquivProd](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/uniformequivprod--c1f6845149eeb33d6a7b408a.md) | 212 | `declaration-track:c1f6845149eeb33d6a7b408a120119106886e34d63bb1d630cefe81439d60734` |
| 17 | `instance` | [instBornology](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instbornology--eedd6772d1566b8327a70aa9.md) | 216 | `declaration-track:eedd6772d1566b8327a70aa90f03710a46c7077402787c7bfada5bc8044482d6` |
| 18 | `theorem` | [isUniformEmbedding_addEquiv](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/isuniformembedding-addequiv--a1c4a0cba9676acbef11fca5.md) | 219 | `result-track:a1c4a0cba9676acbef11fca56ce6ba3f0942880e2f891520287e165932dc6a36` |
| 19 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instcompletespace--144c396947f86a51151516ab.md) | 225 | `declaration-track:144c396947f86a51151516ab349e0fb28feeb6b774faf95dfce7f6bccae0807e` |
| 20 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instmetricspace--7af04cf7f1733c499b2c8260.md) | 232 | `declaration-track:7af04cf7f1733c499b2c8260b73e9dfdb116085725fb4be0def687339eb9ef26` |
| 21 | `instance` | [instNormedRing](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instnormedring--61ca04bd56ec379a126aaab3.md) | 238 | `declaration-track:61ca04bd56ec379a126aaab33364a549c765a94903eefef5aceee8103b4dd9c4` |
| 22 | `instance` | [instNormedAlgebra](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instnormedalgebra--9d01051283fac1a2b3bf80d6.md) | 245 | `declaration-track:9d01051283fac1a2b3bf80d6edcffd8e5b90f48f78cb861a612ac71f0dd73e6a` |
| 23 | `instance` | [instNormOneClass](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/instnormoneclass--6d2e8574aa2ac3a3c338553c.md) | 251 | `declaration-track:6d2e8574aa2ac3a3c338553c9c32a86cff8bb8f35475fc227a3746335719398d` |
| 24 | `lemma` | [norm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/norm-inr--6a531e377bd97df510a2a657.md) | 255 | `result-track:6a531e377bd97df510a2a6579c6662d52494f914ac362815c0a1df5492d3b076` |
| 25 | `lemma` | [nnnorm_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/nnnorm-inr--effa445e8d25ec1e1b7b63dc.md) | 258 | `result-track:effa445e8d25ec1e1b7b63dc4a626f7e61eb35cc2afa4db8a4113e6e3f905822` |
| 26 | `lemma` | [isometry_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/isometry-inr--b4c62a2ae2e38eb51220ba17.md) | 261 | `result-track:b4c62a2ae2e38eb51220ba1752763d5f2e0b886ece799d52dda5938e572d1183` |
| 27 | `theorem` | [continuous_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/continuous-inr--03f00caa33fcabfb27410762.md) | 265 | `result-track:03f00caa33fcabfb274107623e18b84caf18b44c2eee8f820181a47940b0b3bc` |
| 28 | `lemma` | [dist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/dist-inr--a988512f1982939c8b5aca97.md) | 268 | `result-track:a988512f1982939c8b5aca97ebf0d9d4f36b2172da51e1165ed59bcdeb2a0ff5` |
| 29 | `lemma` | [nndist_inr](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/nndist-inr--6b58ad7564c908e16b563a6f.md) | 271 | `result-track:6b58ad7564c908e16b563a6fd55ce082c1b11a332e8e67e0b9b94120d8cc79df` |
| 30 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/example--89b7719eeeb5fbc3a94c1ddf.md) | 276 | `declaration-track:89b7719eeeb5fbc3a94c1ddf322fb33d90edae6cebef988ad9fc1f6e6ee623a7` |
| 31 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/example--ce2561bb111324a8fa0ef80e.md) | 277 | `declaration-track:ce2561bb111324a8fa0ef80e23cb541a885463a8cfe52e377bdaaf19c757eee9` |
| 32 | `example` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Unitization/Variant4a8172ab79164edb5cd58fd277c10aabce38a2f7a0264b6ebf2ebb1fb47899aa.lean/declarations/example--01efec9e50d67c510ec4ff10.md) | 278 | `declaration-track:01efec9e50d67c510ec4ff10eadeacaaa54724c12d8c527aea648e6ac11d7026` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
