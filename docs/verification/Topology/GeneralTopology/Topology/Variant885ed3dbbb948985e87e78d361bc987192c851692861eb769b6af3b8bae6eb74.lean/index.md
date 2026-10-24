# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ded058f00b722c6e14e9eef1a700af7c94842b0b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ded058f00b722c6e14e9eef1a700af7c94842b0b`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sets.Opens` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IntrinsicQuotient](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/intrinsicquotient--9cee663890b1e0dce7fc4fe4.md) | 26 | `declaration-track:9cee663890b1e0dce7fc4fe4f7a334889d5b735c131285509b3f6f1b4c315d2b` |
| 2 | `def` | [quotientMap](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotientmap--b94d1c598d4180aad4aa16fb.md) | 30 | `declaration-track:b94d1c598d4180aad4aa16fbfac121888d33b508f1d9113071abaeddca376298` |
| 3 | `def` | [quotientTopology](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotienttopology--cf0aac8a87b7b36a13f05171.md) | 35 | `declaration-track:cf0aac8a87b7b36a13f05171bea948ab75adde178deb6ebb081a97f25363580b` |
| 4 | `def` | [IsQuotientOpen](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/isquotientopen--9853fabd3ba932b9378b3974.md) | 40 | `declaration-track:9853fabd3ba932b9378b39741e61c8b4eef26b8e60f60062ac9864a1f47513b0` |
| 5 | `theorem` | [isQuotientOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/isquotientopen-iff--055634a421a96c04ec1e540c.md) | 46 | `result-track:055634a421a96c04ec1e540c2b024e91466397165e35bf0b2340e9c692a8acc2` |
| 6 | `theorem` | [quotientTopology_unique](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotienttopology-unique--b388adcc011a96c5145c2f25.md) | 54 | `result-track:b388adcc011a96c5145c2f258f040552a8c4af504f199ed061f21068964e13a3` |
| 7 | `def` | [quotientNeighborhoods](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotientneighborhoods--ad6b633832f37be102a5174c.md) | 70 | `declaration-track:ad6b633832f37be102a5174c34ed403701a1a1525a5062ef48f20ec0fce5876b` |
| 8 | `def` | [quotientNeighborhoodFilter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotientneighborhoodfilter--d742f3aa3221135b7bd03aba.md) | 81 | `declaration-track:d742f3aa3221135b7bd03aba1405e7b191380f1193192372385bb3d6cea2763e` |
| 9 | `theorem` | [mem_quotientNeighborhoodFilter_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/mem-quotientneighborhoodfilter-iff--bd5962bdee91e7b36b969359.md) | 88 | `result-track:bd5962bdee91e7b36b969359e9f40f1ccc6028eb81114a7ee6216610dd292dc9` |
| 10 | `def` | [saturatedNeighborhoods](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/saturatedneighborhoods--8fc15d76040de2096fd8f5ac.md) | 122 | `declaration-track:8fc15d76040de2096fd8f5ac6ae17c967b7b48605f83309fb41605af8cd3e1ca` |
| 11 | `def` | [IsIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/isintrinsicsaturated--025d507f61f1669b07152acc.md) | 132 | `declaration-track:025d507f61f1669b07152acc00cb967f5a8e75731d57c47883f489865c170839` |
| 12 | `theorem` | [quotient_preimage_isIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/quotient-preimage-isintrinsicsaturated--454fead2e5a87508874a0456.md) | 142 | `result-track:454fead2e5a87508874a045607bc574d82dbd70379a6c249f7fba86ae5140002` |
| 13 | `theorem` | [saturatedNeighborhood_isIntrinsicSaturated](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/saturatedneighborhood-isintrinsicsaturated--c971e03ca397a8ed275a96b3.md) | 154 | `result-track:c971e03ca397a8ed275a96b3e0f46f82e72dcad5aced8bd98ba83f6313a8a6af` |
| 14 | `theorem` | [mem_quotientNeighborhoods_iff](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant885ed3dbbb948985e87e78d361bc987192c851692861eb769b6af3b8bae6eb74.lean/declarations/mem-quotientneighborhoods-iff--8485693596ac9e6b82ecb72d.md) | 164 | `result-track:8485693596ac9e6b82ecb72d656a1ff5c3d524e583dfde56cb2c7b99c03c9819` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
