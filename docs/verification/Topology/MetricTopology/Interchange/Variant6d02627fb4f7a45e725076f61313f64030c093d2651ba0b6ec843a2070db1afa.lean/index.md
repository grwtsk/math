# Verification target: GRWTSK.Topology.MetricTopology.Interchange.Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15ccddf6d39db4ac737112958bc067a07c62184e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15ccddf6d39db4ac737112958bc067a07c62184e`.

Source path: `GRWTSK/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/interchangesquare--f5fb141e064afc11aec5605e.md) | 28 | `declaration-track:f5fb141e064afc11aec5605e63a23280c5ed51b0ebb3b42dbdc710528f92a2ca` |
| 2 | `def` | [leftPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/leftpath--eb93f82937465adf83f5e2b1.md) | 46 | `declaration-track:eb93f82937465adf83f5e2b11b20fa0ba5d68bcdbbb9a1d5535a4d60b22489f0` |
| 3 | `def` | [rightPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/rightpath--04db8630e4c1920c538428fc.md) | 54 | `declaration-track:04db8630e4c1920c538428fcf03b5599423b720c2dc4a7ffd27c6047df4fadad` |
| 4 | `def` | [metricDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/metricdefect--22c0e8067749ff778b2023d1.md) | 62 | `declaration-track:22c0e8067749ff778b2023d1089cb08a1477281adcc25c833806f77b5b7f9111` |
| 5 | `structure` | [ExactCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/exactcertificate--d3a46b550cec8e1196d08946.md) | 72 | `declaration-track:d3a46b550cec8e1196d089465ef2af452672854a8c5a67c08b76d0d7e34961e1` |
| 6 | `structure` | [Certificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/certificate--5494a0b585bdb3bf102e170d.md) | 82 | `declaration-track:5494a0b585bdb3bf102e170d7758d2514a1fa55a32b25011e9d014f35ccb597f` |
| 7 | `structure` | [SnapshotCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/snapshotcertificate--a311447b96dd3dda023961e9.md) | 93 | `declaration-track:a311447b96dd3dda023961e9abe0e22b86e7aba25aedfcdf9741a429f3e48b85` |
| 8 | `def` | [ExactCertificate.toCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/exactcertificate-tocertificate--e0c46d7b71a9416c07bc0786.md) | 103 | `declaration-track:e0c46d7b71a9416c07bc07860535dadcd11a5d7e0557dea4f7b2845e352d9461` |
| 9 | `theorem` | [Certificate.exact_of_bound_eq_zero](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/certificate-exact-of-bound-eq-zero--8a54ba28e28ecf297bcd8547.md) | 115 | `result-track:8a54ba28e28ecf297bcd8547fcd89e4785ee1bcfa8cca2716e4a931ab21a6390` |
| 10 | `def` | [postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/postcompose--ffb63c26ac62527b7da8bfbc.md) | 138 | `declaration-track:ffb63c26ac62527b7da8bfbca15b6e5cf02b17b0807d84cef2a977b56a67dfcc` |
| 11 | `theorem` | [metricDefect_postcompose_le](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/metricdefect-postcompose-le--e8cc28ca8e054f37eada66f4.md) | 152 | `result-track:e8cc28ca8e054f37eada66f4f8961c21922af6dbb02350025d65008b0131edc2` |
| 12 | `def` | [Certificate.postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/certificate-postcompose--0e34bbdd720238596ddef176.md) | 172 | `declaration-track:0e34bbdd720238596ddef1765007d691980ff96f8fc2d85f9469cc14ff9c5185` |
| 13 | `def` | [algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/algebraicdefect--bd195f6fdf4b8267a8a7a0b6.md) | 199 | `declaration-track:bd195f6fdf4b8267a8a7a0b683c29ae80dbd1e33c639d999620f74858dfab6c6` |
| 14 | `theorem` | [nnnorm_algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/nnnorm-algebraicdefect--6f88b349a04a3f5340d2559d.md) | 208 | `result-track:6f88b349a04a3f5340d2559dbfe343963e2bc6c9994f811cbeff7be673529e36` |
| 15 | `structure` | [AttentionInterchangeReceipt](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/attentioninterchangereceipt--a5d7c5fd3970da11ed5accfa.md) | 225 | `declaration-track:a5d7c5fd3970da11ed5accfa49f43843c61867736b285f9387300f2a1f9a15a6` |
| 16 | `def` | [interchangeDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/interchangedefect--632201759a85be08834b1be0.md) | 243 | `declaration-track:632201759a85be08834b1be07fe2465dae1761966b3f061de3ffffc62f087ed8` |
| 17 | `abbrev` | [AttentionInterchangeCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/attentioninterchangecertificate--4217fbefa6b26a45289176b6.md) | 257 | `declaration-track:4217fbefa6b26a45289176b626e2efa622e5f1f24ef2aef74258dcdc3dc43135` |
| 18 | `structure` | [LinearInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/linearinterchangesquare--3555e96936a5c98efc136e13.md) | 269 | `declaration-track:3555e96936a5c98efc136e13bf24cc2ff10253a2c33a3dfe07000e32e55136e3` |
| 19 | `def` | [toInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/tointerchangesquare--cd2fd91cac6b6ab339313dc7.md) | 303 | `declaration-track:cd2fd91cac6b6ab339313dc7458937a8d223470bce54bd575f62463833986237` |
| 20 | `def` | [defect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/defect--283eb0015933bcb951db4001.md) | 315 | `declaration-track:283eb0015933bcb951db40010060e642cd8fbf8c6cf67308588a7e047c8b307c` |
| 21 | `theorem` | [defect_apply](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/defect-apply--7c3d76dbe78b615043847172.md) | 324 | `result-track:7c3d76dbe78b615043847172e86e712a2589933811c750e57233bfb163681c13` |
| 22 | `theorem` | [defect_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant6d02627fb4f7a45e725076f61313f64030c093d2651ba0b6ec843a2070db1afa.lean/declarations/defect-eq-zero-iff--a1d213851096b5036315c79e.md) | 335 | `result-track:a1d213851096b5036315c79ea488b639312aa3b58317331051a0ff8c154402b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
