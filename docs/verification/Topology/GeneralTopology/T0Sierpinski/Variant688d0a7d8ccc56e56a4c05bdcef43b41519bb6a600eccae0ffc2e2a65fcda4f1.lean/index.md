# Verification target: GRWTSK.Topology.GeneralTopology.T0Sierpinski.Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "934e042e828b20144e48396b69d0617a9fa35516",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `934e042e828b20144e48396b69d0617a9fa35516`.

Source path: `GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_induced_by_maps_to_sierpinski](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/declarations/eq-induced-by-maps-to-sierpinski--4ee83fffe509837cf91cbc0a.md) | 35 | `result-track:4ee83fffe509837cf91cbc0afb8941d3c9539e703ed7dc15e8c36d879d1162f9` |
| 2 | `def` | [productOfMemOpens](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/declarations/productofmemopens--45dfdb97b20291e82858717e.md) | 51 | `declaration-track:45dfdb97b20291e82858717e153e708bfac6eb4fa5341fe9c605a3bb39e578ab` |
| 3 | `theorem` | [productOfMemOpens_isInducing](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/declarations/productofmemopens-isinducing--828e7aaac8592aebc5265680.md) | 55 | `result-track:828e7aaac8592aebc5265680ae7b86cfe2e9f5304e646ffd03451281d28710a6` |
| 4 | `theorem` | [productOfMemOpens_injective](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/declarations/productofmemopens-injective--940a8932c3050aec3992f6c7.md) | 62 | `result-track:940a8932c3050aec3992f6c785b0c57feb1ae064beaf8a34e28e612b357aa29d` |
| 5 | `theorem` | [productOfMemOpens_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variant688d0a7d8ccc56e56a4c05bdcef43b41519bb6a600eccae0ffc2e2a65fcda4f1.lean/declarations/productofmemopens-isembedding--dee421337e309d1e8d2e1076.md) | 67 | `result-track:dee421337e309d1e8d2e1076d249a32f89cc43bd782376802046b8a08af0b755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
