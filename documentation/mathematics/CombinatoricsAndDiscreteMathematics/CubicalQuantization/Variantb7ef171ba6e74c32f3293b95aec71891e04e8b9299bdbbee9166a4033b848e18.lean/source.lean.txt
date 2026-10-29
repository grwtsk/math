-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CubicalFaceOrientation.Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CubicalFaceOrientation.Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/Surface/ContinuousAssurance/CubicalQuantization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.Quantization
import Surface.ContinuousAssurance.Claim
import Surface.ContinuousAssurance.ProgressiveEvidence
import Surface.ContinuousAssurance.QuantizationDecomposition
import Surface.ContinuousAssurance.QuantizationLevel

/-!
# Isolated finite semi-cubical quantization

This module supplies an optional finite semi-cubical indexing capability.  A
cell family is finite in every degree, empty above a declared maximum degree,
and equipped with the two dimension-lowering faces in each coordinate.  The
face law is stored as data, so calling a collection of sites “cubical” requires
an actual commutation witness.

The construction is deliberately not called a manifold and does not alter the
project's strict simplicial profile.  Turning these cells into surgical sites
requires a separate, explicit site-universe adapter.

Uniform cubical fields and skeletons are exact finite products of multibit
Boolean matrices.  Nonuniform profiles retain every cell's resolution and
matrix shape in the result type; unequal resolutions are never silently
coerced.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CubicalFaceOrientation.Variant86dcf18298703f17a4d4c8eb78591d088043da2e456d9d95751c20a072e3dc69

universe u

namespace Surface.ContinuousAssurance

open scoped BigOperators

/-- The two faces in one semi-cubical coordinate direction. -/
inductive CubicalFaceOrientation
  | lower
  | upper
  deriving DecidableEq, Repr

instance : Fintype CubicalFaceOrientation where
  elems := {.lower, .upper}
  complete orientation := by cases orientation <;> simp

namespace CubicalFaceOrientation

/-- A stable machine label for serialized face records. -/
def label : CubicalFaceOrientation → String
  | .lower => "lower"
  | .upper => "upper"

end CubicalFaceOrientation

/-- Re-index the smaller coordinate in the left side of a cubical face law. -/
def cubicalLowerIndex
    {k : Nat}
    (i j : Fin (k + 2))
    (hij : i.val < j.val) :
    Fin (k + 1) :=
  ⟨i.val, by omega⟩

/-- Re-index `j` after deleting the earlier coordinate `i`. -/
def cubicalShiftedIndex
    {k : Nat}
    (i j : Fin (k + 2))
    (hij : i.val < j.val) :
    Fin (k + 1) :=
  ⟨j.val - 1, by omega⟩

/--
A finite semi-cubical decomposition with stable cell identities and evidence.

`Cell k` is empty above `maxDimension`.  A face of a `(k+1)`-cell is a
`k`-cell by its type, and `face_commutes` is the standard semi-cubical law
`partial_i^epsilon partial_j^delta =
 partial_(j-1)^delta partial_i^epsilon` for `i < j`.
-/
structure FiniteCubicalDecomposition where
  maxDimension : Nat
  Cell : Nat → Type u
  cellFintype : ∀ k, Fintype (Cell k)
  cellDecidableEq : ∀ k, DecidableEq (Cell k)
  noCellAboveMaximum :
    ∀ {k}, maxDimension < k → IsEmpty (Cell k)
  face :
    ∀ {k},
      Fin (k + 1) →
      CubicalFaceOrientation →
      Cell (k + 1) →
      Cell k
  face_commutes :
    ∀ {k}
      (i j : Fin (k + 2))
      (hij : i.val < j.val)
      (epsilon delta : CubicalFaceOrientation)
      (cell : Cell (k + 2)),
      face (cubicalLowerIndex i j hij) epsilon
          (face j delta cell) =
        face (cubicalShiftedIndex i j hij) delta
          (face i epsilon cell)
  cellIdentity : ∀ {k}, Cell k → ArtifactIdentity
  cellIdentity_injective :
    ∀ {k}, Function.Injective (@cellIdentity k)
  cellIdentity_globally_injective :
    Function.Injective
      (fun cell : Sigma Cell => cellIdentity cell.2)
  subjectIdentity : ∀ {k}, Cell k → ArtifactIdentity
  cellEvidence : ∀ {k}, Cell k → ProgressiveEvidence

