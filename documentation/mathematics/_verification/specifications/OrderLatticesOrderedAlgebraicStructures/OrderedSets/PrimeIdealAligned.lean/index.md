# Verification target: Prime Ideal Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46c3604e239e0501659c3475b26e7e02d76e862b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46c3604e239e0501659c3475b26e7e02d76e862b`.

Source path: `GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.PFilter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/primepair.md) | 47 | `declaration-track:718ec2123a8f97c8b7d698df09c5abd8207e0c7fa3c27979929b892735a60429` |
| 2 | `theorem` | [compl_I_eq_F](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/compl-i-eq-f.md) | 57 | `result-track:9feafadbad0522c7c1ce16acc6848e271e5b6312665baa88e132c0a3cca67336` |
| 3 | `theorem` | [compl_F_eq_I](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/compl-f-eq-i.md) | 62 | `result-track:075c6194a12298d74b464dc613f7f574111650bcbe60e1050a9ad2d6c7f40063` |
| 4 | `theorem` | [I_isProper](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/i-isproper.md) | 67 | `result-track:7b6c715a9c49aa2636888a698c269b8a7d1f9b00f103869d559f97114b70b77f` |
| 5 | `theorem` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/disjoint.md) | 74 | `result-track:58acc91edc5716175831fa27e4c3128478bd87e51766085712bd7d85985c9254` |
| 6 | `theorem` | [I_union_F](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/i-union-f.md) | 78 | `result-track:0ee22a91aa38300d25c4a484867917bfed58f145d9fdc5925f780b940c2a1caa` |
| 7 | `theorem` | [F_union_I](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/f-union-i.md) | 83 | `result-track:7f01d4acb60c4a5c8325000e04a1aff0ddc5e5b615098f1ef006213c92a1ffc3` |
| 8 | `class` | [IsPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime.md) | 93 | `declaration-track:2bd3cd44a2fb9a7410139f5f88ce9975f4d2351fe5c107074dbdd617e22114da` |
| 9 | `def` | [IsPrime.toPrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-toprimepair.md) | 103 | `declaration-track:73848feb4f385d6c2a633650430a124d091a0c92efe74c0e694a376f8829d754` |
| 10 | `theorem` | [PrimePair.I_isPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/primepair-i-isprime.md) | 109 | `result-track:69c718204db46dc4e0c3cc133d6c6a68416f3b56e1eb19463a1bbbae3a29979d` |
| 11 | `theorem` | [IsPrime.mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-mem-or-mem.md) | 123 | `result-track:ee33db57c21534bc42f83440d5078aec712b90fafbd03bbd0c16525d47460c97` |
| 12 | `theorem` | [IsPrime.of_mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-of-mem-or-mem.md) | 130 | `result-track:db23dabf1a8ed767f9270064ba85dc18033c2baec13d8b8fcb23037b290221d6` |
| 13 | `theorem` | [isPrime_iff_mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-iff-mem-or-mem.md) | 141 | `result-track:56e1e15cd393844b55e613cccd466c1b0150a0a42870d9109bad6816cb16cb1d` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:415aa78ab2479f65555a4fe1fa9e7b487f15d5f1ecbb1c95ad92503b9f3bd136` |
| 15 | `theorem` | [IsPrime.mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-mem-or-compl-mem.md) | 175 | `result-track:4937ecb3a35c65848f06af459bd2874729e19bb3d1cc91bce52df10176452eaa` |
| 16 | `theorem` | [IsPrime.mem_compl_of_not_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-mem-compl-of-not-mem.md) | 181 | `result-track:ca40411ada11df37d7bb387de4662a2a8622e80a7771d271c38ac4dbe80f4218` |
| 17 | `theorem` | [isPrime_of_mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-of-mem-or-compl-mem.md) | 185 | `result-track:8bbe5d79a80088a5fc53c8a5e31333d8131f5ec02ba779bd022d7ed4fb96d266` |
| 18 | `theorem` | [isPrime_iff_mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-iff-mem-or-compl-mem.md) | 193 | `result-track:5456b5f189f1188e65c4a52d6b1dca078c72a93e5d01c06c37f4feb8ebde2596` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/instance.md) | 197 | `declaration-track:0bad1a5a2f94a1fd770579db7bd8d28f44c17795c811286f51a4c4d855542f2f` |
| 20 | `class` | [IsPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-source-edition-2.md) | 219 | `declaration-track:689b215b5e6f9616e7af30b7aec4ef3ef6baac0ce5d8537c35b0293ad3bbaf27` |
| 21 | `def` | [IsPrime.toPrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/isprime-toprimepair-source-edition-2.md) | 225 | `declaration-track:e3503d669d937e0843cf1a1fea570d0b282f6c0c0a4fc6beaaef3af94d77ee01` |
| 22 | `theorem` | [_root_.Order.Ideal.PrimePair.F_isPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdealAligned.lean/declarations/root-order-ideal-primepair-f-isprime.md) | 231 | `result-track:a7e7b6c9ddf39ef59f5cd1bd6505d896ed9c13104b6e32b1b07d51e8b8990495` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7fe356b768ed965222dd7bf7ae9e50c66a00730fddf0a35a607202e78d3d9e5c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean","GRWTSK/_verification/specifications/Algebra/PrimeIdeal/Variantf7346ffb2df6fdbf19231a4ba252f297885f796752eae3ea722bcc389d9a76b2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
