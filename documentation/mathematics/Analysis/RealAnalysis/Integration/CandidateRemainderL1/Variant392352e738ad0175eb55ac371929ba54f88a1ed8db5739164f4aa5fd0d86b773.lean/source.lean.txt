-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualRemainderIntegrable.Variantfdeb0e9cea3793e781ca78fa5c463409c07fcb07bdbf08c2c55913ebc1a908eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fdeb0e9cea3793e781ca78fa5c463409c07fcb07bdbf08c2c55913ebc1a908eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualRemainderIntegrable.Variantfdeb0e9cea3793e781ca78fa5c463409c07fcb07bdbf08c2c55913ebc1a908eb","mathematical_subject":"Analysis.Integration","original_sha256":"fdeb0e9cea3793e781ca78fa5c463409c07fcb07bdbf08c2c55913ebc1a908eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass26/arithmetic_assembly/peer-ActualCentering-candidate/CandidateRemainderL1.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualCentering
import ActualChebyshevTail

/-! Resume-ready focused candidate: genuine actual centered full-Mangoldt L1.
Consumes the coordinator's unchanged centering argument with an isolated scalar
normalization repair, and the frozen actual first-moment tail-Fubini packet.
No L1, desired integral value, numerical decay, or RH premise is supplied.
This scratch file is not maintained integration or coordinator publication.
Direction grwtsk contributors; focused composition OpenAI Codex. -/

namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualRemainderIntegrable.Variantfdeb0e9cea3793e781ca78fa5c463409c07fcb07bdbf08c2c55913ebc1a908eb

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.CandidateRemainderL1
open MeasureTheory Set
open ContinuousResearch.MediumPNTMoment ContinuousResearch.ActualChebyshevTail
open ContinuousResearch.ActualCentering ContinuousResearch.SourceRemainderLaplace

theorem actual_remainder_integrable : IntegrableOn actualRemainder (Ioi (0:ℝ)) := by
  apply (psiRelativeError_integrable.sub psiErrorTail_integrable).congr_fun
  · intro t ht
    exact (actual_remainder_eq_tail ht.le).symm
  · exact measurableSet_Ioi

end ContinuousResearch.CandidateRemainderL1
set_option pp.fullNames true
set_option pp.universes true
#check ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
#print axioms ContinuousResearch.CandidateRemainderL1.actual_remainder_integrable
