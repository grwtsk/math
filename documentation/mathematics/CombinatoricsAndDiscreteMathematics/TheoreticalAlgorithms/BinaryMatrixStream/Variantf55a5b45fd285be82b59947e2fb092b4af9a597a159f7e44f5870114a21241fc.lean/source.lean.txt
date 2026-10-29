-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixStream.Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.BinaryMatrixStream.Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86","mathematical_subject":"Computation.DataStructures","original_sha256":"471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Carrier/BinaryMatrixStream.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Carrier.BinaryMatrix

/-!
# Folder.Carrier.BinaryMatrixStream

Radiation role: core-carrier
BinaryMatrix spine: This module sits on or immediately beside Folder.Carrier.BinaryMatrix as finite carrier infrastructure for the radiation program.
Ontology: carrier.binary_matrix_stream
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: carrier
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BinaryMatrixStream.Variant471c52b83305ee1641fed73c59d887e14c38998e4abb91dc150fcb2e092a8f86

namespace Folder
namespace Carrier

structure BinaryMatrixStream where
  k : Nat
  layer : Fin k → BinaryMatrix

namespace BinaryMatrixStream

@[ext (iff := false)]
theorem ext
    {S T : BinaryMatrixStream}
    (hk : S.k = T.k)
    (h :
      ∀ i : Fin S.k,
        S.layer i = T.layer (Fin.cast hk i)) :
    S = T := by
  cases S with
  | mk k layer =>
    cases T with
    | mk k' layer' =>
      simp at hk
      subst hk
      simp at h
      have hlayer : layer = layer' := by
        funext i
        exact h i
      subst hlayer
      rfl

def length (s : BinaryMatrixStream) : Nat :=
  s.k

def get (s : BinaryMatrixStream) (i : Fin s.k) : BinaryMatrix :=
  s.layer i

def empty : BinaryMatrixStream where
  k := 0
  layer := fun i => nomatch i

def concat (a b : BinaryMatrixStream) : BinaryMatrixStream where
  k := a.k + b.k
  layer := fun i =>
    if h : i.val < a.k then
      a.layer ⟨i.val, h⟩
    else
      b.layer ⟨i.val - a.k, by
        have hi := i.isLt
        omega⟩

def restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k) :
    BinaryMatrixStream where
  k := len
  layer := fun i =>
    s.layer ⟨start + i.val, by
      have hi := i.isLt
      omega⟩

def mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream) :
    BinaryMatrixStream where
  k := s.k
  layer := fun i => f (s.layer i)

@[simp]
theorem length_empty : length empty = 0 :=
  rfl

@[simp]
theorem length_concat (a b : BinaryMatrixStream) :
    length (concat a b) = length a + length b :=
  rfl

@[simp]
theorem length_restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k) :
    length (restrict s start len h) = len :=
  rfl

@[simp]
theorem length_mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream) :
    length (mapMatrix f s) = length s :=
  rfl

@[simp]
theorem get_mapMatrix
    (f : BinaryMatrix → BinaryMatrix)
    (s : BinaryMatrixStream)
    (i : Fin s.k) :
    get (mapMatrix f s) i = f (get s i) :=
  rfl

theorem get_concat_left
    (a b : BinaryMatrixStream)
    (i : Fin a.k) :
    get (concat a b) ⟨i.val, by
      change i.val < a.k + b.k
      have hi : i.val < a.k := i.isLt
      omega⟩ = get a i := by
  simp [get, concat, i.isLt]

theorem get_concat_right
    (a b : BinaryMatrixStream)
    (j : Fin b.k) :
    get (concat a b) ⟨a.k + j.val, by
      change a.k + j.val < a.k + b.k
      have hj : j.val < b.k := j.isLt
      omega⟩ = get b j := by
  have hnot : ¬ a.k + j.val < a.k := by omega
  have hsub : a.k + j.val - a.k = j.val := by omega
  simp [get, concat, hnot, hsub]

theorem get_restrict
    (s : BinaryMatrixStream)
    (start len : Nat)
    (h : start + len ≤ s.k)
    (i : Fin len) :
    get (restrict s start len h) i =
    get s ⟨start + i.val, by omega⟩ :=
  rfl

/-
A BinaryMatrix is the finite binary word/state.

A BinaryMatrixStream is temporal: its index is time. The existing
`BinaryMatrixStream` is a finite time-window with `k` frames.
-/

/-- Temporal length of a finite stream window. Same data as `length`. -/
def timeLength (s : BinaryMatrixStream) : Nat :=
  s.k

/-- Frame at finite time index. Same data as `get`. -/
def frameAt (s : BinaryMatrixStream) (t : Fin s.k) : BinaryMatrix :=
  get s t

