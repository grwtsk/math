-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Permutation.Variant4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.Permutation.Variant4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b","mathematical_subject":"Probability.Independence","original_sha256":"4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/FiniteDynamics/Generic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.FiniteDynamics.Permutation

/-!
# DAF generic finite permutation dynamics

This module is the stable observer-facing entry point for exact dynamics on an
arbitrary finite type.  The proofs live in `FinitePermutationDynamics`, which
was already extracted from the Boolean-state development; the exports below
avoid duplicating fixed-point partitions, orbit divisibility, Möbius inversion,
or finite Euler-factor data.

These invariants describe a *closed finite permutation*.  An externally driven
system has no single dynamical zeta datum or cycle decomposition until an
input schedule is closed into the state.  Equal cycle data do not imply
avalanche diffusion, statistical independence, or cryptographic security.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.Permutation.Variant4e5af06cbdf40870f454dab38dd11894804e1abf28a092a55c6e62b5ac89674b

namespace FiniteDynamics

export FinitePermutationDynamics
  (conjugate
   conjugate_apply
   conjugate_pow
   transport
   transport_apply
   transport_pow
   fixedPoints
   fixedPointCount
   mem_fixedPoints_iff
   fixedPointCount_le
   fixedPointCount_conjugate
   fixedPointCount_transport
   HasExactPeriod
   exactPeriodPoints
   exactPeriodCount
   exactPeriod_dvd_of_fixed
   fixedPointCount_eq_sum_exactPeriodCount
   exactPeriodCount_dvd
   cycleCount
   exactPeriodCount_eq_mul_cycleCount
   fixedPointCount_eq_sum_mul_cycleCount
   cycleCount_conjugate
   cycleCount_transport
   cycleCount_mobius
   cycleCount_eq_zero_of_card_lt
   cycleEulerFactorData
   cycleEulerFactorData_apply
   cycleEulerFactorData_support_subset
   cycleEulerFactorData_conjugate
   cycleEulerFactorData_transport)

end FiniteDynamics
