# Verification target: Normed Space Weak Dual Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc1a32062b0187e71729b4f563f2034098eaf0dc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc1a32062b0187e71729b4f563f2034098eaf0dc`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toWeakDual](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/toweakdual.md) | 125 | `declaration-track:2a363692a2582e99cf4b996f67603d4051e93dd04bdd557a7241ee0a1915ba82` |
| 2 | `theorem` | [coe_toWeakDual](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/coe-toweakdual.md) | 130 | `result-track:b8daed808f480900d820ccb0abfc60248edce8a2d413ccc052f4ee9f044d140e` |
| 3 | `theorem` | [toWeakDual_eq_iff](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/toweakdual-eq-iff.md) | 135 | `result-track:7e6e1f42844ef65179868829b9e604afbb1b32e5feed7ee4537bd9e848538068` |
| 4 | `theorem` | [toWeakDual_continuous](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/toweakdual-continuous.md) | 139 | `result-track:047ef7d321ee916d7f582a88446c29c5846666fa5ba2684579c66b50363eaacb` |
| 5 | `def` | [continuousLinearMapToWeakDual](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/continuouslinearmaptoweakdual.md) | 146 | `declaration-track:c9aa976444910e68bbac150ea9f747f5b17d09ebbbd85c963ad86f4d88313478` |
| 6 | `theorem` | [dual_norm_topology_le_weak_dual_topology](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/dual-norm-topology-le-weak-dual-topology.md) | 151 | `result-track:fb38646e6394b59ef0562f947eed1b986f2403934026c9e92aef73245cf3dff4` |
| 7 | `def` | [toNormedDual](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/tonormeddual.md) | 169 | `declaration-track:c3a1ef829b3bbc29c65253f70d41fcdc1715453fb6cce0808231dc22d646175a` |
| 8 | `theorem` | [toNormedDual_apply](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/tonormeddual-apply.md) | 173 | `result-track:339f712ce6eb2eec24131ff80396c16dadb263621b43736d3db9c491dbc39ed2` |
| 9 | `theorem` | [coe_toNormedDual](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/coe-tonormeddual.md) | 178 | `result-track:fbb0e90b39c81c2a8189711cdeea33fb91def164089d85d3a2725ebfb225ea74` |
| 10 | `theorem` | [toNormedDual_eq_iff](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/tonormeddual-eq-iff.md) | 183 | `result-track:c0284ac76c2f21ae1ee743ab1737ba0bea1ccd03657061e6ee6dc5342b4f3e44` |
| 11 | `theorem` | [isClosed_closedBall](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/isclosed-closedball.md) | 187 | `result-track:d45cb7e74164c5251808c0aa371c54631cf9aaaa2a5b1f63db8f2f8196c56284` |
| 12 | `def` | [polar](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/polar.md) | 200 | `declaration-track:7072f9f1111d18f001ac3db45a0f1efc32085ea62f00d7e7624da7fa70b5c3f8` |
| 13 | `theorem` | [polar_def](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/polar-def.md) | 204 | `result-track:b3f98a116425e53a148207ee9c72b3881f63bbbf555f47849b06422073a1e830` |
| 14 | `theorem` | [isClosed_polar](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/isclosed-polar.md) | 210 | `result-track:de5b394d596bbffde106618daaf1b74ecd40a7df8573785e252e0c293e70a75a` |
| 15 | `theorem` | [isClosed_image_coe_of_bounded_of_closed](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/isclosed-image-coe-of-bounded-of-closed.md) | 219 | `result-track:2c9605115ab8564b7d5600d79deaf80451d52e9d429e32b1dfb9be692f7658a6` |
| 16 | `theorem` | [isCompact_of_bounded_of_closed](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/iscompact-of-bounded-of-closed.md) | 225 | `result-track:1b505579f169ae1a8daf407f4b77a9988930032cd86c2c4e554d2efaa5b6b8cd` |
| 17 | `theorem` | [isClosed_image_polar_of_mem_nhds](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/isclosed-image-polar-of-mem-nhds.md) | 236 | `result-track:a1472e22e597a5f1c731daba7695eec7af080579f38749e6a5694d682d3e6f30` |
| 18 | `theorem` | [Normed Space Weak Dual Namespaced](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/isclosed-image-polar-of-mem-nhds-source-line-244-occurrence-2.md) | 244 | `result-track:34ce15b28d1f8b2a50fc4d7f560dfa8d26d0197b8efa269dd7408dcdb0c98a8b` |
| 19 | `theorem` | [isCompact_polar](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/iscompact-polar.md) | 252 | `result-track:acd9426d580d9544bad686ba50d993e7f1a74e0867cdea5746c8dc22dae31bcf` |
| 20 | `theorem` | [isCompact_closedBall](../../../../FunctionalAnalysis/NormedSpaceWeakDualNamespaced.lean/declarations/iscompact-closedball.md) | 259 | `result-track:5e1d10aac1406ecaf987dc1d5dbdeae47c9ff75ce938e33e91666f2236f1e27c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=87dcb907c06530e209e824737804a395d2d684316dc4aa49a501a54c58f4dba3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/WeakDual/Variant2e93d7e9231cc312f42200e32cd993f9fd1a60a63e162f90743263c2f1b7341d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
