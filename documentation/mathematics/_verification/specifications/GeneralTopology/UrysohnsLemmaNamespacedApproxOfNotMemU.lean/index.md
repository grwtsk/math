# Verification target: Urysohns Lemma Namespaced Approx Of Not Mem U

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5550385f05c93e4c5a9b2f832ec6c74f675d6e42",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/index.md) · [Full source](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5550385f05c93e4c5a9b2f832ec6c74f675d6e42`.

Source path: `GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Affine.AddTorsor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.FunctionSeries` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Ordered` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.GDelta.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CU](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/cu.md) | 108 | `declaration-track:0c4fffbc17927a9dceed4010418246c07ba4d896aa41724f2ac85da639de0956` |
| 2 | `def` | [left](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/left.md) | 129 | `declaration-track:db4af2a5847ada1e9648bc87a91f725b621b4d616bdeaece054b0ca6e1f021d8` |
| 3 | `def` | [right](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/right.md) | 141 | `declaration-track:1d01424107acc791c27bd6ecc5c4dcfbaf78da7fbfb50f21a67503e416c75456` |
| 4 | `theorem` | [left_U_subset_right_C](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/left-u-subset-right-c.md) | 150 | `result-track:0c6dc45ebe918baaafc6718e3788f2d187db1a6735290a1b4ae746e49784ca8f` |
| 5 | `theorem` | [left_U_subset](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/left-u-subset.md) | 153 | `result-track:e59e893955d939ec58c829c49814c48cc4bc94b1445271ca2476dd53f0171003` |
| 6 | `theorem` | [subset_right_C](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/subset-right-c.md) | 156 | `result-track:7dc6df71cfe8e0e0abaae357ccd820f4313950ae42c60ce79a0f92e526bda10b` |
| 7 | `def` | [approx](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx.md) | 161 | `declaration-track:70db7e3e3ef8c6e26e9e55670420297dc5a6ad5527ab4c57440250bd6ee6e71a` |
| 8 | `theorem` | [approx_of_mem_C](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-of-mem-c.md) | 165 | `result-track:c1d39f5ecc4a3d5b8d54a07dfdd3a87a9156a62d78e1f512e1ec523d3a042902` |
| 9 | `theorem` | [approx_of_notMem_U](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-of-notmem-u.md) | 173 | `result-track:80a2ab7107ab1878fe873d43d0d7365509c47738c47d1cdd28fde41004853037` |
| 10 | `theorem` | [approx_nonneg](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-nonneg.md) | 185 | `result-track:e6656314ac59427f441b73d4ead0bde9188214d20b166d0a6446cc7ad135b9f1` |
| 11 | `theorem` | [approx_le_one](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-le-one.md) | 192 | `result-track:e1a40e540b6ca70967cf0bd056e83174cefda8760a598b1b30c89339104f7af3` |
| 12 | `theorem` | [bddAbove_range_approx](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/bddabove-range-approx.md) | 201 | `result-track:2379795d4caf0c7e3a25aae19a8b341e3a0f54c22560b1556d730fec76060cce` |
| 13 | `theorem` | [approx_le_approx_of_U_sub_C](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-le-approx-of-u-sub-c.md) | 204 | `result-track:da8a15d18f25cd7cfb0c992ef780a458936a76bd596b9ea7a351c665fdb5a5de` |
| 14 | `theorem` | [approx_mem_Icc_right_left](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-mem-icc-right-left.md) | 214 | `result-track:2b121ff9bae2e388f0f74e901b0a2580057a223b79d160674a954cc37f7217dd` |
| 15 | `theorem` | [approx_le_succ](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-le-succ.md) | 226 | `result-track:e6ad30159fd9abd689052951626810c409ff4a0b51dafbb813ca8eac4c3be511` |
| 16 | `theorem` | [approx_mono](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-mono.md) | 235 | `result-track:e666452dddca69d80f31640e7d70d145703d66e5fdb2eb52270edb0a25861bf7` |
| 17 | `def` | [lim](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim.md) | 243 | `declaration-track:e0d79c5335d90ecd36254c0a758433698b06e8a9330ba3e4f987fa3652d82d48` |
| 18 | `theorem` | [tendsto_approx_atTop](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/tendsto-approx-attop.md) | 246 | `result-track:42cac688f50ae2d15f3c24318b58c212b80dcdb786b719662b2d99ff58b4bc81` |
| 19 | `theorem` | [lim_of_mem_C](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-of-mem-c.md) | 250 | `result-track:bad35784d0a7bb18c6a38f263372763c7f004a3b3e5b6ba715227a679f0fc592` |
| 20 | `theorem` | [disjoint_C_support_lim](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/disjoint-c-support-lim.md) | 253 | `result-track:00e304b9ece6bd91a3acd61f36852c71fceea6cc911e209348d2bda26f7f7c66` |
| 21 | `theorem` | [lim_of_notMem_U](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-of-notmem-u.md) | 256 | `result-track:9be6ccde7bd62b3f228eaa10af6a82b0f5a67a2221103e1545042e7703319c73` |
| 22 | `theorem` | [lim_eq_midpoint](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-eq-midpoint.md) | 261 | `result-track:8710c896aaa3ce1a43527e1060b645439a02fd1887bd015ef7765300163ef2d3` |
| 23 | `theorem` | [approx_le_lim](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/approx-le-lim.md) | 267 | `result-track:8d833dfb9139a8bbbe88a49b4eaf49f47bed765b658b348ba1cdcd6a2022ca12` |
| 24 | `theorem` | [lim_nonneg](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-nonneg.md) | 270 | `result-track:d283576897506db13146e82bbdf60ef7b292b6f25c8f5d312fb55f9c1f6e1fa5` |
| 25 | `theorem` | [lim_le_one](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-le-one.md) | 273 | `result-track:6ec41d770dcbc219345cd2655bd23aa86fc4d8f7b61273f68f351a97f864b7d7` |
| 26 | `theorem` | [lim_mem_Icc](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/lim-mem-icc.md) | 276 | `result-track:7fe05796f8bfc58dd1c9d1dcdfe2647d6c3cb5dbf5575f83a2b6c645aa377cf2` |
| 27 | `theorem` | [continuous_lim](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/continuous-lim.md) | 280 | `result-track:5ee1d2784425f1fc26aeb036430c068b740a260f7f2df01d2ef871b4570d5e36` |
| 28 | `theorem` | [exists_continuous_zero_one_of_isClosed](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-zero-one-of-isclosed.md) | 329 | `result-track:3e7a335f584ce9bba15c8eeab3aa3bb98829e0b8754f3c2008035d6bbe0f2b1a` |
| 29 | `theorem` | [exists_continuous_zero_one_of_isCompact](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-zero-one-of-iscompact-source-edition-2.md) | 356 | `result-track:7408075cbe0331379373db854202f5f8f7b91dbca03f483559992fca5c1b957d` |
| 30 | `theorem` | [exists_continuous_zero_one_of_isCompact'](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-zero-one-of-iscompact.md) | 387 | `result-track:2767738e7783f3b765e2d72eab1dc06b44603f249d9dfeb07fdb63b4f4718aa8` |
| 31 | `theorem` | [exists_continuous_one_zero_of_isCompact](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-one-zero-of-iscompact.md) | 411 | `result-track:f6a0c559abdcc1f023bb9ea39e60d411d0b1acb15bab65649a7ce1470d17733f` |
| 32 | `theorem` | [exists_continuous_one_zero_of_isCompact_of_isGδ](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-one-zero-of-iscompact-of-isg.md) | 440 | `result-track:b0c759066feafa9f75046dd8f50a47ca6b10392f4160c85915cc0184390e1087` |
| 33 | `lemma` | [exists_tsupport_one_of_isOpen_isClosed](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-tsupport-one-of-isopen-isclosed.md) | 488 | `result-track:6cdc5e8148cef5f4d07e6ec4a20798a7f5e11a2093cbeb8315a3690563b22ef1` |
| 34 | `theorem` | [exists_continuous_nonneg_pos](../../../../GeneralTopology/UrysohnsLemmaNamespacedApproxOfNotMemU.lean/declarations/exists-continuous-nonneg-pos.md) | 533 | `result-track:1717f2584654b04350a27fe44f9df1b5cba3125002a7c61975df2d2f49eeab1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b262110a2e9d876a0f8e7b32d4bbce79d124c3593512152fb77b5efe7f41a6cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UrysohnsLemma/Variant0d6fad98ced68c28eca337aaaa0ec56e5335358cc62bdbbbc59bdccadb762fb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
