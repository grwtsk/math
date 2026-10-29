# Verification target: UVNamespaced Is Compressed Self

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bbe3ddf1b0aa54ab030f9c9e22e1187d93de6af2",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/index.md) · [Full source](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bbe3ddf1b0aa54ab030f9c9e22e1187d93de6af2`.

Source path: `GRWTSK/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SetFamily.Shadow` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_sdiff_injOn](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/sup-sdiff-injon.md) | 65 | `result-track:aae0b2b026dc18144eeee3de5ff848c797dadac52e44a934de535baf2588cfa7` |
| 2 | `def` | [compress](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress.md) | 91 | `declaration-track:3f60b5491c6f69fe934da26ac6d58124c97540b3e95b8bd864bb6d1dafda48a8` |
| 3 | `def` | [compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compression.md) | 97 | `declaration-track:0506c9fc1f221d269bf827f9c120f820bbe844c9bba9e5dced9bacd343163235` |
| 4 | `def` | [IsCompressed](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/iscompressed.md) | 106 | `declaration-track:63de302f770d2688a19c4921d36d49dd640cb4e463d567442b1efeb84b2b535d` |
| 5 | `theorem` | [compress_of_disjoint_of_le](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-of-disjoint-of-le.md) | 110 | `result-track:15eeec9bc4fe827f7d7508e3d4c99be6ad37b40f35fb550d44f9798ac9861016` |
| 6 | `theorem` | [compress_of_disjoint_of_le'](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-of-disjoint-of-le-source-edition-2.md) | 115 | `result-track:682f4a674fd8e392cd5689cf84e269f41ac33f7e0e557a8010e7ba977a0b970b` |
| 7 | `theorem` | [mem_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/mem-compression.md) | 124 | `result-track:cb0383cc2859f8a6cd34e7abcd076248cfdcd8373be3edb48c486b27b6b384b7` |
| 8 | `theorem` | [IsCompressed.eq](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/iscompressed-eq.md) | 130 | `result-track:1ee46fa2b30c26a9e5f78741ad0a8497807adcad35f94c662d881d27d546ecdf` |
| 9 | `theorem` | [compress_self](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-self.md) | 134 | `result-track:3c4dfa3ac16fc6e4a6c00aab560639608ad9db310cc3b8e8faa0c22e796bf254` |
| 10 | `theorem` | [compression_self](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compression-self.md) | 142 | `result-track:6bbb444aec94be4216c8398a99439c3edcffcb1f235ed1dd06433bedf65df618` |
| 11 | `theorem` | [is_compressed_self](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/is-compressed-self.md) | 154 | `result-track:04c04e971a8c9d7d74fe737c9a6123a6b99e2adc90ae885b786b0bf8b12bc2e7` |
| 12 | `theorem` | [compress_sdiff_sdiff](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-sdiff-sdiff.md) | 160 | `result-track:641d5b7b308c425d69e12cff8a8776cf3220ad5c46dd897d793b5ef294f49e2f` |
| 13 | `theorem` | [compress_disjoint](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-disjoint.md) | 166 | `result-track:34a135d0e9de61e91c6027dcdea999a8325ae0162bca239ec1a501cccad87c6c` |
| 14 | `theorem` | [compress_idem](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-idem.md) | 174 | `result-track:30601dc1d38850c664ae9cf4d6b2900b2e172590c7e3a393bc21f6c15281e62a` |
| 15 | `theorem` | [compress_mem_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-mem-compression.md) | 180 | `result-track:c6894e4dde93cb07d5f314af4fcb4c3207008fad7aea0d9bac1d622c78b0a79b` |
| 16 | `theorem` | [compress_mem_compression_of_mem_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compress-mem-compression-of-mem-compression.md) | 189 | `result-track:6120905aa7030093b449ddcbc5905fd7f0de083f2be8523eaa301494788332ee` |
| 17 | `theorem` | [compression_idem](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/compression-idem.md) | 200 | `result-track:22c508887611b5fea0eeabe8d62e2e385bad80a7923f24efba1b795032863609` |
| 18 | `theorem` | [card_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/card-compression.md) | 211 | `result-track:ae8fba27195a385dbfa656e7cbcc4db4062ff64a43c0cd86f498f260e115ce62` |
| 19 | `theorem` | [le_of_mem_compression_of_not_mem](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/le-of-mem-compression-of-not-mem.md) | 229 | `result-track:cdd7a7b7dd2b5406b84ba0566951bf8c25a0e54ec0dcb94c9c863d18bd63227c` |
| 20 | `theorem` | [disjoint_of_mem_compression_of_not_mem](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/disjoint-of-mem-compression-of-not-mem.md) | 240 | `result-track:44cb2ddf755ae06e8ee5398ff7bb9e54274d0fb089cb2f7630224beca2346280` |
| 21 | `theorem` | [sup_sdiff_mem_of_mem_compression_of_not_mem](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/sup-sdiff-mem-of-mem-compression-of-not-mem.md) | 251 | `result-track:bd0861e2f49d13c57af35e57b1790ce36b5b9290033def194f4560c402021a56` |
| 22 | `theorem` | [sup_sdiff_mem_of_mem_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/sup-sdiff-mem-of-mem-compression.md) | 265 | `result-track:764093bf981cbd48b60b39a5cde461f3c9b0395824b2865b94a36293a10f8585` |
| 23 | `theorem` | [mem_of_mem_compression](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/mem-of-mem-compression.md) | 286 | `result-track:3652253d316ba338d2d554b2f3ea94567be14895602be4679e01d2f2134642f4` |
| 24 | `instance` | [(anonymous)](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/instance.md) | 308 | `declaration-track:226d16e8572613f8ebebee9acff56ef49d7878f60b24907654ed244531ff49f4` |
| 25 | `theorem` | [card_compress](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/card-compress.md) | 311 | `result-track:30182acb4983f66ab92fa791027146bda5a1c2853448e52d5d7fe4cf8850577e` |
| 26 | `theorem` | [aux](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/aux.md) | 319 | `result-track:45b81a1d2c8f76c131a3c44d72ef59ec8270b1e2ef5787403061a45cb83e5f91` |
| 27 | `theorem` | [shadow_compression_subset_compression_shadow](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/shadow-compression-subset-compression-shadow.md) | 328 | `result-track:ac5d07f5f308f9cae1e1bceff713f0021abfdbfc18fe98f5ea0e1186716dcbf5` |
| 28 | `theorem` | [card_shadow_compression_le](../../../../Combinatorics/UVNamespacedIsCompressedSelf.lean/declarations/card-shadow-compression-le.md) | 436 | `result-track:2fa9b7c87203aa41b5c3802961ad66222a70d6f5b0b38f0d9d486d8d4980190c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2411188a1fe8ca86cf30a085a4bb45e037921fb79f9eb40926f020fa359734c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UV/Variantb8fcbdbf6adc5ca78d6d0aa6e0577dde8d6672b1af295a939c8fbcd941a38180.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
