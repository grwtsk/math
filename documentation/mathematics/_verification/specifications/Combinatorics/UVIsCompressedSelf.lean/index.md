# Verification target: UVIs Compressed Self

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b87145e41254080ec6ed450fc06b2055f19cbb81",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/UVIsCompressedSelf.lean/index.md) · [Full source](../../../../Combinatorics/UVIsCompressedSelf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b87145e41254080ec6ed450fc06b2055f19cbb81`.

Source path: `GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Shadow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_sdiff_injOn](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/sup-sdiff-injon.md) | 57 | `result-track:45dc873d1ba7d9912c728837b6a140e7a9b2452c9a081dfb9494f06b58bd3bbf` |
| 2 | `def` | [compress](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress.md) | 83 | `declaration-track:5579555c910bcfc82477b2040febcdea5c98ab0aaaedcf1cdc3a0dc69a5da5ad` |
| 3 | `def` | [compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compression.md) | 89 | `declaration-track:de38fd9c0e6b7df728b4482731574d0b9cdac9882349464b99035e721a5cd223` |
| 4 | `def` | [IsCompressed](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/iscompressed.md) | 98 | `declaration-track:3e85c3c01f24782a450745369266d338c211e4f78fd4a2962b4f5f82088a4d10` |
| 5 | `theorem` | [compress_of_disjoint_of_le](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-of-disjoint-of-le-source-edition-2.md) | 102 | `result-track:b7b680baa92f8b49959939ae76295da09d5bdb30143eeeb0399380f6c97ff0da` |
| 6 | `theorem` | [compress_of_disjoint_of_le'](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-of-disjoint-of-le.md) | 107 | `result-track:048e22613105fcce49a1ce25a7cfb598caa93a424ffc096988988dbdea0a1971` |
| 7 | `theorem` | [mem_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/mem-compression.md) | 116 | `result-track:a809b180667b8024fdd5c37a09413f65c36789216f56b6823919eeced9abb296` |
| 8 | `theorem` | [IsCompressed.eq](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/iscompressed-eq.md) | 122 | `result-track:4680ec68964873b52a0ecbb27dd3ef10262f520bfffab740db6a3e8414136b3f` |
| 9 | `theorem` | [compress_self](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-self.md) | 126 | `result-track:048be69a7002cedfe5071a11e42a478b9fa2bcbca733aba1997a2e603f84e17c` |
| 10 | `theorem` | [compression_self](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compression-self.md) | 134 | `result-track:28d5ec5d9089f9c970d1cc8bfad0cd2c23a414b8cfa9037dff557be7addeb1c7` |
| 11 | `theorem` | [is_compressed_self](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/is-compressed-self.md) | 146 | `result-track:0a23d0c12f52d478f88ee09a30868b39b2f47471990b5ff0eb57b9ec0f0f558d` |
| 12 | `theorem` | [compress_sdiff_sdiff](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-sdiff-sdiff.md) | 152 | `result-track:b4ba985fc6daac3761d51a8606478659999aaceb6e01a6a341c0825bccafae8c` |
| 13 | `theorem` | [compress_disjoint](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-disjoint.md) | 158 | `result-track:6a57ef5a920d453d2fcfa969f771e66c89168299dccd36772a2334474d441f53` |
| 14 | `theorem` | [compress_idem](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-idem.md) | 166 | `result-track:b8b403f5ed49efd12315ac52e9e301da20383b30f987b5c7dfbdd2f3bef22517` |
| 15 | `theorem` | [compress_mem_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-mem-compression.md) | 172 | `result-track:9912ab172ed2ad0a8bdbe5f1a41fb2b4f360e6a613ad896bec01763f0949b07d` |
| 16 | `theorem` | [compress_mem_compression_of_mem_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compress-mem-compression-of-mem-compression.md) | 181 | `result-track:4fc265344dc8e2af090d4743741e5b10af55621594599a2bdef218da863d3c29` |
| 17 | `theorem` | [compression_idem](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/compression-idem.md) | 192 | `result-track:3c2002e6df2248a1c9c1afc45956000a9fd255e9fce26233c4d37d857c2bcb13` |
| 18 | `theorem` | [card_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/card-compression.md) | 203 | `result-track:88e284607ae6828f2bd1316cddb3c0f2f317c910a9dbe65efc9f39563aa4209b` |
| 19 | `theorem` | [le_of_mem_compression_of_not_mem](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/le-of-mem-compression-of-not-mem.md) | 221 | `result-track:3949d9bffde59ebe926d59250f1cea0abab65cddf40703a319c52f57c8a00bf5` |
| 20 | `theorem` | [disjoint_of_mem_compression_of_not_mem](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/disjoint-of-mem-compression-of-not-mem.md) | 232 | `result-track:14d4da166af03a39722fe5773e1b6876d769725f2e11f412e892e1434dcec45f` |
| 21 | `theorem` | [sup_sdiff_mem_of_mem_compression_of_not_mem](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/sup-sdiff-mem-of-mem-compression-of-not-mem.md) | 243 | `result-track:5f1c70f927e2598e3a52033d89cedb2730500d15c6438bacc0c1f8364c6e5168` |
| 22 | `theorem` | [sup_sdiff_mem_of_mem_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/sup-sdiff-mem-of-mem-compression.md) | 257 | `result-track:fe32287a23841e24d55ccbd805602edaa680f7ffdacfba6157b9fdbab2f0707e` |
| 23 | `theorem` | [mem_of_mem_compression](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/mem-of-mem-compression.md) | 278 | `result-track:cb606633246ea8864f96d2e225515765c6ab364c92086c58c018729af0521dad` |
| 24 | `instance` | [(anonymous)](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/instance.md) | 300 | `declaration-track:e4c2e09acc75d1db5c1528b689f71be3a430327c2e93a165c2feadc3523ff62c` |
| 25 | `theorem` | [card_compress](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/card-compress.md) | 303 | `result-track:1e25e74b2f07e44676f2d52170391c334f1839d347d296e9809e5c6ab549eea3` |
| 26 | `theorem` | [aux](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/aux.md) | 311 | `result-track:6ed3b7930cbcf1a1716f36fef4a2352d3f0f04ab8f12c473cb538cc462d8ec4d` |
| 27 | `theorem` | [shadow_compression_subset_compression_shadow](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/shadow-compression-subset-compression-shadow.md) | 320 | `result-track:b6f4baf493f994f04b915ded7a546598dbf8cce73accd5df877b1e64e62320a6` |
| 28 | `theorem` | [card_shadow_compression_le](../../../../Combinatorics/UVIsCompressedSelf.lean/declarations/card-shadow-compression-le.md) | 428 | `result-track:35259ff863350a3c3db867c8b82efbf64fb7b8824c360f35c6ddc521f3c4c615` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=622a429362864a6f5988a1d5da6f60a362f584488fbb559f1d9c4f4e39fa67de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UV/Variant7932874b7f50014b91f8f3a2dcf0b7f2799cdade8725bccf151f8276d02991be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
