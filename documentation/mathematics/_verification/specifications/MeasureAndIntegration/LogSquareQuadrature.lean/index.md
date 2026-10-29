# Verification target: Log Square Quadrature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "814d549a4dbf8cb774fd7d59cd2005070c156052",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/index.md) · [Full source](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `814d549a4dbf8cb774fd7d59cd2005070c156052`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logSquareQuadrature](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/declarations/logsquarequadrature.md) | 16 | `declaration-track:7baff04c398348a5838bde39f3dcd2b3c1443dbfcc1df92537867e08c4db1fe1` |
| 2 | `theorem` | [logSquare_monotoneOn](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/declarations/logsquare-monotoneon.md) | 20 | `result-track:57001c966e286d6ee8814041d139656cdd19f35447b6c2c46594a5ba6162a703` |
| 3 | `theorem` | [logSquare_intervalIntegrable](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/declarations/logsquare-intervalintegrable.md) | 25 | `result-track:47d4af5925e0c6af92d1377f307c00f86e0de4eb222fec96396737d467c59743` |
| 4 | `theorem` | [logSquare_integer_bounds](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/declarations/logsquare-integer-bounds.md) | 32 | `result-track:7b43dee00bcc5d6c758e9d0e030d205d86907613ecf3513b272743743a402706` |
| 5 | `theorem` | [logSquareQuadrature_abs_le](../../../../MeasureAndIntegration/LogSquareQuadrature.lean/declarations/logsquarequadrature-abs-le.md) | 65 | `result-track:887d086e2f74d91e79bba3b9141971969c02d97cc71519d2923d2b8a43b3cbc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=edc9d6c5dec0ba9a63740cc4435362f8044ca99c5fc72886572072a0859965e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/LogSquareQuadrature/Variant2657cec63c37a48cae43669b40fd2ff3c5c127531fa5671e4c7c8f18365f5e78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
