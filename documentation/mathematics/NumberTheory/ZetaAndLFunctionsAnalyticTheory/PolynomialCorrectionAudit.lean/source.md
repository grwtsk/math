# Polynomial Correction Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3337ad0a69eead71df0673d2803e918b7dbd4f0f` · SHA-256 `2983678c641660b4ba96693a67e742a39fa3ab43367d2982270294657f4b853d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial_eq
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial_eq

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial_zero
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.normalizationPolynomial_zero

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedSource
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedSource

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedSource_zero
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedSource_zero

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.corrected_source_eq
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.corrected_source_eq

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.nonnegative_corrected_source_of_lower
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.nonnegative_corrected_source_of_lower

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel_zero
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel_zero

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.weighted_correction_eq
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.weighted_correction_eq

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correction_integrable
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correction_integrable

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.integral_correction
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.integral_correction

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel_analytic
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctionKernel_analytic

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_zero
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_zero

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.weighted_corrected_source_eq
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.weighted_corrected_source_eq

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.corrected_source_integrable
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.corrected_source_integrable

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.integral_corrected_source
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.integral_corrected_source

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_analytic_on_domain
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_analytic_on_domain

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_meromorphic
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_meromorphic

#check FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_analytic_positive_real
#print axioms FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection.correctedTransform_analytic_positive_real

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d689e89dc48c7ea41ddbae2fc3b778bbaad83e9846ef11c300bed5123f5b54a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/2983678c641660b4ba96693a67e742a39fa3ab43367d2982270294657f4b853dPolynomialCorrec/Variant2983678c641660b4ba96693a67e742a39fa3ab43367d2982270294657f4b853d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
