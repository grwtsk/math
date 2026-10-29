# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdGrid

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bfda65dc0a88e25786cb6a388e3dbcb7d04e169",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bfda65dc0a88e25786cb6a388e3dbcb7d04e169`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripOneThirdSeed`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdSeed.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMidpointGrid`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripMidpointGrid.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.Normed.Module.Convex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [row](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/row.md) | 34 | `declaration-track:68b88c64741cc61cf245db1bc23a9b17881371869a838120c0873f645c740115` |
| 2 | `def` | [column](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/column.md) | 35 | `declaration-track:602ef3f0357f6c4af573541b8ea852d9cd3715d3d8628bd47ce55d2e596063ad` |
| 3 | `def` | [join](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/join.md) | 36 | `declaration-track:2509a28109ada14acc6248b1ce41df45048ee4dff9c98e527b79d7ea6ea3e0b9` |
| 4 | `theorem` | [row_join](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/row-join.md) | 39 | `result-track:d82852f8ff62ce156804fa17b45276322781363d535eab7d43956793ad6e36fa` |
| 5 | `theorem` | [column_join](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/column-join.md) | 46 | `result-track:eb95db192c09101ac36e2a6e6e2f0776b5ba6791ea44b0634a046825c4e5e28f` |
| 6 | `theorem` | [join_row_column](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/join-row-column.md) | 52 | `result-track:215b024b1dc60ef8024c1bec1c02a7a31d0aeae019eb805c7d5e2ea874d52973` |
| 7 | `def` | [box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/box.md) | 58 | `declaration-track:e15aa62ea0866537240be58409e5685dca55ae19193bf9dc1bda57215b23af99` |
| 8 | `def` | [rawDisk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/rawdisk.md) | 61 | `declaration-track:a5832020e3a3f6d4579032acc6dbe05380e032f5cf303710a6fe009c63b3af08` |
| 9 | `def` | [disks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disks.md) | 66 | `declaration-track:febd165d9c4f7687c68266f260834c406ef21c6ac61a0459fae120f4edd21459` |
| 10 | `theorem` | [disks_join](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disks-join.md) | 68 | `result-track:b9261eb2655f64bb76b8097068ddbd4ba5e55f9dd25765b7bc6101b8b26e9e1b` |
| 11 | `theorem` | [disk_radius_value](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disk-radius-value.md) | 73 | `result-track:492bbc1e44b37c73055247cec723bb0f5b69c3de220fbb7d76e87f7d8c3c4194` |
| 12 | `lemma` | [disk_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disk-carrier.md) | 77 | `result-track:088958b9efe877019a50a1ce1ff0c42d5cf40bceb71968b335c5cc6300e42b62` |
| 13 | `theorem` | [raw_center_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/raw-center-re.md) | 81 | `result-track:05074a3b693b7972a2835626ebf5ec737ad850e2fc9a52a211b706819929006e` |
| 14 | `theorem` | [raw_center_im](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/raw-center-im.md) | 85 | `result-track:af6cb7509628f12046de2d8d29dd22285470525027d12f5a409563f573788b35` |
| 15 | `lemma` | [box_wellFormed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/box-wellformed.md) | 89 | `result-track:79b0f7190a53e2c9e09e0b664b736fcc380852c2f2395eb811dd4ee54647e8ad` |
| 16 | `lemma` | [box_carrier_eq_seed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/box-carrier-eq-seed.md) | 91 | `result-track:4118a51e1f51947fa6647b87ebce0c7cbe55cc475f8416a94d0c516a5885f071` |
| 17 | `lemma` | [raw_center_mem_seed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/raw-center-mem-seed.md) | 96 | `result-track:b46373c3e881330a3d2c6ea8d48bde423cb38ea86fd8341215128b7fe9f1b735` |
| 18 | `lemma` | [center_mem_seed](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/center-mem-seed.md) | 111 | `result-track:5b1fbbee819f3e5fe2ce296e92622fa1d7faf31b5e003d18a3bcff2b21335087` |
| 19 | `lemma` | [center_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/center-norm-le.md) | 115 | `result-track:2f0845feaa0d998853901be9bfa11127ac3e0723d1863c3f50ffada9b9509a03` |
| 20 | `lemma` | [disk_radius](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disk-radius.md) | 131 | `result-track:13940d1981e82bd250f480eccd56167785241bcd9351367849fa395124285a6a` |
| 21 | `lemma` | [disk_domain](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/disk-domain.md) | 136 | `result-track:370e5c68f4c4b9881f6a186867acb3294bf203311a57960d6cd8debea2de3b45` |
| 22 | `lemma` | [derivative_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/derivative-bound.md) | 152 | `result-track:a597f9c4b26cbb041904891679fad302e4b085f50f7249f5b172dfbccaf8a8ca` |
| 23 | `lemma` | [center_sample_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/center-sample-lower.md) | 161 | `result-track:78ae6d81bb38d4f71ddf57d8e219e733edd085eb3927aa0d7ab0789ea274f851` |
| 24 | `def` | [patch](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/patch.md) | 168 | `declaration-track:eb9a51a16792e6c209eca590190505e9b74cb1feddedf693950b857fdbfb1807` |
| 25 | `theorem` | [norm_lower_on_disk](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/norm-lower-on-disk.md) | 183 | `result-track:e122fb967f429961d802ca20f3fe5ae4c60879934f8fb26d2d37ffab5ef3950b` |
| 26 | `theorem` | [exists_close_center](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/exists-close-center.md) | 192 | `result-track:0794bb034dc577800a71211aea8d75bb0e894064c627349bcc93ebdc35b3acd9` |
| 27 | `theorem` | [clearance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/clearance.md) | 232 | `result-track:1115aac1f859623bfd31e7c2bb3350e002cf6becb7f074a717405515711f4c59` |
| 28 | `def` | [directCover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/directcover.md) | 241 | `declaration-track:5a3a86385d00773a49be1e15517297b484c3b36e03d6fe28074b22ff25eb39dd` |
| 29 | `theorem` | [depth_budget](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/depth-budget.md) | 253 | `result-track:423afe27777f56f02474dfbf126475763b955ea5765a907e702f06061757ce5c` |
| 30 | `theorem` | [search_succeeds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/search-succeeds.md) | 257 | `result-track:e9fee29ae116304a09d45598373d1d659b437ebdb10e711434cfe28b4f24f7fd` |
| 31 | `def` | [checkedTree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/checkedtree.md) | 262 | `declaration-track:feb20fc9c92530f3df9469a2cec0f1bc0aa9dd951b10da2bb0ef13b493c2f765` |
| 32 | `def` | [searchedCover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/searchedcover.md) | 265 | `declaration-track:b9f29150a662ad823fe20c8f6827e8366eda46d2ff2a30dccfd2a0edd7aba39b` |
| 33 | `def` | [seedCover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/seedcover.md) | 269 | `declaration-track:417e8c1075f052ef43f0531a5cfaa73b5082fac16ba97cb74fec5d9737d43089` |
| 34 | `theorem` | [noTargetZero_box](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripOneThirdGrid.lean/declarations/notargetzero-box.md) | 274 | `result-track:4cf53f3240009fe2e84f7feff920095ba9f535579fc7d71c95cc3d2e4818262c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8619fa5288e08b8d021c45c8d89d93c0a60eed1b570458a5febe5e1f1d20b121 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripOneThirdGrid.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
