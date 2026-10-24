# Verification target: GRWTSK.Topology.GeneralTopology.T0Sierpinski.Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fac1fbf6a29f2944a236de7e877b7ab7880424cb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fac1fbf6a29f2944a236de7e877b7ab7880424cb`.

Source path: `GRWTSK/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_induced_by_maps_to_sierpinski](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/declarations/eq-induced-by-maps-to-sierpinski--e63ae760ee22ab65930bb7eb.md) | 27 | `result-track:e63ae760ee22ab65930bb7eb889ee307ce34134e8bcece210d4d3d8ea515663c` |
| 2 | `def` | [productOfMemOpens](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/declarations/productofmemopens--1bb40f86e2e29179f41dc102.md) | 43 | `declaration-track:1bb40f86e2e29179f41dc1023cae0d8ee674e789062e2e5c2eeeb156eb7d7aa9` |
| 3 | `theorem` | [productOfMemOpens_isInducing](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/declarations/productofmemopens-isinducing--e75901f86ff46c7964b940c9.md) | 47 | `result-track:e75901f86ff46c7964b940c93903dc4d90338856942a3119ad6d44c843d7d3a1` |
| 4 | `theorem` | [productOfMemOpens_injective](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/declarations/productofmemopens-injective--c5caa614dc3e2f7011051f1a.md) | 54 | `result-track:c5caa614dc3e2f7011051f1a569c85614841dd037527b433957c6bea111244e9` |
| 5 | `theorem` | [productOfMemOpens_isEmbedding](../../../../../mathematics/Topology/GeneralTopology/T0Sierpinski/Variantd405e8e0359e635c2ab13a17e9357a8a5c1b1bd56fd6c30a9796aec31993a03a.lean/declarations/productofmemopens-isembedding--091e67d9bb4c8d0c74b3c5ab.md) | 59 | `result-track:091e67d9bb4c8d0c74b3c5abc2d0aae7ebb7ccb736583d52aaa0571200ac5021` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
