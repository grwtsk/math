-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PoleKind.Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PoleKind.Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937","mathematical_subject":"Topology.GeneralTopology","original_sha256":"1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/PoleSurgery.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.AbsoluteCompactification
import Mathematics.Terrain.PointedMetricReconstruction
import Mathematics.Authority.AuditEvidence
import Mathlib.Logic.Relation
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.Compactness.Compact

/-!
# Certified finite surgery around a compactification pole

A finite surgery does not identify an entire ambient continuum.  It identifies
exactly the already-realized stable points in one declared metric
neighborhood, retains their certificates, and adjoins the pole as a finite
compact carrier.

A tower of such surgeries may witness that the pole is adherent to the stable
carrier.  The resulting closure is compact only in a certified compact
ambient realization.  These hypotheses are data; no finite sample is promoted
to a global compactification theorem.
-/


namespace GRWTSK.Topology.GeneralTopology.PoleKind.Variant1331fd2abb78766cabffabcf40f6dcb7cf4520982fb89bc6b55215745c47c937

namespace Mathematics.Projection

open Set
open Mathematics.Terrain.PointedMetricReconstruction

universe u v

inductive PoleKind
  | origin
  | infinity
  | spectral
  | residue
  | singularity
  | compactification
  | arithmeticBoundary
  deriving DecidableEq, Repr

/-- Raw pole data proposed for independent certification. -/
structure PoleCandidate (X : Type v) where
  poleId : ObjectAddress
  stage : Nat
  point : X
  kind : PoleKind
  neighborhoodId : ObjectAddress
  boundaryId : ObjectAddress
  invariantLedgerId : ObjectAddress
  certificateId : ObjectAddress

/--
One independently certified pole.

The constructor is private and the retained accepted evidence must target the
candidate's certificate object under one verified active snapshot.  Heat,
models, and callers can construct `PoleCandidate`, but not `CertifiedPole`.
-/
structure CertifiedPole (X : Type v) where
  private mk ::
  candidate : PoleCandidate X
  snapshot : ProjectionSnapshot
  certificationEvidence :
    Authority.AcceptedAuditEvidence snapshot
  evidence_targets_candidate :
    certificationEvidence.payload.artifactAddress =
      candidate.certificateId

namespace CertifiedPole

def poleId (pole : CertifiedPole X) : ObjectAddress :=
  pole.candidate.poleId

def stage (pole : CertifiedPole X) : Nat :=
  pole.candidate.stage

def point (pole : CertifiedPole X) : X :=
  pole.candidate.point

def kind (pole : CertifiedPole X) : PoleKind :=
  pole.candidate.kind

def neighborhoodId (pole : CertifiedPole X) : ObjectAddress :=
  pole.candidate.neighborhoodId

def boundaryId (pole : CertifiedPole X) : ObjectAddress :=
  pole.candidate.boundaryId

def invariantLedgerId (pole : CertifiedPole X) : ObjectAddress :=
  pole.candidate.invariantLedgerId

def certificateId (pole : CertifiedPole X) : ObjectAddress :=
  pole.candidate.certificateId

/-- Every certified pole exposes sealed evidence for its exact candidate. -/
theorem evidence_exact
    (pole : CertifiedPole X) :
    pole.certificationEvidence.payload.artifactAddress =
      pole.certificateId :=
  pole.evidence_targets_candidate

end CertifiedPole

/--
A finite pole family with pairwise disjoint closed neighborhoods.  Finiteness
is represented by the `Fintype` index, not inferred from a runtime list.
-/
structure FinitePoleSystem
    (Index : Type u) [Fintype Index]
    (X : Type v) [TopologicalSpace X] where
  pole : Index → CertifiedPole X
  neighborhood : Index → Set X
  pole_mem : ∀ index, (pole index).point ∈ neighborhood index
  neighborhood_open :
    ∀ index, IsOpen (neighborhood index)
  neighborhood_closure_compact :
    ∀ index, IsCompact (closure (neighborhood index))
  closures_pairwise_disjoint :
    ∀ {left right}, left ≠ right →
      Disjoint
        (closure (neighborhood left))
        (closure (neighborhood right))

namespace FinitePoleSystem

