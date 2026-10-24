# Verification target: GRWTSK.Topology.GeneralTopology.Subadditive.Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82ad7d0d11ceae1558dc128548473160a2f878cd",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82ad7d0d11ceae1558dc128548473160a2f878cd`.

Source path: `GRWTSK/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Subadditive](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/subadditive--22181b985e8850c6c8fa9d9d.md) | 36 | `declaration-track:22181b985e8850c6c8fa9d9d90b6dedbb14d61bde37eaca2c7c460d877afb078` |
| 2 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/lim--c8247aa12f254c50b7d6daee.md) | 46 | `declaration-track:c8247aa12f254c50b7d6daee727ea16d4560550444a15af5c594ea6a7b14eb9b` |
| 3 | `theorem` | [lim_le_div](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/lim-le-div--27dddc998fde595466017363.md) | 49 | `result-track:27dddc998fde595466017363c0d19565a758a5f01e3ff4de51894014780a1454` |
| 4 | `theorem` | [apply_mul_add_le](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/apply-mul-add-le--c9755fe271706e3f66ca2df5.md) | 55 | `result-track:c9755fe271706e3f66ca2df58bebdd5eeaa87b84e24d2240d2d703b7cb3d10da` |
| 5 | `theorem` | [eventually_div_lt_of_div_lt](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/eventually-div-lt-of-div-lt--b52ed117e02c90ccf831dce4.md) | 66 | `result-track:b52ed117e02c90ccf831dce4c4968a1e7bdce8bf70bc0e3b6fab23e61b3e1742` |
| 6 | `theorem` | [tendsto_lim](../../../../../mathematics/Topology/GeneralTopology/Subadditive/Variantf38cb611753715cb12754ebb5ffe54ef32e9c7bbee7b020f2b3ffc5dda543bcb.lean/declarations/tendsto-lim--f00649228a6b02bbd4acce36.md) | 89 | `result-track:f00649228a6b02bbd4acce361a475b000471d4da15c76cd758d6a9e6caa052d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
