# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalSimplex.Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fd9ec5eb7ae10b1f6ebac4c53adaf0ee1165c23",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fd9ec5eb7ae10b1f6ebac4c53adaf0ee1165c23`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplexCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.PathConnected` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toTopObj](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobj--44f80f5257450d19ebb24598.md) | 36 | `declaration-track:44f80f5257450d19ebb245980e3e0ec7130bfc9aac20be87d77fa2d7e6d75631` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/instance--b9a05a982438fded5e9bf1ae.md) | 38 | `declaration-track:b9a05a982438fded5e9bf1aee655d7138c177fabe8e7e33b110dfdb1e277a44a` |
| 3 | `theorem` | [toTopObj.ext](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobj-ext--5184e4d8ecd05c58a091de22.md) | 42 | `result-track:5184e4d8ecd05c58a091de2214a6056c4443b6dcefd93c21d5440df473af9569` |
| 4 | `lemma` | [toTopObj_zero_apply_zero](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobj-zero-apply-zero--f2c540607e06dae405b8dc8e.md) | 46 | `result-track:f2c540607e06dae405b8dc8e9658900e3ea73074af71052a000fc5bfea8bffc0` |
| 5 | `lemma` | [toTopObj_one_add_eq_one](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobj-one-add-eq-one--b07201621d715fd55bd25d32.md) | 49 | `result-track:b07201621d715fd55bd25d32bf2ba782befe8750dded06b313b306516b1676dc` |
| 6 | `lemma` | [toTopObj_one_coe_add_coe_eq_one](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobj-one-coe-add-coe-eq-one--d12ebcf2a7bcab4b5f282bc7.md) | 52 | `result-track:d12ebcf2a7bcab4b5f282bc7077c5c7e600b0529ce9dc40ed99eb1b5be84a9ce` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/instance--6a4a9799a0da8bf29b11517d.md) | 56 | `declaration-track:6a4a9799a0da8bf29b11517d79b114462285a674dc29a5ba7f208e4b773cb90a` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/instance--e00c2b9ecd724cc8418a8385.md) | 59 | `declaration-track:e00c2b9ecd724cc8418a8385dc86b93efbf20980bf7d993297863bf2b9583393` |
| 9 | `def` | [toTopObjOneHomeo](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopobjonehomeo--5126e48ab99026a5c0b9fd40.md) | 64 | `declaration-track:5126e48ab99026a5c0b9fd40de55601c24a2bd576b2ec063d1c5f30033d870a9` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/instance--832777f7119aace6f1fb5acc.md) | 75 | `declaration-track:832777f7119aace6f1fb5accdb20f835cf3f589787a43f38df227ed80d53ce33` |
| 11 | `def` | [toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totopmap--3c6a91ffb66caad963229a6d.md) | 87 | `declaration-track:3c6a91ffb66caad963229a6d732c9043630a04beb452a2593e3ca5f5ba0cbb0c` |
| 12 | `theorem` | [coe_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/coe-totopmap--01a15a4b2bb2e01b797bd7fb.md) | 98 | `result-track:01a15a4b2bb2e01b797bd7fb0e463e8302833f7078c990c24479f8590f9b1161` |
| 13 | `theorem` | [continuous_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/continuous-totopmap--8626124bf2366bce451520b3.md) | 103 | `result-track:8626124bf2366bce451520b3bc3971705a9c85c7f72516ed71e4c135e7c68b19` |
| 14 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantc92539568a225616deb9c60e6fa0b08795e4126b81cc20acd6a48139f9870043.lean/declarations/totop--9537ae29e9190f9275836723.md) | 110 | `declaration-track:9537ae29e9190f9275836723b6d73ceb9b0903c220d5e4ea9a1b67b0e14a7b27` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
