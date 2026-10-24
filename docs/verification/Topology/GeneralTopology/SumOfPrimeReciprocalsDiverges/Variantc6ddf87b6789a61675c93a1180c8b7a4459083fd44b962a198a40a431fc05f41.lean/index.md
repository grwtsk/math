# Verification target: GRWTSK.Topology.GeneralTopology.SumOfPrimeReciprocalsDiverges.Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abafe376e464326017245c823a6355307a6dba7c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abafe376e464326017245c823a6355307a6dba7c`.

Source path: `GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Squarefree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/p--05c153d8c82b5bb9d8e5bbe5.md) | 55 | `declaration-track:05c153d8c82b5bb9d8e5bbe5e853c4fb5cf44e9f2942c0cccbaf8bed75d83b34` |
| 2 | `def` | [U](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/u--a345844b5e04ea23dc0d64bd.md) | 60 | `declaration-track:a345844b5e04ea23dc0d64bd9597612435f6a4b403c83f440c3b1ae7f080b37d` |
| 3 | `def` | [M](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/m--be0a449426fe68f2690514a7.md) | 65 | `declaration-track:be0a449426fe68f2690514a706ccdbff1a00222fb253acc47716f3fc31db19b2` |
| 4 | `theorem` | [sum_lt_half_of_not_tendsto](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/sum-lt-half-of-not-tendsto--292cb88765080c2e68b348b4.md) | 74 | `result-track:292cb88765080c2e68b348b480a40988375fbdf9869c9fe99b8a54ed92fb107f` |
| 5 | `theorem` | [range_sdiff_eq_biUnion](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/range-sdiff-eq-biunion--214906d438ca5cb3bd6cd84c.md) | 104 | `result-track:214906d438ca5cb3bd6cd84cf0821107d91ff9a5247fcbf0de15b894903108e5` |
| 6 | `theorem` | [card_le_mul_sum](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/card-le-mul-sum--238c0c4fe84edd5cf7640f2f.md) | 121 | `result-track:238c0c4fe84edd5cf7640f2fc7cfeecd69c842ce5f02802fc014a2a8957bc39a` |
| 7 | `theorem` | [card_le_two_pow](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/card-le-two-pow--4eba917667958c1aff584a76.md) | 135 | `result-track:4eba917667958c1aff584a76a588b15fd9d441cd19b2a3d382eea5a3e93c46c5` |
| 8 | `theorem` | [card_le_two_pow_mul_sqrt](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/card-le-two-pow-mul-sqrt--83b050ac1e7887990a1ea639.md) | 168 | `result-track:83b050ac1e7887990a1ea63937681afbbabf92f72af52e7d0e61fb94fd350bf2` |
| 9 | `theorem` | [Real.tendsto_sum_one_div_prime_atTop](../../../../../mathematics/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantc6ddf87b6789a61675c93a1180c8b7a4459083fd44b962a198a40a431fc05f41.lean/declarations/real-tendsto-sum-one-div-prime-attop--218274111a6323ef3d0a1b12.md) | 200 | `result-track:218274111a6323ef3d0a1b122298d609f7bb51ffdbee92cd60791c9aa8f82921` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
