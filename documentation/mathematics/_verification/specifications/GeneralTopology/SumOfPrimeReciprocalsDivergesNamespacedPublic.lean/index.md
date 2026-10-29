# Verification target: Sum Of Prime Reciprocals Diverges Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88bd3c36d22a0f47fabb8b584f3dc630944dcb43",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant94793c37943fefb96e525bc7716550c3945322c69fd318923c3bd4d992311599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88bd3c36d22a0f47fabb8b584f3dc630944dcb43`.

Source path: `GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant94793c37943fefb96e525bc7716550c3945322c69fd318923c3bd4d992311599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant94793c37943fefb96e525bc7716550c3945322c69fd318923c3bd4d992311599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [P](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/p.md) | 60 | `declaration-track:21c9c4a7d3b2a50bc20296cbec0a5448b1c000b217c719897bce9f6b2a70449b` |
| 2 | `def` | [U](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/u.md) | 65 | `declaration-track:1f9a08f0428a478d1219d82e4ac9e3af62f3da961674f27ce137f9a4eda7f134` |
| 3 | `def` | [M](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/m.md) | 70 | `declaration-track:c39fed5a410ac8f7a753573d2a86ea4a0c2ab42cf888174a6c276047c327df12` |
| 4 | `theorem` | [sum_lt_half_of_not_tendsto](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/sum-lt-half-of-not-tendsto.md) | 79 | `result-track:eff0fb1d75110f6e58e5a31f618ea6a048389730c75e02a684033188117272dc` |
| 5 | `theorem` | [range_sdiff_eq_biUnion](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/range-sdiff-eq-biunion.md) | 109 | `result-track:8510f824f4f0305d355fcb0405113c9f9755dbb1b8d4a49bc42c2890d184cc8c` |
| 6 | `theorem` | [card_le_mul_sum](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/card-le-mul-sum.md) | 126 | `result-track:28654a1a7b018f5e5e2a58c0dae4569dbeaea550362baf592f4f09e409d4c7bc` |
| 7 | `theorem` | [card_le_two_pow](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/card-le-two-pow.md) | 141 | `result-track:a017f46b9920b53fe74bc2c2f9107eeeae4488534d050387d894c1fd3258b658` |
| 8 | `theorem` | [card_le_two_pow_mul_sqrt](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/card-le-two-pow-mul-sqrt.md) | 174 | `result-track:d972ccdc85675b9ec5a8e734497f46774093d6d07807869731b93d624a776afe` |
| 9 | `theorem` | [Real.tendsto_sum_one_div_prime_atTop](../../../../GeneralTopology/SumOfPrimeReciprocalsDivergesNamespacedPublic.lean/declarations/real-tendsto-sum-one-div-prime-attop.md) | 206 | `result-track:5b7b58772707d86ba048ac09c1a6eadc54b9bea8a7b12e4bb76e913848161d0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33a66244e28d4b2d22abff2d972fd496e5629e523336188ba99aa351f2e1ac41 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant94793c37943fefb96e525bc7716550c3945322c69fd318923c3bd4d992311599.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variant94793c37943fefb96e525bc7716550c3945322c69fd318923c3bd4d992311599.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
