-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AmbientPacketPermPowPayloadBits.Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AmbientPacketPermPowPayloadBits.Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450","mathematical_subject":"Logic.Foundations","original_sha256":"e7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/FilesystemDynamics/FirstReturn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FilesystemDynamics.Grading
import DAF.FiniteDynamics.Permutation
import DAF.FiniteDynamics.GradedFirstReturn
import BinaryMatrix.SATReduction

/-!
# First return on valid filesystem encodings

An ambient finite-field row permutation need not preserve canonical padding or
the image of a selected filesystem serializer.  Rather than silently assuming
invariance, this module applies the generic finite first-return construction:
each valid ambient state advances to the next valid state in its finite orbit.
This finiteness argument proves totality and bijectivity, not efficiency: an
ambient orbit can pass through many invalid states before its next valid
return.

The construction is performed independently at every row grade, then
transported through the lossless snapshot representation.  Consequently it is
a permutation of every value of the declared `Snapshot` model, preserves the
row count exactly, and—because the ambient action leaves its length register
fixed—also preserves `payloadBits`.  These structural conclusions do not imply
SAC, independence, low differential concentration, or preservation of any
filesystem edit topology; those require separate proofs.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AmbientPacketPermPowPayloadBits.Variante7080020fa9d0afa66b148b6e465fb4c220d8603cfbbd8359493f9a1e7ae1450

namespace FilesystemCodec

universe u v

variable {Snapshot : Type u}
variable {F : Type v}
variable {r : Nat}

/-! ## Per-grade first return -/

/-- Iterating an ambient row action never changes its payload-length register. -/
@[simp]
theorem ambientPacketPerm_pow_payloadBits
    (rowPerm : Equiv.Perm (Fin k → F))
    (t : Nat)
    (a : AmbientPacketFiber F r k) :
    (((ambientPacketPerm rowPerm) ^ t) a).payloadBits = a.payloadBits := by
  induction t generalizing a with
  | zero => rfl
  | succ t ih =>
      simp only [pow_succ, Equiv.Perm.mul_apply]
      exact ih _

variable [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]

/-- First return on the valid ambient image at one fixed row grade. -/
noncomputable def ambientValidFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    Equiv.Perm (CodecValidAmbientType C E k) :=
  FirstReturn.firstReturnPerm
    (ambientPacketPerm (rowPerm k))
    (CodecValidAmbient C E k)

/-- Ambient first return retains the framing-length coordinate. -/
@[simp]
theorem ambientValidFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (a : CodecValidAmbientType C E k) :
    ((ambientValidFirstReturnPerm C E rowPerm k a).1.payloadBits) =
      a.1.payloadBits := by
  rw [ambientValidFirstReturnPerm,
    FirstReturn.firstReturnPerm_apply_val]
  exact ambientPacketPerm_pow_payloadBits
    (rowPerm k)
    (FirstReturn.firstReturnTime
      (ambientPacketPerm (rowPerm k))
      (CodecValidAmbient C E k) a)
    a.1

/-- Conjugate per-grade ambient first return back to valid packet fibers. -/
noncomputable def validPacketFiberFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    Equiv.Perm (C.ValidPacketFiber k) :=
  let code := validPacketFiberEquivAmbientImage C E k
  (code.trans (ambientValidFirstReturnPerm C E rowPerm k)).trans code.symm

@[simp]
theorem validPacketFiberFirstReturnPerm_toAmbient
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (p : C.ValidPacketFiber k) :
    validPacketFiberEquivAmbientImage C E k
        (validPacketFiberFirstReturnPerm C E rowPerm k p) =
      ambientValidFirstReturnPerm C E rowPerm k
        (validPacketFiberEquivAmbientImage C E k p) := by
  simp [validPacketFiberFirstReturnPerm]

/-- Per-grade first return preserves the retained payload length. -/
@[simp]
theorem validPacketFiberFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (p : C.ValidPacketFiber k) :
    (validPacketFiberFirstReturnPerm C E rowPerm k p).1.1.payloadBits =
      p.1.1.payloadBits := by
  have hcode := congrArg
    (fun a : CodecValidAmbientType C E k => a.1.payloadBits.val)
    (validPacketFiberFirstReturnPerm_toAmbient C E rowPerm k p)
  have hreturn := congrArg Fin.val
    (ambientValidFirstReturnPerm_payloadBits C E rowPerm k
      (validPacketFiberEquivAmbientImage C E k p))
  exact hcode.trans hreturn

