# Verification target: GRWTSK.Topology.GeneralTopology.SumOfPrimeReciprocalsDiverges.Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab3b98554054aef4bab73665a22340c104bfb2ff",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab3b98554054aef4bab73665a22340c104bfb2ff`.

Source path: `GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/p--014ab3103b7f3d3157e87e22.md) | 64 | `declaration-track:014ab3103b7f3d3157e87e222b9354ee143f89309a910be053c37ba2358e0184` |
| 2 | `def` | [U](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/u--51b4acf2818ac1cec5861498.md) | 71 | `declaration-track:51b4acf2818ac1cec586149871c01c9696a54204fe6c08d8d3f54922d6bc91cd` |
| 3 | `def` | [M](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/m--82e3a4aa30522443aa86a16b.md) | 77 | `declaration-track:82e3a4aa30522443aa86a16baf1a3cdf80b62e3d173603a6657dd8f7ce464f03` |
| 4 | `theorem` | [sum_lt_half_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/sum-lt-half-of-not-tendsto--907bec73326b5b7bd087d52e.md) | 88 | `result-track:907bec73326b5b7bd087d52e72e953c678b78dc0fc836f82c624832dcf5d779a` |
| 5 | `theorem` | [range_sdiff_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/range-sdiff-eq-biunion--cd49bad9b3576b82b8c28b20.md) | 119 | `result-track:cd49bad9b3576b82b8c28b201097d57355161b034cb91c0de177de22b9c62dcc` |
| 6 | `theorem` | [card_le_mul_sum](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/card-le-mul-sum--1d7575d02938fc2aa5302f6a.md) | 137 | `result-track:1d7575d02938fc2aa5302f6a086ed40cec4ddfbb3811d348f10ef08b3be1b792` |
| 7 | `theorem` | [card_le_two_pow](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/card-le-two-pow--899025e0a4bb0590191f011c.md) | 152 | `result-track:899025e0a4bb0590191f011c55944c9bcc4dd9f4d75fc4ffd9eca3d56d580992` |
| 8 | `theorem` | [card_le_two_pow_mul_sqrt](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/card-le-two-pow-mul-sqrt--d00f3f481dac96bd878666bb.md) | 187 | `result-track:d00f3f481dac96bd878666bbda7f598ce65c107153b19971f6f77e1c80d440ab` |
| 9 | `theorem` | [Real.tendsto_sum_one_div_prime_atTop](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/declarations/real-tendsto-sum-one-div-prime-attop--870bb4942a1266ebbcf23d05.md) | 219 | `result-track:870bb4942a1266ebbcf23d05cf9281943b76579859604366469f8df6e7a8d863` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
