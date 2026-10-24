# Verification target: GRWTSK.Topology.GeneralTopology.WeakDual.Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fd7a290a5298f1a050c66b30012f8e78ea4328b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fd7a290a5298f1a050c66b30012f8e78ea4328b`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Dual` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Completeness` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/toweakdual--76cf5f3e71707fac25f19da1.md) | 122 | `declaration-track:76cf5f3e71707fac25f19da14b1bdd06d23ac942ced7f8b3296c2c789b9915ce` |
| 2 | `theorem` | [coe_toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/coe-toweakdual--655f54b534b9639e44dcbd2f.md) | 126 | `result-track:655f54b534b9639e44dcbd2f5d237109b9a6ce85e2132f228f6b362eb30e278d` |
| 3 | `theorem` | [toWeakDual_inj](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/toweakdual-inj--9a0a1a95bae686ff8d3858ca.md) | 130 | `result-track:9a0a1a95bae686ff8d3858caa8ae9f23bb326117c1da99af6338be76d8e61933` |
| 4 | `theorem` | [toWeakDual_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/toweakdual-continuous--5529f3a2c48c71e7780a390b.md) | 135 | `result-track:5529f3a2c48c71e7780a390bf3d130d64617e8f7833b57f2b3032739149b7a24` |
| 5 | `def` | [continuousLinearMapToWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/continuouslinearmaptoweakdual--76920b6722e2c36435bf288c.md) | 141 | `declaration-track:76920b6722e2c36435bf288ca6fb9ecfd197b9955682586fe97f513444528fae` |
| 6 | `theorem` | [dual_norm_topology_le_weak_dual_topology](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/dual-norm-topology-le-weak-dual-topology--44792b4ec56a1ccf5ec96cbd.md) | 145 | `result-track:44792b4ec56a1ccf5ec96cbd1fa6a46ed2880a0fdf7cc6fd3d7465e85f4b722a` |
| 7 | `def` | [toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/tonormeddual--b4a5d7a5d0a4b8d86fd2f9b2.md) | 162 | `declaration-track:b4a5d7a5d0a4b8d86fd2f9b22ba7793387e90096bc52c021a06fec94eaa98046` |
| 8 | `theorem` | [toNormedDual_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/tonormeddual-apply--00d3037d068117f6d712e124.md) | 165 | `result-track:00d3037d068117f6d712e1247eff2fbb247c0d86429b699063af1896c2d71248` |
| 9 | `theorem` | [coe_toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/coe-tonormeddual--2c04ffcfa300204652bf3489.md) | 169 | `result-track:2c04ffcfa300204652bf34891afac1693f9956199f93f456f48ac677978f075a` |
| 10 | `theorem` | [toNormedDual_inj](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/tonormeddual-inj--0cf922d40f191718fe393158.md) | 173 | `result-track:0cf922d40f191718fe393158c13b8a0d61ea3d73dce7c0f2a0fe569e94648859` |
| 11 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/isclosed-closedball--6505e0b817caf68b8d218671.md) | 178 | `result-track:6505e0b817caf68b8d218671b173709b6ec9d5be5ed07e7b0f3a6db1f2026bb1` |
| 12 | `def` | [polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/polar--a14a0d44d54abef3827441e3.md) | 190 | `declaration-track:a14a0d44d54abef3827441e3e95cc52b3e5ce6e8fc57b3b1e590e84999c45af2` |
| 13 | `theorem` | [polar_def](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/polar-def--44f42a6d4eac654f6a0a278b.md) | 193 | `result-track:44f42a6d4eac654f6a0a278b30aed644dae99a3d80ec8fbb3587be452ea83be0` |
| 14 | `theorem` | [isClosed_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/isclosed-polar--d9f5cfbf6df7c02c4cb93276.md) | 198 | `result-track:d9f5cfbf6df7c02c4cb9327608eb8db300efe7ebc4f8810fa8ca5d8a33023d5f` |
| 15 | `theorem` | [isClosed_image_coe_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/isclosed-image-coe-of-bounded-of-closed--6447bc9f51449291258f38f9.md) | 206 | `result-track:6447bc9f51449291258f38f9dca94c95e84f68e006f7800aa87f90e148f75cf9` |
| 16 | `theorem` | [isCompact_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/iscompact-of-bounded-of-closed--3dd9c3154ffbfa658f7c24cd.md) | 211 | `result-track:3dd9c3154ffbfa658f7c24cd257a6f39ad4dee4534ec2421fd27f191bdc483b1` |
| 17 | `theorem` | [isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/isclosed-image-polar-of-mem-nhds--01e8f25ab76e8f3f3355d554.md) | 221 | `result-track:01e8f25ab76e8f3f3355d55472e2da32e7c6abc77c1aa7711952f26ca4619bca` |
| 18 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.ToWeakDual.Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/root-grwtsk-topology-generaltopology-toweakdual-variantc134afe28db13fb0b--6cacb8ffee663f4a28671e63.md) | 228 | `result-track:6cacb8ffee663f4a28671e63cf9ac860e7f6c654628a1c8967fff3e5efa38086` |
| 19 | `theorem` | [isCompact_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/iscompact-polar--260502d6297b59d8957cc0f2.md) | 235 | `result-track:260502d6297b59d8957cc0f23bd268f014fd5378bb40c77f6b016f7e329e42a5` |
| 20 | `theorem` | [isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant9a9fe9ea43090900c40fa348bab5c45a03406dce9c698906360cba7485b055b8.lean/declarations/iscompact-closedball--e56da3d582de01737440fcaa.md) | 241 | `result-track:e56da3d582de01737440fcaaded75f17fccd1507b2c7c6f5914ff77ddeb029b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
