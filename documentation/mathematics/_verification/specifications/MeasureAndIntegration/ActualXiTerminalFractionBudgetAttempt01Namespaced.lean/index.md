# Verification target: Actual Xi Terminal Fraction Budget Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdd38f0212e9b6de0dd4b7537841cc6c0054a4ec",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt01/Variant7bcd00b93defc32b3ec1412ffe2e79ad3bdbbbcdc5232368ec12ee2f83af385d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdd38f0212e9b6de0dd4b7537841cc6c0054a4ec`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt01/Variant7bcd00b93defc32b3ec1412ffe2e79ad3bdbbbcdc5232368ec12ee2f83af385d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt01/Variant7bcd00b93defc32b3ec1412ffe2e79ad3bdbbbcdc5232368ec12ee2f83af385d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiWeightedIntegerMean` — import line 6; external provider; requires a separately pinned dependency.
- `RootActualXiExponentialEnvelope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiTerminalFraction](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiterminalfraction.md) | 29 | `declaration-track:006931926266338baf7558f517d4f881b118a9da8ac75a5e7d4b5041e9ae97b4` |
| 2 | `theorem` | [terminal_orders](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/terminal-orders.md) | 33 | `result-track:eab1aafe81fff521efb700b1349592e123aa8e3b44267b0b79003286dffa00e9` |
| 3 | `theorem` | [actualXiTerminalFraction_nonneg](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiterminalfraction-nonneg.md) | 48 | `result-track:407cebbd26aca671644eab9681a053ddeb52b77f6962113ab8708d7f9ab67ac4` |
| 4 | `theorem` | [actualXiTerminalFraction_le_inverse_sqrt](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiterminalfraction-le-inverse-sqrt.md) | 53 | `result-track:3c919d50bed0e8dc1436b73e4f2921ab173ccdde6724bef6c948b22229d374be` |
| 5 | `theorem` | [sqrt_exp_half](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/sqrt-exp-half.md) | 91 | `result-track:b705c948ffb459e6dd9be4d0d782e5cabbbe83f96ee6a12a3381669b71876b5a` |
| 6 | `theorem` | [actualXiTerminalFraction_le_exponential](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiterminalfraction-le-exponential.md) | 100 | `result-track:3e1112ad23b524cd891a8b5b7ff76c8c90914ffa01408b1b5ece92d423d158fb` |
| 7 | `theorem` | [actualXiTerminalFraction_tendsto_zero](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiterminalfraction-tendsto-zero.md) | 126 | `result-track:d1559b3935064259f766c42a8f5dd36da8a4e1b6de253ebeaed3f4902fd51331` |
| 8 | `theorem` | [actualXiPrimitive_mean_prefix_error](../../../../MeasureAndIntegration/ActualXiTerminalFractionBudgetAttempt01Namespaced.lean/declarations/actualxiprimitive-mean-prefix-error.md) | 140 | `result-track:d65d5186bd937daf94ad142bb6a780195698b3efc4ed069ce03f80b1260c515e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe3095dd1f59116bfbc043e86d2ad07530625b543feda9ed59d81cff8fca2891 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt01/Variant7bcd00b93defc32b3ec1412ffe2e79ad3bdbbbcdc5232368ec12ee2f83af385d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudgetAttempt01/Variant7bcd00b93defc32b3ec1412ffe2e79ad3bdbbbcdc5232368ec12ee2f83af385d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
