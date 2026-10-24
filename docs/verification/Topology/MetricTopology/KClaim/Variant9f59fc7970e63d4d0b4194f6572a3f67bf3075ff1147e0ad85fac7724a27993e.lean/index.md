# Verification target: GRWTSK.Topology.MetricTopology.KClaim.Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d370d3be5de860feb0a99b58dd0560f6c0bf7ad",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d370d3be5de860feb0a99b58dd0560f6c0bf7ad`.

Source path: `GRWTSK/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kakeya.Torsion.ComplexTorus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [KEqual](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/kequal--e443509218ff68ef31a83cc9.md) | 23 | `declaration-track:e443509218ff68ef31a83cc9263638ef33f1f6c845c92fe549f1efcebbe7647d` |
| 2 | `def` | [KTorsionClaim](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/ktorsionclaim--d935f7dff9abbc8b787fb911.md) | 26 | `declaration-track:d935f7dff9abbc8b787fb91168594c1ba4e8981cf6d51d78bf9cb63e93e2c952` |
| 3 | `def` | [TorsionResidueHeat](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/torsionresidueheat--9068bbda31d3abdab302b298.md) | 29 | `declaration-track:9068bbda31d3abdab302b298487e38fea443bfbc2be1a65846050f26c50d0cc3` |
| 4 | `theorem` | [torsion_residue_heat_nonnegative](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/torsion-residue-heat-nonnegative--134f182e80264cd077ed2940.md) | 32 | `result-track:134f182e80264cd077ed294036a76a516a24a753a9d3aec9b6b6db2189061544` |
| 5 | `theorem` | [k_torsion_iff_zero_residue](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/k-torsion-iff-zero-residue--757484bb4f4d1b7e4215bdf4.md) | 35 | `result-track:757484bb4f4d1b7e4215bdf44e22ffd146c548462cee17db83a4bdc2e252a979` |
| 6 | `theorem` | [exact_torsion_transports_to_k](../../../../../mathematics/Topology/MetricTopology/KClaim/Variant9f59fc7970e63d4d0b4194f6572a3f67bf3075ff1147e0ad85fac7724a27993e.lean/declarations/exact-torsion-transports-to-k--93a8034cd0d28476f0f43439.md) | 38 | `result-track:93a8034cd0d28476f0f434394b9d67b631fa1e970383d35aa093d134e1f0788d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
