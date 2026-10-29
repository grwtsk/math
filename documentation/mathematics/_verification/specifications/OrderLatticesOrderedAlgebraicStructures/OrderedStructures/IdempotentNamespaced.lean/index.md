# Verification target: Idempotent Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acdc58cb486537b7cc01319e2a8f386f0df864a3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acdc58cb486537b7cc01319e2a8f386f0df864a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Idempotent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.BooleanAlgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-4.md) | 30 | `declaration-track:3b7218f70576f2271e86ebf6f1f070215495ad85b505197617aa392283ef9e1a` |
| 2 | `lemma` | [eq_of_mul_eq_add_eq_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/eq-of-mul-eq-add-eq-one.md) | 34 | `result-track:adc68c67a4ab84c8e60b0fc035889ea9126be810da5de7c9119544892d62b871` |
| 3 | `lemma` | [mul_eq_zero_add_eq_one_ext_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/mul-eq-zero-add-eq-one-ext-left.md) | 45 | `result-track:c5593780f99f1e5852f20b7ed07802c7b29fa534dcbb8bc17fc2c3744242fc1e` |
| 4 | `lemma` | [mul_eq_zero_add_eq_one_ext_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/mul-eq-zero-add-eq-one-ext-right.md) | 50 | `result-track:b1101d589dad8961fb61fce6896ced88c32344065bb23e5dda82bf5613c52f2c` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-5.md) | 56 | `declaration-track:5349e28833517b123edf061a880b57ef410a429d0660485bfe154bb9a2158ff4` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-7.md) | 62 | `declaration-track:61342355377b9a08dfc6aea2905ba3cf78f8e8eeb21ea377a95b8620eead7281` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-8.md) | 74 | `declaration-track:8f185c4eab14b2e7722dd0d961a50310304c5f54660f7eb4995c03bc1771325f` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance.md) | 99 | `declaration-track:08b122ef4476507252d8ed2604b4b77c86f7bd74501f760e6a3f0d11a0cfaefa` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-9.md) | 109 | `declaration-track:b62239f14d9c03f02533eba888b085f766b0505b36b24c846088dd0a28ecfd05` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-2.md) | 113 | `declaration-track:0c52a2155ea94dec0ca388bcbfce7be22f0d2e56370199c3080850ab439c59eb` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-6.md) | 121 | `declaration-track:60e9448918e826ba97321011dd13a7d71325ff010166828179bcc65ea40da0b1` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/instance-source-edition-3.md) | 130 | `declaration-track:0d55567acedbc0425e7820744cc1e9d46f6897380570286cbf4656255270c7a4` |
| 13 | `def` | [OrderIso.isIdempotentElemMulZeroAddOne](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/IdempotentNamespaced.lean/declarations/orderiso-isidempotentelemmulzeroaddone.md) | 149 | `declaration-track:6dd85bf2c3b60dad9d36b472b9e1cc252a0f00906e84301065f4d3ee57116e00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ccf5ea85b6529c63c7c7df7caab69523f40b2adb66a3b312d988303729a3992 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Idempotent/Variant6bf4bdf4fb8e6c4f91837c45a6b529b6a39e8aa89d062ddedf265cfa7bb0974b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