/-! ## Graded packet first return -/

/-- Fiberwise ambient-image codes assembled without changing the row grade. -/
noncomputable def gradedValidPacketAmbientEquiv
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r) :
    (Σ k, C.ValidPacketFiber k) ≃
      (Σ k, CodecValidAmbientType C E k) :=
  Equiv.sigmaCongrRight fun k => validPacketFiberEquivAmbientImage C E k

/-- Assemble valid-packet first return over every dependent row grade. -/
noncomputable def gradedValidPacketFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F)) :
    Equiv.Perm (Σ k, C.ValidPacketFiber k) :=
  GradedFirstReturn.transportGradedFirstReturn
    (fun k => AmbientPacketFiber F r k)
    (fun k => CodecValidAmbient C E k)
    (fun k => ambientPacketPerm (rowPerm k))
    (gradedValidPacketAmbientEquiv C E)

/-- Graded filesystem first return preserves the dependent row index. -/
@[simp]
theorem gradedValidPacketFirstReturnPerm_grade
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (p : Σ k, C.ValidPacketFiber k) :
    (gradedValidPacketFirstReturnPerm C E rowPerm p).1 = p.1 := by
  exact GradedFirstReturn.transportGradedFirstReturn_preserves_grade
    (fun k => AmbientPacketFiber F r k)
    (fun k => CodecValidAmbient C E k)
    (fun k => ambientPacketPerm (rowPerm k))
    (gradedValidPacketAmbientEquiv C E) p

/-- The value action is exactly the per-grade packet first-return action. -/
@[simp]
theorem gradedValidPacketFirstReturnPerm_value
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (p : C.ValidPacketFiber k) :
    (gradedValidPacketFirstReturnPerm C E rowPerm ⟨k, p⟩).2 =
      validPacketFiberFirstReturnPerm C E rowPerm k p :=
  rfl

/-- Graded first return preserves payload length inside every grade. -/
@[simp]
theorem gradedValidPacketFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (p : Σ k, C.ValidPacketFiber k) :
    (gradedValidPacketFirstReturnPerm C E rowPerm p).2.1.1.payloadBits =
      p.2.1.1.payloadBits := by
  rcases p with ⟨k, p⟩
  exact validPacketFiberFirstReturnPerm_payloadBits C E rowPerm k p

/-! ## Transport to snapshots -/

/--
The filesystem permutation obtained by transporting graded first return
through the exact snapshot/valid-packet representation.
-/
noncomputable def filesystemFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F)) :
    Equiv.Perm Snapshot :=
  let code := C.snapshotGradeEquiv
  (code.trans (gradedValidPacketFirstReturnPerm C E rowPerm)).trans code.symm

/-- The transported filesystem first-return action is bijective. -/
theorem filesystemFirstReturnPerm_bijective
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F)) :
    Function.Bijective (filesystemFirstReturnPerm C E rowPerm) :=
  (filesystemFirstReturnPerm C E rowPerm).bijective

/-- Explicit application formula for the transported snapshot permutation. -/
@[simp]
theorem filesystemFirstReturnPerm_apply
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (snapshot : Snapshot) :
    filesystemFirstReturnPerm C E rowPerm snapshot =
      C.snapshotGradeEquiv.symm
        (gradedValidPacketFirstReturnPerm C E rowPerm
          (C.snapshotGradeEquiv snapshot)) :=
  rfl

/-- Snapshot first return preserves the encoded packet's row grade. -/
theorem filesystemFirstReturnPerm_rows
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (snapshot : Snapshot) :
    (C.encode (filesystemFirstReturnPerm C E rowPerm snapshot)).rows =
      (C.encode snapshot).rows := by
  change
    (C.snapshotGradeEquiv
      (filesystemFirstReturnPerm C E rowPerm snapshot)).1 =
      (C.snapshotGradeEquiv snapshot).1
  rw [filesystemFirstReturnPerm_apply, C.snapshotGradeEquiv.apply_symm_apply]
  exact gradedValidPacketFirstReturnPerm_grade C E rowPerm _

