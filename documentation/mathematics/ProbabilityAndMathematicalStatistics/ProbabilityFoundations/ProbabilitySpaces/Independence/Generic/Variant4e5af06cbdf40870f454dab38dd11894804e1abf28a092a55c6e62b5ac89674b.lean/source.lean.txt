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
