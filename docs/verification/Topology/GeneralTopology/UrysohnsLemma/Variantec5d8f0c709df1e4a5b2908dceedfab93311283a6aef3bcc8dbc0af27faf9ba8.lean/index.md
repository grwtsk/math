# Verification target: GRWTSK.Topology.GeneralTopology.UrysohnsLemma.Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9394cf07ff8f84c2c7a018b66c1dffe0a15fa444",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9394cf07ff8f84c2c7a018b66c1dffe0a15fa444`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Ordered` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/cu--314c73e7b2e0abbc18cea7bb.md) | 100 | `declaration-track:314c73e7b2e0abbc18cea7bbc23b2f119f5346675c531f4f7a23b3a5607b5fce` |
| 2 | `def` | [left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/left--f3933076ace24ac36aa02800.md) | 121 | `declaration-track:f3933076ace24ac36aa02800a3cccbf931dd80b9bbed96109e01b3da5b361e6e` |
| 3 | `def` | [right](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/right--6639c15f771c276f64adbd3a.md) | 133 | `declaration-track:6639c15f771c276f64adbd3a5cc9591f993968d1ffc54abba7de8e2841c3f4aa` |
| 4 | `theorem` | [left_U_subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/left-u-subset-right-c--5e75543310576db609bd481c.md) | 142 | `result-track:5e75543310576db609bd481cfa41ac9aaaa2dae6b5638af4e087552df7f9f2a5` |
| 5 | `theorem` | [left_U_subset](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/left-u-subset--002945781c37c20a43508894.md) | 145 | `result-track:002945781c37c20a435088943a63124077f1d6c125021e1038f024a08ede19b4` |
| 6 | `theorem` | [subset_right_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/subset-right-c--e21f9687e64e54411bb7e303.md) | 148 | `result-track:e21f9687e64e54411bb7e3033fdc4b685e3fb71fc3d1b1cb4720cf9a594457c2` |
| 7 | `def` | [approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx--3960c0432757822e38303b54.md) | 153 | `declaration-track:3960c0432757822e38303b54bc2f56575c413e362f92bc744fe9900733e037f5` |
| 8 | `theorem` | [approx_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-of-mem-c--5eb168cd00c5e52b180d9a34.md) | 157 | `result-track:5eb168cd00c5e52b180d9a3489fd31bc9fcb900703e8753125c7c36517355a13` |
| 9 | `theorem` | [approx_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-of-notmem-u--1bd116741b7742221005fb7c.md) | 165 | `result-track:1bd116741b7742221005fb7c8893368782eddeb5bbda20d9b8b8dc99d2323556` |
| 10 | `theorem` | [approx_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-nonneg--fbfc2de34cc22e1e17a7045e.md) | 177 | `result-track:fbfc2de34cc22e1e17a7045e1c38ee44425b3e176f68aee9f60094bed5a39294` |
| 11 | `theorem` | [approx_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-le-one--808862b517effdfd834f8361.md) | 184 | `result-track:808862b517effdfd834f8361c25e3a43f980eed607da5228b86b715b1ebe00af` |
| 12 | `theorem` | [bddAbove_range_approx](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/bddabove-range-approx--52fbdf97fb4506a41981fc06.md) | 193 | `result-track:52fbdf97fb4506a41981fc06493bbb5022cd888b616ceb3707dc96b7f1a24245` |
| 13 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-le-approx-of-u-sub-c--b060cf09a3c3cf3c532a3f44.md) | 196 | `result-track:b060cf09a3c3cf3c532a3f444c8e15afbfcce76b1b9ba20c0be0de520f5ba270` |
| 14 | `theorem` | [approx_mem_Icc_right_left](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-mem-icc-right-left--4488aad24d65c22942ed595d.md) | 206 | `result-track:4488aad24d65c22942ed595d6988169f1b1460f4159724f7857c64b2ecc97c85` |
| 15 | `theorem` | [approx_le_succ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-le-succ--667999b5336f6f8649bc8975.md) | 218 | `result-track:667999b5336f6f8649bc8975069088c5b64e5e5c5c65b5a52b21fda1e461ccc6` |
| 16 | `theorem` | [approx_mono](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-mono--43f0af7e7df3c8850e0b3728.md) | 227 | `result-track:43f0af7e7df3c8850e0b3728b8afb2055b0dcebbde24f7426613a45c79350924` |
| 17 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim--62a3f4250117605807953c18.md) | 235 | `declaration-track:62a3f4250117605807953c18d6d536f65d162d39e89139833a894b8eb12406ae` |
| 18 | `theorem` | [tendsto_approx_atTop](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/tendsto-approx-attop--4885bbf3b846ee274b151d48.md) | 238 | `result-track:4885bbf3b846ee274b151d481f57e93a5e7e46163e125f00bf491fb12ccaa96b` |
| 19 | `theorem` | [lim_of_mem_C](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-of-mem-c--2699f8512f23818465736759.md) | 242 | `result-track:2699f8512f2381846573675960a104490ef69e7ede830e6702e5eeb069321153` |
| 20 | `theorem` | [disjoint_C_support_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/disjoint-c-support-lim--1fff7f17e70aca0c6a0b6eaa.md) | 245 | `result-track:1fff7f17e70aca0c6a0b6eaaf23acdc2d44835b0ada0565fa9cbbe399ec66cd1` |
| 21 | `theorem` | [lim_of_notMem_U](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-of-notmem-u--a4282cb9814f9b9a7f1469a1.md) | 248 | `result-track:a4282cb9814f9b9a7f1469a1fe216426d41bf92b9938fee83fd18e86da2a33c9` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-eq-midpoint--b253dabbb4b103b54851533e.md) | 253 | `result-track:b253dabbb4b103b54851533ea61ecb389026d14e41a3d5c6520fc786e8e3d940` |
| 23 | `theorem` | [approx_le_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/approx-le-lim--b4291c5bfc40c2a990fb8753.md) | 259 | `result-track:b4291c5bfc40c2a990fb8753b1b657a620466d4f2d9fc662b7beb40a369fbf35` |
| 24 | `theorem` | [lim_nonneg](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-nonneg--b050fb2b780116cf5630ffe8.md) | 262 | `result-track:b050fb2b780116cf5630ffe82accf7178eea2e9e07d1cdbe7c43e3a35376a29b` |
| 25 | `theorem` | [lim_le_one](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-le-one--45cb38e6ad4be86626ce2d04.md) | 265 | `result-track:45cb38e6ad4be86626ce2d04651118c9de6df82024f4d3d976a3c540bff6d131` |
| 26 | `theorem` | [lim_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/lim-mem-icc--53ad62fde211149c9bdbae59.md) | 268 | `result-track:53ad62fde211149c9bdbae590db610588df29e7d35fac533173f345290e3d01f` |
| 27 | `theorem` | [continuous_lim](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/continuous-lim--1b9ca9ee433fa554f67faf42.md) | 272 | `result-track:1b9ca9ee433fa554f67faf424a805a6e58db5ba23ae04eeb4e29bc044e2de42a` |
| 28 | `theorem` | [exists_continuous_zero_one_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-zero-one-of-isclosed--71cb187ffd76c6a7ff301193.md) | 321 | `result-track:71cb187ffd76c6a7ff30119330f8e38ace55cee355c6c01185065b05821b678d` |
| 29 | `theorem` | [exists_continuous_zero_one_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-zero-one-of-iscompact--7c394908f6a22ae956b2294f.md) | 348 | `result-track:7c394908f6a22ae956b2294f4e55cf5506ead1065a9e02d5d76db0b317fc5b1b` |
| 30 | `theorem` | [exists_continuous_zero_one_of_isCompact'](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-zero-one-of-iscompact--afe0978d1fa548e0f20d3fae.md) | 379 | `result-track:afe0978d1fa548e0f20d3fae5fc85eeaaf7950aebf0edfe5d1db5ab92e28e235` |
| 31 | `theorem` | [exists_continuous_one_zero_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-one-zero-of-iscompact--16f53e2194e6534d91d94c7c.md) | 403 | `result-track:16f53e2194e6534d91d94c7cfd973c6acedcb8d7f41d14d927b9b4768a7ad6fd` |
| 32 | `theorem` | [exists_continuous_one_zero_of_isCompact_of_isGδ](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-one-zero-of-iscompact-of-isg--67923154bc10103cd97855a8.md) | 432 | `result-track:67923154bc10103cd97855a8f3adf9e5850793ccbe6b23769736c9867d5647ff` |
| 33 | `lemma` | [exists_tsupport_one_of_isOpen_isClosed](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-tsupport-one-of-isopen-isclosed--00eb51d594655a8a26c5b815.md) | 480 | `result-track:00eb51d594655a8a26c5b81599d97d14009ac1c1810ab13ce5f516aa6027988c` |
| 34 | `theorem` | [exists_continuous_nonneg_pos](../../../../../mathematics/Topology/GeneralTopology/UrysohnsLemma/Variantec5d8f0c709df1e4a5b2908dceedfab93311283a6aef3bcc8dbc0af27faf9ba8.lean/declarations/exists-continuous-nonneg-pos--8efeab2266fbfbfd2bf86704.md) | 525 | `result-track:8efeab2266fbfbfd2bf867040655bc376e6a35c6b1d60d6256fd29efd1d2bb96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