variable
    {Index : Type u} [Fintype Index]
    {X : Type v} [TopologicalSpace X]

/-- The certified surgery boundary of one pole neighborhood. -/
def boundary
    (system : FinitePoleSystem Index X) (index : Index) : Set X :=
  frontier (system.neighborhood index)

end FinitePoleSystem

/--
One finite, exact anchor surgery around a designated pole boundary.

`Stable` is the type of admitted stable anchors.  Its finite net carries the
additive boundary-metric error and every anchor certificate.
-/
structure FinitePoleSurgery
    (Stable : Type u) [DecidableEq Stable]
    (X : Type v) [MetricSpace X] where
  pole : CertifiedPole X
  neighborhood : Set X
  pole_mem : pole.point ∈ neighborhood
  neighborhood_open : IsOpen neighborhood
  neighborhood_closure_compact : IsCompact (closure neighborhood)
  anchors :
    CertifiedFiniteAnchorNet
      (Anchor := Stable)
      (frontier neighborhood)
  surgeryCertificate : ObjectAddress

namespace FinitePoleSurgery

variable
    {Stable : Type u} [DecidableEq Stable]
    {X : Type v} [MetricSpace X]

/-- The finite local compact carrier: the pole and every certified neighbor. -/
def carrier (surgery : FinitePoleSurgery Stable X) : Set X :=
  insert surgery.pole.point
    (surgery.anchors.realize '' (surgery.anchors.anchors : Set Stable))

theorem pole_mem_carrier (surgery : FinitePoleSurgery Stable X) :
    surgery.pole.point ∈ surgery.carrier :=
  mem_insert _ _

theorem realized_mem_carrier
    (surgery : FinitePoleSurgery Stable X)
    {point : Stable} (member : point ∈ surgery.anchors.anchors) :
    surgery.anchors.realize point ∈ surgery.carrier := by
  apply mem_insert_iff.mpr
  right
  exact ⟨point, member, rfl⟩

/-- Every finite pole surgery is a compact local carrier. -/
theorem carrier_isCompact (surgery : FinitePoleSurgery Stable X) :
    IsCompact surgery.carrier := by
  apply Set.Finite.isCompact
  exact
    (surgery.anchors.anchors.finite_toSet.image
      surgery.anchors.realize).insert surgery.pole.point

end FinitePoleSurgery

/-- A bijective boundary identification that preserves the full metric. -/
structure CertifiedBoundaryIsometry
    (SourceBoundary : Type u) [PseudoMetricSpace SourceBoundary]
    (CapBoundary : Type v) [PseudoMetricSpace CapBoundary] where
  equivalence : SourceBoundary ≃ CapBoundary
  distance_preserved :
    ∀ left right,
      dist (equivalence left) (equivalence right) = dist left right
  certificateId : ObjectAddress

namespace CertifiedBoundaryIsometry

variable
    {SourceBoundary : Type u} [PseudoMetricSpace SourceBoundary]
    {CapBoundary : Type v} [PseudoMetricSpace CapBoundary]

theorem isometry
    (gluing :
      CertifiedBoundaryIsometry SourceBoundary CapBoundary) :
    Isometry gluing.equivalence :=
  Isometry.of_dist_eq gluing.distance_preserved

end CertifiedBoundaryIsometry

universe w x

/-- Disjoint union of the unchanged exterior and every labeled cap. -/
abbrev SurgeryPiece
    (Exterior : Type u)
    (CapIndex : Type v)
    (Cap : CapIndex → Type w) :=
  Sum Exterior (Sigma Cap)

/--
The elementary boundary identifications that generate the surgery quotient.
No unrelated pair of points can be inserted into this relation.
-/
inductive SurgeryBoundaryIdentification
    {Exterior : Type u}
    {CapIndex : Type v}
    {Cap : CapIndex → Type w}
    (Boundary : CapIndex → Type x)
    (exteriorBoundary : ∀ index, Boundary index → Exterior)
    (capBoundary : ∀ index, Boundary index → Cap index) :
    SurgeryPiece Exterior CapIndex Cap →
      SurgeryPiece Exterior CapIndex Cap → Prop
  | identify (index) (point) :
      SurgeryBoundaryIdentification
        Boundary exteriorBoundary capBoundary
        (.inl (exteriorBoundary index point))
        (.inr ⟨index, capBoundary index point⟩)