theorem timeLength_eq_length (s : BinaryMatrixStream) :
    timeLength s = length s := by
  rfl

theorem frameAt_eq_get (s : BinaryMatrixStream) (t : Fin s.k) :
    frameAt s t = get s t := by
  rfl

/--
Finite-width condition for a temporal BinaryMatrixStream.

All frames have the same matrix shape. This is the correct meaning of
"finite width": the spatial word-size is fixed while time advances.
-/
def HasFixedWidth (s : BinaryMatrixStream) : Prop :=
  ∃ m n : Nat, ∀ t : Fin s.k,
    (frameAt s t).m = m ∧ (frameAt s t).n = n

/-- A finite stream with zero time-length is vacuously fixed-width. -/
theorem empty_hasFixedWidth :
    HasFixedWidth empty := by
  refine ⟨0, 0, ?_⟩
  intro t
  exact Fin.elim0 t

/--
If every frame has shape `(m,n)`, then the stream has fixed width.
-/
theorem hasFixedWidth_of_shape
    (s : BinaryMatrixStream)
    (m n : Nat)
    (h : ∀ t : Fin s.k,
      (frameAt s t).m = m ∧ (frameAt s t).n = n) :
    HasFixedWidth s := by
  exact ⟨m, n, h⟩

/--
Mapping a shape-preserving matrix operation over time preserves fixed width.
-/
theorem mapMatrix_hasFixedWidth
    (f : BinaryMatrix → BinaryMatrix)
    (hf : ∀ M : BinaryMatrix, (f M).m = M.m ∧ (f M).n = M.n)
    (s : BinaryMatrixStream)
    (h : HasFixedWidth s) :
    HasFixedWidth (mapMatrix f s) := by
  rcases h with ⟨m, n, hs⟩
  refine ⟨m, n, ?_⟩
  intro t
  have hst := hs t
  have hft := hf (get s t)
  constructor
  · calc
      (frameAt (mapMatrix f s) t).m
          = (f (get s t)).m := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).m := hft.1
      _ = m := hst.1
  · calc
      (frameAt (mapMatrix f s) t).n
          = (f (get s t)).n := by
              rw [frameAt_eq_get, get_mapMatrix]
      _ = (get s t).n := hft.2
      _ = n := hst.2

/--
External objects may enter the matrix-only proof calculus only by being packed
into a `BinaryMatrix` frame.

The Lean proposition remains at the boundary as the adapter certificate; the
internal proof pipeline consumes only `frame`.
-/
structure ExternalAdapter where
  sourceLabel : String
  sourceStatement : Prop
  sourceCertified : sourceStatement
  frame : BinaryMatrix

/-- Shader-pipeline name for an external boundary adapter. -/
structure MatrixExternalAdapter where
  sourceLabel : String
  sourceStatement : Prop
  sourceCertified : sourceStatement
  frame : BinaryMatrix

namespace MatrixExternalAdapter

def toExternalAdapter (A : MatrixExternalAdapter) : ExternalAdapter where
  sourceLabel := A.sourceLabel
  sourceStatement := A.sourceStatement
  sourceCertified := A.sourceCertified
  frame := A.frame

end MatrixExternalAdapter

/--
One internal logical transition.

No semantic input or output appears here. The theorem-step interface is purely
`BinaryMatrix -> BinaryMatrix`.
-/
structure MatrixProofStep where
  name : String
  input : BinaryMatrix
  output : BinaryMatrix
  transition : BinaryMatrix → BinaryMatrix
  realizes_transition : transition input = output

namespace MatrixProofStep

def run (S : MatrixProofStep) : BinaryMatrix :=
  S.transition S.input

theorem run_eq_output
    (S : MatrixProofStep) :
    S.run = S.output := by
  simpa [run] using S.realizes_transition

end MatrixProofStep

/--
A theorem frame is a theorem-as-word.

The statement, hypotheses, conclusion, size estimate, and determinant/fiber
metadata are all carried by `BinaryMatrix` fields.
-/
structure MatrixTheoremFrame where
  theoremId : String
  statementFrame : BinaryMatrix
  hypothesisFrame : BinaryMatrix
  conclusionFrame : BinaryMatrix
  sizeFrame : BinaryMatrix
  determinantFrame : BinaryMatrix

/-- Shader-pipeline name for a theorem-as-frame payload. -/
structure MatrixProofFrame where
  theoremId : String
  statementFrame : BinaryMatrix
  hypothesisFrame : BinaryMatrix
  conclusionFrame : BinaryMatrix
  sizeFrame : BinaryMatrix
  determinantFrame : BinaryMatrix

namespace MatrixProofFrame

