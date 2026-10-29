# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AxiomAudit.Variantd186187bed85960b0ad6ddf1e3ab672e67bfdd8f2b40d40627c07c399faa9fdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e11808c90c63b36b4da29111a21adfe8d8569d6` · SHA-256 `d186187bed85960b0ad6ddf1e3ab672e67bfdd8f2b40d40627c07c399faa9fdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.QuantumLanglands.SourceGramQuotient
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gram_inner_self_eq_zero_iff
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gram_inner_self_eq_zero_iff
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gram_inner_mk
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gram_inner_mk
#print FormalResearch.QuantumLanglands.SourceGramQuotient.signedForm_mk
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.signedForm_mk
#print FormalResearch.QuantumLanglands.SourceGramQuotient.reflection_inner_symmetric
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.reflection_inner_symmetric
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_pairing
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_pairing
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_symmetric
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_symmetric
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_selfAdjoint
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_selfAdjoint
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_norm_le
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_norm_le
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_opNorm_le
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_opNorm_le
#print FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_involutive_of_invariant
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.compressedReflection_involutive_of_invariant
#print FormalResearch.QuantumLanglands.SourceGramQuotient.signedForm_eq_compression
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.signedForm_eq_compression
#print FormalResearch.QuantumLanglands.SourceGramQuotient.augmented_gram_nonneg
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.augmented_gram_nonneg
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gram_plus_minus_reflection_nonneg
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gram_plus_minus_reflection_nonneg
#print FormalResearch.QuantumLanglands.SourceGramQuotient.common_source_uniqueness
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.common_source_uniqueness
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gram_refinement_isometry
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gram_refinement_isometry
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_injective
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_injective
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_signedForm
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_signedForm
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_cocycle
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_cocycle
#print FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_surjective_of_range_eq
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.gramRefinement_surjective_of_range_eq
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_compression_involutive
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_compression_involutive
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_correlation_complex
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_correlation_complex
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_gram_entry
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_gram_entry
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_reflected_entry
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_source_reflected_entry
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_first_prime_even_channel
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_first_prime_even_channel
#print FormalResearch.QuantumLanglands.SourceGramQuotient.actual_first_prime_odd_channel
#print axioms FormalResearch.QuantumLanglands.SourceGramQuotient.actual_first_prime_odd_channel

open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.QuantumLanglands.SourceGramQuotient
example (q : ComplexL2) (I : Finset ℕ) : CompleteSpace (finiteOrbit q I) := inferInstance
example (q : ComplexL2) (I : Finset ℕ) : IsSelfAdjoint (compressedReflection (finiteOrbit q I)) := compressedReflection_selfAdjoint _
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8fd2eea1036ae1be774c490b1e2a514c870f2be22a8e6b2bc001af43f47a62ca -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/AxiomAudit/Variantd186187bed85960b0ad6ddf1e3ab672e67bfdd8f2b40d40627c07c399faa9fdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