/-- Snapshot first return also preserves the exact payload-length register. -/
theorem filesystemFirstReturnPerm_payloadBits
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (snapshot : Snapshot) :
    (C.encode
        (filesystemFirstReturnPerm C E rowPerm snapshot)).payloadBits =
      (C.encode snapshot).payloadBits := by
  change
    (C.snapshotGradeEquiv
      (filesystemFirstReturnPerm C E rowPerm snapshot)).2.1.1.payloadBits =
      (C.snapshotGradeEquiv snapshot).2.1.1.payloadBits
  rw [filesystemFirstReturnPerm_apply, C.snapshotGradeEquiv.apply_symm_apply]
  exact gradedValidPacketFirstReturnPerm_payloadBits C E rowPerm _

/-- Explicit inverse formula: decode the inverse graded first-return action. -/
theorem filesystemFirstReturnPerm_symm_apply
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (snapshot : Snapshot) :
    (filesystemFirstReturnPerm C E rowPerm).symm snapshot =
      C.snapshotGradeEquiv.symm
        ((gradedValidPacketFirstReturnPerm C E rowPerm).symm
          (C.snapshotGradeEquiv snapshot)) :=
  rfl

/-! ## Fixed-grade finite dynamics

Cycle data are meaningful on one fixed finite grade.  The following
permutation and comparison theorems use type-changing transport, so the
ambient valid image, valid packet fiber, and snapshot fiber are proved to be
three presentations of the same finite dynamics.  No global zeta object is
formed over the unbounded sum of all row grades.
-/

/-- Transport fixed-grade packet first return to the corresponding snapshots. -/
noncomputable def snapshotFiberFirstReturnPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    Equiv.Perm (SnapshotFiber C k) :=
  FinitePermutationDynamics.transport
    (snapshotFiberEquivValidPacketFiber C k).symm
    (validPacketFiberFirstReturnPerm C E rowPerm k)

