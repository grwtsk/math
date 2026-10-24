# Verification target: GRWTSK.Topology.GeneralTopology.Rolle.Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31fa140f80c8acc5f9f1545d82eb84d90131b186",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31fa140f80c8acc5f9f1545d82eb84d90131b186`.

Source path: `GRWTSK/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.ExtendFrom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.T5` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_Ioo_extr_on_Icc](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/declarations/exists-ioo-extr-on-icc--1d4392bc9ad9fae9eed6fbd6.md) | 35 | `result-track:1d4392bc9ad9fae9eed6fbd665e2d3404ea6423605d5e1510e9578b9089c458f` |
| 2 | `theorem` | [exists_isLocalExtr_Ioo](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/declarations/exists-islocalextr-ioo--1c1e38f27c65bb19e5ca58c4.md) | 57 | `result-track:1c1e38f27c65bb19e5ca58c4966a4dbb403c5a44284920f1ab88d394ddec4897` |
| 3 | `lemma` | [exists_isExtrOn_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/declarations/exists-isextron-ioo-of-tendsto--cfdc104329e79f928cfebaac.md) | 64 | `result-track:cfdc104329e79f928cfebaac867d7042f3f99bde56da18e6f6f7d89ae2a38524` |
| 4 | `lemma` | [exists_isLocalExtr_Ioo_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Rolle/Variant45f9a6b7d62c9e4204e02dedf87f6f4f3619ca86a975342d21e5da51a6408e92.lean/declarations/exists-islocalextr-ioo-of-tendsto--8b52684544cd00716442cd5c.md) | 76 | `result-track:8b52684544cd00716442cd5c0bbc65fa3655ef78b2987fee25e30f04067e4f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
