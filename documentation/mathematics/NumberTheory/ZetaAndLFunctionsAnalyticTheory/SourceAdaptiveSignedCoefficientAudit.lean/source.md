# Source Adaptive Signed Coefficient Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c9c6fae5a05307b938962718b7d460a4c2a490a` · SHA-256 `6f72d36761f1cf1ce3c4cbe170de227982d4cd0c56624630d3f0797120f48a78`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveSignedCoefficientRows
set_option linter.hashCommand false
set_option linter.style.setOption false
set_option pp.all true

#check RH16AdaptiveSignedCoefficients.truncatedConvolution
#print RH16AdaptiveSignedCoefficients.truncatedConvolution
#print axioms RH16AdaptiveSignedCoefficients.truncatedConvolution

#check RH16AdaptiveSignedCoefficients.truncatedConvolution_weighted_sum
#print RH16AdaptiveSignedCoefficients.truncatedConvolution_weighted_sum
#print axioms RH16AdaptiveSignedCoefficients.truncatedConvolution_weighted_sum

#check RH16AdaptiveSignedCoefficients.closed_mask_weighted_sum
#print RH16AdaptiveSignedCoefficients.closed_mask_weighted_sum
#print axioms RH16AdaptiveSignedCoefficients.closed_mask_weighted_sum

#check RH16AdaptiveSignedCoefficients.adaptive_rectangle_le_cutoff
#print RH16AdaptiveSignedCoefficients.adaptive_rectangle_le_cutoff
#print axioms RH16AdaptiveSignedCoefficients.adaptive_rectangle_le_cutoff

#check RH16AdaptiveSignedCoefficients.correlationCoefficient
#print RH16AdaptiveSignedCoefficients.correlationCoefficient
#print axioms RH16AdaptiveSignedCoefficients.correlationCoefficient

#check RH16AdaptiveSignedCoefficients.derivativeCoefficient
#print RH16AdaptiveSignedCoefficients.derivativeCoefficient
#print axioms RH16AdaptiveSignedCoefficients.derivativeCoefficient

#check RH16AdaptiveSignedCoefficients.actualCoefficientRows
#print RH16AdaptiveSignedCoefficients.actualCoefficientRows
#print axioms RH16AdaptiveSignedCoefficients.actualCoefficientRows

#check RH16AdaptiveSignedCoefficients.actualCoefficientRows_eq_independentMain
#print RH16AdaptiveSignedCoefficients.actualCoefficientRows_eq_independentMain
#print axioms RH16AdaptiveSignedCoefficients.actualCoefficientRows_eq_independentMain

#check RH16AdaptiveSignedCoefficients.convolutionSamplingError
#print RH16AdaptiveSignedCoefficients.convolutionSamplingError
#print axioms RH16AdaptiveSignedCoefficients.convolutionSamplingError

#check RH16AdaptiveSignedCoefficients.signedError_eq_log_row_sub_convolution_row
#print RH16AdaptiveSignedCoefficients.signedError_eq_log_row_sub_convolution_row
#print axioms RH16AdaptiveSignedCoefficients.signedError_eq_log_row_sub_convolution_row

#check RH16AdaptiveSignedCoefficients.actual_residual_eq_coefficientRows_add_signedError
#print RH16AdaptiveSignedCoefficients.actual_residual_eq_coefficientRows_add_signedError
#print axioms RH16AdaptiveSignedCoefficients.actual_residual_eq_coefficientRows_add_signedError

#check RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect
#print RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect
#print axioms RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect

#check RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect_eq_actual_residual
#print RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect_eq_actual_residual
#print axioms RH16AdaptiveSignedCoefficients.centeredAdaptiveCoefficientDefect_eq_actual_residual
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=19dabe23f1faa481b007c6b0658eaa5528139b05b3d21b604fdf816ced1cad4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceAdaptiveSignedCoefficientAudit/Variant6f72d36761f1cf1ce3c4cbe170de227982d4cd0c56624630d3f0797120f48a78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
