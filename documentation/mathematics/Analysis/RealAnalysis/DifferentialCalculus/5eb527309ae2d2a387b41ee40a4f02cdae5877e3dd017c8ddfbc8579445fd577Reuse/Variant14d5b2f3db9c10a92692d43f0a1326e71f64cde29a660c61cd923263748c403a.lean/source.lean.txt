-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certification.Variant5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Certification.Variant5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577","mathematical_subject":"Analysis.Calculus","original_sha256":"5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/5e/5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577--Reuse.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur
import FormalResearch.PositiveAtlas.ProvenanceProjection


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certification.Variant5eb527309ae2d2a387b41ee40a4f02cdae5877e3dd017c8ddfbc8579445fd577

open FormalResearch.PositiveAtlas
set_option pp.universes true
set_option pp.proofs false
#print CertificateFamily
#print CertificateFamily.Equivalent
#print SufficientRepresentation
#print SufficientRepresentation.FactorsThrough
#print SufficientRepresentation.IsMinimal
#print StructuralQuine
#check StructuralQuine.project_idempotent
#print PositiveForm
#check PositiveForm.pullback
#print ProvenanceProjector
#check ProvenanceProjector.quadratic_decomposition
#check ProvenanceProjector.residual_eq_sub_projected
#print FiniteLogAffineFamily
#check FiniteLogAffineFamily.probability_sum
#check FiniteLogAffineFamily.covarianceForm
#check FiniteLogAffineFamily.iterated_fderiv_logPartition_eq_covariance
#print MatrixBlockRealization
#check MatrixBlockRealization.schurForm_eq_schurMatrix
#print GeneralizedInverseBlockRealization
#check GeneralizedInverseBlockRealization.schurForm_eq_generalizedSchurMatrix
