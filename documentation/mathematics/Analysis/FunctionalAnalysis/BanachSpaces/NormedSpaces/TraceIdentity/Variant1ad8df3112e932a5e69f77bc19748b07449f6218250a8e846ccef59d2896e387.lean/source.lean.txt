import Mathematics.AbelReynolds.DiscrepancyTrace

/-!
# Exact unnormalized discrepancy trace

The trace equality itself is proof data and is indexed by the same arithmetic
source as its authority.
-/

namespace Mathematics.MobiusOntology

open scoped BigOperators

universe u v w

abbrev InvariantProjection :=
  Mathematics.AbelReynolds.InvariantProjection

abbrev TraceCertificate
    (Scale : Type u) (Spectrum : Type v) (Carrier : Type w)
    [Fintype Spectrum] [NormedAddCommGroup Carrier] :=
  Mathematics.AbelReynolds.ExactDiscrepancyTrace
    Scale Spectrum Carrier

theorem centered_trace_identity
    {Scale : Type u} {Spectrum : Type v} {Carrier : Type w}
    [Fintype Spectrum] [NormedAddCommGroup Carrier]
    (trace : TraceCertificate Scale Spectrum Carrier)
    (scale : Scale) :
    trace.centeredDiscrepancy scale =
      (∑ spectral : Spectrum, trace.spectralTerm scale spectral) +
        trace.remainder scale :=
  trace.centered_eq_spectral_sum_add_remainder scale

end Mathematics.MobiusOntology
