/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleConjectureJunction
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Named conjectural connections at the rectangle-edge junction

This file gives searchable, route-specific names to every connection recorded in
`CanonicalRectangleConjectureJunction`. Each witness bridge still contains two
logically distinct premises:

1. an exact proposition-valued formulation of the named conjectural program;
2. a deterministic upgrade theorem strong enough to construct
   `CanonicalRectangleEdgeWitness N`.

Likewise, every bypass bridge must carry an explicit theorem into `RHThrough N`.
No bridge, conjecture proof, witness inhabitant, or bounded-RH result is supplied
by the aliases themselves.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.CanonicalRectangleConjectureConnections

open CanonicalRectangleEdgeObstructionWitness
open CanonicalRectangleConjectureJunction

noncomputable section

abbrev LindelofWitnessBridge (N : ℕ) :=
  WitnessBridge .lindelof N
abbrev KeatingSnaithMomentWitnessBridge (N : ℕ) :=
  WitnessBridge .keatingSnaithMoments N
abbrev ShiftedMomentWitnessBridge (N : ℕ) :=
  WitnessBridge .shiftedMoments N
abbrev MontgomeryPairCorrelationWitnessBridge (N : ℕ) :=
  WitnessBridge .montgomeryPairCorrelation N
abbrev GUESpacingWitnessBridge (N : ℕ) :=
  WitnessBridge .gueSpacing N
abbrev SimplicityWitnessBridge (N : ℕ) :=
  WitnessBridge .simplicity N
abbrev GonekHejhalNegativeMomentWitnessBridge (N : ℕ) :=
  WitnessBridge .gonekHejhalNegativeMoments N
abbrev RatiosWitnessBridge (N : ℕ) :=
  WitnessBridge .ratios N
abbrev DeBruijnNewmanWitnessBridge (N : ℕ) :=
  WitnessBridge .deBruijnNewman N
abbrev HilbertPolyaWitnessBridge (N : ℕ) :=
  WitnessBridge .hilbertPolya N
abbrev BerryKeatingWitnessBridge (N : ℕ) :=
  WitnessBridge .berryKeating N

abbrev LindelofBypassBridge (N : ℕ) :=
  BypassBridge .lindelof N
abbrev KeatingSnaithMomentBypassBridge (N : ℕ) :=
  BypassBridge .keatingSnaithMoments N
abbrev ShiftedMomentBypassBridge (N : ℕ) :=
  BypassBridge .shiftedMoments N
abbrev MontgomeryPairCorrelationBypassBridge (N : ℕ) :=
  BypassBridge .montgomeryPairCorrelation N
abbrev GUESpacingBypassBridge (N : ℕ) :=
  BypassBridge .gueSpacing N
abbrev SimplicityBypassBridge (N : ℕ) :=
  BypassBridge .simplicity N
abbrev GonekHejhalNegativeMomentBypassBridge (N : ℕ) :=
  BypassBridge .gonekHejhalNegativeMoments N
abbrev RatiosBypassBridge (N : ℕ) :=
  BypassBridge .ratios N
abbrev DeBruijnNewmanBypassBridge (N : ℕ) :=
  BypassBridge .deBruijnNewman N
abbrev HilbertPolyaBypassBridge (N : ℕ) :=
  BypassBridge .hilbertPolya N
abbrev BerryKeatingBypassBridge (N : ℕ) :=
  BypassBridge .berryKeating N

/-- Lindelöf reaches the witness only through an explicitly supplied
deterministic upgrade. -/
theorem hasWitness_of_lindelof {N : ℕ}
    (bridge : LindelofWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Keating--Snaith moment information reaches the witness only through an
explicit average-to-deterministic upgrade. -/
theorem hasWitness_of_keatingSnaithMoments {N : ℕ}
    (bridge : KeatingSnaithMomentWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Shifted moments reach the witness only through an explicit fixed-contour
upgrade. -/
theorem hasWitness_of_shiftedMoments {N : ℕ}
    (bridge : ShiftedMomentWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Montgomery pair correlation reaches the witness only through an explicit
statistical-to-deterministic fixed-contour theorem. -/
theorem hasWitness_of_montgomeryPairCorrelation {N : ℕ}
    (bridge : MontgomeryPairCorrelationWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- GUE spacing reaches the witness only through an explicit finite source
alignment and contour-separation theorem. -/
theorem hasWitness_of_gueSpacing {N : ℕ}
    (bridge : GUESpacingWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Simplicity reaches the witness only through an explicit quantitative
separation and pointwise logarithmic-derivative theorem. -/
theorem hasWitness_of_simplicity {N : ℕ}
    (bridge : SimplicityWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Gonek--Hejhal negative moments reach the witness only through an explicit
average-to-uniform reciprocal-stability theorem. -/
theorem hasWitness_of_gonekHejhalNegativeMoments {N : ℕ}
    (bridge : GonekHejhalNegativeMomentWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- The ratios conjecture reaches the witness only through an explicit
average-to-pointwise logarithmic-derivative enclosure. -/
theorem hasWitness_of_ratios {N : ℕ}
    (bridge : RatiosWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- A de Bruijn--Newman source statement reaches the witness only through an
effective heat-flow transfer to the actual zeta contour. -/
theorem hasWitness_of_deBruijnNewman {N : ℕ}
    (bridge : DeBruijnNewmanWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Hilbert--Pólya reaches the witness only through an exact spectral realization
and effective resolvent comparison. -/
theorem hasWitness_of_hilbertPolya {N : ℕ}
    (bridge : HilbertPolyaWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- Berry--Keating reaches the witness only through an exact quantization,
self-adjointness, zero correspondence, and effective resolvent comparison. -/
theorem hasWitness_of_berryKeating {N : ℕ}
    (bridge : BerryKeatingWitnessBridge N)
    (source : bridge.claim.statement)
    (upgrade : bridge.deterministicUpgrade) :
    HasCanonicalRectangleEdgeWitness N :=
  WitnessBridge.hasWitness bridge source upgrade

/-- A complete registry type for all named routes. Constructing an inhabitant
would require one actual witness or bypass theorem per route; none is provided
here. -/
structure AllRouteConnections (N : ℕ) where
  lindelof : RouteConnection .lindelof N
  keatingSnaithMoments : RouteConnection .keatingSnaithMoments N
  shiftedMoments : RouteConnection .shiftedMoments N
  montgomeryPairCorrelation : RouteConnection .montgomeryPairCorrelation N
  gueSpacing : RouteConnection .gueSpacing N
  simplicity : RouteConnection .simplicity N
  gonekHejhalNegativeMoments : RouteConnection .gonekHejhalNegativeMoments N
  ratios : RouteConnection .ratios N
  deBruijnNewman : RouteConnection .deBruijnNewman N
  hilbertPolya : RouteConnection .hilbertPolya N
  berryKeating : RouteConnection .berryKeating N

end

end GRWTSK.RiemannHypothesis.CanonicalRectangleConjectureConnections
