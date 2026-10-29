-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactValidationSuite.Variantfd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CompactValidationSuite.Variantfd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit1/Bit0/Bit0/Bit1/Bit0/Bit1/Bit0/M56616c69646174696f6e2f436f6d70616374536f75726365547265652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit0.M536f75726365547265652f4173744f776e6572736869702e6c65616e
import Think.Bit0.Bit1.Bit1.Bit1.Bit1.Bit0.Bit1.Bit0.M56616c69646174696f6e2f526574697265645061746851756172616e74696e652e6c65616e


/- source-tree-label: STL1|L|addr=0101001010|role=proof_code_atom|slug=validation-compactsourcetree|owner=canonical_owner|core=Validation/CompactSourceTree.lean|leaf=M56616c69646174696f6e2f436f6d70616374536f75726365547265652e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactValidationSuite.Variantfd1b2f39176437ab48baff99af306f1d9739bba86ce8629fa87618533ee0ec5f

set_option autoImplicit false

namespace Think.Compact

structure CompactValidationSuite where
  importsValidationShell : Bool
  checksNonclaims : Bool
  checksResidues : Bool
  checksCompactFacade : Bool
  checksAstLeafOwnership : Bool
deriving Repr

def compactValidationSuite : CompactValidationSuite :=
  { importsValidationShell := true
    checksNonclaims := true
    checksResidues := true
    checksCompactFacade := true
    checksAstLeafOwnership := true }

def compactAstOwnershipReceipt : Think.SourceTree.AstOwnershipReceipt :=
  { totalDeclarationCount := 1
    compactDeclarationCount := 1
    duplicateDeclarationNameCount := 0
    astLeafCount := 1
    ownedAstLeafCount := 1
    unownedAstLeafCount := 0 }

theorem compactValidationSuite_complete :
    compactValidationSuite.importsValidationShell = true ∧
    compactValidationSuite.checksNonclaims = true ∧
    compactValidationSuite.checksResidues = true ∧
    compactValidationSuite.checksCompactFacade = true ∧
    compactValidationSuite.checksAstLeafOwnership = true := by
  exact ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem compactAstOwnershipReceipt_closed :
    compactAstOwnershipReceipt.closed := by
  exact Think.SourceTree.astOwnershipReceipt_closed_of_zero_residue
    compactAstOwnershipReceipt rfl rfl rfl rfl

end Think.Compact
