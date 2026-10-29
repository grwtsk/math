-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitResidueProjectionMode.Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BitResidueProjectionMode.Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Arithmetic/EllipticBitMatrixResidueLoci.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Arithmetic.EllipticQuadraticResidueCarrier
import Think.SourceTree.Legacy.Arithmetic.EllipticGroupLaw
import Think.SourceTree.Legacy.Compression.Lookup
import Think.SourceTree.Legacy.Compression.Rewrite
import Think.SourceTree.Legacy.Compression.LatticeGroupLoci


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitResidueProjectionMode.Variant7733d45cbf7c04eacb865aa90869ef3d0af604f7a8c6e8646b756b27f8006596

set_option autoImplicit false

namespace Think.Arithmetic.EllipticBitMatrixResidueLoci

open Think.Arithmetic.EllipticQuadraticResidueCarrier

/-
Finite local bridge from elliptic quadratic-residue carriers to decoded
compression loci. The trivalent token layer remains primary; `[1 | 0]` is only
a coarse projection mode. This file does not claim Mordell-Weil, BSD,
modularity, Hasse-Weil completion, or global fiber authority.
-/

inductive BitResidueProjectionMode : Type
  | boundaryAdmitted
  | boundaryResidue
deriving DecidableEq, Repr

def bitResidueProjection :
    BitResidueProjectionMode →
      OneByOneBitMatrixTruthToken →
        Bool
  | .boundaryAdmitted, .trueToken => true
  | .boundaryAdmitted, .nullToken => true
  | .boundaryAdmitted, .falseToken => false
  | .boundaryResidue, .trueToken => true
  | .boundaryResidue, .nullToken => false
  | .boundaryResidue, .falseToken => false

structure EllipticBitMatrixResidueLocus {α : Type}
    (s : Think.Compression.Syntax.CompressedString α) where
  slice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode s)
  carrier : EllipticQuadraticResidueCarrier
  x : Nat
  fiberKind : QuadraticResidueFiberKind
  truthToken : OneByOneBitMatrixTruthToken
  projectionMode : BitResidueProjectionMode
  residueBit : Bool
  finiteLocalOnly : finiteLocalCarrierAuthority carrier

def locusTruthConsistent {α : Type}
    {s : Think.Compression.Syntax.CompressedString α}
    (locus : EllipticBitMatrixResidueLocus s) : Prop :=
  locus.fiberKind =
    quadraticResidueFiberKind locus.carrier.coefficients locus.x ∧
  locus.truthToken =
    reduceFiberOneByOne locus.carrier.coefficients locus.x ∧
  locus.residueBit =
    bitResidueProjection locus.projectionMode locus.truthToken

theorem boundaryAdmitted_square_projects_one :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceOneByOne QuadraticResidueFiberKind.squareNonzero) = true := by
  rfl

theorem boundaryAdmitted_zero_projects_one :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceOneByOne QuadraticResidueFiberKind.zeroBoundary) = true := by
  rfl

theorem boundaryAdmitted_nonsquare_projects_zero :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceOneByOne QuadraticResidueFiberKind.nonsquareResidue) = false := by
  rfl

theorem boundaryResidue_square_projects_one :
    bitResidueProjection
      BitResidueProjectionMode.boundaryResidue
      (reduceOneByOne QuadraticResidueFiberKind.squareNonzero) = true := by
  rfl

theorem boundaryResidue_zero_projects_zero :
    bitResidueProjection
      BitResidueProjectionMode.boundaryResidue
      (reduceOneByOne QuadraticResidueFiberKind.zeroBoundary) = false := by
  rfl

theorem boundaryResidue_nonsquare_projects_zero :
    bitResidueProjection
      BitResidueProjectionMode.boundaryResidue
      (reduceOneByOne QuadraticResidueFiberKind.nonsquareResidue) = false := by
  rfl

def sampleCompressedString :
    Think.Compression.Syntax.CompressedString String :=
  Think.Compression.Syntax.encode ["E_short", "bit_matrix_residue"]

