# Verification target: GRWTSK.Topology.MetricTopology.KClaim.Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "971999d830134f1fe0c4083bc6fde677bb92a4e9",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `971999d830134f1fe0c4083bc6fde677bb92a4e9`.

Source path: `GRWTSK/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Torsion.ComplexTorus` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KEqual](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/kequal--cd29d1001d4c35dbb87ab6e4.md) | 31 | `declaration-track:cd29d1001d4c35dbb87ab6e4fabc701431f938c0da46976a480840758aa5d9d5` |
| 2 | `def` | [KTorsionClaim](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/ktorsionclaim--593de73fbe1eefb57876fcb3.md) | 34 | `declaration-track:593de73fbe1eefb57876fcb3333c8fa71b5319678890ed125eaa2dfb5c7c43e2` |
| 3 | `def` | [TorsionResidueHeat](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/torsionresidueheat--249dafbb494316f31320db0a.md) | 37 | `declaration-track:249dafbb494316f31320db0a0acb1878da72df1e4820fa5a9a85288f02635a31` |
| 4 | `theorem` | [torsion_residue_heat_nonnegative](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/torsion-residue-heat-nonnegative--a19c31017d6cfa596c2ad34a.md) | 40 | `result-track:a19c31017d6cfa596c2ad34ae2245141d88ae335577866145da8a138a283554e` |
| 5 | `theorem` | [k_torsion_iff_zero_residue](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/k-torsion-iff-zero-residue--37182047726f9a3dfdade082.md) | 43 | `result-track:37182047726f9a3dfdade08256e89703382dd55da0477dd419545be7a0bf1072` |
| 6 | `theorem` | [exact_torsion_transports_to_k](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant3f8f24f13e7e1d796595d8c251927f03baa1d5c6485fbed601a466f13e296d65.lean/declarations/exact-torsion-transports-to-k--cccc547ee075ace9d6b6dc16.md) | 46 | `result-track:cccc547ee075ace9d6b6dc1609f45409ea00c749cbdcd3e0dd21ac46ad38c07b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