def toMatrixTheoremFrame (F : MatrixProofFrame) : MatrixTheoremFrame where
  theoremId := F.theoremId
  statementFrame := F.statementFrame
  hypothesisFrame := F.hypothesisFrame
  conclusionFrame := F.conclusionFrame
  sizeFrame := F.sizeFrame
  determinantFrame := F.determinantFrame

end MatrixProofFrame

/--
A theorem proof is a temporal `BinaryMatrixStream`.

The stream is the proof trace. Its first frame is the theorem statement; its
last frame is the conclusion, with any padding or budget frames included.
-/
structure MatrixTheoremProof where
  theoremFrame : MatrixTheoremFrame
  stream : BinaryMatrixStream
  startsAtStatement : Prop
  endsAtConclusion : Prop
  stepsConsistent : Prop
  startsAtStatement_certified : startsAtStatement
  endsAtConclusion_certified : endsAtConclusion
  stepsConsistent_certified : stepsConsistent

/--
Internal theorem interface.

This is the matrix-native internal theorem object: `BinaryMatrix` in,
`BinaryMatrix` out, plus a `BinaryMatrixStream` proof trace.
-/
structure InternalMatrixTheorem where
  name : String
  input : BinaryMatrix
  output : BinaryMatrix
  proofStream : BinaryMatrixStream
  transform : BinaryMatrix → BinaryMatrix
  transform_eq_output : transform input = output
  proofConsistent : Prop
  proofConsistent_certified : proofConsistent

namespace InternalMatrixTheorem

/-- Internal theorem application is just a matrix transition. -/
def run (T : InternalMatrixTheorem) : BinaryMatrix :=
  T.transform T.input

theorem run_eq_output
    (T : InternalMatrixTheorem) :
    T.run = T.output := by
  simpa [run] using T.transform_eq_output

end InternalMatrixTheorem

/--
Shader-pipeline internal theorem interface.

Internal theorem flow is matrix-native: `BinaryMatrix` in, `BinaryMatrix` out,
with a `BinaryMatrixStream` proof trace.
-/
structure MatrixInternalTheorem where
  name : String
  input : BinaryMatrix
  output : BinaryMatrix
  proofStream : BinaryMatrixStream
  transform : BinaryMatrix → BinaryMatrix
  transform_eq_output : transform input = output
  proofConsistent : Prop
  proofConsistent_certified : proofConsistent

namespace MatrixInternalTheorem

def run (T : MatrixInternalTheorem) : BinaryMatrix :=
  T.transform T.input

theorem run_eq_output
    (T : MatrixInternalTheorem) :
    T.run = T.output :=
  T.transform_eq_output

def toInternalMatrixTheorem
    (T : MatrixInternalTheorem) : InternalMatrixTheorem where
  name := T.name
  input := T.input
  output := T.output
  proofStream := T.proofStream
  transform := T.transform
  transform_eq_output := T.transform_eq_output
  proofConsistent := T.proofConsistent
  proofConsistent_certified := T.proofConsistent_certified

end MatrixInternalTheorem

/--
Generic matrix-only façade for an existing theorem-facing structure.

`Source` may be a trace package, continuation map, determinant propagation
record, homology contract, or any other semantic boundary object. The internal
public theorem field is matrix-native.
-/
structure MatrixTheoremAdapter (Source : Type) where
  source : Source
  inputFrame : BinaryMatrix
  outputFrame : BinaryMatrix
  proofStream : BinaryMatrixStream
  internalTheorem : MatrixInternalTheorem
  adapterSound : Prop
  adapterSound_certified : adapterSound

/-- A fixed logical-time budget for a theorem proof stream. -/
structure MatrixProofBudget where
  logicalSteps : Nat
  frameRows : Nat
  frameCols : Nat

/--
A proof stream has uniform theorem size if every frame has the same spatial
shape and the stream has the prescribed logical length.
-/
structure UniformMatrixProofStream where
  budget : MatrixProofBudget
  stream : BinaryMatrixStream
  length_eq_budget : stream.k = budget.logicalSteps
  uniform_shape :
    ∀ t : Fin stream.k,
      (stream.layer t).m = budget.frameRows ∧
      (stream.layer t).n = budget.frameCols

/--
Weighted proof flow: instead of forcing equal logical step count, assign a
cost/weight to each frame.
-/
structure WeightedMatrixProofStream where
  stream : BinaryMatrixStream
  weight : Fin stream.k → Nat
  conjectureSizeEstimate : BinaryMatrix → Nat

