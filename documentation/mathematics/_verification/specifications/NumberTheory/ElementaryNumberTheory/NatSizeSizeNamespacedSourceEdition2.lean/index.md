# Verification target: Nat Size Size Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7a36b8968df4f54fe4950ec30eac895e3beb4cd",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7a36b8968df4f54fe4950ec30eac895e3beb4cd`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bits` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [shiftLeft_eq_mul_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/shiftleft-eq-mul-pow.md) | 28 | `result-track:e28b061d1983304716681029c491b964c9d1f512c4afdab1d834952f5204c2fb` |
| 2 | `theorem` | [shiftLeft'_tt_eq_mul_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/shiftleft-tt-eq-mul-pow.md) | 31 | `result-track:43f70c2acac278477bad2a054d02428c45f594aa2c58663ce2d0efe12f12fbcf` |
| 3 | `theorem` | [zero_shiftLeft](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/zero-shiftleft.md) | 44 | `result-track:d754e92b874120e798f3b8e59a4f460c2ac15c271e83062ab3ef50368806eda9` |
| 4 | `theorem` | [shiftRight_eq_div_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/shiftright-eq-div-pow.md) | 47 | `result-track:a87ccc73774d417fbef30c8c89c5360c4b711bc01d2628423ff949a8e2c36fe7` |
| 5 | `theorem` | [shiftLeft'_ne_zero_left](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/shiftleft-ne-zero-left.md) | 54 | `result-track:66bf0238b3e9390b2e0e8dd150a85237189c5249a5bc5223a48087fa5de6d64d` |
| 6 | `theorem` | [shiftLeft'_tt_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/shiftleft-tt-ne-zero.md) | 58 | `result-track:02c93036da6f3c058fbdc18f60c4e46b11431c6a546e8577ef07d7731ec0ec89` |
| 7 | `theorem` | [size_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-zero.md) | 67 | `result-track:b028abf3593dea42c15c079ff8ab5b1be07653a0ea28dd04cde1e0439a7fdc7e` |
| 8 | `theorem` | [size_bit](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-bit.md) | 71 | `result-track:e054188d11b42b6423b54dd05417c77f79a45d87e0b62bd7af18cdd1ed51a66a` |
| 9 | `theorem` | [size_bit0](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-bit0.md) | 84 | `result-track:734006706ab3afe2de47f835203f369f206de6553ea747cfe359fe4789683664` |
| 10 | `theorem` | [size_bit1](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-bit1.md) | 89 | `result-track:23d920d69bdc1a8bd2d85330f9a91e6807438f2cc53e7ab1a2dc9828f168e3e5` |
| 11 | `theorem` | [size_one](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-one.md) | 94 | `result-track:e293ec7d282621aad0273fa71f93e5229d39e0b60746778528325e3832937e7f` |
| 12 | `theorem` | [size_shiftLeft'](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-shiftleft.md) | 101 | `result-track:805e1798039817104a0b3e077a9dce08fa670dc6bc7d59893771f1990e78c030` |
| 13 | `theorem` | [size_shiftLeft](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-shiftleft-source-edition-2.md) | 121 | `result-track:bf3ca36bfa769191a9961ad55476cf630925878c269d6ce1bf7822de985e57e0` |
| 14 | `theorem` | [lt_size_self](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/lt-size-self.md) | 125 | `result-track:96c3026e5675af75d70c22d3b7a1a19088b3154bc1c2e79e867da27de1cdd078` |
| 15 | `theorem` | [size_le](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-le.md) | 137 | `result-track:955e46ff005c8169a75f6d01deb89fa0b47539069beedd343b047be4e75ebfd2` |
| 16 | `theorem` | [lt_size](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/lt-size.md) | 155 | `result-track:d0fed207e2881cd05951021493e3618cbd21721078fe0af73148c38d16472495` |
| 17 | `theorem` | [size_pos](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-pos.md) | 159 | `result-track:2de0899605552b4a892fc776ab13775c1604a525861e2d0ef60df2442664ea72` |
| 18 | `theorem` | [size_eq_zero](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-eq-zero.md) | 162 | `result-track:c5c8a9c65bc0a56d30e2cfa1691affff9a4edbcdf9a7c6c0e0b9e085de363bdc` |
| 19 | `theorem` | [size_pow](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-pow.md) | 166 | `result-track:0b4a8fc0e4ecad6eea1f6afb3df3b11eba21fe96459222133cdb667f241081da` |
| 20 | `theorem` | [size_le_size](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-le-size.md) | 171 | `result-track:0ace4f470141e1e3c57048df5d38365f7d95d4d14f51376694a0401545774fd6` |
| 21 | `theorem` | [size_eq_bits_len](../../../../../NumberTheory/ElementaryNumberTheory/NatSizeSizeNamespacedSourceEdition2.lean/declarations/size-eq-bits-len.md) | 175 | `result-track:ee9db55d32a085397fecd79ff902ae09f7c17c94271e1abf380dd00f83464412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d732a1245af8e1d6275291297928b42abaa1885268734a4ef67eebed398a747d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Size/Variant77ad6f54170cc6bc54674e591bd3e869dd3e0288c9007fae36d3bbaac5f915c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
