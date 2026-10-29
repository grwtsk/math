-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanDeclarationKind.Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LeanDeclarationKind.Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296","mathematical_subject":"Computation.DataStructures","original_sha256":"1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/AST/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LeanDeclarationKind.Variant1cf1801404e08dc2fa7c021625dc5f7a9a83c6cdbfccd581a2dd5b5269cce296

namespace Surface

namespace AST

inductive LeanDeclarationKind where
  | definition
  | theorem
  | structure
  | inductive
  | constructor
  | recursor
  | opaque
  | quotient
  | external
deriving DecidableEq, Repr

inductive LeanProofStatus where
  | checkedByLean
  | notATheorem
  | fixtureOnly
  | notClaimed
  | nonGoal
  | failedCheck
  | externalReference
deriving DecidableEq, Repr

inductive LeanTrustedStatus where
  | trusted
  | untrusted
  | fixtureOnly
  | externalReference
deriving DecidableEq, Repr

inductive PaperUseClassification where
  | bsdInfrastructure
  | rhInfrastructure
  | sharedInfrastructure
  | backgroundOnly
  | irrelevant
  | dangerousNeedsTheoremGate
deriving DecidableEq, Repr

inductive PaperAuthorityStatus where
  | noTheoremAuthority
  | definitionsOnly
  | statementOrObligationOnly
  | certificateInterfaceOnly
  | leanCheckedTheorem
deriving DecidableEq, Repr

structure PaperUseRecord where
  file : String
  sha256 : String
  classification : PaperUseClassification
  authorityStatus : PaperAuthorityStatus
  formalTargets : List String
  forbiddenClaims : List String
  claimBoundary : List String
deriving Repr

def PaperUseRecord.hasTheoremAuthority
    (record : PaperUseRecord) : Prop :=
  record.authorityStatus = PaperAuthorityStatus.leanCheckedTheorem

theorem paper_without_checked_theorem_has_no_theorem_authority
    (record : PaperUseRecord)
    (h :
      record.authorityStatus ≠
        PaperAuthorityStatus.leanCheckedTheorem) :
    ¬ record.hasTheoremAuthority := by
  intro hAuthority
  exact h hAuthority

structure LeanSource where
  file : String
  line : Nat
  column : Nat
deriving Repr

structure LeanModuleAst where
  moduleName : String
  slug : String
  file : String
  imports : List String
  trusted : Bool
  layer : String
  foundation : String
  summary : String
  claimBoundary : List String
deriving Repr

structure LeanDeclarationAst where
  fullName : String
  slug : String
  moduleName : String
  kind : LeanDeclarationKind
  namespaceName : String
  type : String
  source : LeanSource
  trusted : Bool
  proofStatus : LeanProofStatus
  dependencies : List String
  fixtures : List String
  paperReferences : List String
  claimBoundary : List String
deriving Repr

structure LeanAstEdge where
  fromName : String
  toName : String
  kind : String
deriving Repr

end AST

end Surface
