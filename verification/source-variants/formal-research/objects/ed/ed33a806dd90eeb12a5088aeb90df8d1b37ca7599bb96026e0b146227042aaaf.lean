
/- source-tree-label: STL1|L|addr=0111011|role=proof_code_atom|slug=kernel-foundation|owner=canonical_owner|core=Kernel/Foundation.lean|leaf=M4b65726e656c2f466f756e646174696f6e2e6c65616e.lean -/

set_option autoImplicit false
namespace Think.Codex.Foundation

inductive LogicWrapper where
  | institution
  deriving DecidableEq

inductive InstitutionComponent where
  | signatures
  | sentence_translation
  | model_reducts
  | satisfaction_condition
  deriving DecidableEq

inductive ObjectTheoryFragment where
  | many_sorted_equational
  | essentially_algebraic
  | finite_limit_sketch
  | generalized_algebraic_theory
  | category_with_families
  deriving DecidableEq

def isDefaultObjectTheory : ObjectTheoryFragment -> Bool
  | ObjectTheoryFragment.essentially_algebraic => true
  | ObjectTheoryFragment.finite_limit_sketch => true
  | _ => false

def isDependentUpgrade : ObjectTheoryFragment -> Bool
  | ObjectTheoryFragment.generalized_algebraic_theory => true
  | ObjectTheoryFragment.category_with_families => true
  | _ => false

theorem essentially_algebraic_is_default :
    isDefaultObjectTheory ObjectTheoryFragment.essentially_algebraic = true := rfl

theorem gat_is_dependent_upgrade :
    isDependentUpgrade ObjectTheoryFragment.generalized_algebraic_theory = true := rfl

inductive SignatureComponent where
  | sigma_logic
  | sigma_repo
  | sigma_authority
  | sigma_domain
  deriving DecidableEq

inductive StatusConstant where
  | finite_witness_only
  | candidate_generalization
  | externally_theorem_supported
  | checked_theorem
  | refused
  deriving DecidableEq, Repr

inductive CodexAxiom where
  | unique_status
  | triplet_present
  | aggregator_complete
  | dependency_acyclic
  | authority_gate
  | external_discharge
  | non_authority_exclusion
  deriving DecidableEq

inductive InvariantKind where
  | I_syn
  | I_cls
  | I_auth
  | I_dep
  | I_nf
  deriving DecidableEq

inductive AdjunctionKind where
  | codex_completion
  | free_model
  deriving DecidableEq

inductive TheoremSchema where
  | universal_enhancement
  | classification
  | representation
  | coherence
  | normal_form
  | stability
  | descent
  deriving DecidableEq

inductive LemmaFamily where
  | wf_ctx
  | wf_term
  | wf_formula
  | substitution
  | renaming
  | transport
  | reduct_satisfaction
  | free_completion_unit
  | aggregator_complete
  | authority_sound
  | authority_no_upgrade
  | weak_equiv_invariance
  | normalization_terminates
  | local_confluence
  | descent_equiv
  deriving DecidableEq

structure InstitutionReady where
  signaturesDeclared : Bool
  sentenceTranslationDeclared : Bool
  modelReductsDeclared : Bool
  satisfactionConditionDeclared : Bool

def InstitutionReady.All (record : InstitutionReady) : Prop :=
  record.signaturesDeclared = true
    /\ record.sentenceTranslationDeclared = true
    /\ record.modelReductsDeclared = true
    /\ record.satisfactionConditionDeclared = true

theorem institution_ready_requires_satisfaction
    (record : InstitutionReady) :
    record.All -> record.satisfactionConditionDeclared = true := by
  intro hReady
  exact hReady.right.right.right

structure SignatureReady where
  logicComponentDeclared : Bool
  repoComponentDeclared : Bool
  authorityComponentDeclared : Bool
  domainComponentDeclared : Bool
  statusSortDeclared : Bool
  authorityGateDeclared : Bool

def SignatureReady.All (record : SignatureReady) : Prop :=
  record.logicComponentDeclared = true
    /\ record.repoComponentDeclared = true
    /\ record.authorityComponentDeclared = true
    /\ record.domainComponentDeclared = true
    /\ record.statusSortDeclared = true
    /\ record.authorityGateDeclared = true

theorem signature_ready_requires_authority_gate
    (record : SignatureReady) :
    record.All -> record.authorityGateDeclared = true := by
  intro hReady
  exact hReady.right.right.right.right.right

structure TheoremPackageReady where
  reusableLemmaNamed : Bool
  invariantNamed : Bool
  theoremSchemaNamed : Bool
  authorityStatusNamed : Bool
  sharpnessBoundaryNamed : Bool

def TheoremPackageReady.All (record : TheoremPackageReady) : Prop :=
  record.reusableLemmaNamed = true
    /\ record.invariantNamed = true
    /\ record.theoremSchemaNamed = true
    /\ record.authorityStatusNamed = true
    /\ record.sharpnessBoundaryNamed = true

theorem theorem_package_ready_requires_sharpness
    (record : TheoremPackageReady) :
    record.All -> record.sharpnessBoundaryNamed = true := by
  intro hReady
  exact hReady.right.right.right.right

end Think.Codex.Foundation
