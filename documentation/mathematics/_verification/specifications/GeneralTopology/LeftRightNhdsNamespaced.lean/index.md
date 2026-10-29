# Verification target: Left Right Nhds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8093ca23c75f05af56cd50d9d3825ee3e4db6333",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8093ca23c75f05af56cd50d9d3825ee3e4db6333`.

Source path: `GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Pointwise.Set` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CompleteLattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Group` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TFAE_mem_nhdsGT](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/tfae-mem-nhdsgt.md) | 49 | `result-track:0a1277eefd2a55a39247df5cc93c38e10da9422ec4a11e2719777aa0e6b60dfe` |
| 2 | `theorem` | [mem_nhdsGT_iff_exists_mem_Ioc_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsgt-iff-exists-mem-ioc-ioo-subset.md) | 72 | `result-track:f7adfce581f355c8b28bf8fa664f8c74a8ee3e5f5336061960992d5eca6fac3e` |
| 3 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset-source-edition-2.md) | 81 | `result-track:d9b55d25a88914b421857ce00fae3b8d87f63d8798bda042ef157e53c03e7a75` |
| 4 | `theorem` | [nhdsGT_basis_of_exists_gt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsgt-basis-of-exists-gt.md) | 88 | `result-track:1d8cc3d67b9304d8789ad15bbc570cd788027f475a781cdde350c323480c93fa` |
| 5 | `lemma` | [nhdsGT_basis](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsgt-basis.md) | 95 | `result-track:3cd966b26e2fbbc2131627f84296e565afc9d3c88ad8862aab3646089783587b` |
| 6 | `theorem` | [nhdsGT_eq_bot_iff](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsgt-eq-bot-iff.md) | 101 | `result-track:d2ffa00a20bfca567caf1092f67b201f44bca83ec4b55299604a32339788ee32` |
| 7 | `theorem` | [mem_nhdsGT_iff_exists_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsgt-iff-exists-ioo-subset.md) | 113 | `result-track:9ca19d02ebd2a24b7be060d83c39bdbdbf279e640ba132bbf4385d2fe327af3d` |
| 8 | `theorem` | [countable_setOf_isolated_right](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/countable-setof-isolated-right.md) | 123 | `result-track:d67300f3ca955f3b9d43aaa28316c69524bdc1103c8d974c2c223b3e6d34fb7d` |
| 9 | `theorem` | [countable_setOf_isolated_left](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/countable-setof-isolated-left.md) | 130 | `result-track:c7b17a868729b65fdb3f94f3e682b7bca4fc2ec00601995afd17324c6240d805` |
| 10 | `theorem` | [mem_nhdsGT_iff_exists_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsgt-iff-exists-ioc-subset.md) | 136 | `result-track:82a44ef47aef9650bb23f790b90b7714b71a4ee6949842131bd9ec29f2182f90` |
| 11 | `theorem` | [TFAE_mem_nhdsLT](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/tfae-mem-nhdslt.md) | 157 | `result-track:6a05dfc6ab18c1cbdcc6da4de547b46254a0730ae2f347147041395ed79549ca` |
| 12 | `theorem` | [mem_nhdsLT_iff_exists_mem_Ico_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdslt-iff-exists-mem-ico-ioo-subset.md) | 168 | `result-track:5cc14e952c7ab5b6cbd9818fb83042ac27db785f761ea460a82bd68a3eea4f37` |
| 13 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdslt-iff-exists-ioo-subset-source-edition-2.md) | 177 | `result-track:3d71a7b9f8182444f5c3905e0bd29bd669978f48e6cc2e90f6a793652814ab7d` |
| 14 | `theorem` | [mem_nhdsLT_iff_exists_Ioo_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdslt-iff-exists-ioo-subset.md) | 186 | `result-track:010de5aed97a12a18a522bd321565a002ee2f34811ff945db75bb68d2be8aad1` |
| 15 | `theorem` | [mem_nhdsLT_iff_exists_Ico_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdslt-iff-exists-ico-subset.md) | 196 | `result-track:087f874b970de4c6d20f67f47693e5cf88e8a6c08b5d0f297d9e3807ed1189bd` |
| 16 | `theorem` | [nhdsLT_basis_of_exists_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdslt-basis-of-exists-lt.md) | 204 | `result-track:c551641911406f804327b3dc4e013aa241c83fd66bacf8b1be46bcaf269d9bf9` |
| 17 | `theorem` | [nhdsLT_basis](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdslt-basis.md) | 211 | `result-track:525f1f8da36c59dd260c9d8aa82c13577fced236c6730b5429798767aca42d5a` |
| 18 | `theorem` | [nhdsLT_eq_bot_iff](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdslt-eq-bot-iff.md) | 217 | `result-track:a0241ba865f816a37bcf0763df0edd33ad15b05b8ff3021269695515c78473c6` |
| 19 | `theorem` | [TFAE_mem_nhdsGE](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/tfae-mem-nhdsge.md) | 234 | `result-track:7d4e09d869dbcf97eb900dfb2d798cfdea11fb8316e1eaf397b05bde21f98f7d` |
| 20 | `theorem` | [mem_nhdsGE_iff_exists_mem_Ioc_Ico_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsge-iff-exists-mem-ioc-ico-subset.md) | 254 | `result-track:dd7c9ab1bfb453afb4d8be7cf7ffabbf84d9628e1e85b7571c1e2becd7e4142a` |
| 21 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsge-iff-exists-ico-subset-source-edition-2.md) | 263 | `result-track:e9012e5fd7185e23df54b8c8730cf585091270e3ad3e0f9887572fa7295ac274` |
| 22 | `theorem` | [mem_nhdsGE_iff_exists_Ico_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsge-iff-exists-ico-subset.md) | 272 | `result-track:11d7522ea50ebd23853581b23101007f5692b18d1ef268690ecd30fadd1d7b37` |
| 23 | `theorem` | [nhdsGE_basis_Ico](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsge-basis-ico.md) | 280 | `result-track:d978fc63486b23b000730962299b964d4412304455fb743644e1cbebe8c7178f` |
| 24 | `theorem` | [nhdsGE_basis_Icc](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsge-basis-icc.md) | 287 | `result-track:ca32af113393e0f445b174e2426fd10bea586c51262f7c8e4531c1b332a44be5` |
| 25 | `theorem` | [mem_nhdsGE_iff_exists_Icc_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsge-iff-exists-icc-subset.md) | 298 | `result-track:b045b01c01b9e1c7c35ca8180c42308bc467ed5044f6de5e5cad5d9d131e9400` |
| 26 | `theorem` | [TFAE_mem_nhdsLE](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/tfae-mem-nhdsle.md) | 313 | `result-track:ce369d04f3bf88ce9464ad6c9535a2efbc4a4ceba207fd638b1c33d936830b7f` |
| 27 | `theorem` | [mem_nhdsLE_iff_exists_mem_Ico_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsle-iff-exists-mem-ico-ioc-subset.md) | 324 | `result-track:1fcf4dfcacf748101c25c3d97237ab1438469b2ac81e51d3fec20259e1dbd61d` |
| 28 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsle-iff-exists-ioc-subset-source-edition-2.md) | 333 | `result-track:15d652be99727b97c440c85539b5c69627367c36725812fa6daa8719f7c661f2` |
| 29 | `theorem` | [mem_nhdsLE_iff_exists_Ioc_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsle-iff-exists-ioc-subset.md) | 342 | `result-track:10b710de42a6614fa0fce943b820df0f8be3c15403074defbf6f89719c6f8788` |
| 30 | `theorem` | [mem_nhdsLE_iff_exists_Icc_subset](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsle-iff-exists-icc-subset.md) | 352 | `result-track:29401f126e0c8fb37ca38c1c0a13552fc02debabe542213f5c939f1133cd7819` |
| 31 | `theorem` | [nhdsLE_basis_Icc](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhdsle-basis-icc.md) | 363 | `result-track:473f42a5f5c8976215d3f5beb4e8d3406fd34d65c929315aae883de26667919b` |
| 32 | `theorem` | [nhds_eq_iInf_mabs_div](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-eq-iinf-mabs-div.md) | 381 | `result-track:10bf29f6156afdcb75ab176a6264cd7900f34f9fa59de4ae5fdca2710ff7d80d` |
| 33 | `theorem` | [orderTopology_of_nhds_mabs](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/ordertopology-of-nhds-mabs.md) | 388 | `result-track:ed13ad0f9f1c85051791c19dca210c5db509c4a2430b90f20eda0b0225e595fc` |
| 34 | `theorem` | [LinearOrderedCommGroup.tendsto_nhds](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/linearorderedcommgroup-tendsto-nhds.md) | 397 | `result-track:874a985b3e78174e8c168a6034926850559e306c5a18498aab0e8d1cb9b1b805` |
| 35 | `theorem` | [eventually_mabs_div_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/eventually-mabs-div-lt.md) | 402 | `result-track:36696ca33c8b15bc5960f173ce36018da4846a0960c3cbe71d52f9409df78231` |
| 36 | `theorem` | [Filter.Tendsto.mul_atTop'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/filter-tendsto-mul-attop.md) | 410 | `result-track:27ee57512284536e0cc80b48acdc0870e93f5e6306f854dc71d6a0a5d8a65b58` |
| 37 | `theorem` | [Filter.Tendsto.mul_atBot'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/filter-tendsto-mul-atbot.md) | 421 | `result-track:040f76ded52047ddbc60fccf519af51b38a2dfc6d9b148c50e6bd830e9653aea` |
| 38 | `theorem` | [Filter.Tendsto.atTop_mul'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/filter-tendsto-attop-mul.md) | 429 | `result-track:17eab884e55c0e30ef7006b8e93dc0bcb44335ec9b38cae9a40a26d05d9e1888` |
| 39 | `theorem` | [Filter.Tendsto.atBot_mul'](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/filter-tendsto-atbot-mul.md) | 438 | `result-track:54907ccadb6904af0693b5bb89bbc6e5d988a9359f8c5936a871d6f1e9d8891a` |
| 40 | `theorem` | [nhds_basis_mabs_div_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-basis-mabs-div-lt.md) | 444 | `result-track:e5056fa9e1981a4dc322658cb3768e2938ed3b11aa0c7b08085c1f07c4aea5c4` |
| 41 | `theorem` | [nhds_basis_Ioo_one_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-basis-ioo-one-lt.md) | 452 | `result-track:d434ce43e899eb0d06f31f2e270b709a769103db5412465e94df2f5d0d70f0eb` |
| 42 | `theorem` | [nhds_basis_Icc_one_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-basis-icc-one-lt.md) | 458 | `result-track:b47b35bf5f75b0f843630c7ed2fb33667d1b2141287adf53ad03a3f3c2faec60` |
| 43 | `theorem` | [nhds_basis_one_mabs_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-basis-one-mabs-lt.md) | 467 | `result-track:ee468cbcde042809bc0f43526b5db5866cbc89e4646c1d365198ee142b325306` |
| 44 | `theorem` | [nhds_basis_Ioo_one_lt_of_one_lt](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/nhds-basis-ioo-one-lt-of-one-lt.md) | 482 | `result-track:c0d7097d1b83b8f6d6aeb568d1a88070da7f26c0ba1bda624dcd1259b8a26505` |
| 45 | `lemma` | [mem_nhdsGE](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsge.md) | 497 | `result-track:9f718408191ff63bc85952654287ec1fcc42b08eaeeb8595d99d81b20168d8fa` |
| 46 | `lemma` | [mem_nhdsGT](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsgt.md) | 504 | `result-track:01cb4a9913bcbae67272b7819a5a8c287939e3ad9c89edba463d471669036f6d` |
| 47 | `lemma` | [mem_nhdsLE](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdsle.md) | 515 | `result-track:625d95a826a3e7fc508a9e313830a93b708f5d265e4512293a9417d7f6e662d7` |
| 48 | `lemma` | [mem_nhdsLT](../../../../GeneralTopology/LeftRightNhdsNamespaced.lean/declarations/mem-nhdslt.md) | 522 | `result-track:b822a709d59017dbd3335de2b7b7feda3380e15c89f7abc77310720777b134ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3cad012ba327753557182e6dbbe8334c12743cc2616f977e2ec931ce5e92e893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LeftRightNhds/Variantb182d1df3e62e94ec0b6224b9739521883e8e41cf2f70d3c6d118579c41d4dbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