instance instCubicalCellFintype
    (decomposition : FiniteCubicalDecomposition)
    (k : Nat) : Fintype (decomposition.Cell k) :=
  decomposition.cellFintype k

instance instCubicalCellDecidableEq
    (decomposition : FiniteCubicalDecomposition)
    (k : Nat) : DecidableEq (decomposition.Cell k) :=
  decomposition.cellDecidableEq k

namespace FiniteCubicalDecomposition

variable (decomposition : FiniteCubicalDecomposition)

/-- The exact number of cells in degree `k`. -/
def cellCount
    (decomposition : FiniteCubicalDecomposition)
    (k : Nat) : Nat :=
  Fintype.card (decomposition.Cell k)

/-- No cell can inhabit a degree above the declared maximum. -/
theorem cell_dimension_le
    {k : Nat}
    (cell : decomposition.Cell k) :
    k ≤ decomposition.maxDimension := by
  by_contra h
  have above : decomposition.maxDimension < k := Nat.lt_of_not_ge h
  exact decomposition.noCellAboveMaximum above |>.false cell

/-- The direct face relation, with coordinate and orientation existentially hidden. -/
def IsFace
    {k : Nat}
    (child : decomposition.Cell k)
    (parent : decomposition.Cell (k + 1)) : Prop :=
  ∃ (i : Fin (k + 1)) (orientation : CubicalFaceOrientation),
    decomposition.face i orientation parent = child

/-- Direct face incidence is decidable from the finite cell data. -/
instance isFaceDecidable
    {k : Nat}
    (child : decomposition.Cell k)
    (parent : decomposition.Cell (k + 1)) :
    Decidable (decomposition.IsFace child parent) := by
  unfold IsFace
  infer_instance

/-- A face record exposes the stable identity of the resulting lower cell. -/
def faceIdentity
    {k : Nat}
    (i : Fin (k + 1))
    (orientation : CubicalFaceOrientation)
    (parent : decomposition.Cell (k + 1)) :
    ArtifactIdentity :=
  decomposition.cellIdentity (decomposition.face i orientation parent)

/-- Face identity is exactly the identity assigned to the typed face cell. -/
@[simp]
theorem cubical_face_identity
    {k : Nat}
    (i : Fin (k + 1))
    (orientation : CubicalFaceOrientation)
    (parent : decomposition.Cell (k + 1)) :
    decomposition.faceIdentity i orientation parent =
      decomposition.cellIdentity (decomposition.face i orientation parent) :=
  rfl

/-- Stable cell identities distinguish cells within every exact degree. -/
theorem cell_identity_injective
    {k : Nat} :
    Function.Injective (@decomposition.cellIdentity k) :=
  decomposition.cellIdentity_injective

/-- Stable identities distinguish cells even when their degrees differ. -/
theorem cell_identity_globally_injective :
    Function.Injective
      (fun cell : Sigma decomposition.Cell =>
        decomposition.cellIdentity cell.2) :=
  decomposition.cellIdentity_globally_injective

/--
The actual semi-cubical face-commutation law, exposed as a public theorem
rather than only as a structure projection.
-/
theorem face_commutation
    {k : Nat}
    (i j : Fin (k + 2))
    (hij : i.val < j.val)
    (epsilon delta : CubicalFaceOrientation)
    (cell : decomposition.Cell (k + 2)) :
    decomposition.face (cubicalLowerIndex i j hij) epsilon
        (decomposition.face j delta cell) =
      decomposition.face (cubicalShiftedIndex i j hij) delta
        (decomposition.face i epsilon cell) :=
  decomposition.face_commutes i j hij epsilon delta cell

