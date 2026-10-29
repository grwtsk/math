-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueDisposition.Variant90f99299ef6a6cbd5d897811165eb95fd0950bbdbd64809d29e608c28d2cafa7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"90f99299ef6a6cbd5d897811165eb95fd0950bbdbd64809d29e608c28d2cafa7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ResidueDisposition.Variant90f99299ef6a6cbd5d897811165eb95fd0950bbdbd64809d29e608c28d2cafa7","mathematical_subject":"Computation.DataStructures","original_sha256":"90f99299ef6a6cbd5d897811165eb95fd0950bbdbd64809d29e608c28d2cafa7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit1/Bit0/Bit1/Bit1/Bit0/M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit1.Bit1.Bit1.Bit1.M506970656c696e652f4e6f6e636c61696d436174616c6f672e6c65616e

/- source-tree-label: STL1|L|addr=0110110|role=proof_code_atom|slug=validation-braidmodulecontract|owner=canonical_owner|core=Validation/BraidModuleContract.lean|leaf=M56616c69646174696f6e2f42726169644d6f64756c65436f6e74726163742e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ResidueDisposition.Variant90f99299ef6a6cbd5d897811165eb95fd0950bbdbd64809d29e608c28d2cafa7

set_option autoImplicit false

namespace Think.Braid.Validation

inductive ResidueDisposition where
  | zero | closedZero | openObstruction | refused
deriving DecidableEq, Repr

inductive RefusalCode where
  | taxonomyGap
  | sourceTreeProjectionGap
  | externalMapOverclaim
  | unstructuredTreeResidue
  | unclassifiedFileResidue
  | proofByRustFile
  | proofByBitmatrix
  | proofByReceipt
  | digestAsTruth
  | repositorySettlementOverclaim
deriving DecidableEq, Repr

inductive WitnessKind where
  | finiteWitnessOnly
deriving DecidableEq, Repr

structure ResidueSummary where
  beforeUnits : Nat
  afterUnits : Nat
  disposition : ResidueDisposition
  reason : String
deriving DecidableEq, Repr

structure ModuleContract where
  moduleName : String
  tripleId : String
  residue : ResidueSummary
  refusals : List RefusalCode
  witness : WitnessKind
  nonclaims : List String
deriving DecidableEq, Repr

structure CoordinateFile where
  coordinateId : String
  rustFile : String
deriving DecidableEq, Repr

def closedResidue (reason : String) : ResidueSummary :=
  { beforeUnits := 0,
    afterUnits := 0,
    disposition := .closedZero,
    reason := reason }

def defaultRefusals : List RefusalCode :=
  [.repositorySettlementOverclaim, .proofByRustFile]

def defaultModuleContract
    (tripleId moduleName reason : String) : ModuleContract :=
  { moduleName := moduleName,
    tripleId := tripleId,
    residue := closedResidue reason,
    refusals := defaultRefusals,
    witness := .finiteWitnessOnly,
    nonclaims := Think.Braid.Law.requiredNonclaims }

end Think.Braid.Validation
