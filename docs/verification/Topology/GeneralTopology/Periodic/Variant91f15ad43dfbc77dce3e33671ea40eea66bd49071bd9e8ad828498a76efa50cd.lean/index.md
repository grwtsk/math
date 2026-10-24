# Verification target: GRWTSK.Topology.GeneralTopology.Periodic.Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7442c5cc17b4a22e942fc342a85cec7c1fffd759",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7442c5cc17b4a22e942fc342a85cec7c1fffd759`.

Source path: `GRWTSK/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Periodic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Interval` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_gcd](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/periodic-gcd--fb97c5a21f587bb9fc25bacc.md) | 24 | `result-track:fb97c5a21f587bb9fc25baccedeef345533f1d9e9e21b74f94428994fe4928cf` |
| 2 | `theorem` | [periodic_coprime](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/periodic-coprime--47e92ac7a8dc33101bac53f9.md) | 28 | `result-track:47e92ac7a8dc33101bac53f9c0dcff0a833af29fe1d88b1a4dfb0bcdb7d9a5d4` |
| 3 | `theorem` | [periodic_mod](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/periodic-mod--b4b5805fe848348b9978b044.md) | 32 | `result-track:b4b5805fe848348b9978b044e951090a6c9c6dea99366a5347b9d1214b32dc43` |
| 4 | `theorem` | [_root_.Function.Periodic.map_mod_nat](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/root-function-periodic-map-mod-nat--2b2e95762663b0277a3e4502.md) | 36 | `result-track:2b2e95762663b0277a3e4502a555adc0f6055e170aa0c0ee73943b99e6aa1dc1` |
| 5 | `theorem` | [filter_multiset_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/filter-multiset-ico-card-eq-of-periodic--06dd3e3c880f113c24d2c434.md) | 47 | `result-track:06dd3e3c880f113c24d2c4341389204d39a1625e6bc11ec483ed408fba077ee7` |
| 6 | `theorem` | [filter_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variant91f15ad43dfbc77dce3e33671ea40eea66bd49071bd9e8ad828498a76efa50cd.lean/declarations/filter-ico-card-eq-of-periodic--4549d1f1afe2613e8df4ef68.md) | 64 | `result-track:4549d1f1afe2613e8df4ef68f1f220832fbb23cbc55e3bdb43d86eb6a9c465bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
