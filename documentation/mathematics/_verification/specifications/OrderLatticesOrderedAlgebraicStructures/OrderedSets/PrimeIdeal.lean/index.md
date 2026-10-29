# Verification target: Prime Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ff0b2c5dbffe41fc7a1d950a5b4ddf82c6a265b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ff0b2c5dbffe41fc7a1d950a5b4ddf82c6a265b`.

Source path: `GRWTSK/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean.json)

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
| 1 | `structure` | [PrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/primepair.md) | 44 | `declaration-track:15884bcbfeb44453bd8ea7d5298dc49a330bf2460eb7b04d20b547f40bb1229f` |
| 2 | `theorem` | [compl_I_eq_F](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/compl-i-eq-f.md) | 53 | `result-track:b1672d0991caeeba99d689725644f84060d61b39f7165579fb4d831232383441` |
| 3 | `theorem` | [compl_F_eq_I](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/compl-f-eq-i.md) | 56 | `result-track:8776fdfd1dc689b862b00c9d81bee15bfb01d58172ed0c0df8bd4b0312e63705` |
| 4 | `theorem` | [I_isProper](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/i-isproper.md) | 59 | `result-track:dc21a4a481eb866b8d1bbda80dc036cc352245b5b0fba0ec6237d1c4b8c3c7d1` |
| 5 | `theorem` | [disjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/disjoint.md) | 64 | `result-track:e6d7957554141231972f3d6e58792c51b58596bdcef49f7c5eda37527f041b25` |
| 6 | `theorem` | [I_union_F](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/i-union-f.md) | 67 | `result-track:20af648ce45a19d05646c3d5c4f5866d1aa19ad06c43ed82cec401e75566ea7a` |
| 7 | `theorem` | [F_union_I](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/f-union-i.md) | 70 | `result-track:36ffc403589ec39a1d5f7184d2a7666af62ff70f18008cafe15f7d1118072b1a` |
| 8 | `class` | [IsPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime.md) | 78 | `declaration-track:4d0d21fb80d3eff163292a196fd9a81d10a1d636894383ae1e734dde67171bbf` |
| 9 | `def` | [IsPrime.toPrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-toprimepair.md) | 87 | `declaration-track:8c4747ec135a846499f962e83c31440983b1d55653b86b80a075e368ab459a2c` |
| 10 | `theorem` | [PrimePair.I_isPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/primepair-i-isprime.md) | 92 | `result-track:76550b38d1774e9463a218e3e1f5b532ff7df7dc3c0d4d580d9fa9fc23d635b7` |
| 11 | `theorem` | [IsPrime.mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-mem-or-mem.md) | 104 | `result-track:63835deed75dd2806310fac4769b7e6b31a25c8b05187ef2fb276f5405c872e5` |
| 12 | `theorem` | [IsPrime.of_mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-of-mem-or-mem.md) | 110 | `result-track:3d3c6c4f26ec445764dc5cc8466aabf9b6de4635ffaab6815d3bcfb4cfe18b20` |
| 13 | `theorem` | [isPrime_iff_mem_or_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-iff-mem-or-mem.md) | 120 | `result-track:7079d210f43b4f9ad1adb0ee60f47627daccd3afb3239f16da72f297506a1cb0` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/instance.md) | 129 | `declaration-track:01581c83b7629a9c2e36bb181c8b6aab6b09255a74b0c99fb334a7143dd8440d` |
| 15 | `theorem` | [IsPrime.mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-mem-or-compl-mem.md) | 152 | `result-track:541fee4067b777db5ac73125b8d65cbd52b3d4955560627e8fa6622d2929bba8` |
| 16 | `theorem` | [IsPrime.compl_mem_of_notMem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-compl-mem-of-notmem.md) | 157 | `result-track:88f1878cacbd02cd4d4aac920c9328fa2784245b94b55e3ca206e90fcb1eda92` |
| 17 | `theorem` | [isPrime_of_mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-of-mem-or-compl-mem.md) | 163 | `result-track:1391968ab2414431ec19a37a418e0939faf7e2ea0f55a89d1186491c1d7b9ab1` |
| 18 | `theorem` | [isPrime_iff_mem_or_compl_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-iff-mem-or-compl-mem.md) | 170 | `result-track:d6aa8eac87e951d97de1aa41ec9509e97a4f9ca0b8f733b681a847390cf41810` |
| 19 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/instance-source-edition-2.md) | 173 | `declaration-track:5ce5726262ef34ab6d85c4e8963c48f9b82c2af8968f204d1e6426ba4b7aee6a` |
| 20 | `class` | [IsPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-source-edition-2.md) | 193 | `declaration-track:4f04ba7ed4b6c9dce3d7c5be1182d560b62ac092c1757ecc0c2fae30aa8ad70c` |
| 21 | `def` | [IsPrime.toPrimePair](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/isprime-toprimepair-source-edition-2.md) | 198 | `declaration-track:d4b2ab6b1088da060e854ddbe449f65810e35bdd790852964f77bc974deef33e` |
| 22 | `theorem` | [_root_.Order.Ideal.PrimePair.F_isPrime](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/PrimeIdeal.lean/declarations/root-order-ideal-primepair-f-isprime.md) | 203 | `result-track:c19f8e29d1591b1d5dd5aa859070f1d853602a64aee4a69c4df3062db5a8ccb2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3274a4eec27eab4bf03e867f84c9a284be6cd2b6c0ad61abd6e19b810d54b5e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean","GRWTSK/_verification/specifications/Algebra/PrimeIdeal/Variantefaa4c598ac9173e8be539b4015bf67085df28e9a4a36285388c85bbb623851b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
