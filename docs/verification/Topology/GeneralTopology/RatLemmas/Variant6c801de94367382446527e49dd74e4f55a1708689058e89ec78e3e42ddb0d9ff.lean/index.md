# Verification target: GRWTSK.Topology.GeneralTopology.RatLemmas.Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40dbf0206a05f6f3c63a5c0bdb11cf2ad25dcbc2",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40dbf0206a05f6f3c63a5c0bdb11cf2ad25dcbc2`.

Source path: `GRWTSK/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.Irrational` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [interior_compact_eq_empty](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/interior-compact-eq-empty--9dcb460950430ed4443c56f8.md) | 49 | `result-track:9dcb460950430ed4443c56f8f4dd372cf7269db50c838fd00720246b07068ec2` |
| 2 | `theorem` | [dense_compl_compact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/dense-compl-compact--2901e3747cfac1930c83202c.md) | 52 | `result-track:2901e3747cfac1930c83202cbd59552746f1b966a28d43dbd3d549b08285ed25` |
| 3 | `instance` | [cocompact_inf_nhds_neBot](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/cocompact-inf-nhds-nebot--7cccf5ab86ca3048e2cb1be2.md) | 55 | `declaration-track:7cccf5ab86ca3048e2cb1be2a5fb51e3edd8ec127f3bdf9fc66cf0accf0cf386` |
| 4 | `theorem` | [not_countably_generated_cocompact](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/not-countably-generated-cocompact--9980395c0e925f5628bc4c4d.md) | 60 | `result-track:9980395c0e925f5628bc4c4d2a1fbce81e9cf0f37771ce06bfcf0ff419f123aa` |
| 5 | `theorem` | [not_countably_generated_nhds_infty_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/not-countably-generated-nhds-infty-opc--f0730e9c3acb2c3cf74ebc1b.md) | 68 | `result-track:f0730e9c3acb2c3cf74ebc1bf9ce2a377cc14062758765b8c02f6162a4db6e25` |
| 6 | `theorem` | [not_firstCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/not-firstcountabletopology-opc--6169d7b6ce7977133d28692b.md) | 74 | `result-track:6169d7b6ce7977133d28692bb997357a8dc9984d1b731cefe928987a5b645028` |
| 7 | `theorem` | [not_secondCountableTopology_opc](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/not-secondcountabletopology-opc--a0eaf86f8174b29c7f7d81ac.md) | 78 | `result-track:a0eaf86f8174b29c7f7d81ace69ca4404e4737579d02ae34a1b59cf9638501dc` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/RatLemmas/Variant6c801de94367382446527e49dd74e4f55a1708689058e89ec78e3e42ddb0d9ff.lean/declarations/instance--d7c5013231e9dc250d05378d.md) | 82 | `declaration-track:d7c5013231e9dc250d05378d0713e1b409e52263f5cf466be90bb7e261b0048c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
