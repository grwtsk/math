# Verification target: Bit Indices Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a59c42d3e2225700eec7307ec1a6ba6fbaba265e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant4547740db93a6fea80ec5a589c3dbd5b3783ad381c4c44aa451e3a63d86f70fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a59c42d3e2225700eec7307ec1a6ba6fbaba265e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant4547740db93a6fea80ec5a589c3dbd5b3783ad381c4c44aa451e3a63d86f70fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant4547740db93a6fea80ec5a589c3dbd5b3783ad381c4c44aa451e3a63d86f70fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices.md) | 38 | `declaration-track:d8005362392fa59c8c33d354751798ff165086ac7c9ffcf494823889d7a3f189` |
| 2 | `theorem` | [bitIndices_zero](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-zero.md) | 41 | `result-track:b0813d0a0ca5f89dce8dbc1a3cb548479812449084bbbeddd2dae0a4f15714cb` |
| 3 | `theorem` | [bitIndices_one](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-one.md) | 43 | `result-track:412f15959c1b736a99bf80768918dca18c846da9f665dc450e27e4039f7af58a` |
| 4 | `theorem` | [bitIndices_bit_true](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-bit-true.md) | 45 | `result-track:c2856e94a595e310ba411031956b6001f9b2dcf84f6a361e9f602fc99b7d107c` |
| 5 | `theorem` | [bitIndices_bit_false](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-bit-false.md) | 49 | `result-track:fe681d1136845b16fae540e697f56e302ddf7a5f8e07535e602bce719ccf6a38` |
| 6 | `theorem` | [bitIndices_two_mul_add_one](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-two-mul-add-one.md) | 53 | `result-track:bf921faa701ca2571243c36ea6e92dbec75d27e632a842483c4a77694e1f6ba9` |
| 7 | `theorem` | [bitIndices_two_mul](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-two-mul.md) | 57 | `result-track:cde4e578fee5400db7f5430b11453d71ee4ee97e57b539a6947e6728b8264ea2` |
| 8 | `theorem` | [bitIndices_sorted](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-sorted.md) | 61 | `result-track:e66b4c4b7a7cf51fd740e7e9b62d5393284c885b98542e28a3cc9297fb6f78c5` |
| 9 | `theorem` | [bitIndices_nodup](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-nodup.md) | 69 | `result-track:c45edbcf48afdb305b71a95acf53cdd299ac4ccdcd3fcbfbcf0496f935acfbeb` |
| 10 | `theorem` | [bitIndices_two_pow_mul](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-two-pow-mul.md) | 71 | `result-track:1c3986dac65837b2cbbc22729e81bf6098cc2220be21c642ec99128ac8b34cd1` |
| 11 | `theorem` | [bitIndices_two_pow](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-two-pow.md) | 79 | `result-track:fcb69ba20372f3edbefa074dea0220d05db82035fb115f0c47edb5db76b7a031` |
| 12 | `theorem` | [sum_map_two_pow_bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/sum-map-two-pow-bitindices.md) | 82 | `result-track:95773fd2837db71fb85cfeafcf83053236d68b3905a595a0de5bed9cbf39e5b3` |
| 13 | `theorem` | [mem_bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/mem-bitindices.md) | 95 | `result-track:e1d1130deb297806f89e6b1dfa6b0b95d563a1bc17839d3e065ba43e229d166b` |
| 14 | `theorem` | [bitIndices_sum_map_two_pow](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/bitindices-sum-map-two-pow.md) | 104 | `result-track:2c0f970330dde2ccd2affb4fcfc26ac0ca17c2c315b574f891bf08838f510e18` |
| 15 | `theorem` | [two_pow_le_of_mem_bitIndices](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/two-pow-le-of-mem-bitindices.md) | 130 | `result-track:be257204a3796f16e358c256ff5f297a85f92faa4cabb8ed52d7dc73a355abd8` |
| 16 | `theorem` | [notMem_bitIndices_self](../../../../../NumberTheory/ElementaryNumberTheory/BitIndicesPublic.lean/declarations/notmem-bitindices-self.md) | 133 | `result-track:245be6d44ec41f07d46205f8e9e5ed3862c2e6573b375e4f6f8b893e4ed57d36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9bff694c80a53e215eacd0b90a1d047d1563f4f8af45ec6fba0b101774a52ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant4547740db93a6fea80ec5a589c3dbd5b3783ad381c4c44aa451e3a63d86f70fe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BitIndices/Variant4547740db93a6fea80ec5a589c3dbd5b3783ad381c4c44aa451e3a63d86f70fe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
