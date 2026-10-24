# Verification target: GRWTSK.Topology.GeneralTopology.Periodic.Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2e3451442fa82a871ed14b030f6981e9369bd2f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2e3451442fa82a871ed14b030f6981e9369bd2f`.

Source path: `GRWTSK/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Periodic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Count` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [periodic_gcd](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/periodic-gcd--165e5bd2d09a66994c332dce.md) | 30 | `result-track:165e5bd2d09a66994c332dce81d124f2a52018e8b82c73a311958cbb0a83ff32` |
| 2 | `theorem` | [periodic_coprime](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/periodic-coprime--f147160df33974ec45952150.md) | 33 | `result-track:f147160df33974ec45952150e18b78fbdb2de04bff07ffa4f150e0cd472af742` |
| 3 | `theorem` | [periodic_mod](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/periodic-mod--3deb3aae66a14e62b61a40a1.md) | 36 | `result-track:3deb3aae66a14e62b61a40a104b814c55d9982e9e28d5888a7c6e28eee3c89aa` |
| 4 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.Function.Periodic.map_mod_nat](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/root-grwtsk-topology-generaltopology-periodicgcd-variantaa77aaebec0d4216--5b81c5375fd84cb55112c392.md) | 39 | `result-track:5b81c5375fd84cb55112c3928b8ffc47053fea898ce6a9634bf7dda3e103078b` |
| 5 | `theorem` | [filter_multiset_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/filter-multiset-ico-card-eq-of-periodic--8118688e882163da90e29df1.md) | 49 | `result-track:8118688e882163da90e29df1a93a0b076646f2f7943853696bc8b6f76ce34c02` |
| 6 | `theorem` | [filter_Ico_card_eq_of_periodic](../../../../../mathematics/Topology/GeneralTopology/Periodic/Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390.lean/declarations/filter-ico-card-eq-of-periodic--65be7298eddb9a6a1bdc01d3.md) | 65 | `result-track:65be7298eddb9a6a1bdc01d332a3f073cf7392395ec604e8a16f71eded017f2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
