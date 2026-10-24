# Verification target: GRWTSK.Topology.GeneralTopology.Rolle.Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9fa70f1e65558232163e319aff3374f3aafd1072",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9fa70f1e65558232163e319aff3374f3aafd1072`.

Source path: `GRWTSK/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.ExtendFrom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.T5` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_Ioo_extr_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/declarations/exists-ioo-extr-on-icc--24d99bc71a93f883581e6350.md) | 43 | `result-track:24d99bc71a93f883581e6350523b0bf656b75f59590303f4291b8d9e86013126` |
| 2 | `theorem` | [exists_isLocalExtr_Ioo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/declarations/exists-islocalextr-ioo--94637fb587e85010e60d77f4.md) | 65 | `result-track:94637fb587e85010e60d77f475e8d0f27154351f90e88004f5875ca40a699310` |
| 3 | `lemma` | [exists_isExtrOn_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/declarations/exists-isextron-ioo-of-tendsto--5d51c7970325481fdc3b48aa.md) | 72 | `result-track:5d51c7970325481fdc3b48aaa8fb26ea8caf3288feac2a279d6050df492b828e` |
| 4 | `lemma` | [exists_isLocalExtr_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant8823b0abe9a5e5393403e3505b33c73d14bee7a4d989d1c013e4451f55bd0985.lean/declarations/exists-islocalextr-ioo-of-tendsto--5ce30235d71074d2e0183906.md) | 84 | `result-track:5ce30235d71074d2e01839066b5206526c9ddda80d0cfe36604409634c50999d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
