# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteSourceIBP

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54a21778cccb46f7155d335ce31e3628953475a1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54a21778cccb46f7155d335ce31e3628953475a1`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenModewiseReadout`](../../../../MeasureAndIntegration/CenteredMobiusLogGreenModewiseReadout.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fourierModeValue_hasDerivAt_thin](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/fouriermodevalue-hasderivat-thin.md) | 17 | `result-track:b061cc21fa69890b96c33cb48dadf66c206d77cc8e0d5a0e06ebb3df9bba4cea` |
| 2 | `theorem` | [fourierModeValue_zero_thin](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/fouriermodevalue-zero-thin.md) | 22 | `result-track:64603c72e91ecca891c341e5f82bb74f1540d9373c2d812ea329fc997cb3f648` |
| 3 | `theorem` | [fourierModeValue_one_thin](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/fouriermodevalue-one-thin.md) | 27 | `result-track:f8c9bba78c1d7eff99999d0aefdc2e1974f35a17d64071cc8f777dec39bee496` |
| 4 | `theorem` | [integral_step_mul_thinFourierSlope](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/integral-step-mul-thinfourierslope.md) | 36 | `result-track:43e5a5de98fe63abfc93fb4fbc425eca792c6761a8acef016105cc52fbb86685` |
| 5 | `theorem` | [integral_log_mul_thinFourierSlope](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/integral-log-mul-thinfourierslope.md) | 53 | `result-track:0123cb96f06ce7f3fa732ef69459e968181bf3c4fb1a6e86eb18e7d65cbe7f4c` |
| 6 | `theorem` | [integral_const_mul_thinFourierSlope_zero](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/integral-const-mul-thinfourierslope-zero.md) | 76 | `result-track:d9daf9d1749daed4a9fce12a7f698b12c52945702f69c2596c952cc457bcc202` |
| 7 | `theorem` | [thinGreenArithmeticFourierCoordinate_eq_derivative_pairing](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/thingreenarithmeticfouriercoordinate-eq-derivative-pairing.md) | 88 | `result-track:3f00c0b80c5f476291df1bc974f7b10712ad962f2d6e330d687bf55d84a6ef03` |
| 8 | `theorem` | [thinGreenArithmeticFourierCoordinate_eq_historicalCoeff](../../../../MeasureAndIntegration/CenteredMobiusLogGreenFiniteSourceIBP.lean/declarations/thingreenarithmeticfouriercoordinate-eq-historicalcoeff.md) | 127 | `result-track:652d36b95a53c8c0fa979f2e3ddb7423b12b14477696cbf435c0894b72d3fb96` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b06377208b5bdcbc03ca4c3658dbe9e753e9efd29a269881aac2bc43c2f15084 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
