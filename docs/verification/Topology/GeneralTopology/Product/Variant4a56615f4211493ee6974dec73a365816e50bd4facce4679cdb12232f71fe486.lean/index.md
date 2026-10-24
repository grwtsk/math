# Verification target: GRWTSK.Topology.GeneralTopology.Product.Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2db24307e1ac293e2dbdf1f6e551e9b89d53552",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2db24307e1ac293e2dbdf1f6e551e9b89d53552`.

Source path: `GRWTSK/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/obj--b2f92308c060c3e5ae4c2107.md) | 50 | `declaration-track:b2f92308c060c3e5ae4c21075f0467ab723b0679ee97a5a72fda01de9e18d4ec` |
| 2 | `def` | [π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/app--2b7b644a7e73f1aac2df0f64.md) | 53 | `declaration-track:2b7b644a7e73f1aac2df0f64b951ec8d8da06a23e4ba74436c782a5bb73c915b` |
| 3 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/map--1914152b8bcbb4f844039c7b.md) | 60 | `declaration-track:1914152b8bcbb4f844039c7b429835a3669982dfc59825cfb76d07df1294c77f` |
| 4 | `theorem` | [surjective_π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/surjective-app--27a31ab3e9100b2ec8c4fd95.md) | 66 | `result-track:27a31ab3e9100b2ec8c4fd9526046a3291431c44d08c7c086b19febcb1e93999` |
| 5 | `theorem` | [map_comp_π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/map-comp-app--4b2de769d5e0ba33543b45b7.md) | 72 | `result-track:4b2de769d5e0ba33543b45b7d581ebd080f1d033bb93e55f728e11f082fafea5` |
| 6 | `theorem` | [eq_of_forall_π_app_eq](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/eq-of-forall-app-eq--6a134d7b2efd5c8e7a136106.md) | 76 | `result-track:6a134d7b2efd5c8e7a1361068e541a99464d8646971d0b46d053bd448da39452` |
| 7 | `def` | [indexFunctor](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/indexfunctor--91e69906fc1f4b6ea22daa17.md) | 94 | `declaration-track:91e69906fc1f4b6ea22daa172f2fa58efa1bf9580f0f3499c000f5d29fb4df53` |
| 8 | `def` | [indexCone](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/indexcone--c7f7892cf8748316bd6fb6eb.md) | 101 | `declaration-track:c7f7892cf8748316bd6fb6ebf741f505393ff875df921bc540009a9b633d5889` |
| 9 | `instance` | [isIso_indexCone_lift](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/isiso-indexcone-lift--fa10b9025cbe6ec062e4665d.md) | 107 | `declaration-track:fa10b9025cbe6ec062e4665d29cce7818edd3c8fb0c3dd74615894027b0b2a66` |
| 10 | `def` | [isoindexConeLift](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/isoindexconelift--036b1bcdf6dc36fe0856be55.md) | 144 | `declaration-track:036b1bcdf6dc36fe0856be5582029cece073d87cd234299225141737f7e49336` |
| 11 | `def` | [asLimitindexConeIso](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/aslimitindexconeiso--aa2a2ddef64cd2a47a09478d.md) | 151 | `declaration-track:aa2a2ddef64cd2a47a09478de5c49c5f9e71bc55dce0ec6a73453537267a61aa` |
| 12 | `def` | [indexCone_isLimit](../../../../../mathematics/Topology/GeneralTopology/Product/Variant4a56615f4211493ee6974dec73a365816e50bd4facce4679cdb12232f71fe486.lean/declarations/indexcone-islimit--f7e22af3bf40b0786fc32c67.md) | 156 | `declaration-track:f7e22af3bf40b0786fc32c67739772ad6ed0db8cd10e9b03d29ab10fa0a980ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
