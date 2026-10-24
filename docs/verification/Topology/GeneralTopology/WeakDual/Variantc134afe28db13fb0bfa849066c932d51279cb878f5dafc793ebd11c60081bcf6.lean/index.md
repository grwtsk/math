# Verification target: GRWTSK.Topology.GeneralTopology.WeakDual.Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdde6be669434cfea47c4e2ce06b55dc7eeb4b0f`.

Source path: `GRWTSK/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Dual` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm.Completeness` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.WeakDual` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/toweakdual--5d2e3d670d2dd7d393286a58.md) | 114 | `declaration-track:5d2e3d670d2dd7d393286a58baf3ab614ef952bcced07135e0546c1b5626bcfe` |
| 2 | `theorem` | [coe_toWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/coe-toweakdual--66dc4edbc1496a02f2a4aeeb.md) | 118 | `result-track:66dc4edbc1496a02f2a4aeeb68158f2c4b36cd42b570a51d069039b647ba0431` |
| 3 | `theorem` | [toWeakDual_inj](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/toweakdual-inj--637c5214b043996f76a7c5d2.md) | 122 | `result-track:637c5214b043996f76a7c5d2d7e10b371aecb6f498d0a146072500783c54e01a` |
| 4 | `theorem` | [toWeakDual_continuous](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/toweakdual-continuous--6b5d5c492cbe4209fec55d1a.md) | 127 | `result-track:6b5d5c492cbe4209fec55d1a85e207e563a3681974f42ccd94371488c4efcf05` |
| 5 | `def` | [continuousLinearMapToWeakDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/continuouslinearmaptoweakdual--3caeda1ff86d49c947f9cd9a.md) | 133 | `declaration-track:3caeda1ff86d49c947f9cd9ae9f169a1d40b5a7045d1d42bf118ece07f1d8640` |
| 6 | `theorem` | [dual_norm_topology_le_weak_dual_topology](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/dual-norm-topology-le-weak-dual-topology--bcff1289cc5e290c09ba311c.md) | 137 | `result-track:bcff1289cc5e290c09ba311c297bc9efdd9d6effb0b3abab6794bac299447f38` |
| 7 | `def` | [toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/tonormeddual--a7261f0d566ac9b8605ed47e.md) | 154 | `declaration-track:a7261f0d566ac9b8605ed47e92f3aee55aba800ff6582bf0c340f51df6b381da` |
| 8 | `theorem` | [toNormedDual_apply](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/tonormeddual-apply--ff9d923901a374e3719d16a5.md) | 157 | `result-track:ff9d923901a374e3719d16a54f473d58bb2cac2087d004bff037fbafe468574a` |
| 9 | `theorem` | [coe_toNormedDual](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/coe-tonormeddual--7bc8e4f07ff7247a23bfee82.md) | 161 | `result-track:7bc8e4f07ff7247a23bfee825abc9c721e35ea48ed651e7a52ab824bd398c508` |
| 10 | `theorem` | [toNormedDual_inj](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/tonormeddual-inj--431017faefd879ed15c4cbdf.md) | 165 | `result-track:431017faefd879ed15c4cbdff69e101a432e72f7411f4f744cf6145c08b912ad` |
| 11 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/isclosed-closedball--6b8cc1776288dee7c6f2dbdd.md) | 170 | `result-track:6b8cc1776288dee7c6f2dbddaeb52407f55408f4fc3f3dc7b9412e1c95a889c2` |
| 12 | `def` | [polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/polar--a7a3d967900fa00820b039d8.md) | 182 | `declaration-track:a7a3d967900fa00820b039d888efcbb404e34f3e591bfa9a2b8830d6a1f587d9` |
| 13 | `theorem` | [polar_def](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/polar-def--dd0dddea985ea7fc827edf93.md) | 185 | `result-track:dd0dddea985ea7fc827edf936927eb5b000dedbc50b63de241c3235eee8695ee` |
| 14 | `theorem` | [isClosed_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/isclosed-polar--2efbba79a4ffa64cf25983ff.md) | 190 | `result-track:2efbba79a4ffa64cf25983ff07cac9727116fe842e61850198f27b2a41035730` |
| 15 | `theorem` | [isClosed_image_coe_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/isclosed-image-coe-of-bounded-of-closed--af7eff88ec2284693ba79ea6.md) | 198 | `result-track:af7eff88ec2284693ba79ea694e9a75a6a93ec7fa37047338b6d73d5575460bb` |
| 16 | `theorem` | [isCompact_of_bounded_of_closed](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/iscompact-of-bounded-of-closed--c1d1119faff0af4e317a4d2d.md) | 203 | `result-track:c1d1119faff0af4e317a4d2df9615ef9b7bfce3d96393154921e9897533f1e38` |
| 17 | `theorem` | [isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/isclosed-image-polar-of-mem-nhds--f93906f7511ab0d289d1a458.md) | 213 | `result-track:f93906f7511ab0d289d1a45808836979a008c830ceacd43f581f83b2573e82b8` |
| 18 | `theorem` | [_root_.NormedSpace.Dual.isClosed_image_polar_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/root-normedspace-dual-isclosed-image-polar-of-mem-nhds--142e68e2d59d3b93f51f7e81.md) | 220 | `result-track:142e68e2d59d3b93f51f7e811b89c5227192b92f9b85fc8433b2d3d0cdc07cff` |
| 19 | `theorem` | [isCompact_polar](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/iscompact-polar--595c7424dd59ba6cd1f8ad11.md) | 227 | `result-track:595c7424dd59ba6cd1f8ad1192e34f9b6de373da86d119a7faa1f8aab5f6d002` |
| 20 | `theorem` | [isCompact_closedBall](../../../../../mathematics/Topology/GeneralTopology/WeakDual/Variantc134afe28db13fb0bfa849066c932d51279cb878f5dafc793ebd11c60081bcf6.lean/declarations/iscompact-closedball--7983014d37a59a779a806d44.md) | 233 | `result-track:7983014d37a59a779a806d44c2f3a1bc113027d70a15f45781b13ee37e9c15b3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
