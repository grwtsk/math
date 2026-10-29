-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RawGraphAccessRequest.Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RawGraphAccessRequest.Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"d34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Admission.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Noninterference

/-!
# Request admission

Unknown evidence and malformed requests are distinct outcomes.  The raw
envelope is opaque to the core; an external deterministic admitter supplies
the fully typed request.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RawGraphAccessRequest.Variantd34074dbc8e4a81559eac8ad2bece57dc0b2fb9644eee0c4e75205c3bbddc10b

namespace Mathematics.GraphAccess

structure RawGraphAccessRequest where
  requestId : RequestId
  payload : ByteArray
deriving DecidableEq

instance : Repr RawGraphAccessRequest where
  reprPrec request precedence :=
    Repr.reprPrec
      (request.requestId, request.payload.data)
      precedence

inductive RequestAdmissionFailure
  | unknownReference
  | modeObjectiveMismatch
  | missingProfile
  | invalidAuthority
  | cutDigestMismatch
  | malformedBudget
  | unsupportedCombination
  | missingRequiredTarget
  | sourceNotAdmissible
  | targetNotAdmissible
  | unknownAdmissibility
  | incompleteNeighborInterface
deriving DecidableEq, Repr

inductive RequestAdmission
    (G : GraphCut)
    (profiles : ModeProfileFamily G)
  | admitted
      (request : AdmittedAccessRequest G profiles)
  | unknown
      (requestId : RequestId)
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | rejected
      (requestId : RequestId)
      (failure : RequestAdmissionFailure)

structure RequestAdmitter
    (G : GraphCut)
    (profiles : ModeProfileFamily G) where
  admit :
    RawGraphAccessRequest →
      RequestAdmission G profiles

end Mathematics.GraphAccess
