-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.DeterminantLineFamily.Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DeterminantLineFamily.Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b","mathematical_subject":"Foundations.Unclassified","original_sha256":"21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/CanonicalPath/DeterminantLinePropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.PerfectFamilyTheoremTarget

/-!
# Folder.CanonicalPath.DeterminantLinePropagation

Radiation role: research-boundary
BinaryMatrix spine: This module records determinant-line propagation targets.
Ontology: canonical.perfect_family
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-target
Composite stack role: canonical-path
-/


namespace GRWTSK.Algebra.LinearAlgebra.DeterminantLineFamily.Variant21d54099e19e8b821157d99ffee9d742980f1fbc81d6924af88191495427df4b

namespace Folder
namespace CanonicalPath

structure DeterminantLineFamily
    (F : PerfectSectionComplexFamily) where
  DeterminantLine : Type
  determinantOfCohomology : Prop
  deformsCompatibly : Prop
  nonzeroAnchor : Prop
  nonzeroAnchor_certified : nonzeroAnchor
  propagatesOnConnectedComponent : Prop
  propagatesOnConnectedComponent_certified : propagatesOnConnectedComponent
  sourceLabel : String

theorem determinant_line_propagates_if_supplied
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.propagatesOnConnectedComponent :=
  D.propagatesOnConnectedComponent_certified

theorem determinant_line_has_nonzero_anchor
    {F : PerfectSectionComplexFamily}
    (D : DeterminantLineFamily F) :
    D.nonzeroAnchor :=
  D.nonzeroAnchor_certified

end CanonicalPath
end Folder
