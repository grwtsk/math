# Verification target: GRWTSK.Topology.GeneralTopology.TopologicalSimplex.Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32db1cfc671fca732d9030caf11fc3055346f8a2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32db1cfc671fca732d9030caf11fc3055346f8a2`.

Source path: `GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplexCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.NNReal` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/instance--65c3820abdf6e2a1a4b743f0.md) | 31 | `declaration-track:65c3820abdf6e2a1a4b743f004096858b60c2138db171f5e81b84e25276b7e31` |
| 2 | `def` | [toTopObj](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/totopobj--eb458950449450c8b4b82150.md) | 37 | `declaration-track:eb458950449450c8b4b82150f954f02629858a7349b8dae5a4fa92151c0eba96` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/instance--80c5d14e7b814ecdf64f1c0e.md) | 42 | `declaration-track:80c5d14e7b814ecdf64f1c0e3604a14d7107626fdbeb3b7e77b7bc9248b66ccc` |
| 4 | `theorem` | [toTopObj.ext](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/totopobj-ext--06b6e914776e0b3ac23b718c.md) | 46 | `result-track:06b6e914776e0b3ac23b718c55847050c20a75705f4f55d5a48097ae58246b90` |
| 5 | `def` | [toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/totopmap--6791d899d09c7253b91a7a30.md) | 52 | `declaration-track:6791d899d09c7253b91a7a304d2963caae5f0cc5a00dd4a6c13138ecdf34ede2` |
| 6 | `theorem` | [coe_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/coe-totopmap--5fa24d6a66e20ef1a768f747.md) | 73 | `result-track:5fa24d6a66e20ef1a768f747e9e9b4da19e1d035ce87743255eaddd03e7aa008` |
| 7 | `theorem` | [continuous_toTopMap](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/continuous-totopmap--74d2c6f7bcefce496164b7fa.md) | 80 | `result-track:74d2c6f7bcefce496164b7faa520c05a519800d8702bc25d38284ce6192fdb44` |
| 8 | `def` | [toTop](../../../../../mathematics/Topology/GeneralTopology/TopologicalSimplex/Variantad18214c22fdd77464b970652b028145dd32b1852510f9685480b511502ad0f1.lean/declarations/totop--93b6ce8937cd0c5e9617d6ca.md) | 89 | `declaration-track:93b6ce8937cd0c5e9617d6ca8322c9d21d835717fd60cca3c8909be5caa7c107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