/-- Number of cells in all degrees from zero through `degree`. -/
def cellCountThrough
    (decomposition : FiniteCubicalDecomposition)
    (degree : Nat) : Nat :=
  ∑ k ∈ Finset.range (degree + 1),
    FiniteCubicalDecomposition.cellCount decomposition k

/-- Extending the skeleton by one degree adds exactly that degree's cells. -/
theorem cellCountThrough_succ
    (degree : Nat) :
    FiniteCubicalDecomposition.cellCountThrough decomposition (degree + 1) =
      FiniteCubicalDecomposition.cellCountThrough decomposition degree +
        FiniteCubicalDecomposition.cellCount decomposition (degree + 1) := by
  simp [FiniteCubicalDecomposition.cellCountThrough,
    Finset.sum_range_succ]

end FiniteCubicalDecomposition

/--
View one degree as a generic finite decomposition.  This forgets faces on
purpose; it does not itself create a surgical-site universe.
-/
def FiniteCubicalDecomposition.degreeDecomposition
    (decomposition : FiniteCubicalDecomposition)
    (degree : Nat)
    (identity : ArtifactIdentity) : FiniteDecomposition where
  Piece := decomposition.Cell degree
  pieceFintype := decomposition.cellFintype degree
  pieceDecEq := decomposition.cellDecidableEq degree
  identity := identity
  subjectAt := decomposition.subjectIdentity
  localEvidence := fun cell =>
    let evidence := decomposition.cellEvidence cell
    evidence.identity :: evidence.derivesFrom

/--
An explicit adapter that makes one bounded cubical degree available to the
surgical-selection layer.  Eligibility and stable ordering are supplied by
the `SurgicalSiteUniverse`; neither is inferred from cell or resolution data.
-/
structure CubicalSurgicalSiteInstantiation
    (decomposition : FiniteCubicalDecomposition)
    (degree : Nat) where
  degreeBound : degree ≤ decomposition.maxDimension
  decompositionIdentity : ArtifactIdentity
  siteUniverse :
    SurgicalSiteUniverse
      (decomposition.degreeDecomposition degree decompositionIdentity)

/-- A uniform multibit quantized matrix attached to every degree-`k` cell. -/
abbrev CubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition.{u})
    (k bits rows columns : Nat) : Type u :=
  decomposition.Cell k → BinMat.QuantizedMatrix bits rows columns

/--
The uniform skeleton through a degree.  The recursive product is definitionally
the product of fields in degrees `0, ..., degree`.
-/
def CubicalQuantizedSkeleton
    (decomposition : FiniteCubicalDecomposition.{u})
    (bits rows columns : Nat) : Nat → Type u
  | 0 => CubicalQuantizedField decomposition 0 bits rows columns
  | degree + 1 =>
      CubicalQuantizedSkeleton decomposition bits rows columns degree ×
        CubicalQuantizedField decomposition (degree + 1) bits rows columns

namespace CubicalQuantizedField

/-- A uniform degree field contains exactly `2^(bits*rows*columns*cellCount)` values. -/
theorem card_cubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition.{u})
    (k bits rows columns : Nat) :
    Fintype.card (CubicalQuantizedField decomposition k bits rows columns) =
      2 ^
        (bits * rows * columns *
          FiniteCubicalDecomposition.cellCount decomposition k) := by
  change Fintype.card
      (decomposition.Cell k → BinMat.QuantizedMatrix bits rows columns) = _
  rw [Fintype.card_fun, BinMat.card_quantizedMatrix]
  simp only [FiniteCubicalDecomposition.cellCount]
  rw [← pow_mul]

end CubicalQuantizedField

namespace CubicalQuantizedSkeleton

