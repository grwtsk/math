-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stage.Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Stage.Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995","mathematical_subject":"Computation.DataStructures","original_sha256":"0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Manuscript/QuotientLimit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.InverseLimit


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stage.Variant0487f8347c7579bae3041f88bc63767cda2d76e87a3265927ff143c04e9ef995

set_option autoImplicit false

namespace FWR.Manuscript.QuotientLimit

/-
This module formalizes the quotient-normalized finite-stage bridge. The
bijection target is the trace quotient carrier, not the compact shell.
-/

universe u

structure Stage where
  BQ : Type u
  T : Type u
  C : Type u
  compactShell : T -> C
  bridge : StageBridge BQ T

def finiteStageClaim (S : Stage.{u}) : Prop :=
  Function.Bijective S.bridge.Phi

def finiteStageWitness (S : Stage.{u}) :
    Checked (finiteStageClaim S) :=
  Checked.proved S.bridge.bijective

theorem finiteStageWitness_isProved (S : Stage.{u}) :
    (finiteStageWitness S).isProved = true := by
  rfl

def compactShellInjectiveClaim (S : Stage.{u}) : Prop :=
  _root_.Function.Injective S.compactShell

def compactShellInjectivityResidue : Residue :=
  { target := Target.QuotientLimitBridge
    atomId := "compactShell.injectivity"
    kind := ResidueKind.authorityOverclaim
    blocks := "promotion of the order-erasing compact shell to an injective trace target"
    clearsBy := "a local proof that the compact shell preserves the needed order data" }

def compactShellInjectivityWitness (S : Stage.{u}) :
    Checked (compactShellInjectiveClaim S) :=
  Checked.residue [compactShellInjectivityResidue]

theorem compactShellInjectivity_hasResidue (S : Stage.{u}) :
    (compactShellInjectivityWitness S).hasResidue = true := by
  rfl

def limitRoundTripClaim (C : CompatibleBridge.{u}) : Prop :=
  (∀ y : LimitPoint C.T, ∀ n : Nat,
    (limitPhi C (limitSigma C y)).val n = y.val n) ∧
  (∀ x : LimitPoint C.B, ∀ n : Nat,
    (limitSigma C (limitPhi C x)).val n = x.val n)

theorem limitRoundTrip (C : CompatibleBridge.{u}) :
    limitRoundTripClaim C := by
  constructor
  · intro y n
    exact limitPhi_limitSigma_val C y n
  · intro x n
    exact limitSigma_limitPhi_val C x n

def limitBridgeWitness (C : CompatibleBridge.{u}) :
    Checked (limitRoundTripClaim C) :=
  Checked.proved (limitRoundTrip C)

theorem limitBridgeWitness_isProved (C : CompatibleBridge.{u}) :
    (limitBridgeWitness C).isProved = true := by
  rfl

inductive Atom where
  | decoderTotal
  | traceQuotientWellDefined
  | normalFormTermination
  | normalFormConfluence
  | encoderSound
  | rightRoundTrip
  | leftRoundTrip
  | forwardTransitionSquare
  | sectionTransitionSquare
deriving DecidableEq, Repr

def Atom.id : Atom -> String
  | .decoderTotal => "decoderTotal"
  | .traceQuotientWellDefined => "traceQuotientWellDefined"
  | .normalFormTermination => "normalFormTermination"
  | .normalFormConfluence => "normalFormConfluence"
  | .encoderSound => "encoderSound"
  | .rightRoundTrip => "rightRoundTrip"
  | .leftRoundTrip => "leftRoundTrip"
  | .forwardTransitionSquare => "forwardTransitionSquare"
  | .sectionTransitionSquare => "sectionTransitionSquare"

def residueOfAtom (a : Atom) : Residue :=
  { target := Target.QuotientLimitBridge
    atomId := Atom.id a
    kind :=
      match a with
      | .decoderTotal => ResidueKind.missingDecode
      | .traceQuotientWellDefined => ResidueKind.missingTraceQuotient
      | .normalFormTermination => ResidueKind.missingSection
      | .normalFormConfluence => ResidueKind.missingSection
      | .encoderSound => ResidueKind.missingSection
      | .rightRoundTrip => ResidueKind.missingSection
      | .leftRoundTrip => ResidueKind.missingSection
      | .forwardTransitionSquare => ResidueKind.missingTransition
      | .sectionTransitionSquare => ResidueKind.missingTransition
    blocks := "construction of the quotient-limit bridge"
    clearsBy := "a local finite proof for this bridge obligation" }

def allAtoms : List Atom := [
  Atom.decoderTotal,
  Atom.traceQuotientWellDefined,
  Atom.normalFormTermination,
  Atom.normalFormConfluence,
  Atom.encoderSound,
  Atom.rightRoundTrip,
  Atom.leftRoundTrip,
  Atom.forwardTransitionSquare,
  Atom.sectionTransitionSquare
]

def validationResidues : List Residue :=
  allAtoms.map residueOfAtom

theorem validationResidues_count :
    validationResidues.length = 9 := by
  rfl

theorem validationResidues_targets_correct :
    ∀ r ∈ validationResidues,
      r.target = Target.QuotientLimitBridge := by
  intro r hr
  rw [validationResidues] at hr
  rcases List.mem_map.mp hr with ⟨a, _ha, rfl⟩
  rfl

theorem allAtoms_nodup :
    allAtoms.Nodup := by
  decide

theorem atomId_injective :
    _root_.Function.Injective Atom.id := by
  intro a b h
  cases a <;> cases b <;> simp [Atom.id] at h ⊢

end FWR.Manuscript.QuotientLimit
