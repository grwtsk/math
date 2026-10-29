# Verification target: Source Adaptive Signed Coefficient Rows

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba002e46e65cfe6c3c09264dcc13d886856dcbe2",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba002e46e65cfe6c3c09264dcc13d886856dcbe2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceAdaptiveVaughanSignedMain` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncatedConvolution](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/truncatedconvolution.md) | 19 | `declaration-track:a79beedb2e04d276259a56b8e816ffd4fc2dd5c9cd37fa328022258e1784bfc3` |
| 2 | `theorem` | [truncatedConvolution_weighted_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/truncatedconvolution-weighted-sum.md) | 24 | `result-track:ebab434678072a6cd799a62867cc5d76fe9ee961160dd21d98ce16455d3c600d` |
| 3 | `theorem` | [closed_mask_weighted_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/closed-mask-weighted-sum.md) | 47 | `result-track:752297e841103ff67df22d3a9b0448a8030f6a807cebf649f5b7891786084463` |
| 4 | `theorem` | [adaptive_rectangle_le_cutoff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/adaptive-rectangle-le-cutoff.md) | 67 | `result-track:e6649970977880773c876ac8e7b1ab9b7a38c0051c33d1176837e177365919a3` |
| 5 | `def` | [correlationCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/correlationcoefficient.md) | 72 | `declaration-track:ff78aabb51be4a824619963729907580e699d880dd3e665a64de27721717d822` |
| 6 | `def` | [derivativeCoefficient](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/derivativecoefficient.md) | 78 | `declaration-track:43f7805c82ed00d430e539e6f5ad30c2d3700782ddb0939e32020fbaa9aae41f` |
| 7 | `def` | [actualCoefficientRows](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/actualcoefficientrows.md) | 83 | `declaration-track:b22ed88c439e606afc6cd9f8a7d9a23dd1b3c464be4748635d602f9dca7dfda4` |
| 8 | `theorem` | [actualCoefficientRows_eq_independentMain](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/actualcoefficientrows-eq-independentmain.md) | 90 | `result-track:1c1d8aa45f68fd6f9ad6d8c2873f63b884f6a6d3b07c4f67f50a82e85977e296` |
| 9 | `def` | [convolutionSamplingError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/convolutionsamplingerror.md) | 129 | `declaration-track:e41f996c0e4072c538158eb963f091667daf592859d525715bc2f23b8bf3693d` |
| 10 | `theorem` | [signedError_eq_log_row_sub_convolution_row](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/signederror-eq-log-row-sub-convolution-row.md) | 132 | `result-track:c28b4d74c559c69c5c8f98b230e599f3f903a0c09d5821bad5a0dbe1e734b97f` |
| 11 | `theorem` | [actual_residual_eq_coefficientRows_add_signedError](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/actual-residual-eq-coefficientrows-add-signederror.md) | 151 | `result-track:93446ba44533ee59f952cad5c7905f6efedba3043e0171313a6669feb988faf0` |
| 12 | `def` | [centeredAdaptiveCoefficientDefect](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/centeredadaptivecoefficientdefect.md) | 158 | `declaration-track:7a9d974f70cd1659b98b12692db3893800e648b8ab20fc0f563a735accd23692` |
| 13 | `theorem` | [centeredAdaptiveCoefficientDefect_eq_actual_residual](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceAdaptiveSignedCoefficientRows.lean/declarations/centeredadaptivecoefficientdefect-eq-actual-residual.md) | 161 | `result-track:804141604dc78cebc365fd3bd5ec1d1570a295c258de6075696e5b0ecf484113` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9dcde2023f972aaed946828b03f7c0d645427823b089785ac0082fa13987b055 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
