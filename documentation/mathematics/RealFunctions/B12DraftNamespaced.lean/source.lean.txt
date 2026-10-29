-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivThetaPhiPolyIntegrableOn.Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DerivThetaPhiPolyIntegrableOn.Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481","mathematical_subject":"Analysis.Calculus","original_sha256":"a88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/a8/a88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481--B12Draft.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DerivThetaPhiPolyIntegrableOn.Varianta88e17c2fbea5afd8497c9d8504a5f90581d75364df5c57e1aa830d5a1c5e481

/-- Absolute integrability of every polynomially weighted actual source derivative. -/
theorem deriv_thetaPhi_poly_integrableOn (p : ℕ) :
    IntegrableOn (fun t => deriv thetaPhi t * t ^ p) (Ici (0 : ℝ)) := by
  have h := ((thetaGaussianSum_poly_integrableOn 4 9 p).const_mul (30 * Real.pi ^ 2)).sub
    ((thetaGaussianSum_poly_integrableOn 2 5 p).const_mul (15 * Real.pi)) |>.sub
    ((thetaGaussianSum_poly_integrableOn 6 13 p).const_mul (8 * Real.pi ^ 3))
  convert! h using 1
  ext t
  rw [deriv_thetaPhi_eq_raw, thetaPhiRawD1_eq_gaussians]
  ring

/-- The exact shifted source derivative weight needed by the first tail ratio. -/
theorem thetaPhi_deriv_mul_sub_integrableOn {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => deriv thetaPhi u * (u - t)) (Ici t) := by
  have h0 : IntegrableOn (deriv thetaPhi) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 0
  have h1 : IntegrableOn (fun u => deriv thetaPhi u * u) (Ici (0 : ℝ)) := by
    simpa using deriv_thetaPhi_poly_integrableOn 1
  have h := (h1.sub (h0.mul_const t)).mono_set (Ici_subset_Ici.mpr ht)
  convert! h using 1
  ext u
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