noncomputable instance skeletonFintype
    (decomposition : FiniteCubicalDecomposition.{u})
    (bits rows columns degree : Nat) :
    Fintype (CubicalQuantizedSkeleton decomposition bits rows columns degree) := by
  induction degree with
  | zero =>
      change Fintype
        (CubicalQuantizedField decomposition 0 bits rows columns)
      infer_instance
  | succ degree ih =>
      letI := ih
      change Fintype
        (CubicalQuantizedSkeleton decomposition bits rows columns degree ×
          CubicalQuantizedField decomposition (degree + 1) bits rows columns)
      infer_instance

/-- The uniform skeleton cardinality is the product cardinality across all cells. -/
theorem card_cubicalQuantizedSkeleton
    (decomposition : FiniteCubicalDecomposition.{u})
    (degree bits rows columns : Nat) :
    Fintype.card
        (CubicalQuantizedSkeleton decomposition bits rows columns degree) =
      2 ^
        (bits * rows * columns *
          FiniteCubicalDecomposition.cellCountThrough decomposition degree) := by
  induction degree with
  | zero =>
      rw [show FiniteCubicalDecomposition.cellCountThrough decomposition 0 =
          FiniteCubicalDecomposition.cellCount decomposition 0 by
        simp [FiniteCubicalDecomposition.cellCountThrough]]
      exact CubicalQuantizedField.card_cubicalQuantizedField
        decomposition 0 bits rows columns
  | succ degree ih =>
      change Fintype.card
          (CubicalQuantizedSkeleton decomposition bits rows columns degree ×
            CubicalQuantizedField decomposition (degree + 1) bits rows columns) = _
      rw [Fintype.card_prod, ih,
        CubicalQuantizedField.card_cubicalQuantizedField]
      rw [← pow_add]
      rw [← Nat.mul_add]
      rw [← FiniteCubicalDecomposition.cellCountThrough_succ]

end CubicalQuantizedSkeleton

/-- Public uniform degree-field cardinality theorem. -/
theorem card_cubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition.{u})
    (k bits rows columns : Nat) :
    Fintype.card (CubicalQuantizedField decomposition k bits rows columns) =
      2 ^
        (bits * rows * columns *
          FiniteCubicalDecomposition.cellCount decomposition k) :=
  CubicalQuantizedField.card_cubicalQuantizedField
    decomposition k bits rows columns

/-- Public uniform bounded-skeleton cardinality theorem. -/
theorem card_cubicalQuantizedSkeleton
    (decomposition : FiniteCubicalDecomposition.{u})
    (degree bits rows columns : Nat) :
    Fintype.card
        (CubicalQuantizedSkeleton decomposition bits rows columns degree) =
      2 ^
        (bits * rows * columns *
          FiniteCubicalDecomposition.cellCountThrough decomposition degree) :=
  CubicalQuantizedSkeleton.card_cubicalQuantizedSkeleton
    decomposition degree bits rows columns

/-- Cellwise dimensions and resolutions for a bounded emitted cubical skeleton. -/
structure CubicalQuantizationProfile
    (decomposition : FiniteCubicalDecomposition) where
  maximumEmittedDegree : Nat
  degreeBound : maximumEmittedDegree ≤ decomposition.maxDimension
  resolutionAt :
    ∀ k,
      k ≤ maximumEmittedDegree →
      decomposition.Cell k →
      ResolutionBits
  matrixRowsAt :
    ∀ k,
      k ≤ maximumEmittedDegree →
      decomposition.Cell k →
      Nat
  matrixColumnsAt :
    ∀ k,
      k ≤ maximumEmittedDegree →
      decomposition.Cell k →
      Nat

namespace CubicalQuantizationProfile

variable
    {decomposition : FiniteCubicalDecomposition}
    (profile : CubicalQuantizationProfile decomposition)

