import Mathematics.GraphAccess.Sampling.LowDiscrepancy

/-!
# Conditional invariant-trace approximation bound
-/

namespace Mathematics.GraphAccess

theorem low_discrepancy_trace_error_bound
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable) :
    certificate.errorMagnitude ≤ certificate.errorBound :=
  certificate.errorWithinBound

theorem sampled_trace_is_not_reclassified_as_canonical
    {State Observable : Type u}
    (certificate : LowDiscrepancyCertificate State Observable)
    (distinct :
      certificate.estimatedTrace ≠
        certificate.invariantLaw.canonicalTrace certificate.observable) :
    certificate.estimatedTrace ≠
      certificate.invariantLaw.canonicalTrace certificate.observable :=
  distinct

end Mathematics.GraphAccess
