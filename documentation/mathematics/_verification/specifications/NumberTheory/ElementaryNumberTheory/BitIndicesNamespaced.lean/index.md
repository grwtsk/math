# Verification target: Bit Indices Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0dac98c7ba1727d931dccf7f788e3972bf7d663",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant94c910791771752860e33e0d70be803445cb414d37b5a5747fe38a4fb7df86a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0dac98c7ba1727d931dccf7f788e3972bf7d663`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant94c910791771752860e33e0d70be803445cb414d37b5a5747fe38a4fb7df86a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant94c910791771752860e33e0d70be803445cb414d37b5a5747fe38a4fb7df86a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.List` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices.md) | 43 | `declaration-track:965134fcd96a6f1a315fe0808a72cdc1c0cdf22b40bbea2233f1a808c82d755a` |
| 2 | `theorem` | [bitIndices_zero](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-zero.md) | 46 | `result-track:a678bca1b9e2e10b3f13f3a7ee0989469855188ce113b1b848fe56a6a661d230` |
| 3 | `theorem` | [bitIndices_one](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-one.md) | 48 | `result-track:ed0db0426dcfea34d313678defec16495829d4bde8caa731d759dbfef4da4edc` |
| 4 | `theorem` | [bitIndices_bit_true](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-bit-true.md) | 50 | `result-track:983347fc01c2623d38b479d2fe2474062ac77335688beb4870781b8f413244bd` |
| 5 | `theorem` | [bitIndices_bit_false](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-bit-false.md) | 54 | `result-track:5e5e227979ca4bb99e2f8c6124136add3a4aac979dfc46516d9df4201db45db4` |
| 6 | `theorem` | [bitIndices_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-two-mul-add-one.md) | 58 | `result-track:dbf9541a95a70be78c2adb957832cae94896d0c2733bfacdcbaf5477de47b612` |
| 7 | `theorem` | [bitIndices_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-two-mul.md) | 62 | `result-track:b580f2237e1fdf5a5cf48b08cfb23b9405fbbe395f1b63d82e6bb9b863e49039` |
| 8 | `theorem` | [bitIndices_sorted](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-sorted.md) | 66 | `result-track:bec6d9c2cfecd2faaf6bada3222ed3bcc591a314eb808bf69390d36396ead650` |
| 9 | `theorem` | [bitIndices_two_pow_mul](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-two-pow-mul.md) | 73 | `result-track:23a0abc3b7a0ba25b2368432aa39d1b22c90c8e432ebe3080b2b4165410c6c22` |
| 10 | `theorem` | [bitIndices_two_pow](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-two-pow.md) | 80 | `result-track:237231b2f062fca6c7fd689c8f0cdaca2c3db244dcef777121bff5fa2742d3f4` |
| 11 | `theorem` | [twoPowSum_bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/twopowsum-bitindices.md) | 83 | `result-track:e46fd4bef4e7bc4dd8052b8ab15d9b4f39ef4dfb3f111cae1d7427a2998bbce6` |
| 12 | `theorem` | [bitIndices_twoPowsum](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/bitindices-twopowsum.md) | 94 | `result-track:9bc21f85cada2f027b454133501c4b5e3f5b9f72c595ed5fdd50c8add4808302` |
| 13 | `theorem` | [two_pow_le_of_mem_bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/two-pow-le-of-mem-bitindices.md) | 119 | `result-track:c4c1b012b6de9aa6eafbb9daced9bbba9d8262652f186248541a6f1b5dd6c80a` |
| 14 | `theorem` | [notMem_bitIndices_self](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesNamespaced.lean/declarations/notmem-bitindices-self.md) | 123 | `result-track:d605c5e2c6fcda0de1a4a005897d584d180a5edae6736af7cf2f2cf222aa00fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=093d853637730b8d725dbdce5a50ef996f66c6349fabdff6410f6fcf464478a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant94c910791771752860e33e0d70be803445cb414d37b5a5747fe38a4fb7df86a5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant94c910791771752860e33e0d70be803445cb414d37b5a5747fe38a4fb7df86a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
