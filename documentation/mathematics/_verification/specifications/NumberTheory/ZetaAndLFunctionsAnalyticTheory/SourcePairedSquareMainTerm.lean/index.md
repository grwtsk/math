# Verification target: Source Paired Square Main Term

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fab17f383ee8806073a27b3ef87ad2a6e5812c11",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variante827c72b4988a8a246381a8d13952692591e2a60fdb8b4b475f77ae8ca46e682.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fab17f383ee8806073a27b3ef87ad2a6e5812c11`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variante827c72b4988a8a246381a8d13952692591e2a60fdb8b4b475f77ae8ca46e682.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variante827c72b4988a8a246381a8d13952692591e2a60fdb8b4b475f77ae8ca46e682.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedSquareQuadrature` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedSquareMainCorrection](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquaremaincorrection.md) | 26 | `declaration-track:e5cfed1edbe79bcd53b021226f28a14563a9f663f7989f94dd3befdbf2e242cf` |
| 2 | `theorem` | [pairedSquareReadout_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquarereadout-eq.md) | 31 | `result-track:244316cac093cbf7e3430e3f57d4b22ab68112ba6525faba5807b5c985617513` |
| 3 | `theorem` | [pairedSquareReadout_eq_main_correction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquarereadout-eq-main-correction.md) | 39 | `result-track:7bef35d339f5e6314117d856af9db111894bcd1f43e5308ffe76994a04a07cb5` |
| 4 | `theorem` | [pairedSquareMainCorrection_uniformly_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquaremaincorrection-uniformly-bounded.md) | 46 | `result-track:a5073815682e079c5038ab32d7080e82ebfc82058a1dcdf4f700792cbc12cde1` |
| 5 | `theorem` | [squareRemovedPairedWork_eq_first_main_correction](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/squareremovedpairedwork-eq-first-main-correction.md) | 64 | `result-track:1be9f83c566c2be02200617d7c2da9ba3a043012556f275cc9838c1b45a4a512` |
| 6 | `theorem` | [sourceNormalization_le_forty_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/sourcenormalization-le-forty-one.md) | 74 | `result-track:f07a146e30acdc51793c2834f91b370ec40fc8f6b69d91314c23d24a9e637683` |
| 7 | `theorem` | [diagonalMainCoefficient_ge_one_div_four_thousand](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/diagonalmaincoefficient-ge-one-div-four-thousand.md) | 88 | `result-track:94b9d4b518cfeefd844cf1e4ec3485bc5120d3299b8d93ec20ef897dcd426f37` |
| 8 | `theorem` | [pairedSquareReadout_eventually_le_any_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquarereadout-eventually-le-any-bound.md) | 97 | `result-track:ada409302d4614c1153d9ff8f1140bbd14b16bdf7bfed2f07c7a95c0c12d2dde` |
| 9 | `theorem` | [pairedSquareReadout_not_eventually_lower_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourcePairedSquareMainTerm.lean/declarations/pairedsquarereadout-not-eventually-lower-bounded.md) | 112 | `result-track:47f8a335ff5d75ddab0a99d5e32599de34ddf061e45ed21cc2359bd096cc4151` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcd786cbd654401fae3402a367cd4297a929b2dbe9aa80e0166340a0e3b40227 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variante827c72b4988a8a246381a8d13952692591e2a60fdb8b4b475f77ae8ca46e682.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedSquareMainTerm/Variante827c72b4988a8a246381a8d13952692591e2a60fdb8b4b475f77ae8ca46e682.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