/-- A bounded degree index carries the proof required by all profile lookups. -/
theorem degreeProof
    (k : Fin (profile.maximumEmittedDegree + 1)) :
    k.val ≤ profile.maximumEmittedDegree := by
  omega

/-- Resolution of one exact cell. -/
def cellResolution
    (k : Fin (profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) : ResolutionBits :=
  profile.resolutionAt k.val (profile.degreeProof k) cell

/-- Row count of one exact cell. -/
def cellRows
    (k : Fin (profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) : Nat :=
  profile.matrixRowsAt k.val (profile.degreeProof k) cell

/-- Column count of one exact cell. -/
def cellColumns
    (k : Fin (profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val) : Nat :=
  profile.matrixColumnsAt k.val (profile.degreeProof k) cell

end CubicalQuantizationProfile

/--
A nonuniform higher-order field whose result type records degree, cell,
resolution, row count, and column count.
-/
abbrev HigherOrderCubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition)
    (profile : CubicalQuantizationProfile decomposition) : Type u :=
  ∀ (k : Fin (profile.maximumEmittedDegree + 1))
    (cell : decomposition.Cell k.val),
    BinMat.QuantizedMatrix
      (profile.cellResolution k cell).value
      (profile.cellRows k cell)
      (profile.cellColumns k cell)

/--
The exact number of independently represented bits in a nonuniform bounded
cubical field: every represented degree and every cell contributes its own
`bits * rows * columns` term.
-/
def CubicalQuantizationProfile.representedBitCount
    {decomposition : FiniteCubicalDecomposition}
    (profile : CubicalQuantizationProfile decomposition) : Nat :=
  ∑ k : Fin (profile.maximumEmittedDegree + 1),
    ∑ cell : decomposition.Cell k.val,
      (profile.cellResolution k cell).value *
        profile.cellRows k cell * profile.cellColumns k cell

/--
The nonuniform higher-order field has precisely `2` raised to the sum of the
cellwise bit counts.  This is the requested nonuniform cardinality formula,
not a uniform-profile approximation.
-/
theorem card_higherOrderCubicalQuantizedField
    (decomposition : FiniteCubicalDecomposition)
    (profile : CubicalQuantizationProfile decomposition) :
    Fintype.card (HigherOrderCubicalQuantizedField decomposition profile) =
      2 ^ profile.representedBitCount := by
  let exponent := fun
      (k : Fin (profile.maximumEmittedDegree + 1))
      (cell : decomposition.Cell k.val) =>
    (profile.cellResolution k cell).value *
      profile.cellRows k cell * profile.cellColumns k cell
  have inner (k : Fin (profile.maximumEmittedDegree + 1)) :
      (∏ cell : decomposition.Cell k.val, 2 ^ exponent k cell) =
        2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) := by
    simpa only [Finset.mem_univ, true_implies] using
      (Finset.prod_pow_eq_pow_sum
        (Finset.univ : Finset (decomposition.Cell k.val))
        (exponent k) 2)
  have outer :
      (∏ k : Fin (profile.maximumEmittedDegree + 1),
        2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell)) =
      2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
        ∑ cell : decomposition.Cell k.val, exponent k cell) := by
    simpa only [Finset.mem_univ, true_implies] using
      (Finset.prod_pow_eq_pow_sum
        (Finset.univ : Finset (Fin (profile.maximumEmittedDegree + 1)))
        (fun k => ∑ cell : decomposition.Cell k.val, exponent k cell) 2)
  change Fintype.card
      ((k : Fin (profile.maximumEmittedDegree + 1)) →
        (cell : decomposition.Cell k.val) →
          BinMat.QuantizedMatrix
            (profile.cellResolution k cell).value
            (profile.cellRows k cell)
            (profile.cellColumns k cell)) =
    2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
      ∑ cell : decomposition.Cell k.val, exponent k cell)
  calc
    Fintype.card
        ((k : Fin (profile.maximumEmittedDegree + 1)) →
          (cell : decomposition.Cell k.val) →
            BinMat.QuantizedMatrix
              (profile.cellResolution k cell).value
              (profile.cellRows k cell)
              (profile.cellColumns k cell)) =
        ∏ k : Fin (profile.maximumEmittedDegree + 1),
          Fintype.card
            ((cell : decomposition.Cell k.val) →
              BinMat.QuantizedMatrix
                (profile.cellResolution k cell).value
                (profile.cellRows k cell)
                (profile.cellColumns k cell)) := Fintype.card_pi
    _ = ∏ k : Fin (profile.maximumEmittedDegree + 1),
          2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) := by
      apply Finset.prod_congr rfl
      intro k _member
      calc
        Fintype.card
            ((cell : decomposition.Cell k.val) →
              BinMat.QuantizedMatrix
                (profile.cellResolution k cell).value
                (profile.cellRows k cell)
                (profile.cellColumns k cell)) =
            ∏ cell : decomposition.Cell k.val,
              Fintype.card
                (BinMat.QuantizedMatrix
                  (profile.cellResolution k cell).value
                  (profile.cellRows k cell)
                  (profile.cellColumns k cell)) := Fintype.card_pi
        _ = ∏ cell : decomposition.Cell k.val, 2 ^ exponent k cell := by
          apply Finset.prod_congr rfl
          intro cell _cellMember
          exact BinMat.card_quantizedMatrix
            (profile.cellResolution k cell).value
            (profile.cellRows k cell)
            (profile.cellColumns k cell)
        _ = 2 ^ (∑ cell : decomposition.Cell k.val, exponent k cell) :=
          inner k
    _ = 2 ^ (∑ k : Fin (profile.maximumEmittedDegree + 1),
          ∑ cell : decomposition.Cell k.val, exponent k cell) := outer