/-- Fixed-point counts agree between valid packets and their ambient image. -/
theorem fixedPointCount_validPacketFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.fixedPointCount
        (validPacketFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.fixedPointCount
        (ambientValidFirstReturnPerm C E rowPerm k) t := by
  simpa [validPacketFiberFirstReturnPerm,
    FinitePermutationDynamics.transport] using
    (FinitePermutationDynamics.fixedPointCount_transport
      (validPacketFiberEquivAmbientImage C E k).symm
      (ambientValidFirstReturnPerm C E rowPerm k) t)

/-- Primitive-cycle counts agree between valid packets and their ambient image. -/
theorem cycleCount_validPacketFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.cycleCount
        (validPacketFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.cycleCount
        (ambientValidFirstReturnPerm C E rowPerm k) t := by
  simpa [validPacketFiberFirstReturnPerm,
    FinitePermutationDynamics.transport] using
    (FinitePermutationDynamics.cycleCount_transport
      (validPacketFiberEquivAmbientImage C E k).symm
      (ambientValidFirstReturnPerm C E rowPerm k) t)

/-- Euler-factor exponent data agree between packets and the ambient image. -/
theorem cycleEulerFactorData_validPacketFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    FinitePermutationDynamics.cycleEulerFactorData
        (validPacketFiberFirstReturnPerm C E rowPerm k) =
      FinitePermutationDynamics.cycleEulerFactorData
        (ambientValidFirstReturnPerm C E rowPerm k) := by
  simpa [validPacketFiberFirstReturnPerm,
    FinitePermutationDynamics.transport] using
    (FinitePermutationDynamics.cycleEulerFactorData_transport
      (validPacketFiberEquivAmbientImage C E k).symm
      (ambientValidFirstReturnPerm C E rowPerm k))

/-- Fixed-point counts agree between snapshot and packet fibers. -/
theorem fixedPointCount_snapshotFiber_eq_validPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.fixedPointCount
        (snapshotFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.fixedPointCount
        (validPacketFiberFirstReturnPerm C E rowPerm k) t := by
  exact FinitePermutationDynamics.fixedPointCount_transport
    (snapshotFiberEquivValidPacketFiber C k).symm
    (validPacketFiberFirstReturnPerm C E rowPerm k) t

/-- Primitive-cycle counts agree between snapshot and packet fibers. -/
theorem cycleCount_snapshotFiber_eq_validPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.cycleCount
        (snapshotFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.cycleCount
        (validPacketFiberFirstReturnPerm C E rowPerm k) t := by
  exact FinitePermutationDynamics.cycleCount_transport
    (snapshotFiberEquivValidPacketFiber C k).symm
    (validPacketFiberFirstReturnPerm C E rowPerm k) t

/-- Euler-factor exponent data agree between snapshot and packet fibers. -/
theorem cycleEulerFactorData_snapshotFiber_eq_validPacketFiber
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    FinitePermutationDynamics.cycleEulerFactorData
        (snapshotFiberFirstReturnPerm C E rowPerm k) =
      FinitePermutationDynamics.cycleEulerFactorData
        (validPacketFiberFirstReturnPerm C E rowPerm k) := by
  exact FinitePermutationDynamics.cycleEulerFactorData_transport
    (snapshotFiberEquivValidPacketFiber C k).symm
    (validPacketFiberFirstReturnPerm C E rowPerm k)

/-- Fixed-point counts coincide in the snapshot and ambient presentations. -/
theorem fixedPointCount_snapshotFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.fixedPointCount
        (snapshotFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.fixedPointCount
        (ambientValidFirstReturnPerm C E rowPerm k) t :=
  (fixedPointCount_snapshotFiber_eq_validPacketFiber
    C E rowPerm k t).trans
      (fixedPointCount_validPacketFiber_eq_ambientValid
        C E rowPerm k t)

/-- Primitive-cycle counts coincide in the snapshot and ambient presentations. -/
theorem cycleCount_snapshotFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.cycleCount
        (snapshotFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.cycleCount
        (ambientValidFirstReturnPerm C E rowPerm k) t :=
  (cycleCount_snapshotFiber_eq_validPacketFiber
    C E rowPerm k t).trans
      (cycleCount_validPacketFiber_eq_ambientValid
        C E rowPerm k t)

/-- Euler-factor data coincide in the snapshot and ambient presentations. -/
theorem cycleEulerFactorData_snapshotFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat) :
    FinitePermutationDynamics.cycleEulerFactorData
        (snapshotFiberFirstReturnPerm C E rowPerm k) =
      FinitePermutationDynamics.cycleEulerFactorData
        (ambientValidFirstReturnPerm C E rowPerm k) :=
  (cycleEulerFactorData_snapshotFiber_eq_validPacketFiber
    C E rowPerm k).trans
      (cycleEulerFactorData_validPacketFiber_eq_ambientValid
        C E rowPerm k)

/-! ## Conditional fixed-width SAT corollary

SAT uniqueness is available only after supplying an explicit bit encoding of
one fixed snapshot grade and a verified circuit implementing the transported
permutation.  Neither a bit width nor a circuit is inferred from the abstract
filesystem codec.
-/

/-- Transport one fixed-grade snapshot permutation to an explicit bit code. -/
noncomputable def filesystemGradeBitPerm
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (code : SnapshotFiber C k ≃ SATReduction.Bits n) :
    Equiv.Perm (SATReduction.Bits n) :=
  FinitePermutationDynamics.transport code
    (snapshotFiberFirstReturnPerm C E rowPerm k)

/--
A circuit verified against the explicitly bit-encoded fixed-grade permutation
has exactly one satisfying input projection for every target.
-/
theorem filesystemGrade_unique_sat_preimage
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k : Nat)
    (code : SnapshotFiber C k ≃ SATReduction.Bits n)
    (circuit : SATReduction.Circuit n n)
    (hcorrect : circuit.Implements
      (filesystemGradeBitPerm C E rowPerm k code))
    (target : SATReduction.Bits n) :
    ∃! input, circuit.InputWitness target input :=
  SATReduction.bijective_circuit_has_unique_sat_input
    circuit
    (filesystemGradeBitPerm C E rowPerm k code)
    hcorrect
    (filesystemGradeBitPerm C E rowPerm k code).bijective
    target

end FilesystemCodec