/-- The exact equivalence relation generated by the boundary gluing maps. -/
def surgeryGluingSetoid
    {Exterior : Type u}
    {CapIndex : Type v}
    {Cap : CapIndex → Type w}
    (Boundary : CapIndex → Type x)
    (exteriorBoundary : ∀ index, Boundary index → Exterior)
    (capBoundary : ∀ index, Boundary index → Cap index) :
    Setoid (SurgeryPiece Exterior CapIndex Cap) :=
  Relation.EqvGen.setoid
    (SurgeryBoundaryIdentification
      Boundary exteriorBoundary capBoundary)

/--
Fixed topological gluing data.  The relation is generated from the displayed
boundary embeddings, and the two embeddings carry the same boundary metric.
-/
structure FixedSurgeryData
    (Exterior : Type u)
    (CapIndex : Type v)
    (Cap : CapIndex → Type w)
    [MetricSpace Exterior]
    [∀ index, MetricSpace (Cap index)] where
  Boundary : CapIndex → Type x
  exteriorBoundary : ∀ index, Boundary index → Exterior
  capBoundary : ∀ index, Boundary index → Cap index
  exteriorBoundary_injective :
    ∀ index, Function.Injective (exteriorBoundary index)
  capBoundary_injective :
    ∀ index, Function.Injective (capBoundary index)
  boundary_distance_preserved :
    ∀ index left right,
      dist (exteriorBoundary index left)
          (exteriorBoundary index right) =
        dist (capBoundary index left)
          (capBoundary index right)
  boundaryIsometryCertificates : CapIndex → ObjectAddress
  exteriorMetricDigest : Digest
  capMetricDigest : CapIndex → Digest

/-- The unchanged exterior of a finite pole system. -/
def finitePoleExterior
    {Index : Type u} [Fintype Index]
    {X : Type v} [TopologicalSpace X]
    (system : FinitePoleSystem Index X) : Set X :=
  Set.univ \ ⋃ index, system.neighborhood index

universe y z

/--
The fully coupled input to one finite pole surgery.

This record closes the gap between a list of poles and an unrelated quotient:
the exterior is exactly the complement of the declared neighborhoods; every
abstract gluing boundary is identified with the corresponding certified
frontier; every finite anchor is represented in that same boundary; and each
cap declares its complete interior and boundary.  Invariant changes and the
resulting carrier digest are part of the same certificate-bearing object.
-/
structure CertifiedFinitePoleSurgeryData
    (PoleIndex : Type u) [Fintype PoleIndex]
    (Stable : Type v) [DecidableEq Stable]
    (Ambient : Type w) [MetricSpace Ambient]
    (Exterior : Type x) [MetricSpace Exterior]
    (Cap : PoleIndex → Type y)
    [∀ index, MetricSpace (Cap index)]
    (poles : FinitePoleSystem PoleIndex Ambient) where
  fixed : FixedSurgeryData.{x, u, y, z} Exterior PoleIndex Cap
  exteriorRealization : Exterior → Ambient
  exteriorRealization_injective :
    Function.Injective exteriorRealization
  exteriorRealization_range :
    Set.range exteriorRealization = finitePoleExterior poles
  boundaryEquivalence :
    ∀ index, fixed.Boundary index ≃ poles.boundary index
  exteriorBoundary_agrees :
    ∀ index point,
      exteriorRealization (fixed.exteriorBoundary index point) =
        (boundaryEquivalence index point : Ambient)
  anchors :
    ∀ index,
      CertifiedFiniteAnchorNet
        (Anchor := Stable)
        (poles.boundary index)
  anchorRepresentative :
    ∀ index anchor,
      anchor ∈ (anchors index).anchors →
        fixed.Boundary index
  anchorRepresentative_agrees :
    ∀ index anchor membership,
      (boundaryEquivalence index
          (anchorRepresentative index anchor membership) : Ambient) =
        (anchors index).realize anchor
  capInterior : ∀ index, Set (Cap index)
  capInterior_open :
    ∀ index, IsOpen (capInterior index)
  capBoundary_exact :
    ∀ index,
      Set.range (fixed.capBoundary index) =
        frontier (capInterior index)
  cap_is_closure_of_interior :
    ∀ index, closure (capInterior index) = Set.univ
  cap_compact :
    ∀ index, IsCompact (Set.univ : Set (Cap index))
  preservedInvariantIds : List ObjectAddress
  changedInvariantIds : List ObjectAddress
  invariantClasses_disjoint :
    ∀ invariant,
      invariant ∈ preservedInvariantIds →
        invariant ∉ changedInvariantIds
  sourceCarrierDigest : Digest
  outputCarrierDigest : Digest
  anchorCorrespondenceDigest : Digest
  sourceCarrierDigest_valid : sourceCarrierDigest.Valid
  outputCarrierDigest_valid : outputCarrierDigest.Valid
  anchorCorrespondenceDigest_valid :
    anchorCorrespondenceDigest.Valid
  poleSystemCertificate : ObjectAddress
  capCertificates : PoleIndex → ObjectAddress
  surgeryCertificate : ObjectAddress
  authoritySnapshot : ProjectionSnapshot
  authorityEvidence :
    Authority.AcceptedAuditEvidence authoritySnapshot
  authority_targets_surgery :
    authorityEvidence.payload.artifactAddress =
      surgeryCertificate

