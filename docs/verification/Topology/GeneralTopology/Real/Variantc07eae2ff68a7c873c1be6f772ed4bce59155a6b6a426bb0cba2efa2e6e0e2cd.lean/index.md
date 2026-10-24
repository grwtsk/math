# Verification target: GRWTSK.Topology.GeneralTopology.Real.Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ae6f97d77b3534c95cdb215115766af08c8d9c6",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ae6f97d77b3534c95cdb215115766af08c8d9c6`.

Source path: `GRWTSK/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.EReal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.T5` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--54f85d35f5e411825538e635.md) | 32 | `declaration-track:54f85d35f5e411825538e6358c382e6130cae37b09a653475d790bc9d47e99ba` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--3423edebdd4adac01bea8bb5.md) | 33 | `declaration-track:3423edebdd4adac01bea8bb52bfe7f5aa35b22c5d49cfb607cdbaf4d80a3d345` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--14a9c39344081b398db93220.md) | 35 | `declaration-track:14a9c39344081b398db932205adc14ddfa5085b7317ee01f9e48ec83155a83c4` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--ac021bb7060e517abf58cb25.md) | 36 | `declaration-track:ac021bb7060e517abf58cb2527830f6fa715414910aee072c4f6d793c220fc0c` |
| 5 | `lemma` | [denseRange_ratCast](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/denserange-ratcast--547142256cf91a3685492dc2.md) | 38 | `result-track:547142256cf91a3685492dc2885157ea63ad90a2659806a2f06fc1f8c70eb412` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--40ae4d80c77628b336408da4.md) | 49 | `declaration-track:40ae4d80c77628b336408da405c7af152b31653f1d1a44704c30f2696e7f1a7e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--e164ded5ba0dd93e7a36c786.md) | 51 | `declaration-track:e164ded5ba0dd93e7a36c7861f063f6ed1560aeb6db28be86c1506fc9940bfd5` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--3951b540871dd60d2a4e1b95.md) | 54 | `declaration-track:3951b540871dd60d2a4e1b952f6ebcc0ee09a0295748180ce98fd23268125b5f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--0e3c0bada1e7d4b89cf716f2.md) | 55 | `declaration-track:0e3c0bada1e7d4b89cf716f21c575ad5e31d4be589b58a9e79a3ecc84123768e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Real/Variantc07eae2ff68a7c873c1be6f772ed4bce59155a6b6a426bb0cba2efa2e6e0e2cd.lean/declarations/instance--bf8bd4e0a535a6f3cfe3e9bb.md) | 56 | `declaration-track:bf8bd4e0a535a6f3cfe3e9bbfb9366e8eb4aa74934ac996bc901ec470c38fb0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
