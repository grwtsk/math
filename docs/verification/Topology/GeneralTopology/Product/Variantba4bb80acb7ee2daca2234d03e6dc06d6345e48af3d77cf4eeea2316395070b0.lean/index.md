# Verification target: GRWTSK.Topology.GeneralTopology.Product.Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f46ed3c18843189122974abeb8a196f12d612e0a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f46ed3c18843189122974abeb8a196f12d612e0a`.

Source path: `GRWTSK/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [obj](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/obj--fd551cb7a632dd73bcb44b5c.md) | 42 | `declaration-track:fd551cb7a632dd73bcb44b5c51381aa01dcaaedf865277c7b1a9d6f926874eda` |
| 2 | `def` | [π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/app--6e49b732c25ec72640c4b056.md) | 45 | `declaration-track:6e49b732c25ec72640c4b0566059385f10b0bf7f5883dd93b3b6437fc9134248` |
| 3 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/map--4a83735a34e2a4bd393cd910.md) | 52 | `declaration-track:4a83735a34e2a4bd393cd910abf385800ac8dd757cbf037a6330b3d96cf1bc16` |
| 4 | `theorem` | [surjective_π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/surjective-app--923e4ee366a3c58192f8b24a.md) | 58 | `result-track:923e4ee366a3c58192f8b24afaf69d012afaec37784630577142f95bebdc9144` |
| 5 | `theorem` | [map_comp_π_app](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/map-comp-app--30607c5a7214d0276a077dc6.md) | 64 | `result-track:30607c5a7214d0276a077dc6529824e9382c5e46deaabd4362c84cc89139a9f7` |
| 6 | `theorem` | [eq_of_forall_π_app_eq](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/eq-of-forall-app-eq--006c706f4c4bc55f9a95edaf.md) | 68 | `result-track:006c706f4c4bc55f9a95edafe32972ee476cc826ffbeb9797cc138c2518d6a43` |
| 7 | `def` | [indexFunctor](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/indexfunctor--b99890ac43fd0f468b080e8a.md) | 86 | `declaration-track:b99890ac43fd0f468b080e8ad9feb82592e4af1668ddcf805b8d4ddaaec92235` |
| 8 | `def` | [indexCone](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/indexcone--cab5637e8026f293d641f1f0.md) | 93 | `declaration-track:cab5637e8026f293d641f1f06215137ad34ef0806d289adefce6e4e826148891` |
| 9 | `instance` | [isIso_indexCone_lift](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/isiso-indexcone-lift--abf6a625d2e10cd33ea19f90.md) | 99 | `declaration-track:abf6a625d2e10cd33ea19f906546919ac828e8ced46ce5dcbba092878d76e1a4` |
| 10 | `def` | [isoindexConeLift](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/isoindexconelift--9689551887029c6a5799f4e6.md) | 136 | `declaration-track:9689551887029c6a5799f4e6744cb401b09c250af6189af79763a8d0c4fc6c34` |
| 11 | `def` | [asLimitindexConeIso](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/aslimitindexconeiso--c4adadd36143efc1bd3bb59c.md) | 143 | `declaration-track:c4adadd36143efc1bd3bb59ce688e390cb4b4547fde99068dc279a405e89ab72` |
| 12 | `def` | [indexCone_isLimit](../../../../../mathematics/Topology/GeneralTopology/Product/Variantba4bb80acb7ee2daca2234d03e6dc06d6345e48af3d77cf4eeea2316395070b0.lean/declarations/indexcone-islimit--385bba48ec3b6aca58d1929e.md) | 148 | `declaration-track:385bba48ec3b6aca58d1929ee20c46009e0d7e10d6ed7e65caa718931f3c564a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
