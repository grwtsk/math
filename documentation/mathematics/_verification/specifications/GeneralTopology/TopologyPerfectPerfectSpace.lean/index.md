# Verification target: Topology Perfect Perfect Space

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "418558263984922713fc09516ef04cf7ad42b9e7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `418558263984922713fc09516ef04cf7ad42b9e7`.

Source path: `GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Separation.Regular` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [AccPt.nhds_inter](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/accpt-nhds-inter.md) | 62 | `result-track:f181ec860cfc25a9b6878b3c5f8eea9d529593300cc846124fd5beaec2752c36` |
| 2 | `def` | [Preperfect](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/preperfect.md) | 73 | `declaration-track:6786c2a6e2a3c42e58e948194e94274dfd7fb6cf42fb2e8fe7b21448175b2bb3` |
| 3 | `structure` | [Perfect](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfect.md) | 80 | `declaration-track:71a0d9f5bf0ecc1e8574667747455d6aac7eba2dd55fbfe9027c58c0d5437f47` |
| 4 | `theorem` | [preperfect_iff_nhds](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/preperfect-iff-nhds.md) | 84 | `result-track:a20c244c9f08390ee466aea6356ff66a7c0e5375202bf1d5369626de459cf76e` |
| 5 | `class` | [PerfectSpace](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfectspace.md) | 96 | `declaration-track:28903447837bbc6b6829d9b9f2b1ec4797bf71b360f9442d98d536c2ac77ecda` |
| 6 | `theorem` | [PerfectSpace.univ_perfect](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfectspace-univ-perfect.md) | 99 | `result-track:9ed8570a4a3125aaa594ada54b862b676699001b7dec912b0b8c3dfbcc6b00a9` |
| 7 | `theorem` | [Preperfect.open_inter](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/preperfect-open-inter.md) | 107 | `result-track:0039b1447b8fdfd60fe7f20f7b49a4fdf613083fad27647c7db484334b0f3f00` |
| 8 | `theorem` | [Preperfect.perfect_closure](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/preperfect-perfect-closure.md) | 115 | `result-track:ef000304a97ddb1a92d4950cf10c0cb7394558b7ee021372c88e159babb52342` |
| 9 | `theorem` | [preperfect_iff_perfect_closure](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/preperfect-iff-perfect-closure.md) | 126 | `result-track:746e0d50946c0fa84e8ca54564d0386c33ed58245ccbc8a403fda13b391c646d` |
| 10 | `theorem` | [Perfect.closure_nhds_inter](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfect-closure-nhds-inter.md) | 140 | `result-track:3f6c15fb86ccb722bcb6657252b537b53584bb75747e37c1c18637ef6ec9491f` |
| 11 | `theorem` | [Perfect.splitting](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfect-splitting.md) | 150 | `result-track:18f14614d54aede2be841cd2ca15fba523f833260b0413ae4179e770152d20b6` |
| 12 | `lemma` | [IsPreconnected.preperfect_of_nontrivial](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/ispreconnected-preperfect-of-nontrivial.md) | 171 | `result-track:15ed3f8b8a8cbf873fc22d68cbe0a65240432ddb9fa30b032e6a3628fdb5fea2` |
| 13 | `theorem` | [exists_countable_union_perfect_of_isClosed](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/exists-countable-union-perfect-of-isclosed.md) | 197 | `result-track:9c3f169f523abb887daf5d11d53ccfd7df4583ce6b5a2e611f5abf3dd3189437` |
| 14 | `theorem` | [exists_perfect_nonempty_of_isClosed_of_not_countable](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/exists-perfect-nonempty-of-isclosed-of-not-countable.md) | 232 | `result-track:7517332c3340b1bb46883508d278742ff1be6e25d9b7945b7f42b2dcc6e14a6c` |
| 15 | `theorem` | [perfectSpace_iff_forall_not_isolated](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfectspace-iff-forall-not-isolated.md) | 253 | `result-track:7fcde0cc47862298db1073ec05eb9b36d8ff4efa1351dde29ad0550caf3302a0` |
| 16 | `instance` | [PerfectSpace.not_isolated](../../../../GeneralTopology/TopologyPerfectPerfectSpace.lean/declarations/perfectspace-not-isolated.md) | 256 | `declaration-track:80c1b59ecbf4ea4b88fa00ca07f87c17414b262f92c4d13e66b666157787a313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfd1522697660be668805439c3997b3d45d29ffa3ce660f54e894108c55fcd68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Perfect/Varianta0a93a4e43b95bad9d5a260b045ada3f2dea48f612fc0b1842056cf44ce022ed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
