-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Application.Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Application.Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BooleanMatrix/Application/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BooleanMatrix.Matrix.Core

/-!
# BooleanMatrix applications

An application is an extensional, total transformation of the common matrix
carrier. Interpretation and validity conditions are supplied separately by
formats and typed applications.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Application.Variant904476e1a96b6b0466435faf56af0e352f63f2b3547efa1f04e87c0cf22fec7d

namespace BooleanMatrix

/-- A total transformation of the BooleanMatrix carrier. -/
abbrev Application := Matrix → Matrix

namespace Application

/-- The identity matrix application. -/
def identity : Application :=
  fun input => input

/-- Sequential composition, applying `before` and then `after`. -/
def comp
    (after before : Application) :
    Application :=
  fun input => after (before input)

@[simp]
theorem identity_apply (input : Matrix) :
    identity input = input :=
  rfl

@[simp]
theorem comp_apply
    (after before : Application)
    (input : Matrix) :
    comp after before input = after (before input) :=
  rfl

end Application
end BooleanMatrix
