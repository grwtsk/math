# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshOrthogonality

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db7588d5942e06806a1ba0e04314fedaec839be3",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db7588d5942e06806a1ba0e04314fedaec839be3`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns`](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshPatterns.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [walshCharacter](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/walshcharacter.md) | 35 | `declaration-track:34b05c519341b688cab0eb86d935c594424894ff4a13970fb2ddbaef80d6ed4d` |
| 2 | `theorem` | [boolSign_square](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/boolsign-square.md) | 39 | `result-track:49555c84c688eee7f54b5ff98af36501733a5d2935b1363be84cd562e228814b` |
| 3 | `theorem` | [walshCharacter_square](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/walshcharacter-square.md) | 46 | `result-track:71aad694a9dc2e25682b153bb615d3f4930d11f790247b2dd5284617f2389540` |
| 4 | `theorem` | [walshCharacter_diagonal](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/walshcharacter-diagonal.md) | 53 | `result-track:348587ace458ca80e189f26f2f14b3b9990f2c2604e634a6b8ebefec732d0c12` |
| 5 | `theorem` | [walshCharacter_orthogonal](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/walshcharacter-orthogonal.md) | 60 | `result-track:0672b037121b8e680fda1f599362e3ec6855b843c0d6d2b33bdb788583783ade` |
| 6 | `theorem` | [walshCharacter_orthogonality](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/walshcharacter-orthogonality.md) | 103 | `result-track:cf4c1acf2c67a61d1a26ba6e6dd3bf71aafb781fcb909faea3f38e52ff2d1fe3` |
| 7 | `def` | [plainMomentOn](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/plainmomenton.md) | 114 | `declaration-track:50e62e65ca1662aa93a698c4487c910d128ff0169f4bc46c66a5fb96e9564436` |
| 8 | `theorem` | [signedMomentOn_factor](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/signedmomenton-factor.md) | 121 | `result-track:7f6481d2b91d3ff7e111afc914b7a463859afa9dc47d6b767bb24d854e21502c` |
| 9 | `theorem` | [empiricalMoment_factor](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteWalshOrthogonality.lean/declarations/empiricalmoment-factor.md) | 141 | `result-track:b69b6af68835aa2e6c32b3184b0d0a438ba075ca595812168db528cea216eb1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=456c173fe27051684f703ec62da82c95bb0e8ca2eb98e218a5ba87a0e8bb8d16 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshOrthogonality.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