/-- The post-surgery carrier is the quotient generated by the fixed gluing. -/
abbrev SurgeryCarrier
    {Exterior : Type u}
    {CapIndex : Type v}
    {Cap : CapIndex → Type w}
    [MetricSpace Exterior]
    [∀ index, MetricSpace (Cap index)]
    (data : FixedSurgeryData Exterior CapIndex Cap) :=
  Quotient
    (surgeryGluingSetoid
      data.Boundary data.exteriorBoundary data.capBoundary)

namespace FixedSurgeryData

variable
    {Exterior : Type u}
    {CapIndex : Type v}
    {Cap : CapIndex → Type w}
    [MetricSpace Exterior]
    [∀ index, MetricSpace (Cap index)]

/-- Exterior points in the generated quotient. -/
def exteriorPoint
    (data : FixedSurgeryData Exterior CapIndex Cap)
    (point : Exterior) :
    SurgeryCarrier data :=
  @Quotient.mk
    (SurgeryPiece Exterior CapIndex Cap)
    (surgeryGluingSetoid
      data.Boundary data.exteriorBoundary data.capBoundary)
    (.inl point)

/-- Points of one labeled cap in the generated quotient. -/
def capPoint
    (data : FixedSurgeryData Exterior CapIndex Cap)
    (index : CapIndex) (point : Cap index) :
    SurgeryCarrier data :=
  @Quotient.mk
    (SurgeryPiece Exterior CapIndex Cap)
    (surgeryGluingSetoid
      data.Boundary data.exteriorBoundary data.capBoundary)
    (.inr ⟨index, point⟩)

/-- The two copies of every boundary point are equal in the quotient. -/
theorem boundary_identified
    (data : FixedSurgeryData Exterior CapIndex Cap)
    (index : CapIndex) (point : data.Boundary index) :
    data.exteriorPoint (data.exteriorBoundary index point) =
      data.capPoint index (data.capBoundary index point) := by
  exact
    Quotient.sound
      (Relation.EqvGen.rel _ _
        (.identify index point))

/--
A pseudometric admitted by the gluing: it is dominated by the original
metric on every unchanged piece.
-/
structure AdmissibleQuotientPseudometric
    (data : FixedSurgeryData Exterior CapIndex Cap)
    (candidate :
      SurgeryCarrier data → SurgeryCarrier data → ℝ) : Prop where
  nonnegative : ∀ left right, 0 ≤ candidate left right
  self : ∀ point, candidate point point = 0
  symmetric :
    ∀ left right, candidate left right = candidate right left
  triangle :
    ∀ left middle right,
      candidate left right ≤
        candidate left middle + candidate middle right
  exterior_bound :
    ∀ left right,
      candidate (data.exteriorPoint left) (data.exteriorPoint right) ≤
        dist left right
  cap_bound :
    ∀ index left right,
      candidate (data.capPoint index left) (data.capPoint index right) ≤
        dist left right

