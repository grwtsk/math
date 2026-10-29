# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripGapReport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434579e29c5d860b4dcbcb25938e98f12f6505be",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434579e29c5d860b4dcbcb25938e98f12f6505be`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas`](../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CriticalStripAtlas.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AtlasGapKind](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/atlasgapkind.md) | 27 | `declaration-track:56a093330416d13defc8cd655ac13bbcc828c46b2041c5a747816f2319f6a862` |
| 2 | `inductive` | [GapDisposition](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/gapdisposition.md) | 51 | `declaration-track:46f53dcfc1547e5fcc972a9c2063cc2efcbcc74528d2162a5b4b8001e8ce4468` |
| 3 | `def` | [IsOpen](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/isopen.md) | 63 | `declaration-track:40590dc9871256837d5804d0642c6ad21fd7867a0be756a04288db7ff8c7f836` |
| 4 | `structure` | [SourceBinding](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/sourcebinding.md) | 71 | `declaration-track:66887417fa5527b80822525e1b271592a2bc52531b9b3c7c7e8390d410ff175c` |
| 5 | `def` | [Matches](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/matches.md) | 80 | `declaration-track:48586ef3058ff0d7750428988217adbb5c1d1010c9f634b29d3de866ddfe3520` |
| 6 | `structure` | [AtlasGap](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/atlasgap.md) | 92 | `declaration-track:5488d299604d93cd5f51588a183c1ff7a42cc2790b8521576f0a2aaffaba689b` |
| 7 | `def` | [IsOpen](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/isopen-source-edition-2.md) | 104 | `declaration-track:ca966ab555dbfd4771e890f9f3cb93876058b4e24ce05b4c49e8b4b57b6ff511` |
| 8 | `def` | [HasOpenGap](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/hasopengap.md) | 110 | `declaration-track:e6a7c8f6ca4db253a08996ffd529b81b8f67f1f4cdda3ce9cba7ffa8bbcae611` |
| 9 | `def` | [HasForward](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/hasforward.md) | 116 | `declaration-track:d10eeaa523ced7990cd2943107b9528692c3ee061f00a81249ea0e7a8c243706` |
| 10 | `def` | [HasReverse](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/hasreverse.md) | 120 | `declaration-track:c85dc898c192937dbbb61e07af26115a1b20d81b6d82f1d7b69e9094404c01bc` |
| 11 | `theorem` | [status_eq_equivalent_of_hasForward_hasReverse](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/status-eq-equivalent-of-hasforward-hasreverse.md) | 125 | `result-track:53188ff6f85dbea85fd4212704ff27922b4fe66a9db247dd9838474852cc3e5c` |
| 12 | `structure` | [ChartAuditEntry](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/chartauditentry.md) | 143 | `declaration-track:7100868e059d1735263da7a3585f4e74f2547db8f3fb07e173b6f5832958dea9` |
| 13 | `theorem` | [carrier_nonempty](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/carrier-nonempty.md) | 177 | `result-track:d1e65192a81672a840cb6dc85c9e879fc8a5a7d295b45f87a635f28dcb9337a5` |
| 14 | `theorem` | [neutral_reports_both_directional_gaps](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/neutral-reports-both-directional-gaps.md) | 185 | `result-track:c49e6c8f22e3e983c91a9ac9d8dbf35c9e06d0dee443f0730201c647fa2f96b8` |
| 15 | `theorem` | [sufficient_reports_reverse_gap](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/sufficient-reports-reverse-gap.md) | 209 | `result-track:2398feb1a2c198c81dc66a8fb283b891cc1e86bb33ef0b8d952f4d7e15eff878` |
| 16 | `theorem` | [necessary_reports_forward_gap](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/necessary-reports-forward-gap.md) | 224 | `result-track:e7fcbf6349e5fa896bfca7d6f932d51a6cf0e90f9baeac1eed802e3a8b07a6ed` |
| 17 | `theorem` | [equivalent_closes_directional_gaps](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/equivalent-closes-directional-gaps.md) | 239 | `result-track:d502af75128532e58dfc1f16da716e50ce9272d19aa1c621bc164c95a5652790` |
| 18 | `structure` | [AtlasGapReport](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/atlasgapreport.md) | 252 | `declaration-track:02c5e72c320b2678cd1a9fd5a400a4d0e057996047604dd9c5139d10ea756fd8` |
| 19 | `def` | [CoversAll](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/coversall.md) | 264 | `declaration-track:3ca59a605a28017baf3a78a1666694a652237f51de75f157bb3408a85ab0a1a0` |
| 20 | `def` | [DirectionalGapsDischarged](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/directionalgapsdischarged.md) | 272 | `declaration-track:0202b48e751379f530b749352c45735607ac07f9e761f88feb08ac3b102892dc` |
| 21 | `theorem` | [gapFree_of_directionalGapsDischarged](../../../../AssociativeRingsAndAlgebras/CriticalStripGapReport.lean/declarations/gapfree-of-directionalgapsdischarged.md) | 283 | `result-track:b8a6e5640e38112dd6b7dc2423081a984fcaf0e9a1d85ed73574b79110723bdd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=882f0b0ccff6bb10f2c07deb9a35644c823058e2ced49493ee11c2391f66950f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripGapReport.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
