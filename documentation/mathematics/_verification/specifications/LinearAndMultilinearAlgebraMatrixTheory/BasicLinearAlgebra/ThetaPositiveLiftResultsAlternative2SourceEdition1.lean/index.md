# Verification target: Theta Positive Lift Results Alternative2 Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1231cd60ac4d06ebd33f5056973f9fe57e8ee06",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34ce516d0a6cb6b15b2ccd4cf126af635ef12a684c38bdcb973604953425a4eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1231cd60ac4d06ebd33f5056973f9fe57e8ee06`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34ce516d0a6cb6b15b2ccd4cf126af635ef12a684c38bdcb973604953425a4eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34ce516d0a6cb6b15b2ccd4cf126af635ef12a684c38bdcb973604953425a4eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [det_fin_three_normalize_first_row](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/det-fin-three-normalize-first-row.md) | 23 | `result-track:e1bd9b3edfe95bb854ea1a0819bb2abf7209dc85dfb19287d7a949c0990bf18c` |
| 2 | `theorem` | [det_fin_three_normalized_eq_differences](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/det-fin-three-normalized-eq-differences.md) | 33 | `result-track:1ab7c582403bb12143829d8b317db6b93939799cff7477abe64a51d268aa6671` |
| 3 | `theorem` | [det_fin_three_normalized_eq_secants](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/det-fin-three-normalized-eq-secants.md) | 40 | `result-track:63bddd16dfb7c2549c3bd88a68057a2f878ed3a7f1c4d4a8a95b6ab6d7a5e6a6` |
| 4 | `theorem` | [oriented_plucker_three_scalar](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/oriented-plucker-three-scalar.md) | 50 | `result-track:188a1a22b2080d939931a7a02b1bdb7e0d477d1cd2d39cb586b28cc6ca3872e1` |
| 5 | `theorem` | [oriented_plucker_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/oriented-plucker-three.md) | 59 | `result-track:9baa9c560f1bcc1b840de19416847c0c1c7676beb3d16aae23b65eefe65c0c58` |
| 6 | `theorem` | [image_sub_neg_of_hasDerivAt_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/image-sub-neg-of-hasderivat-neg.md) | 67 | `result-track:d498fae711220abba1e192e9af8d54ac320357dc555b17f7851553b0450aec89` |
| 7 | `theorem` | [normalized_det_nonpos_of_antitone_deriv_ratio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ThetaPositiveLiftResultsAlternative2SourceEdition1.lean/declarations/normalized-det-nonpos-of-antitone-deriv-ratio.md) | 78 | `result-track:355b5c24898ee75f6d0a53e70e887ab202cfb487bb90c48c4eef93258314d37a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de38acbcbac10bb2f21e868215ef02fc903c17a9c550263926749f557696ce66 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34ce516d0a6cb6b15b2ccd4cf126af635ef12a684c38bdcb973604953425a4eb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant34ce516d0a6cb6b15b2ccd4cf126af635ef12a684c38bdcb973604953425a4eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
