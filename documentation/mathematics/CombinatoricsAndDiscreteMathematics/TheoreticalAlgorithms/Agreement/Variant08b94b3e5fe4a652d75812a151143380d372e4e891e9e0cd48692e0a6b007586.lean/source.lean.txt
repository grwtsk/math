import Mathematics.Oracle.Jurisdiction
import Mathematics.Projection.PolyHierarchy

/-!
# Dimensioned oracle agreement

Agreement is recorded by dimension.  Consensus is a proposal-level
observation and cannot construct an intrinsic or kernel-certified fact.
-/

namespace Mathematics.Oracle

inductive AgreementDimension
  | identity
  | type_
  | meaning
  | denotation
  | boundary
  | relation
  | relationKind
  | dependency
  | representation
  | authority
  | proofRoute
  | transportability
  | residue
  | prohibition
  | audience
  deriving DecidableEq, Repr, Inhabited

inductive AgreementStatus
  | exact
  | compatible
  | disagrees
  | unresolved
  deriving DecidableEq, Repr, Inhabited

structure AgreementFinding where
  findingId : StableId
  dimension : AgreementDimension
  status : AgreementStatus
  oracleIds : List OracleId
  subjectPointIds : List ElementId
  evidenceIds : List EvidenceId
  findingDigest : Digest
  deriving DecidableEq, Repr

structure AgreementLedger where
  pointUniverseId : StableId
  findings : List AgreementFinding
  dimensionsCovered :
    ∀ dimension,
      ∃ finding ∈ findings,
        finding.dimension = dimension
  ledgerDigest : Digest

/-- Even complete exact agreement remains proposal authority. -/
def AgreementLedger.authority
    (_ledger : AgreementLedger) :
    Projection.ProposalAuthority :=
  .modelOracleAgreement

@[simp] theorem agreement_is_not_fact_authority
    (ledger : AgreementLedger) :
    ¬ ∃ authority : Projection.FactAuthority,
      Sum.inl ledger.authority =
        (Sum.inr authority :
          Projection.ProposalAuthority ⊕ Projection.FactAuthority) :=
  Projection.proposal_is_not_fact_authority ledger.authority

end Mathematics.Oracle
