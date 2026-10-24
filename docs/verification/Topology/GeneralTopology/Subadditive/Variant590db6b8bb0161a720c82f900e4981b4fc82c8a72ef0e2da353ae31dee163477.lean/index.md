# Verification target: GRWTSK.Topology.GeneralTopology.Subadditive.Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec96dfd5daccc6a2849b2c420e40e47a673714b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec96dfd5daccc6a2849b2c420e40e47a673714b`.

Source path: `GRWTSK/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Archimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subadditive](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/subadditive--083ce2efc726a7b809fe128d.md) | 30 | `declaration-track:083ce2efc726a7b809fe128d6e900095ee7eb023bd99f5fe5030a5ed92bae462` |
| 2 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/lim--3e4fa0560a87bc55591ae005.md) | 40 | `declaration-track:3e4fa0560a87bc55591ae005ab0fdc64aca17a023cf201a33e2539d95724eb2f` |
| 3 | `theorem` | [lim_le_div](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/lim-le-div--e063f50528802c35c74962f9.md) | 43 | `result-track:e063f50528802c35c74962f9a1357dba4924f3ed2b1d0748168c0fa3d09206dd` |
| 4 | `theorem` | [apply_mul_add_le](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/apply-mul-add-le--ef59e6d1e091fe994a6bcc01.md) | 49 | `result-track:ef59e6d1e091fe994a6bcc01a4460e32fb823727884242973a1beff1e682a932` |
| 5 | `theorem` | [eventually_div_lt_of_div_lt](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/eventually-div-lt-of-div-lt--fa7584bf186562f6188c2710.md) | 60 | `result-track:fa7584bf186562f6188c2710fa54a3986382392c80cfe35d380096c499fe03f2` |
| 6 | `theorem` | [tendsto_lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variant590db6b8bb0161a720c82f900e4981b4fc82c8a72ef0e2da353ae31dee163477.lean/declarations/tendsto-lim--e8511eb13267d8dbf2448a4b.md) | 82 | `result-track:e8511eb13267d8dbf2448a4b632422b22e932054bef3fa4cf9a398a2e7b0367e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
