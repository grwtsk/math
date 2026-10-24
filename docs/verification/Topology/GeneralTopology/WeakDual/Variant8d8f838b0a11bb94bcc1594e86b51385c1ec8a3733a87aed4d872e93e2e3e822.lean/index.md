# Verification target: GRWTSK.Topology.GeneralTopology.WeakDual.Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21c59208a4359b18957f25189f000567b3df91e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21c59208a4359b18957f25189f000567b3df91e`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Dual` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/toweakdual--bf8392493ed866af8ad8e09c.md) | 117 | `declaration-track:bf8392493ed866af8ad8e09cdeadf5ba57e48635f1d26b7fbfbbd58f461fbdf6` |
| 2 | `theorem` | [coe_toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/coe-toweakdual--3bb0f16340fe1cc1c65056d1.md) | 122 | `result-track:3bb0f16340fe1cc1c65056d1e5f94bafc72a9b2deb8c11f46df1b2a7f84568b4` |
| 3 | `theorem` | [toWeakDual_eq_iff](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/toweakdual-eq-iff--57968c1ce4996d5e7cfce2e1.md) | 127 | `result-track:57968c1ce4996d5e7cfce2e1e09499ab398c82c809ec0a8cc80914dab2e2e27e` |
| 4 | `theorem` | [toWeakDual_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/toweakdual-continuous--266946fd82cfc623381d943b.md) | 131 | `result-track:266946fd82cfc623381d943bb53c95cca75efdcbb6a1409f515e63e5123b8584` |
| 5 | `def` | [continuousLinearMapToWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/continuouslinearmaptoweakdual--54a6cc7f65f2d91cb3fcdd2d.md) | 138 | `declaration-track:54a6cc7f65f2d91cb3fcdd2dd51a84c558507ca58fe554abc835bbf8ffdd58d3` |
| 6 | `theorem` | [dual_norm_topology_le_weak_dual_topology](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/dual-norm-topology-le-weak-dual-topology--95b826a4c4096f9e6bcd9e1a.md) | 143 | `result-track:95b826a4c4096f9e6bcd9e1a787c6e54f535c44358d2a24188eee010dec92166` |
| 7 | `def` | [toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/tonormeddual--1fe0596640bc6a35ae2eefb4.md) | 161 | `declaration-track:1fe0596640bc6a35ae2eefb4fa0d85e3d3fb1f04f0d97f924a1e13d5d69abd06` |
| 8 | `theorem` | [toNormedDual_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/tonormeddual-apply--9c9754cb02f98b898c0a7af6.md) | 165 | `result-track:9c9754cb02f98b898c0a7af6f56bf4ac9cdf2119167c4b0e4cef62535e55cfb5` |
| 9 | `theorem` | [coe_toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/coe-tonormeddual--2c245a835c44064d93bffc7b.md) | 170 | `result-track:2c245a835c44064d93bffc7b790813defe3a0f6abc882c4d782ebb5746f1cb8a` |
| 10 | `theorem` | [toNormedDual_eq_iff](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/tonormeddual-eq-iff--31eacdc2eb537a6c55a19098.md) | 175 | `result-track:31eacdc2eb537a6c55a19098d6f5a01c75f55c833b9033c080ccc0e3aee2c6d1` |
| 11 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/isclosed-closedball--e7d6d3b5942b706b2dd40e48.md) | 179 | `result-track:e7d6d3b5942b706b2dd40e482a495b0af2e182864bd21a0139c45519437c48b7` |
| 12 | `def` | [polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/polar--795c2cb3ebe399fc39824de6.md) | 192 | `declaration-track:795c2cb3ebe399fc39824de6aa7df830757ba30ccf902d87ab75b4adddc8add0` |
| 13 | `theorem` | [polar_def](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/polar-def--7f8ea9bc88d963cb5ec59a82.md) | 196 | `result-track:7f8ea9bc88d963cb5ec59a827e3b0e24a78dc9a7f8a6221c0f7fdf7ceb45463f` |
| 14 | `theorem` | [isClosed_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/isclosed-polar--55862700d67a75c43be08a11.md) | 202 | `result-track:55862700d67a75c43be08a11c55e752483b95f2c090e382e2a98df314b74fff3` |
| 15 | `theorem` | [isClosed_image_coe_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/isclosed-image-coe-of-bounded-of-closed--10ab02d25a7322156bf3ac98.md) | 211 | `result-track:10ab02d25a7322156bf3ac98c0b9cd3eb5df879c5cbfb56d294781e56288fe97` |
| 16 | `theorem` | [isCompact_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/iscompact-of-bounded-of-closed--9d922e2d8e0a7eb7ac382931.md) | 217 | `result-track:9d922e2d8e0a7eb7ac382931eaee448be563cfafe8eb040abdee4be85befb144` |
| 17 | `theorem` | [isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/isclosed-image-polar-of-mem-nhds--e311c1283178c864b762d6c2.md) | 228 | `result-track:e311c1283178c864b762d6c23a51a602f72fc2319d899469380c348b58735186` |
| 18 | `theorem` | [_root_.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/root-normedspace-dual-isclosed-image-polar-of-mem-nhds--e94726ba861a62c373fe22ba.md) | 236 | `result-track:e94726ba861a62c373fe22ba341ff5497fc1bc1a1e181169915693344c451333` |
| 19 | `theorem` | [isCompact_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/iscompact-polar--cd000e8b309909a13f7fd8bc.md) | 244 | `result-track:cd000e8b309909a13f7fd8bc46b48083692cc17ea7abe1e4b701dee4470cc3c7` |
| 20 | `theorem` | [isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/declarations/iscompact-closedball--4abdbe9e6d7ecd0a1954e013.md) | 251 | `result-track:4abdbe9e6d7ecd0a1954e013d7397b6867ef24ef4aab5411fe398bf89b4e2582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