/-- How unequal face resolutions are related; none is inferred implicitly. -/
inductive QuantizationResolutionRelation
  | equal
  | coarsening
  | refinement
  | commonComparison
  deriving DecidableEq, Repr

/-- An explicit resolution comparison, including its traceable transformation. -/
structure QuantizationResolutionComparison where
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  relation : QuantizationResolutionRelation
  transformation : TraceableTransformation
  equalRelationSound :
    relation = .equal → sourceResolution = targetResolution

/-- A checked face restriction between a parent value and a face value. -/
structure QuantizationFaceCompatibility where
  parentCell : ArtifactIdentity
  faceCell : ArtifactIdentity
  dimension : Nat
  faceIndex : Nat
  orientation : CubicalFaceOrientation
  resolutionComparison : QuantizationResolutionComparison
  checkedPredicate : Prop
  checked : checkedPredicate
  evidence : List ArtifactIdentity

/-- A stable obstruction produced by an incompatible face comparison. -/
structure QuantizationFaceObstruction where
  identity : ArtifactIdentity
  parentCell : ArtifactIdentity
  faceCell : ArtifactIdentity
  dimension : Nat
  faceIndex : Nat
  orientation : CubicalFaceOrientation
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  comparison : TransformationContract
  knownLosses : List String
  affectedClaims : List ArtifactIdentity
  evidence : ProgressiveEvidence
  sourceEvidence : ProgressiveEvidence
  sourceClaimStatus : ClaimStatus
  derives_from_source : sourceEvidence.identity ∈ evidence.derivesFrom
  assuranceLevel : AssuranceLevel
  authority : AuthorityClass
  status : ClaimStatus
  assurance_matches_evidence : assuranceLevel = evidence.level
  authority_matches_evidence : authority = evidence.authority
  assurance_matches_source : assuranceLevel = sourceEvidence.level
  authority_matches_source : authority = sourceEvidence.authority
  status_matches_source : status = sourceClaimStatus
  generatedRequiresAttention : Bool
  requiresAttention_spec : generatedRequiresAttention = true
  reductionStage : String

