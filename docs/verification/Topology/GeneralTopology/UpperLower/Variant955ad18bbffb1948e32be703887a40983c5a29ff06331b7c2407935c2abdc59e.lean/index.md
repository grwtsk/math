# Verification target: GRWTSK.Topology.GeneralTopology.UpperLower.Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "247f9d91cd12687080c910f57476bdedc829b192",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `247f9d91cd12687080c910f57476bdedc829b192`.

Source path: `GRWTSK/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.UpperLower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasUpperLowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/hasupperlowerclosure--595be38d172474f394a3a761.md) | 32 | `declaration-track:595be38d172474f394a3a761014bfe131009781f98ea2b28c788217d6244ce3f` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/instance--29455529e6bbc5c7ebc7599f.md) | 43 | `declaration-track:29455529e6bbc5c7ebc7599f7d34b7dfde24aecb757d1f93c3be59073bf8763c` |
| 3 | `theorem` | [IsUpperSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/isupperset-closure--ca03ed2464275bc458b05c91.md) | 64 | `result-track:ca03ed2464275bc458b05c912cdad6143e8bdaf1187148ad779abb3d1f65aa93` |
| 4 | `theorem` | [IsLowerSet.closure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/islowerset-closure--e4a9b725678c787e80bf46fa.md) | 68 | `result-track:e4a9b725678c787e80bf46fafb6e27612ea27dc016d33cd60f152b0ee5efac83` |
| 5 | `theorem` | [IsOpen.upperClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/isopen-upperclosure--32bd7afcba7fe0c5ad559094.md) | 72 | `result-track:32bd7afcba7fe0c5ad55909434ae40766ff7c760720c264dedc8c1dc1970d35c` |
| 6 | `theorem` | [IsOpen.lowerClosure](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/isopen-lowerclosure--38479053c9ada9190023df5c.md) | 76 | `result-track:38479053c9ada9190023df5c493b1a33c424475eceef96d0d112d8a8bedb0d12` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/instance--61cf2b3e0192a803d7468b36.md) | 80 | `declaration-track:61cf2b3e0192a803d7468b369095957274fb7937ac39ccbd0f937df5e3359a40` |
| 8 | `theorem` | [IsUpperSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/isupperset-interior--fc20f4f53c8645c45a426412.md) | 101 | `result-track:fc20f4f53c8645c45a426412f1c24de328ae4b25f5aa186c1a03c7166ba93262` |
| 9 | `theorem` | [IsLowerSet.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/islowerset-interior--d3b419d92e032ee3d3f33c75.md) | 106 | `result-track:d3b419d92e032ee3d3f33c7550c23bcfe5578acfcbfc7fce9c7c5b2bb980ad44` |
| 10 | `theorem` | [Set.OrdConnected.interior](../../../../../mathematics/Topology/GeneralTopology/UpperLower/Variant955ad18bbffb1948e32be703887a40983c5a29ff06331b7c2407935c2abdc59e.lean/declarations/set-ordconnected-interior--eb351d3344db6f3e009cdebf.md) | 110 | `result-track:eb351d3344db6f3e009cdebf9e9bfe2e48f9c93891ce42b79cc01591d2d50fb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
