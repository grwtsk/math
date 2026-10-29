import SourceActualF7TailAdapter
import RootActualXiTailPrimitiveAbel

/-!
Identify the independently named actual physical primitive and weight.
All real terminal times are retained, including reverse orientation below seven.
No arithmetic average or signed lower estimate is introduced.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
open RootActualXiTailPrimitive RootActualXiTailPrimitiveAbel
noncomputable section

/-- The exact full shifted Chebyshev time density is the same source expression. -/
theorem actualF7_time_density_eq (t : ℝ) :
    RH16ActualF7.timeXiDensity t = actualXiTailTimeDensity t := by
  rfl

/-- The physical and time primitives agree at every real terminal time. -/
theorem actualF7_eq_anchored_primitive (t : ℝ) :
    RH16ActualF7.actualF7 t = actualAnchoredXiTailPrimitive t := by
  rw [actualAnchoredXiTailPrimitive_eq_physical]
  rfl

/-- Both versions use the same minus-sign physical correlation weight. -/
theorem actualF7_minus_weight_eq (A t : ℝ) :
    RH16ActualF7.minusCorrelationWeight A t = actualXiTailSourceTest A t := by
  rfl

end
end FormalResearch.RiemannHypothesis.ActualCanonicalF7Identification
