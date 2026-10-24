# Verification target: GRWTSK.Topology.GeneralTopology.SeparatedNhds.Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44e6449a83e050be2f4fdbd007ae260dd51dbf42",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44e6449a83e050be2f4fdbd007ae260dd51dbf42`.

Source path: `GRWTSK/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SeparatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/separatednhds--d275b52934badd18bd308b6f.md) | 54 | `declaration-track:d275b52934badd18bd308b6f6e7cd90b0fca99843c96a0a6c70540a0ce912cb3` |
| 2 | `theorem` | [separatedNhds_iff_disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/separatednhds-iff-disjoint--3e610132e869b277c4e31bb5.md) | 57 | `result-track:3e610132e869b277c4e31bb59f2c27c8af3c99c575268f8729ab90b04fa94bf7` |
| 3 | `def` | [HasSeparatingCover](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/hasseparatingcover--66cf77b4a4b55529d1a4d932.md) | 64 | `declaration-track:66cf77b4a4b55529d1a4d932ccf501b6443211396edbca30e566a75775beda96` |
| 4 | `theorem` | [hasSeparatingCovers_iff_separatedNhds](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/hasseparatingcovers-iff-separatednhds--039d450498744d255c0b6bb0.md) | 69 | `result-track:039d450498744d255c0b6bb036982fa80bdb81957bcbc98cdc61f434d0d471c6` |
| 5 | `theorem` | [Set.hasSeparatingCover_empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/set-hasseparatingcover-empty-left--03d0acc27a932849c06aba8c.md) | 112 | `result-track:03d0acc27a932849c06aba8c7ac6c8fc5b8d24d87949d62c2f7718e06607eb8f` |
| 6 | `theorem` | [Set.hasSeparatingCover_empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/set-hasseparatingcover-empty-right--fcf6afb239dd9daf374f8cc9.md) | 116 | `result-track:fcf6afb239dd9daf374f8cc9da1132fbfb1f0dd417e35f16c09cdcd2df9ee8de` |
| 7 | `theorem` | [HasSeparatingCover.mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/hasseparatingcover-mono--6093575106167561d93e709f.md) | 120 | `result-track:6093575106167561d93e709f52fc58cc098b41371deb1484178f42fa8f9b751e` |
| 8 | `theorem` | [symm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/symm--3bf4cac79a0bbcd603ef5cfd.md) | 135 | `result-track:3bf4cac79a0bbcd603ef5cfd83cc0f88cc351d5c6d329dee070c574a4b27b857` |
| 9 | `theorem` | [comm](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/comm--087a61435bd662e4dc72f586.md) | 138 | `result-track:087a61435bd662e4dc72f58693ea368ffeea4d94eae3d766d6da7cc913bbed07` |
| 10 | `theorem` | [preimage](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/preimage--b5bfba52310917811e3e45ae.md) | 141 | `result-track:b5bfba52310917811e3e45aeb1e696e87d6d5778ef134e65471bf09efd40b213` |
| 11 | `theorem` | [disjoint](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/disjoint--67c9985bcef4d899dfa6fb46.md) | 147 | `result-track:67c9985bcef4d899dfa6fb46ded2adc9ef799d6043339a7ece5fdcc20ecc004b` |
| 12 | `theorem` | [disjoint_closure_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/disjoint-closure-left--c9b4ce13ffa47f3561fd8338.md) | 150 | `result-track:c9b4ce13ffa47f3561fd83386407653eb1a749a7058be9fef4f5b11ca546621d` |
| 13 | `theorem` | [disjoint_closure_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/disjoint-closure-right--d36b81560a964a7cb4ab10b8.md) | 154 | `result-track:d36b81560a964a7cb4ab10b8899e5acb49f6da1b8e03db8c3f13308abd07068d` |
| 14 | `theorem` | [empty_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/empty-right--9123048b2c6660cffeb45aaf.md) | 157 | `result-track:9123048b2c6660cffeb45aaffa614d1ab510d6c82e7c22dc0977a1347a7bffcc` |
| 15 | `theorem` | [empty_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/empty-left--4193bb262c8dc2fa9e610efc.md) | 160 | `result-track:4193bb262c8dc2fa9e610efc8cd107ca0c823a6912004490bd071a850c6a1e45` |
| 16 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/mono--1b50f59e9f6793b1892cf0c8.md) | 163 | `result-track:1b50f59e9f6793b1892cf0c80065b0c6d4e1f968052692550a64829aeacb163e` |
| 17 | `theorem` | [union_left](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/union-left--cde748e8d65ebeebfed1bb8b.md) | 167 | `result-track:cde748e8d65ebeebfed1bb8b11d6fad21e9ab5db089ddc977d82b2ef8e2c1fda` |
| 18 | `theorem` | [union_right](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/union-right--5dec34ba4c0824bbcf7ec33d.md) | 170 | `result-track:5dec34ba4c0824bbcf7ec33d5da6e30c9e0627d6434be86015dc99cd430badc3` |
| 19 | `lemma` | [isOpen_left_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isopen-left-of-isopen-union--861c360a6b29c56dbac7a46d.md) | 173 | `result-track:861c360a6b29c56dbac7a46db3034ad7531d88ac31422c844b5b866bfd8e7976` |
| 20 | `lemma` | [isOpen_right_of_isOpen_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isopen-right-of-isopen-union--05f09c19960b36112a79e2e4.md) | 179 | `result-track:05f09c19960b36112a79e2e41384de18ca924a0a49364a6513f04b2bfab95f11` |
| 21 | `lemma` | [isOpen_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isopen-union-iff--6ae4244c4372dfae8d2f23e6.md) | 182 | `result-track:6ae4244c4372dfae8d2f23e66cf4f64de39a263b605ea86ff3be8013c1e9210a` |
| 22 | `lemma` | [isClosed_left_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isclosed-left-of-isclosed-union--4fb2b9fe283bff0696590ad1.md) | 186 | `result-track:4fb2b9fe283bff0696590ad10ff1f1b362222a8b4dd8dd78c2fb0685f672deb8` |
| 23 | `lemma` | [isClosed_right_of_isClosed_union](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isclosed-right-of-isclosed-union--dc7d97bf5423335deb24bbf2.md) | 195 | `result-track:dc7d97bf5423335deb24bbf27ca190ee93b3510c2114f843441de963aae18d45` |
| 24 | `lemma` | [isClosed_union_iff](../../../../../mathematics/Topology/GeneralTopology/SeparatedNhds/Variant92f48acf369d11e41cc20926eb61d1d8f8af50381e4e5f1e176f8469123b4281.lean/declarations/isclosed-union-iff--59c54d0070837491fb714574.md) | 199 | `result-track:59c54d0070837491fb71457494b2703f1a01f0da81337b022b8b99fb33a28ff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
