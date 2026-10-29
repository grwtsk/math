-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsignedWangZahlDiffuseCertificate.Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.UnsignedWangZahlDiffuseCertificate.Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Surface/Core/TypeII/WangZahlDiffuse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.PrimeWalkWangZahlGeometry
import Mathlib.Tactic

/-!
# Unsigned Wang--Zahl diffuse admissibility

This module packages the concrete geometric hypotheses for one application of
the Wang--Zahl union-volume lower bound.  The certificate is deliberately
unsigned: it contains no arithmetic coefficients, packet readout, signed
pairing, Type II estimate, or GRH consequence.

The underlying `EuclideanShadedTubeFamily` already supplies:

* a positive common tube thickness `delta` and positive shading density
  `lambda`;
* measurable shadings contained in closed tubes inside the unit ball;
* a common finite nonzero tube volume;
* essential distinctness of different tubes; and
* aggregate `lambda`-density.

The wrapper below rules out the empty-family loophole, normalizes every
individual shading to the same density, records finite nonzero convex-Wolff
control, and carries one explicit unsigned union-volume theorem.  A separate
direction-separation predicate is provided for constructions which verify
distinctness through directions rather than overlap volume, but essential
distinctness from the underlying family is already sufficient here.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnsignedWangZahlDiffuseCertificate.Variant7d913745132451ecaf52638a850adabcb0e801a791f6a8380140ffde4739f9bf

public section

namespace Surface.Core.TypeII

noncomputable section

open MeasureTheory Set
open scoped ENNReal
open Surface.Core.PrimeWalkSpatialEncoding
open Surface.Core.PrimeWalkTwoScaleGrains
open Surface.Core.PrimeWalkWangZahlGeometry

/-! ## Optional direction separation -/

/-- Quantitative separation of the oriented directions of all distinct tubes
in a finite shaded family.  This is an unsigned geometric predicate. -/
@[expose]
def TubeDirectionsSeparatedAt
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) (separation : ℝ) : Prop :=
  0 < separation ∧
    ∀ first ∈ family.tubes, ∀ second ∈ family.tubes, first ≠ second →
      separation ≤
        ‖(family.tube first).direction - (family.tube second).direction‖

/-- The geometric alternatives normally used to prevent duplicate tubes:
either quantitative direction separation, or the literal essential-
distinctness overlap inequality from the Wang--Zahl tube-family API. -/
@[expose]
def DirectionSeparatedOrEssentiallyDistinct
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) : Prop :=
  (∃ separation : ℝ, TubeDirectionsSeparatedAt family separation) ∨
    ∀ first ∈ family.tubes, ∀ second ∈ family.tubes, first ≠ second →
      volume ((family.tube first).carrier ∩ (family.tube second).carrier) ≤
        (1 / 2 : ℝ≥0∞) *
          max (volume (family.tube first).carrier)
            (volume (family.tube second).carrier)

/-- Every `EuclideanShadedTubeFamily` satisfies the second distinctness
alternative by construction. -/
@[surface_novel, surface_published]
theorem EuclideanShadedTubeFamily.directionSeparatedOrEssentiallyDistinct
    {Tube : Type*} [DecidableEq Tube]
    (family : EuclideanShadedTubeFamily Tube) :
    DirectionSeparatedOrEssentiallyDistinct family := by
  exact Or.inr family.essentiallyDistinct

/-! ## Non-vacuous unsigned diffuse certificate -/

/-- Geometric data for one non-vacuous, unsigned Wang--Zahl application.

The exact per-tube shading normalization is the usual dyadic-pigeonholed
form: every active shading has volume `lambda * tubeVolume`.  Requiring a
nonempty family and a finite nonzero Wolff constant prevents the lower-bound
surface from being discharged by an empty tube set or a degenerate control
constant.

