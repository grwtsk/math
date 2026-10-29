-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BsdRankEq.Variantcede1d0005363df3b9ff9e3540cbcc8485e7ad84f6a2cf0dbe465760fe31629d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cede1d0005363df3b9ff9e3540cbcc8485e7ad84f6a2cf0dbe465760fe31629d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BsdRankEq.Variantcede1d0005363df3b9ff9e3540cbcc8485e7ad84f6a2cf0dbe465760fe31629d","mathematical_subject":"Foundations.Unclassified","original_sha256":"cede1d0005363df3b9ff9e3540cbcc8485e7ad84f6a2cf0dbe465760fe31629d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Research/ArithmeticBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Research.ArithmeticBoundary

/-!
# Folder.Theorem.Research.ArithmeticBoundary

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.research.arithmetic_boundary
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BsdRankEq.Variantcede1d0005363df3b9ff9e3540cbcc8485e7ad84f6a2cf0dbe465760fe31629d

namespace Folder
namespace Theorem
namespace Research
namespace ArithmeticBoundary

theorem bsd_rank_eq
    (B : Folder.Research.ArithmeticBoundary.BSDContract) :
    B.analyticRank = B.algebraicRank :=
  Folder.Research.ArithmeticBoundary.bsd_rank_eq B

theorem bsd_sha_eq
    (B : Folder.Research.ArithmeticBoundary.BSDContract) :
    B.shaOrderAnalytic = B.shaOrderAlgebraic :=
  Folder.Research.ArithmeticBoundary.bsd_sha_eq B

theorem hasse_weil_has_analytic_continuation
    (H : Folder.Research.ArithmeticBoundary.HasseWeilContract) :
    H.hasAnalyticContinuation :=
  Folder.Research.ArithmeticBoundary.hasse_weil_has_analytic_continuation H

theorem hasse_weil_has_functional_equation
    (H : Folder.Research.ArithmeticBoundary.HasseWeilContract) :
    H.hasFunctionalEquation :=
  Folder.Research.ArithmeticBoundary.hasse_weil_has_functional_equation H

theorem shafarevich_tate_finite
    (S : Folder.Research.ArithmeticBoundary.ShafarevichTateContract) :
    S.finite :=
  Folder.Research.ArithmeticBoundary.shafarevich_tate_finite S

theorem modularity_associated
    (M : Folder.Research.ArithmeticBoundary.ModularityContract) :
    M.associated :=
  Folder.Research.ArithmeticBoundary.modularity_associated M

end ArithmeticBoundary
end Research
end Theorem
end Folder
