# Followthrough3 Consumer Independent Audit — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fd1786b5571e5ed8f1799f2e44623b7da818dd1` · SHA-256 `0a7121c75ec27c1b3216ce5ec90b1f06bb0b20f4a778e7d28a6a90272aead9c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceBlockRadiusSharpPropagation

set_option autoImplicit false

namespace RH16ActualXiPositiveBlock

#print axioms actualTransformedXiBlockDensity
#print axioms blockMargin
#print axioms actual_transformed_kernel_negative
#print axioms actual_transformed_density_lower
#print axioms actual_transformed_density_intervalIntegrable
#print axioms blockMargin_pos
#print axioms actual_transformed_block_integral_lower

end RH16ActualXiPositiveBlock

namespace RH16ShiftedXiAdapter

#print axioms plain_derivative_prefactor_eq
#print axioms plainProfile_deriv_eq_actual_kernel
#print axioms signedCesaroPairing_eq_explicit_shiftedXi
#print axioms remainingAtomWork_eq_explicit_shiftedXi

end RH16ShiftedXiAdapter

namespace RH16CompleteXiComplement

#print axioms completeXiComplement
#print axioms calibratedRadius
#print axioms complementAtomBudget
#print axioms actual_transformed_whole_intervalIntegrable
#print axioms signed_pairing_eq_block_add_complement
#print axioms signed_pairing_lower_of_complete_complement
#print axioms remaining_lower_of_complete_complement
#print axioms complementAtomBudget_nonneg
#print axioms atom_witness_of_complete_complement
#print axioms all_real_lower_of_complete_complement
#print axioms estimate_of_complete_complement

end RH16CompleteXiComplement

namespace FormalResearch.RiemannHypothesis.SourceRawXiBlockGain

#print axioms contracted_pairing_eq_block_add_complement
#print axioms contracted_pairing_lower_of_complement_raw
#print axioms residual_upper_of_complement_raw
#print axioms all_real_lower_of_complement_at_91
#print axioms actual_leading_upper_of_complement_raw
#print axioms estimate_of_complement_at_91
#print axioms residual_tail_of_complement_raw
#print axioms all_real_lower_of_complement_raw
#print axioms estimate_of_complement_raw

end FormalResearch.RiemannHypothesis.SourceRawXiBlockGain

namespace FormalResearch.RiemannHypothesis.SourceLaterRadiusPropagation

#print axioms residual_upper_of_contracted_Xi_at_radius
#print axioms all_real_lower_of_contracted_Xi_at_radius
#print axioms estimate_of_contracted_Xi_at_radius
#print axioms leading_upper_of_contracted_Xi_at_radius
#print axioms leading_tail_of_contracted_Xi_at_radius
#print axioms leading_upper_of_residual_half
#print axioms leading_upper_of_residual_corrected
#print axioms leading_upper_of_residual_fourteen
#print axioms leading_upper_of_actual_corrected_pairing
#print axioms leading_tail_of_actual_corrected_pairing
#print axioms leading_tail_of_triangular_upper

end FormalResearch.RiemannHypothesis.SourceLaterRadiusPropagation

namespace FormalResearch.RiemannHypothesis.SourceBlockRadiusSharpPropagation

#print axioms residual_upper_of_complete_complement_at_radius
#print axioms all_real_lower_of_complete_complement_at_radius
#print axioms estimate_of_complete_complement_at_radius
#print axioms leading_upper_of_complete_complement_at_radius

end FormalResearch.RiemannHypothesis.SourceBlockRadiusSharpPropagation

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fd6b9368b122baa3e0fb7703566e001ae8de9fe1c3f09f129fbb4d9a3d611ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Followthrough3ConsumerIndependentAudit/Variant0a7121c75ec27c1b3216ce5ec90b1f06bb0b20f4a778e7d28a6a90272aead9c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