`unionLowerBound` is an explicit supplied theorem at this scale.  It is not
derived from the remaining fields in this module, because doing so requires
the external Wang--Zahl theorem (including its sufficiently-small-scale
quantifier). -/
structure UnsignedWangZahlDiffuseCertificate
    (Tube : Type*) [DecidableEq Tube] where
  family : EuclideanShadedTubeFamily Tube
  tubes_nonempty : family.tubes.Nonempty

  /-- Normalized Kakeya scales lie in the standard interval `(0, 1]`. -/
  delta_le_one : family.delta ≤ 1
  lambda_le_one : family.lambda ≤ 1

  /-- Every shading has the same certified relative density. -/
  normalized_shading_volume : ∀ tube ∈ family.tubes,
    volume (family.shading tube) =
      ENNReal.ofReal family.lambda * family.tubeVolume

  /-- Finite, nonzero Katz--Tao convex-Wolff/non-clustering control. -/
  wolffConstant : ℝ≥0∞
  wolffConstant_ne_zero : wolffConstant ≠ 0
  wolffConstant_ne_top : wolffConstant ≠ ∞
  convexWolff : KatzTaoConvexWolffAtMost family wolffConstant

  /-- Parameters and conclusion of one unsigned union-volume theorem. -/
  epsilon : ℝ
  epsilon_pos : 0 < epsilon
  pWZ : ℝ
  pWZ_nonneg : 0 ≤ pWZ
  unionLowerBound :
    WangZahlUnionLowerBoundAt family epsilon pWZ wolffConstant

/-- Positivity facts inherited from the underlying concrete tube family. -/
@[surface_novel, surface_published]
theorem UnsignedWangZahlDiffuseCertificate.scales_pos
    {Tube : Type*} [DecidableEq Tube]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube) :
    0 < certificate.family.delta ∧ 0 < certificate.family.lambda :=
  ⟨certificate.family.delta_pos, certificate.family.lambda_pos⟩

/-- Every active normalized shading has nonzero volume.  This rules out a
second common vacuity: nonempty labels carrying only null shadings. -/
@[surface_novel, surface_published]
theorem UnsignedWangZahlDiffuseCertificate.shading_volume_ne_zero
    {Tube : Type*} [DecidableEq Tube]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube)
    (tube : Tube) (htube : tube ∈ certificate.family.tubes) :
    volume (certificate.family.shading tube) ≠ 0 := by
  rw [certificate.normalized_shading_volume tube htube]
  exact mul_ne_zero
    (ENNReal.ofReal_ne_zero_iff.mpr certificate.family.lambda_pos)
    certificate.family.tubeVolume_ne_zero

/-- The bounded-region condition is the literal unit-ball containment already
carried by the concrete Wang--Zahl family. -/
@[surface_novel, surface_published]
theorem UnsignedWangZahlDiffuseCertificate.tube_subset_unitBall
    {Tube : Type*} [DecidableEq Tube]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube)
    (tube : Tube) (htube : tube ∈ certificate.family.tubes) :
    (certificate.family.tube tube).carrier ⊆
      Metric.closedBall (0 : SpatialPoint) 1 :=
  certificate.family.contained_unitBall tube htube

/-- The certificate exposes essential distinctness even when a construction
does not provide a separate quantitative direction-spacing theorem. -/
@[surface_novel, surface_published]
theorem UnsignedWangZahlDiffuseCertificate.geometrically_distinct
    {Tube : Type*} [DecidableEq Tube]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube) :
    DirectionSeparatedOrEssentiallyDistinct certificate.family :=
  EuclideanShadedTubeFamily.directionSeparatedOrEssentiallyDistinct
    certificate.family

/-- Checked spelling of the supplied unsigned union-volume lower bound. -/
@[surface_novel, surface_published]
theorem UnsignedWangZahlDiffuseCertificate.union_volume_lower_bound
    {Tube : Type*} [DecidableEq Tube]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube) :
    wangZahlLowerTerm certificate.family certificate.epsilon certificate.pWZ
        certificate.wolffConstant ≤
      volume (finsetShadingUnion certificate.family.tubes
        certificate.family.shading) :=
  certificate.unionLowerBound

/-! ## Optional two-scale-grains compatibility -/

/-- Adapter from an unsigned diffuse certificate to a supplied robust
two-scale-grains decomposition.  This is optional extra geometry: the fine
tubes and their shadings must be exactly those of the Wang--Zahl family, and
the two scale/density parameters must agree.

No grain decomposition is manufactured here. -/
structure UnsignedWangZahlGrainRefinement
    {Tube CoarseTube Grain : Type*}
    [DecidableEq Tube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (certificate : UnsignedWangZahlDiffuseCertificate Tube) where
  grains : RobustTwoScaleGrains SpatialPoint Tube CoarseTube Grain
    (volume : Measure SpatialPoint)
  fineTubes_eq : grains.fineTubes = certificate.family.tubes
  fineShading_eq : ∀ tube, grains.fineShading tube = certificate.family.shading tube
  delta_eq : grains.parameters.delta = certificate.family.delta
  lambda_eq : grains.parameters.lambda = certificate.family.lambda

end

end Surface.Core.TypeII
