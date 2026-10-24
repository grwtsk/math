# Verification target: GRWTSK.Topology.GeneralTopology.SumOfPrimeReciprocalsDiverges.Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5713e9608429c6f6290d002cc303b318b2393f84",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5713e9608429c6f6290d002cc303b318b2393f84`.

Source path: `GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Instances.ENNReal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/p--285076513e95b0d13bb98a66.md) | 56 | `declaration-track:285076513e95b0d13bb98a66a1d9bf30f1a12a84a577b596bf2045c14651c4d0` |
| 2 | `def` | [U](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/u--66217d820488aeb843b6b779.md) | 63 | `declaration-track:66217d820488aeb843b6b779346aba718a2a8e9f5d1160c73dae5256c23c3ce3` |
| 3 | `def` | [M](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/m--c986fc099fbf2b1233fd70f6.md) | 69 | `declaration-track:c986fc099fbf2b1233fd70f6010be6ecf854167a8c9fbd51c10c1b7a25afe891` |
| 4 | `theorem` | [sum_lt_half_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/sum-lt-half-of-not-tendsto--3bf81cb23bf47adf00bcaf70.md) | 80 | `result-track:3bf81cb23bf47adf00bcaf7049303f0c04e46ce35ce4d26989b36d4af9a307eb` |
| 5 | `theorem` | [range_sdiff_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/range-sdiff-eq-biunion--e6db5f3e9d85207a33cfec3c.md) | 111 | `result-track:e6db5f3e9d85207a33cfec3ca54201eddd1b4fbf0c0a49cfb61f8b60529f5071` |
| 6 | `theorem` | [card_le_mul_sum](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/card-le-mul-sum--7f452ea5c5be1e9a6b39be59.md) | 129 | `result-track:7f452ea5c5be1e9a6b39be59ea0edb24ad3255c407f429679ebd8e965b6e1159` |
| 7 | `theorem` | [card_le_two_pow](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/card-le-two-pow--c78b3f1551b6eb431c0213c9.md) | 144 | `result-track:c78b3f1551b6eb431c0213c948bd6fb75d4e63e7f07cdfdeab5c261f5f30fc49` |
| 8 | `theorem` | [card_le_two_pow_mul_sqrt](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/card-le-two-pow-mul-sqrt--d07894f6ea85b1d2f9150837.md) | 179 | `result-track:d07894f6ea85b1d2f9150837440457d0c884e5559471a5a3b09051f54eccf34a` |
| 9 | `theorem` | [Real.tendsto_sum_one_div_prime_atTop](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant180c301d00cf3e99a94df0f08e99025518de9ecb6fe533fe5e5a8524c9c6b388.lean/declarations/real-tendsto-sum-one-div-prime-attop--64cf0e9d6a5072e731e4bf68.md) | 211 | `result-track:64cf0e9d6a5072e731e4bf687b4d14ea3c1258fefc5fd389a431fe021bc2bbdc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