/--
The induced quotient length metric is the greatest pseudometric dominated by
all component metrics.  This universal property fixes the metric independently
of a particular chain presentation.
-/
structure InducedQuotientLengthMetric
    (data : FixedSurgeryData Exterior CapIndex Cap) where
  distance :
    SurgeryCarrier data → SurgeryCarrier data → ℝ
  admissible :
    AdmissibleQuotientPseudometric data distance
  greatest :
    ∀ candidate,
      AdmissibleQuotientPseudometric data candidate →
        ∀ left right, candidate left right ≤ distance left right
  separates :
    ∀ {left right}, distance left right = 0 → left = right
  metric : MetricSpace (SurgeryCarrier data)
  metric_distance :
    ∀ left right,
      @dist (SurgeryCarrier data) metric.toDist left right =
        distance left right
  quotientLengthMetricCertificate : ObjectAddress

namespace InducedQuotientLengthMetric

variable
    {data : FixedSurgeryData Exterior CapIndex Cap}

/-- Two realizations of the induced quotient metric have the same distance. -/
theorem distance_unique
    (left right : InducedQuotientLengthMetric data) :
    left.distance = right.distance := by
  funext first second
  apply le_antisymm
  · exact right.greatest left.distance left.admissible first second
  · exact left.greatest right.distance right.admissible first second

/-- Carrier with one explicit induced-metric realization. -/
def RealizedCarrier
    (_realization : InducedQuotientLengthMetric data) :=
  SurgeryCarrier data

instance realizedMetric
    (realization : InducedQuotientLengthMetric data) :
    MetricSpace realization.RealizedCarrier :=
  realization.metric

/-- Canonical identity comparison between two realizations of fixed data. -/
def canonicalComparison
    (left right : InducedQuotientLengthMetric data) :
    left.RealizedCarrier → right.RealizedCarrier :=
  fun point ↦ point

/--
With exterior, caps, boundary maps, and the induced-length universal property
fixed, the canonical comparison between any two metric realizations is an
isometry.
-/
theorem fixedSurgeryData_unique
    (left right : InducedQuotientLengthMetric data) :
    Isometry (canonicalComparison left right) := by
  apply Isometry.of_dist_eq
  intro first second
  change
    @dist (SurgeryCarrier data) right.metric.toDist first second =
      @dist (SurgeryCarrier data) left.metric.toDist first second
  rw [right.metric_distance, left.metric_distance]
  exact
    congrFun (congrFun (distance_unique right left) first) second

end InducedQuotientLengthMetric

end FixedSurgeryData

/--
A shrinking finite-surgery tower plus an explicit adherence certificate.

The adherence field is essential: shrinking radii and finite samples alone do
not imply that the pole is a limit point of realized mathematics.
-/
structure CertifiedPoleCoverTower
    (Stable : Type u) [DecidableEq Stable]
    (X : Type v) [MetricSpace X] where
  realize : Stable → X
  pole : X
  stage : Nat → FinitePoleSurgery Stable X
  commonRealization :
    ∀ index, (stage index).anchors.realize = realize
  commonPole : ∀ index, (stage index).pole.point = pole
  radiiShrink :
    Filter.Tendsto
      (fun index ↦ (stage index).anchors.resolution)
      Filter.atTop
      (nhds 0)
  poleAdherent :
    pole ∈ closure (Set.range realize)

namespace CertifiedPoleCoverTower

variable
    {Stable : Type u} [DecidableEq Stable]
    {X : Type v} [MetricSpace X]

/-- The stable-point compactification inside the declared ambient carrier. -/
def compactification
    (tower : CertifiedPoleCoverTower Stable X) : Set X :=
  closure (Set.range tower.realize)

theorem pole_mem_compactification
    (tower : CertifiedPoleCoverTower Stable X) :
    tower.pole ∈ tower.compactification :=
  tower.poleAdherent

/--
In a compact ambient realization, the closure of the stable points is an
actual compact space.
-/
theorem compactification_isCompact
    [CompactSpace X]
    (tower : CertifiedPoleCoverTower Stable X) :
    IsCompact tower.compactification :=
  isClosed_closure.isCompact

end CertifiedPoleCoverTower

end Mathematics.Projection
