# Verification target: GRWTSK.Topology.GeneralTopology.SumOfPrimeReciprocalsDiverges.Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "914eeefba8a811f4f62245705a7b2de19437d216",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `914eeefba8a811f4f62245705a7b2de19437d216`.

Source path: `GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/p--f31301f8365abb5c65145a15.md) | 47 | `declaration-track:f31301f8365abb5c65145a159a3f55aab0240265d3cffb566de495c0db3c8c48` |
| 2 | `def` | [U](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/u--7c9c1164007c000ce813f945.md) | 52 | `declaration-track:7c9c1164007c000ce813f945bc24186a6be092f11991f0dddb0a733f2a5be153` |
| 3 | `def` | [M](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/m--c00e258a4e4e37b579ad7b9e.md) | 57 | `declaration-track:c00e258a4e4e37b579ad7b9e3ebe9baf42fc45411ac12bc61dd0e99c8e2a0768` |
| 4 | `theorem` | [sum_lt_half_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/sum-lt-half-of-not-tendsto--20fc7c7f87e66f3a4df1df04.md) | 66 | `result-track:20fc7c7f87e66f3a4df1df04e83dba41257b5502dcd59956efa64d8999eca78d` |
| 5 | `theorem` | [range_sdiff_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/range-sdiff-eq-biunion--ab806f5a0ab494ddd3af9d88.md) | 96 | `result-track:ab806f5a0ab494ddd3af9d88a523cbd6f40ddd19dc54634d38ef964cc4f97fc6` |
| 6 | `theorem` | [card_le_mul_sum](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/card-le-mul-sum--2aedc4f05e8be898e7affbba.md) | 113 | `result-track:2aedc4f05e8be898e7affbba36612d28c2d22c4aafe041c0a4114ed9425bed7b` |
| 7 | `theorem` | [card_le_two_pow](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/card-le-two-pow--18ea9b934724d0ba069236b2.md) | 127 | `result-track:18ea9b934724d0ba069236b26596d2e79556ccc2c1363e54a24b912ecb34f0a6` |
| 8 | `theorem` | [card_le_two_pow_mul_sqrt](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/card-le-two-pow-mul-sqrt--da40c50874a0c294c7caf9b5.md) | 160 | `result-track:da40c50874a0c294c7caf9b588b3afbbd8738ef3555a2ab5b15424a1e27cede0` |
| 9 | `theorem` | [Real.tendsto_sum_one_div_prime_atTop](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant0e68379a1eeee9fdcbd23bfa489693358b06ec604c984cb4436fde7042eea2dc.lean/declarations/real-tendsto-sum-one-div-prime-attop--c36504dd2c6b577bb7f20315.md) | 192 | `result-track:c36504dd2c6b577bb7f20315ed9f6ca40254a7c8e4bec9635d48e93525dae4db` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
