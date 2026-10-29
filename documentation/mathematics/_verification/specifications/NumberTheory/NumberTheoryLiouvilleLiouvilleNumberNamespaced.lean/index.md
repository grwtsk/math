# Verification target: Number Theory Liouville Liouville Number Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b0e5b698a59e2998385bb2a74a24b2d34b2070c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b0e5b698a59e2998385bb2a74a24b2d34b2070c`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Liouville.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/liouvillenumber.md) | 57 | `declaration-track:176ad3758565180099846a24fec71e3e34a6d1f77cd5c7d6fd71673115ad22c6` |
| 2 | `def` | [partialSum](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/partialsum.md) | 69 | `declaration-track:30445a8efac9bc2a09ce2b4ff471f27cb89e6cd0985655537217a3307a3aba31` |
| 3 | `def` | [remainder](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/remainder.md) | 79 | `declaration-track:f112fd935299f9213f833e45f5564adf9d4966bbc9d50147ecd0c7d876377b11` |
| 4 | `theorem` | [summable](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/summable.md) | 88 | `result-track:9069cc052ad464e039c2c4a3eb1e04241119dae5609a17f88570db0b29f5e366` |
| 5 | `theorem` | [remainder_summable](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/remainder-summable.md) | 92 | `result-track:34a762815bc818d8638b91a390b23f67fd5efa62b617e67fb09cc8889b082df7` |
| 6 | `theorem` | [remainder_pos](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/remainder-pos.md) | 97 | `result-track:81167ad01f5a9e260f532bfd53966980c8055a3a41f1c791fb1031c2661c52bb` |
| 7 | `theorem` | [partialSum_succ](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/partialsum-succ.md) | 101 | `result-track:3bc0b04fc6a7deadf1a91c485f0dcfeca2616ee780b7b207357d8fbadcaa9d9a` |
| 8 | `theorem` | [partialSum_add_remainder](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/partialsum-add-remainder.md) | 107 | `result-track:bcaabe7d81c8ca39b1572215c5b2dcf520ed2c2d9b22e8f9ea1483766fd32e2d` |
| 9 | `theorem` | [remainder_lt'](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/remainder-lt-source-edition-2.md) | 118 | `result-track:f44689c7e92c6275e1181d8716d8ad3dd7b78c3f6a808989176b9b14ba170648` |
| 10 | `theorem` | [aux_calc](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/aux-calc.md) | 145 | `result-track:f7142b6a5745b5569f04990e9215d7d98cbd74b88516e702e6b575591073627d` |
| 11 | `theorem` | [remainder_lt](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/remainder-lt.md) | 173 | `result-track:4d3819fd2ab5edac5eab7520dcca7005f59017b50f3f3427d2f78bf6df0f7c7c` |
| 12 | `theorem` | [partialSum_eq_rat](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/partialsum-eq-rat.md) | 182 | `result-track:485b363d152edae9cb014864b926e4a06baa8e19838e2e11f5eb92c10e701d9e` |
| 13 | `theorem` | [liouville_liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/liouville-liouvillenumber.md) | 200 | `result-track:bd64a9a9fb3a42e4098f1e9d0cae6b0837bc652e73daa76bba91d45f925f3938` |
| 14 | `theorem` | [transcendental_liouvilleNumber](../../../../NumberTheory/NumberTheoryLiouvilleLiouvilleNumberNamespaced.lean/declarations/transcendental-liouvillenumber.md) | 216 | `result-track:4f9483f5a3249b84cfebbe2047cb48474b37f323dd683ed53e431653c8908013` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0dc19cbcaee2fa820122001b99a44c1a3297aad3a9e0b8d8aab1dcda05231de3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/LiouvilleNumber/Variant87fb1f776a74cbbf86abe52b4a58350f1523a15da85c6eb5275809f509fe1caf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
