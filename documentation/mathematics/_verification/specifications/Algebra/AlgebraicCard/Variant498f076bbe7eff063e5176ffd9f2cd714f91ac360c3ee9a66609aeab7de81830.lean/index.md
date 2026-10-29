# Verification target: GRWTSK.Algebra.AlgebraicCard.Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fec452112cc5a97efca0b5cfb1b977a33b2d1795",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/index.md) · [Full source](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fec452112cc5a97efca0b5cfb1b977a33b2d1795`.

Source path: `GRWTSK/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Cardinal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Algebraic.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [infinite_of_charZero](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/infinite-of-charzero--e8da22655e89d02cc0003545.md) | 28 | `result-track:e8da22655e89d02cc0003545ff3b8f4c42256d2d228446e0971fe69d464352d0` |
| 2 | `theorem` | [aleph0_le_cardinalMk_of_charZero](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/aleph0-le-cardinalmk-of-charzero--c01417182e7bbf2e9b498663.md) | 33 | `result-track:c01417182e7bbf2e9b498663ce6b71dcf5d2d4f967b7d3739b60d0fc786f6ef8` |
| 3 | `theorem` | [cardinalMk_lift_le_mul](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-lift-le-mul--a0532e1295d551861f1033a0.md) | 45 | `result-track:a0532e1295d551861f1033a00f6dfa1f0d7220007bbdc9604223e6515639e8f0` |
| 4 | `theorem` | [cardinalMk_lift_le_max](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-lift-le-max--e5f9ffcfe28ee7d416e1018a.md) | 58 | `result-track:e5f9ffcfe28ee7d416e1018a2836d726de6df3af84a72458fbbef30c8c554a9c` |
| 5 | `theorem` | [cardinalMk_lift_of_infinite](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-lift-of-infinite--b74f8bc7e232737fec7b6320.md) | 66 | `result-track:b74f8bc7e232737fec7b6320b3168675a44a7d3a5fe4be08f9b54eeb7307e26d` |
| 6 | `theorem` | [countable](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/countable--355f7d920b2e5b03c1082d5a.md) | 78 | `result-track:355f7d920b2e5b03c1082d5acf0ea2fb1161791e4599c595f33e988d4d59d1d1` |
| 7 | `theorem` | [cardinalMk_of_countable_of_charZero](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-of-countable-of-charzero--70e5770b630678982145d4c5.md) | 84 | `result-track:70e5770b630678982145d4c5f265b0581ed0ede75c5b067db0a1ef5b203f309d` |
| 8 | `theorem` | [cardinalMk_le_mul](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-le-mul--52a50e5615428edd1cb59438.md) | 98 | `result-track:52a50e5615428edd1cb59438d8c9bd083247855a93dada05709c75ceb2038643` |
| 9 | `theorem` | [cardinalMk_le_max](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-le-max--c3ea9fb4314c48404c4803fb.md) | 105 | `result-track:c3ea9fb4314c48404c4803fb9383f85a12bee4b92f7fb45a87c7afea6d7a04db` |
| 10 | `theorem` | [cardinalMk_of_infinite](../../../../../Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean/declarations/cardinalmk-of-infinite--7daec98a84d7dd8bbcd7b3bf.md) | 112 | `result-track:7daec98a84d7dd8bbcd7b3bffd0939befc876a3814e278407e9666224470f3fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=21478a839951b9d84a704d0c6d407cc5d3cbe80d8fa031de0d4f5aaf6b11229d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean","GRWTSK/_verification/specifications/Algebra/AlgebraicCard/Variant498f076bbe7eff063e5176ffd9f2cd714f91ac360c3ee9a66609aeab7de81830.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
