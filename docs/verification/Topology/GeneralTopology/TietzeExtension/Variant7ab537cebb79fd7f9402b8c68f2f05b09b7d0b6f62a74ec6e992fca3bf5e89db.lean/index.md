# Verification target: GRWTSK.Topology.GeneralTopology.TietzeExtension.Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2792b415247d59f4b3d847831a6c637aa972d9b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2792b415247d59f4b3d847831a6c637aa972d9b`.

Source path: `GRWTSK/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.IsoIoo` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.MonotoneContinuity` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsBounded` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tietze_extension_step](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/tietze-extension-step--965f6a98842209b0d72a7f56.md) | 60 | `result-track:965f6a98842209b0d72a7f56b90ae014c7e883df0554c9555940091ad788fea9` |
| 2 | `theorem` | [exists_extension_norm_eq_of_closedEmbedding'](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-norm-eq-of-closedembedding--b5ea83f59101ab29f7d04c7e.md) | 111 | `result-track:b5ea83f59101ab29f7d04c7e00136cd918391bdafaf7c391041d38fb45570897` |
| 3 | `theorem` | [exists_extension_norm_eq_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-norm-eq-of-closedembedding--56568551a389e3a24e327b19.md) | 160 | `result-track:56568551a389e3a24e327b19456c1e5eda6b5ebf3d9968e6eafa953d30c5a4d7` |
| 4 | `theorem` | [exists_norm_eq_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-norm-eq-restrict-eq-of-closed--3a2fe784960e256d5875026e.md) | 170 | `result-track:3a2fe784960e256d5875026ed048f8ae8bcd76fbbddfad66040d5a6deb9fc55e` |
| 5 | `theorem` | [exists_extension_forall_mem_Icc_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-forall-mem-icc-of-closedembedding--785824a29dfc753c664eba4c.md) | 184 | `result-track:785824a29dfc753c664eba4c38ed14a94aba01e1e49d31266c486d9f84b9b079` |
| 6 | `theorem` | [exists_extension_forall_exists_le_ge_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-forall-exists-le-ge-of-closedembedding--8ee2951b2b5874fd555cbd03.md) | 205 | `result-track:8ee2951b2b5874fd555cbd0303cd53fcb95dd7c03b9baddafdd22296985e4772` |
| 7 | `theorem` | [exists_extension_forall_mem_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-forall-mem-of-closedembedding--4d3df22808f8a3d47ed1146b.md) | 320 | `result-track:4d3df22808f8a3d47ed1146ba307c700439fe029ff6aeb66a644c09216e60ac7` |
| 8 | `theorem` | [exists_forall_mem_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-forall-mem-restrict-eq-of-closed--d8f1bd14bc420c83ef4faf73.md) | 338 | `result-track:d8f1bd14bc420c83ef4faf7349eded12e512a8a02c2c1ac9be89faf39cf6345d` |
| 9 | `theorem` | [exists_extension_forall_mem_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-forall-mem-of-closedembedding--c4bf53cbacd38c8948292f3b.md) | 357 | `result-track:c4bf53cbacd38c8948292f3b5dbf325527c6baaae72ebbd357b6c827bd1b5f78` |
| 10 | `theorem` | [exists_extension_of_closedEmbedding](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-extension-of-closedembedding--17f389c16cde5fd7f3a44a7b.md) | 396 | `result-track:17f389c16cde5fd7f3a44a7b1775810f8283b479b000755852d15ce71debbc2b` |
| 11 | `theorem` | [exists_restrict_eq_forall_mem_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-restrict-eq-forall-mem-of-closed--093f4dc884cedfd7232d5d9b.md) | 408 | `result-track:093f4dc884cedfd7232d5d9bf06111fc3430fe02c2eb8a3020debb1fb2225cdf` |
| 12 | `theorem` | [exists_restrict_eq_of_closed](../../../../../mathematics/Topology/GeneralTopology/TietzeExtension/Variant7ab537cebb79fd7f9402b8c68f2f05b09b7d0b6f62a74ec6e992fca3bf5e89db.lean/declarations/exists-restrict-eq-of-closed--475ae9cd6dfdaf0dac2838de.md) | 420 | `result-track:475ae9cd6dfdaf0dac2838defa571fc17b7cee15ec3cd9115e71a41757f8b8b7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