/-- A missing comparison map is retained as an unresolved, stable obligation. -/
structure QuantizationFaceObligation where
  identity : ArtifactIdentity
  parentCell : ArtifactIdentity
  faceCell : ArtifactIdentity
  dimension : Nat
  faceIndex : Nat
  orientation : CubicalFaceOrientation
  sourceResolution : ResolutionBits
  targetResolution : ResolutionBits
  affectedClaims : List ArtifactIdentity
  evidence : ProgressiveEvidence
  reductionStage : String

namespace QuantizationFaceObstruction

/-- A face obstruction cannot strengthen the authority of its source. -/
theorem authority_eq_source
    (obstruction : QuantizationFaceObstruction) :
    obstruction.authority = obstruction.sourceEvidence.authority :=
  obstruction.authority_matches_source

/-- A face obstruction cannot advance the assurance level of its source. -/
theorem assurance_eq_source
    (obstruction : QuantizationFaceObstruction) :
    obstruction.assuranceLevel = obstruction.sourceEvidence.level :=
  obstruction.assurance_matches_source

/-- A face obstruction cannot reclassify its source claim. -/
theorem claim_status_eq_source
    (obstruction : QuantizationFaceObstruction) :
    obstruction.status = obstruction.sourceClaimStatus :=
  obstruction.status_matches_source

end QuantizationFaceObstruction

/-- Every face check reports one of the three explicit outcomes. -/
inductive CubicalFaceCheck
  | compatible (witness : QuantizationFaceCompatibility)
  | obstructed (obstruction : QuantizationFaceObstruction)
  | unresolved (obligation : QuantizationFaceObligation)

/--
A decidable face comparison produces either the exact checked witness or the
stable obstruction corresponding to the negative decision.  The compatible
builder is tied to the very predicate being decided.
-/
structure DecidableQuantizationFaceComparison where
  compatibilityPredicate : Prop
  decision : Decidable compatibilityPredicate
  compatibleResult : compatibilityPredicate → QuantizationFaceCompatibility
  compatible_predicate_exact :
    ∀ proof,
      (compatibleResult proof).checkedPredicate = compatibilityPredicate
  obstructedResult : ¬ compatibilityPredicate → QuantizationFaceObstruction

/--
One declared face-check request.  `none` means that the comparison map is
missing and therefore yields the supplied unresolved obligation.
-/
structure CubicalFaceCheckRequest where
  comparison : Option DecidableQuantizationFaceComparison
  missingComparison : QuantizationFaceObligation

/-- Compute a face result from the declared decidable compatibility predicate. -/
def CubicalFaceCheckRequest.check
    (request : CubicalFaceCheckRequest) : CubicalFaceCheck :=
  match request.comparison with
  | none => .unresolved request.missingComparison
  | some comparison =>
      letI := comparison.decision
      if proof : comparison.compatibilityPredicate then
        .compatible (comparison.compatibleResult proof)
      else
        .obstructed (comparison.obstructedResult proof)

namespace CubicalFaceCheck

/-- Proposition that a check carries a checked compatibility witness. -/
def HasCompatibility : CubicalFaceCheck → Prop
  | .compatible _ => True
  | _ => False

/-- Proposition that a check carries a stable incompatibility obstruction. -/
def HasObstruction : CubicalFaceCheck → Prop
  | .obstructed _ => True
  | _ => False

/-- Proposition that a check carries an unresolved comparison obligation. -/
def HasUnresolvedObligation : CubicalFaceCheck → Prop
  | .unresolved _ => True
  | _ => False

