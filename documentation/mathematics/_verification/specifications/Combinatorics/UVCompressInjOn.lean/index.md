# Verification target: UVCompress Inj On

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06f706f134f771dc08ccdb7ad85390c70a9bad62",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/UVCompressInjOn.lean/index.md) · [Full source](../../../../Combinatorics/UVCompressInjOn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06f706f134f771dc08ccdb7ad85390c70a9bad62`.

Source path: `GRWTSK/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean.json)

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
| 1 | `theorem` | [sup_sdiff_injOn](../../../../Combinatorics/UVCompressInjOn.lean/declarations/sup-sdiff-injon.md) | 55 | `result-track:8cfb5e0b9d9990ece663cfdb44bdfac46636b54a6446b8330f1ab634ae87b0e8` |
| 2 | `def` | [compress](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress.md) | 78 | `declaration-track:859e5ed5d09a6caf835cbe5edba75f5b30ce6b2dd851d57111e4d3d788d9a837` |
| 3 | `theorem` | [compress_of_disjoint_of_le](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-of-disjoint-of-le.md) | 81 | `result-track:f96dce60ecb8d83363e0bc8f8a242b2ce54bb1e80388df8f573a9316d16e8014` |
| 4 | `theorem` | [compress_of_disjoint_of_le'](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-of-disjoint-of-le-source-edition-2.md) | 85 | `result-track:fb1f6a9d816de6b097ec89113e2187e4393fed799a0ee11fa757604918281e72` |
| 5 | `theorem` | [compress_self](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-self.md) | 92 | `result-track:29b3d207784b42135df2748e3c2f9c64fa31c491f13dfb07893c5249cc9a94ca` |
| 6 | `theorem` | [compress_sdiff_sdiff](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-sdiff-sdiff.md) | 100 | `result-track:f0a9636eb5c4bad6c1a5fbbd0e83f4a79ca8d4319c59f6f2f11a1d925329dfe7` |
| 7 | `theorem` | [compress_idem](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-idem.md) | 107 | `result-track:3903eef1676028eb1c620d39b625c07a692173e89b1cae8a895c92f955042b04` |
| 8 | `def` | [compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compression.md) | 118 | `declaration-track:e57767a42c5a52117396715154d8cb71c24feafc6360fd8d97f1ddec51981c6c` |
| 9 | `def` | [IsCompressed](../../../../Combinatorics/UVCompressInjOn.lean/declarations/iscompressed.md) | 127 | `declaration-track:d67e21d34ff1e0ace84382b2d75c7a3f9f682aa09ec2b8e1a73f9026a6c717b4` |
| 10 | `theorem` | [compress_injOn](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-injon.md) | 131 | `result-track:6d51547b593760ae3bd521be4eb685b6071eff05704869f4b037092966b5d48f` |
| 11 | `theorem` | [mem_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/mem-compression.md) | 144 | `result-track:5cb8a5fbe6d505c0e5fdeba59fed23336cfc16ce45cffa89c6fcf12befed1f23` |
| 12 | `theorem` | [IsCompressed.eq](../../../../Combinatorics/UVCompressInjOn.lean/declarations/iscompressed-eq.md) | 148 | `result-track:77259a7a3f5a5dfc31423420ba826f55af90a414f1dfa63c4ef062b056e31645` |
| 13 | `theorem` | [compression_self](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compression-self.md) | 151 | `result-track:d4bd25405dc70c13c20d68e9e4872e888933b680da56fc0ff86decd35ac7cd6e` |
| 14 | `theorem` | [isCompressed_self](../../../../Combinatorics/UVCompressInjOn.lean/declarations/iscompressed-self.md) | 162 | `result-track:5eb30a7d8c706d1464a074a67b9f49990e56000181af75a68990cb817166456f` |
| 15 | `theorem` | [compress_disjoint](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-disjoint.md) | 164 | `result-track:641bf20cb51affa9c19dfad84a87060b3a29f47bdc4e2c378c0bed073b2487f7` |
| 16 | `theorem` | [compress_mem_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-mem-compression.md) | 168 | `result-track:039e4d88133f6312c311825748c9e49f1550feb6955716b73b3c09bc3feeb683` |
| 17 | `theorem` | [compress_mem_compression_of_mem_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compress-mem-compression-of-mem-compression.md) | 176 | `result-track:0b0bf9424b35041a38cfa2b66c74abd2c660a1b6f1213b9dea2f71307fbf2fc0` |
| 18 | `theorem` | [compression_idem](../../../../Combinatorics/UVCompressInjOn.lean/declarations/compression-idem.md) | 186 | `result-track:8474633167c60f2102cd4dd718a3253b123f6c77a459ba2565c82466ff739e80` |
| 19 | `theorem` | [card_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/card-compression.md) | 194 | `result-track:9a28a13a33e54e05590186aa53db3afb7bb46fe1fb47f9cddff91000aa3711a7` |
| 20 | `theorem` | [le_of_mem_compression_of_notMem](../../../../Combinatorics/UVCompressInjOn.lean/declarations/le-of-mem-compression-of-notmem.md) | 199 | `result-track:b257fb74f35ef3c4bbf18d5c999e44006ecb14163aafd1dd25cbd3198cd36ede` |
| 21 | `theorem` | [disjoint_of_mem_compression_of_notMem](../../../../Combinatorics/UVCompressInjOn.lean/declarations/disjoint-of-mem-compression-of-notmem.md) | 212 | `result-track:042cfcdf2402b828e4047b12feaf488072183183b6289f060d8a326bcc209335` |
| 22 | `theorem` | [sup_sdiff_mem_of_mem_compression_of_notMem](../../../../Combinatorics/UVCompressInjOn.lean/declarations/sup-sdiff-mem-of-mem-compression-of-notmem.md) | 225 | `result-track:d050afbfe6d294c26a002fe59624a1e01ea22328e45097f0cf3fd2504d54f35d` |
| 23 | `theorem` | [sup_sdiff_mem_of_mem_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/sup-sdiff-mem-of-mem-compression.md) | 241 | `result-track:b6bc8a6177c154887c77f3ca33945bede0e75af68e2eb9ab49d9e94bf88781b8` |
| 24 | `theorem` | [mem_of_mem_compression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/mem-of-mem-compression.md) | 260 | `result-track:3e451a2ddad14380ae1169a3082ea2afa8e657343d37fd7d2967f4b70fffdcdf` |
| 25 | `theorem` | [card_compress](../../../../Combinatorics/UVCompressInjOn.lean/declarations/card-compress.md) | 280 | `result-track:e092745d20387e2e6369f414862784d5b044a852b47e707e3c27cd2ba5b5afe8` |
| 26 | `lemma` | [_root_.Set.Sized.uvCompression](../../../../Combinatorics/UVCompressInjOn.lean/declarations/root-set-sized-uvcompression.md) | 287 | `result-track:ef8a09e6c3ca74b2ca55469177e047c74d8d19f4bed4ffacc2c1b46534b6930c` |
| 27 | `theorem` | [aux](../../../../Combinatorics/UVCompressInjOn.lean/declarations/aux.md) | 294 | `result-track:d97bd05e9cf691898e6a4bab721b1693d6325928e21c6267c8f81e25d8dc7c76` |
| 28 | `theorem` | [shadow_compression_subset_compression_shadow](../../../../Combinatorics/UVCompressInjOn.lean/declarations/shadow-compression-subset-compression-shadow.md) | 301 | `result-track:05ba1d536e88a2dffc55bf7aecf1047d82a0c1ac9123b43764677adac2c29269` |
| 29 | `theorem` | [card_shadow_compression_le](../../../../Combinatorics/UVCompressInjOn.lean/declarations/card-shadow-compression-le.md) | 407 | `result-track:57837b5bc3db7c2bad0b230f4e0d17f46e3a319acba645240279636d60b5df91` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e8a9120929a4df4b06bac3d6fbf7fc20b2999ec0a14e92c19fbe9ed28f4e341 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UV/Variantb3711f70a1ca8a9debabdfaf332dc4af73d4953cf1d435f1d48107efd8e26931.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
