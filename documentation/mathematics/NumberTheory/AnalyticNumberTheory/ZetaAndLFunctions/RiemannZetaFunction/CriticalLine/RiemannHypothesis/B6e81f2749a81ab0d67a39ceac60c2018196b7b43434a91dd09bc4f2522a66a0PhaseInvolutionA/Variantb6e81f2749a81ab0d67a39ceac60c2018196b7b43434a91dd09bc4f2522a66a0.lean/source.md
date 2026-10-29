# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B6e81f2749a81ab0d67a39ceac60c2018196b7b43434a91dd09bc4f2522a66a0PhaseInvolutionA.Variantb6e81f2749a81ab0d67a39ceac60c2018196b7b43434a91dd09bc4f2522a66a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c7b7c72c3e7f7625d433d32ea00b73e0cf54c2f` · SHA-256 `b6e81f2749a81ab0d67a39ceac60c2018196b7b43434a91dd09bc4f2522a66a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.PhaseInvolution

#check FormalResearch.RiemannHypothesis.phase_reflection_is_hermitian
#print axioms FormalResearch.RiemannHypothesis.phase_reflection_is_hermitian
#check FormalResearch.RiemannHypothesis.phase_reflection_is_self_adjoint
#print axioms FormalResearch.RiemannHypothesis.phase_reflection_is_self_adjoint
#check FormalResearch.RiemannHypothesis.phase_reflection_square
#print axioms FormalResearch.RiemannHypothesis.phase_reflection_square
#check FormalResearch.RiemannHypothesis.phase_reflection_involution
#print axioms FormalResearch.RiemannHypothesis.phase_reflection_involution
#check FormalResearch.RiemannHypothesis.phase_reflection_involution_of_norm
#print axioms FormalResearch.RiemannHypothesis.phase_reflection_involution_of_norm
#check FormalResearch.RiemannHypothesis.phase_rotation_eq_diagonal
#print axioms FormalResearch.RiemannHypothesis.phase_rotation_eq_diagonal
#check FormalResearch.RiemannHypothesis.phase_rotation_unitary
#print axioms FormalResearch.RiemannHypothesis.phase_rotation_unitary
#check FormalResearch.RiemannHypothesis.phase_reflections_commute_iff
#print axioms FormalResearch.RiemannHypothesis.phase_reflections_commute_iff
#check FormalResearch.RiemannHypothesis.unit_phase_reflections_need_not_commute
#print axioms FormalResearch.RiemannHypothesis.unit_phase_reflections_need_not_commute
#check FormalResearch.RiemannHypothesis.phase_defect_eq_det
#print axioms FormalResearch.RiemannHypothesis.phase_defect_eq_det
#check FormalResearch.RiemannHypothesis.phase_defect_eq_trace_deficit
#print axioms FormalResearch.RiemannHypothesis.phase_defect_eq_trace_deficit
#check FormalResearch.RiemannHypothesis.phase_defect_eq_half_trace_square
#print axioms FormalResearch.RiemannHypothesis.phase_defect_eq_half_trace_square
#check FormalResearch.RiemannHypothesis.unit_phase_defect_dictionary
#print axioms FormalResearch.RiemannHypothesis.unit_phase_defect_dictionary
#check FormalResearch.RiemannHypothesis.phase_defect_nonneg
#print axioms FormalResearch.RiemannHypothesis.phase_defect_nonneg
#check FormalResearch.RiemannHypothesis.phase_projector_is_hermitian
#print axioms FormalResearch.RiemannHypothesis.phase_projector_is_hermitian
#check FormalResearch.RiemannHypothesis.phase_projector_idempotent
#print axioms FormalResearch.RiemannHypothesis.phase_projector_idempotent
#check FormalResearch.RiemannHypothesis.phase_projector_mul_vec
#print axioms FormalResearch.RiemannHypothesis.phase_projector_mul_vec
#check FormalResearch.RiemannHypothesis.phase_projector_mul_vec_eq_smul_line
#print axioms FormalResearch.RiemannHypothesis.phase_projector_mul_vec_eq_smul_line
#check FormalResearch.RiemannHypothesis.phase_projector_fixes_line
#print axioms FormalResearch.RiemannHypothesis.phase_projector_fixes_line
#check FormalResearch.RiemannHypothesis.phase_projector_range
#print axioms FormalResearch.RiemannHypothesis.phase_projector_range
#check FormalResearch.RiemannHypothesis.phase_line_vector_ne_zero
#print axioms FormalResearch.RiemannHypothesis.phase_line_vector_ne_zero
#check FormalResearch.RiemannHypothesis.phase_projector_rank_one
#print axioms FormalResearch.RiemannHypothesis.phase_projector_rank_one
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1bbbf7c8f222c6f38db9fc5cc019a6684ba4349cf743e692edd7798f1752ddd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B6e81f2749a81ab0d67a39ceac60c2018196b7b43434a91dd09bc4f2522a66a0PhaseInvolutionA/Variantb6e81f2749a81ab0d67a39ceac60c2018196b7b43434a91dd09bc4f2522a66a0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