def sampleSlice :
    Think.Compression.Syntax.Slice
      (Think.Compression.Syntax.decode sampleCompressedString) :=
  { start := 0
    len := 1
    valid := by
      change
        0 + 1 ≤
          (Think.Compression.Syntax.decode
            (Think.Compression.Syntax.encode
              ["E_short", "bit_matrix_residue"])).length
      rw [Think.Compression.Syntax.decode_encode_identity]
      decide }

def squareResidueLocus :
    EllipticBitMatrixResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 2
    fiberKind := quadraticResidueFiberKind exampleCoefficients 2
    truthToken := reduceFiberOneByOne exampleCoefficients 2
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 2)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority }

def zeroBoundaryAdmittedResidueLocus :
    EllipticBitMatrixResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 6
    fiberKind := quadraticResidueFiberKind exampleCoefficients 6
    truthToken := reduceFiberOneByOne exampleCoefficients 6
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 6)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority }

def zeroBoundaryResidueLocus :
    EllipticBitMatrixResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 6
    fiberKind := quadraticResidueFiberKind exampleCoefficients 6
    truthToken := reduceFiberOneByOne exampleCoefficients 6
    projectionMode := BitResidueProjectionMode.boundaryResidue
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryResidue
        (reduceFiberOneByOne exampleCoefficients 6)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority }

def nonsquareResidueLocus :
    EllipticBitMatrixResidueLocus sampleCompressedString :=
  { slice := sampleSlice
    carrier := exampleCarrier
    x := 1
    fiberKind := quadraticResidueFiberKind exampleCoefficients 1
    truthToken := reduceFiberOneByOne exampleCoefficients 1
    projectionMode := BitResidueProjectionMode.boundaryAdmitted
    residueBit :=
      bitResidueProjection
        BitResidueProjectionMode.boundaryAdmitted
        (reduceFiberOneByOne exampleCoefficients 1)
    finiteLocalOnly := exampleCarrier_finiteLocalAuthority }

theorem squareResidueLocus_truth_consistent :
    locusTruthConsistent squareResidueLocus := by
  exact ⟨rfl, rfl, rfl⟩

theorem zeroBoundaryAdmittedResidueLocus_truth_consistent :
    locusTruthConsistent zeroBoundaryAdmittedResidueLocus := by
  exact ⟨rfl, rfl, rfl⟩

theorem zeroBoundaryResidueLocus_truth_consistent :
    locusTruthConsistent zeroBoundaryResidueLocus := by
  exact ⟨rfl, rfl, rfl⟩

theorem nonsquareResidueLocus_truth_consistent :
    locusTruthConsistent nonsquareResidueLocus := by
  exact ⟨rfl, rfl, rfl⟩

theorem example_square_locus_projects_one :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceFiberOneByOne exampleCoefficients 2) = true := by
  rfl

theorem example_zero_locus_projects_one_under_boundaryAdmitted :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceFiberOneByOne exampleCoefficients 6) = true := by
  rfl

theorem example_zero_locus_projects_zero_under_boundaryResidue :
    bitResidueProjection
      BitResidueProjectionMode.boundaryResidue
      (reduceFiberOneByOne exampleCoefficients 6) = false := by
  rfl

theorem example_nonsquare_locus_projects_zero :
    bitResidueProjection
      BitResidueProjectionMode.boundaryAdmitted
      (reduceFiberOneByOne exampleCoefficients 1) = false := by
  rfl

theorem elliptic_bitmatrix_residue_locus_finite_local_only :
    finiteLocalCarrierAuthority squareResidueLocus.carrier := by
  exact squareResidueLocus.finiteLocalOnly

theorem elliptic_bitmatrix_residue_locus_does_not_settle_modularity :
    squareResidueLocus.carrier.doesNotSettleModularity = true := by
  rfl

theorem elliptic_bitmatrix_residue_locus_does_not_settle_BSD :
    squareResidueLocus.carrier.doesNotSettleBSD = true := by
  rfl

theorem elliptic_bitmatrix_residue_locus_does_not_complete_HasseWeil :
    squareResidueLocus.carrier.doesNotCompleteHasseWeilLFunction = true := by
  rfl

end Think.Arithmetic.EllipticBitMatrixResidueLoci
