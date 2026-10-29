/-
Complex geometric-series summability, absolute summability and sum
ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas/direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
Source original SHA-256: 12a7d27099a82a832b1276c4dcb8744b313fba91a6f2b308469507af696bb094
Manual conceptual split; uncompiled and not mathematically admitted.
These provisional roles and computational characterizations are user-supplied.
Existing source attribution, source identities and notices remain preserved in the immutable source archive.
The exact legacy AnalyticNumber.Mathlib.Certificate import remains unresolved; no certificate or authority record is materialized here.
All three statements require the strict unit-disk norm bound; no boundary-circle or global series assertion is added.
-/
import AnalyticNumber.Mathlib.Certificate

/-!
# Mathlib-backed certificate: geometric series and the resolvent on the disk

For `z : ℂ` with `‖z‖ < 1` this file proves, from Mathlib:

* `Summable (fun n : ℕ => z ^ n)`;
* `Summable (fun n : ℕ => ‖z ^ n‖)`;
* `HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹)`;
* `AnalyticAt ℂ (fun w : ℂ => (1 - w)⁻¹) z`,

and packages the conjunction as a `MathlibProofCertificate` whose `proof`
field is built from those four theorems — not from `True`, `trivial`, or an
arbitrary authority field. The claim is then recovered a second time only
through `BoundaryCalculus.analytic_boundary_calculus`, and direct ownership
remains impossible.

This file asserts nothing about ζ, RH, analytic continuation, functional
equations, automorphic L-functions, trace formulas, prismatic comparison,
Fredholm determinants, or global Euler products.
-/

open AnalyticNumber AnalyticNumber.MathlibBridge

namespace GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.GeometricSeries.Variant12a7d270

/-- The complex geometric series is summable for `‖z‖ < 1`. Mathlib proof. -/
theorem complex_geometric_series_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => z ^ n) :=
  summable_geometric_of_norm_lt_one hz

/-- The complex geometric series is absolutely summable for `‖z‖ < 1`.
Mathlib proof via `norm_pow` and the real geometric series at `r = ‖z‖`. -/
theorem complex_geometric_series_abs_summable
    {z : ℂ} (hz : ‖z‖ < 1) :
    Summable (fun n : ℕ => ‖z ^ n‖) := by
  simpa [norm_pow] using summable_geometric_of_lt_one (norm_nonneg z) hz

/-- The complex geometric series sums to `(1 - z)⁻¹` for `‖z‖ < 1`.
Mathlib proof. -/
theorem complex_geometric_series_hasSum
    {z : ℂ} (hz : ‖z‖ < 1) :
    HasSum (fun n : ℕ => z ^ n) ((1 - z)⁻¹) :=
  hasSum_geometric_of_norm_lt_one hz


end GRWTSK.Analysis.ComplexAnalysis.LocalTheory.PowerSeries.GeometricSeries.Variant12a7d270