/--
Every check retains source lineage and cannot promote authority, assurance, or
claim status.  Compatible witnesses cite the source identity; obstruction and
obligation evidence additionally retain the complete source evidence boundary.
-/
def PreservesSource
    (source : ProgressiveEvidence)
    (status : ClaimStatus) : CubicalFaceCheck → Prop
  | .compatible witness => source.identity ∈ witness.evidence
  | .obstructed obstruction =>
      source.identity ∈ obstruction.evidence.derivesFrom ∧
        obstruction.evidence.authority = source.authority ∧
        obstruction.evidence.level = source.level ∧
        obstruction.status = status
  | .unresolved obligation =>
      source.identity ∈ obligation.evidence.derivesFrom ∧
        obligation.evidence.authority = source.authority ∧
        obligation.evidence.level = source.level

end CubicalFaceCheck

@[simp]
theorem CubicalFaceCheckRequest.check_missing
    (obligation : QuantizationFaceObligation) :
    (CubicalFaceCheckRequest.mk none obligation).check =
      .unresolved obligation :=
  rfl

theorem CubicalFaceCheckRequest.check_compatible
    (comparison : DecidableQuantizationFaceComparison)
    (obligation : QuantizationFaceObligation)
    (proof : comparison.compatibilityPredicate) :
    (CubicalFaceCheckRequest.mk (some comparison) obligation).check =
      .compatible (comparison.compatibleResult proof) := by
  simp only [CubicalFaceCheckRequest.check]
  letI := comparison.decision
  exact dif_pos proof

theorem CubicalFaceCheckRequest.check_obstructed
    (comparison : DecidableQuantizationFaceComparison)
    (obligation : QuantizationFaceObligation)
    (failure : ¬ comparison.compatibilityPredicate) :
    (CubicalFaceCheckRequest.mk (some comparison) obligation).check =
      .obstructed (comparison.obstructedResult failure) := by
  simp only [CubicalFaceCheckRequest.check]
  letI := comparison.decision
  exact dif_neg failure

/-- Face checking cannot erase an incompatibility or a missing comparison. -/
theorem cubical_face_compatibility_or_obstruction
    (result : CubicalFaceCheck) :
    result.HasCompatibility ∨
      result.HasObstruction ∨
      result.HasUnresolvedObligation := by
  cases result <;> simp [CubicalFaceCheck.HasCompatibility,
    CubicalFaceCheck.HasObstruction,
    CubicalFaceCheck.HasUnresolvedObligation]

/-- Public face-identity projection for capability audits. -/
@[simp]
theorem cubical_face_identity
    (decomposition : FiniteCubicalDecomposition)
    {k : Nat}
    (i : Fin (k + 1))
    (orientation : CubicalFaceOrientation)
    (parent : decomposition.Cell (k + 1)) :
    decomposition.faceIdentity i orientation parent =
      decomposition.cellIdentity (decomposition.face i orientation parent) :=
  decomposition.cubical_face_identity i orientation parent

/-- Public capability-audit theorem for genuine semi-cubical face commutation. -/
theorem cubical_face_commutation
    (decomposition : FiniteCubicalDecomposition)
    {k : Nat}
    (i j : Fin (k + 2))
    (hij : i.val < j.val)
    (epsilon delta : CubicalFaceOrientation)
    (cell : decomposition.Cell (k + 2)) :
    decomposition.face (cubicalLowerIndex i j hij) epsilon
        (decomposition.face j delta cell) =
      decomposition.face (cubicalShiftedIndex i j hij) delta
        (decomposition.face i epsilon cell) :=
  decomposition.face_commutation i j hij epsilon delta cell

/-- Stable identities are injective within every exact cubical degree. -/
theorem cubical_cell_identity_injective
    (decomposition : FiniteCubicalDecomposition)
    {k : Nat} :
    Function.Injective (@decomposition.cellIdentity k) :=
  decomposition.cell_identity_injective

/-- Cell identities are globally injective across the dependent cell family. -/
theorem cubical_cell_identity_globally_injective
    (decomposition : FiniteCubicalDecomposition) :
    Function.Injective
      (fun cell : Sigma decomposition.Cell =>
        decomposition.cellIdentity cell.2) :=
  decomposition.cell_identity_globally_injective

end Surface.ContinuousAssurance
