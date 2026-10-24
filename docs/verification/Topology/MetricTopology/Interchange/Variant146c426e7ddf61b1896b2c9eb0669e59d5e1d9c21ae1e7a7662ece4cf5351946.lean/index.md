# Verification target: GRWTSK.Topology.MetricTopology.Interchange.Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "232a3eef882e3ff5c5babbdee300cc0b6183da9d",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `232a3eef882e3ff5c5babbdee300cc0b6183da9d`.

Source path: `GRWTSK/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.LinearMap.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Lipschitz` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [InterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/interchangesquare--e841ec7f749e95e2f7e9aee0.md) | 20 | `declaration-track:e841ec7f749e95e2f7e9aee07ca604987cb276a0f89d790b696dd7537c6e425d` |
| 2 | `def` | [leftPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/leftpath--cbf87221f68a78a4fe6c753e.md) | 38 | `declaration-track:cbf87221f68a78a4fe6c753e6997d6edec10f425b9385de209d9f5dba4c8eb70` |
| 3 | `def` | [rightPath](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/rightpath--d1310302e1634787c81a1fc3.md) | 46 | `declaration-track:d1310302e1634787c81a1fc3ba5845d20435ae174fd99cddb94cbd31a0520226` |
| 4 | `def` | [metricDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/metricdefect--b65674359802111538de37be.md) | 54 | `declaration-track:b65674359802111538de37beb94767ccef61064c808cbc98593da8777a1176a6` |
| 5 | `structure` | [ExactCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/exactcertificate--0e3b8034ea9898b308683240.md) | 64 | `declaration-track:0e3b8034ea9898b3086832401e650452391b24790b4bb577b0552703d4c418f5` |
| 6 | `structure` | [Certificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/certificate--80c66d9301924f104958a037.md) | 74 | `declaration-track:80c66d9301924f104958a037c3f9a448ee79e83be8f508ae81ce31bc325a1e62` |
| 7 | `structure` | [SnapshotCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/snapshotcertificate--f9c2dd631051d32436c31292.md) | 85 | `declaration-track:f9c2dd631051d32436c312927d2ca038aa6120b5bd3977385062302fac36d3c3` |
| 8 | `def` | [ExactCertificate.toCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/exactcertificate-tocertificate--8a24ce6e77666f3d902dbc57.md) | 95 | `declaration-track:8a24ce6e77666f3d902dbc5746287326187fb06efba8e583fe584f5f1bd7c66d` |
| 9 | `theorem` | [Certificate.exact_of_bound_eq_zero](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/certificate-exact-of-bound-eq-zero--2820fc4e5c607af07efccd98.md) | 107 | `result-track:2820fc4e5c607af07efccd987bea1939bfe2380ac518366d3b767f228ac69482` |
| 10 | `def` | [postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/postcompose--bfbd96017af956aa0bc73f83.md) | 130 | `declaration-track:bfbd96017af956aa0bc73f83cbf6a93dcf398b8444ebccdbb1d8b7fa675e95ce` |
| 11 | `theorem` | [metricDefect_postcompose_le](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/metricdefect-postcompose-le--08936f49a36685780b20893a.md) | 144 | `result-track:08936f49a36685780b20893a3b59fcb86ccda9082b77a0855318a504f63adb7c` |
| 12 | `def` | [Certificate.postcompose](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/certificate-postcompose--2de72f5e3e50b7d716cafffa.md) | 164 | `declaration-track:2de72f5e3e50b7d716cafffae6c107bfa4dbb0578c2d3c1a60c3ed2e1927f906` |
| 13 | `def` | [algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/algebraicdefect--c5f9fefb67edee8635276fbc.md) | 191 | `declaration-track:c5f9fefb67edee8635276fbcd250130063fd1efecb1574d19068d4184a90079d` |
| 14 | `theorem` | [nnnorm_algebraicDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/nnnorm-algebraicdefect--634fe1d3b864b2a742e3890b.md) | 200 | `result-track:634fe1d3b864b2a742e3890bd87fe0d8f24ed593cb7eb2499c93b40f03f0a940` |
| 15 | `structure` | [AttentionInterchangeReceipt](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/attentioninterchangereceipt--95cd38c4a068c33cd150a104.md) | 217 | `declaration-track:95cd38c4a068c33cd150a1040376a1ca8ccaac1e4a0aefcb603240f7ab709218` |
| 16 | `def` | [interchangeDefect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/interchangedefect--45ed74b0c1fe21ab02f1c575.md) | 235 | `declaration-track:45ed74b0c1fe21ab02f1c5753c10f7c61ef48551c9eac7cf2e98bc0b0146a726` |
| 17 | `abbrev` | [AttentionInterchangeCertificate](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/attentioninterchangecertificate--9bdd3690dd2008e60d3bacd9.md) | 249 | `declaration-track:9bdd3690dd2008e60d3bacd9e54cefbd3b7a9df8f80b5fd53357e3cc1b349de7` |
| 18 | `structure` | [LinearInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/linearinterchangesquare--8386ec7f9bb310b2d1169a73.md) | 261 | `declaration-track:8386ec7f9bb310b2d1169a7399c8a2b62304b26274e86347f0c61672d16862d7` |
| 19 | `def` | [toInterchangeSquare](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/tointerchangesquare--38b7b1599ec90e496484b03f.md) | 295 | `declaration-track:38b7b1599ec90e496484b03fcbdbe6a2d95a624f8d92854e170368d010aec9e4` |
| 20 | `def` | [defect](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/defect--3ad8e2c6eaacefcac0a2877a.md) | 307 | `declaration-track:3ad8e2c6eaacefcac0a2877ad2240d26a70a01e76fc9815db332d1f0c0b65eb1` |
| 21 | `theorem` | [defect_apply](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/defect-apply--18de7c0162088fe538c76cf9.md) | 316 | `result-track:18de7c0162088fe538c76cf91e4da228332964502bd07345b45526828d179e83` |
| 22 | `theorem` | [defect_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Interchange/Variant146c426e7ddf61b1896b2c9eb0669e59d5e1d9c21ae1e7a7662ece4cf5351946.lean/declarations/defect-eq-zero-iff--1f69d4e294dad10a85e4ec07.md) | 327 | `result-track:1f69d4e294dad10a85e4ec07fdbab36d48c4f717ebb481efc3c78b66d4c8813b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