/--
Dynamic determinant/fiber data carried entirely as `BinaryMatrix` frames.
-/
structure MatrixFiberDeterminantBridge where
  baseFrame : BinaryMatrix
  fiberFrame : BinaryMatrix
  determinantFrame : BinaryMatrix
  timeStream : BinaryMatrixStream
  bridgeConsistent : Prop
  bridgeConsistent_certified : bridgeConsistent

/--
A dynamic theorem proof may update determinant/fiber data at every proof frame.
-/
structure DynamicMatrixTheoremTrace extends MatrixTheoremProof where
  fiberDeterminant : MatrixFiberDeterminantBridge

/--
A shader-pipeline dynamic theorem proof.

The theorem itself is the matrix-native internal theorem; determinant/fiber
state is carried by matrix frames and a temporal matrix stream.
-/
structure DynamicMatrixTheoremProof where
  «theorem» : MatrixInternalTheorem
  fiberDeterminant : MatrixFiberDeterminantBridge

inductive MatrixInterfaceKind where
  | internal
  | mathlibAdapter
  | externalAdapter
  | classicalAnchorAdapter
deriving DecidableEq, Repr

structure MatrixInterfaceAuditEntry where
  declarationName : String
  kind : MatrixInterfaceKind
  hasBinaryMatrixInput : Prop
  hasBinaryMatrixOutput : Prop
  hasBinaryMatrixStreamProof : Prop
  certified :
    hasBinaryMatrixInput ∧
    hasBinaryMatrixOutput ∧
    hasBinaryMatrixStreamProof

theorem matrix_internal_entry_has_matrix_io
    (E : MatrixInterfaceAuditEntry)
    (_h : E.kind = MatrixInterfaceKind.internal) :
    E.hasBinaryMatrixInput ∧
    E.hasBinaryMatrixOutput ∧
    E.hasBinaryMatrixStreamProof :=
  E.certified

structure MatrixOnlyInternalTheoremAudit where
  checkedDeclarations : List String
  allInternalMatrixNative : Prop
  allInternalMatrixNative_certified : allInternalMatrixNative
  mathlibOnlyThroughAdapters : Prop
  mathlibOnlyThroughAdapters_certified : mathlibOnlyThroughAdapters
  externalsOnlyThroughAdapters : Prop
  externalsOnlyThroughAdapters_certified : externalsOnlyThroughAdapters

theorem matrix_only_internal_audit_passes
    (A : MatrixOnlyInternalTheoremAudit) :
    A.allInternalMatrixNative ∧
    A.mathlibOnlyThroughAdapters ∧
    A.externalsOnlyThroughAdapters :=
  ⟨ A.allInternalMatrixNative_certified
  , A.mathlibOnlyThroughAdapters_certified
  , A.externalsOnlyThroughAdapters_certified
  ⟩

end BinaryMatrixStream

/--
An infinite temporal BinaryMatrix stream.

This is the true "marches over time" object: time is `Nat`, and every
time-slice is a BinaryMatrix word/state.
-/
structure InfiniteBinaryMatrixStream where
  frame : Nat → BinaryMatrix

namespace InfiniteBinaryMatrixStream

/-- Frame at natural time. -/
def frameAt (S : InfiniteBinaryMatrixStream) (t : Nat) : BinaryMatrix :=
  S.frame t

/--
Finite-width condition for an infinite temporal stream.

There is one spatial matrix shape `(m,n)` used at every time.
-/
def HasFixedWidth (S : InfiniteBinaryMatrixStream) : Prop :=
  ∃ m n : Nat, ∀ t : Nat,
    (S.frameAt t).m = m ∧ (S.frameAt t).n = n

/--
The first `k` time-slices of an infinite stream form the existing finite
`BinaryMatrixStream`.
-/
def «prefix» (S : InfiniteBinaryMatrixStream) (k : Nat) :
    BinaryMatrixStream where
  k := k
  layer := fun t => S.frameAt t.val

theorem prefix_timeLength
    (S : InfiniteBinaryMatrixStream) (k : Nat) :
    BinaryMatrixStream.timeLength (S.prefix k) = k := by
  rfl

theorem prefix_frameAt
    (S : InfiniteBinaryMatrixStream) (k : Nat) (t : Fin k) :
    BinaryMatrixStream.frameAt (S.prefix k) t = S.frameAt t.val := by
  rfl

/--
Finite width descends from an infinite temporal stream to every finite
time-window.
-/
theorem prefix_hasFixedWidth
    (S : InfiniteBinaryMatrixStream)
    (hS : HasFixedWidth S)
    (k : Nat) :
    BinaryMatrixStream.HasFixedWidth (S.prefix k) := by
  rcases hS with ⟨m, n, h⟩
  refine ⟨m, n, ?_⟩
  intro t
  exact h t.val

end InfiniteBinaryMatrixStream

end Carrier
end Folder
