# Verification target: Maximal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/index.md) · [Full source](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f5c27b1dafe09db881c1a23556ee4eb1fdbb05b`.

Source path: `GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Prime` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Span` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal.md) | 42 | `declaration-track:424efee87f5df761e46ed699ba57b4c26f1620d0605303aeef4de42c253367ed` |
| 2 | `theorem` | [isMaximal_def](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-def.md) | 47 | `result-track:5639d1d11033ece1d225c8654f83ba5fdc2a1d46219e0876f2cdb3345ed3dc0f` |
| 3 | `theorem` | [IsMaximal.ne_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-ne-top.md) | 50 | `result-track:96448b239fff183ab8e6b3fcf037aeb66b6808413cabc3bf7ee818c2d9df82da` |
| 4 | `theorem` | [isMaximal_iff](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-iff.md) | 53 | `result-track:d85a7a6f8cfe62692c8c55b25b2b6b762e348ffe9729216c663a3eb3d4765878` |
| 5 | `theorem` | [IsMaximal.eq_of_le](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-eq-of-le.md) | 57 | `result-track:b1eae574a8d821bc988a3cff530993cfd59223908be3dd435baba47fe1f01770` |
| 6 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/instance-source-edition-3.md) | 60 | `declaration-track:d8b82dd0710f5cd5daf774e31de009dce67f36486da263e8347cadeae4a5348e` |
| 7 | `theorem` | [IsMaximal.coprime_of_ne](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-coprime-of-ne.md) | 62 | `result-track:db22dfeafcc1d90dd2108612108d17413b6147c38286fb0dc70bdc94b23fb7a9` |
| 8 | `theorem` | [exists_le_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/exists-le-maximal.md) | 69 | `result-track:f0b194da9f37363846a59840e5fdb8672ec8cbb57d69476424f2e9eaa99bcfb3` |
| 9 | `theorem` | [exists_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/exists-maximal.md) | 75 | `result-track:07c9b933bc211fd635650264a7946bfb9595bb3adabba28710e21b6e456c64d8` |
| 10 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/instance.md) | 79 | `declaration-track:5e0e9d3d9b04079e7830c9daf9e98dd9065df275c2245131acc4bce6f6d6fe33` |
| 11 | `theorem` | [maximal_of_no_maximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/maximal-of-no-maximal.md) | 85 | `result-track:fbc11857fea56ed566a736f07dabf52494fb553c35afd963bfe4dd981d38fbe8` |
| 12 | `theorem` | [IsMaximal.exists_inv](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-exists-inv.md) | 91 | `result-track:5320f99165f36df8eb57ec7937c9b2bceb8b118b5c2b238a8a7a00139a353407` |
| 13 | `theorem` | [sInf_isPrime_of_isChain](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/sinf-isprime-of-ischain.md) | 101 | `result-track:8bab7ba7fa064260e20f9392a391601c6dca683306affc45e0d358f2d04dcbdc` |
| 14 | `theorem` | [span_singleton_prime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/span-singleton-prime.md) | 130 | `result-track:55e882381eec092482f04e10d51a6d24bb734c32dda2b554d3b896f3eb7f1ae8` |
| 15 | `theorem` | [IsMaximal.isPrime](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/ismaximal-isprime.md) | 133 | `result-track:381bc49479ea51c4c48ae5213b7cd1484177604cd2a81fb2b0f79f8d79a2b014` |
| 16 | `instance` | [(anonymous)](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/instance-source-edition-2.md) | 148 | `declaration-track:c2de986b3eb0ccfaa653c07e4c2893d9b30f100a7d88ad8b98440638ae531657` |
| 17 | `theorem` | [exists_disjoint_powers_of_span_eq_top](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/exists-disjoint-powers-of-span-eq-top.md) | 151 | `result-track:4a7cdd3c95d978bb5b5b9d7c328cca118ca32c197b7e05d6066a2d9d6cc164fb` |
| 18 | `theorem` | [span_singleton_lt_span_singleton](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/span-singleton-lt-span-singleton.md) | 160 | `result-track:130cfd0df4118b5aaa372be5e54ddc9b6d64f467680e1d69b3b91c2d38e151ee` |
| 19 | `lemma` | [isPrime_of_maximally_disjoint](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/isprime-of-maximally-disjoint.md) | 165 | `result-track:e428bb647a5eccaa5745a7fc1171e4ecd07a7b30ab4063d13b0372b24d36cd89` |
| 20 | `theorem` | [exists_le_prime_disjoint](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/exists-le-prime-disjoint.md) | 189 | `result-track:be7d7b6baea49a24e0efc3465717a01275b46f6446a035c8f51e29e92a982ae8` |
| 21 | `theorem` | [exists_le_prime_notMem_of_isIdempotentElem](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/exists-le-prime-notmem-of-isidempotentelem.md) | 200 | `result-track:70c0b51a0faa8db08e718dc0a30030527ccf309f5a36d0a96ec026edb09ab6f6` |
| 22 | `theorem` | [bot_isMaximal](../../../../../CommutativeAlgebra/GeneralCommutativeRingTheory/Maximal.lean/declarations/bot-ismaximal.md) | 222 | `result-track:06f26b6c1b6a6ae7ff18038708a3b322ec2f720aaa251a2b8c6f344d5c1b4f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0186f360a71e41842a1d1ef6fe7b96617abd253d0a0b8601666d2a8529ae7333 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean","GRWTSK/_verification/specifications/Algebra/Maximal/Variantace6c1a076213b12246500c949dc1d7248d5309da508650d765fa87b74a0fece.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
