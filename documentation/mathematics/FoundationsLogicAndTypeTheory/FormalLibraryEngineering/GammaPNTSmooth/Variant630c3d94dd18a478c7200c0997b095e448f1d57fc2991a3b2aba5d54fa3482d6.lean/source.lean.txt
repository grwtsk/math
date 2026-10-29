import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.GammaScattering

set_option autoImplicit false

namespace Think.Validation.GammaPNTSmooth

theorem pnt_normalizer_has_zero_residue
    (N : Think.RadoProjectedModularHeatflow.MemoryCore.PNTNormalizer) :
    N.residue = 0 :=
  Think.RadoProjectedModularHeatflow.MemoryCore.pnt_normalizer_residue_zero N

theorem admitted_scattering_has_pnt_zero
    (S : Think.RadoProjectedModularHeatflow.MemoryCore.GammaPNTScattering)
    (h : S.admitted) :
    S.normalizer.residue = 0 :=
  Think.RadoProjectedModularHeatflow.MemoryCore.admitted_scattering_has_pnt_residue_zero S h

theorem admitted_gamma_audit_imports_no_analytic_authority
    (A : Think.RadoProjectedModularHeatflow.GammaScattering.GammaScatteringAudit)
    (h : A.admitted) :
    A.noAnalyticAuthorityImported :=
  Think.RadoProjectedModularHeatflow.GammaScattering.admitted_gamma_scattering_has_no_authority_import A h

theorem zero_enhanced_residue_is_resolved
    (R : Think.RadoProjectedModularHeatflow.MemoryCore.EnhancedCompactResidue)
    (h : R.boundaryResidue + R.torsionResidue + R.gammaResidue + R.pntResidue = 0) :
    R.resolved :=
  Think.RadoProjectedModularHeatflow.MemoryCore.enhanced_compact_residue_zero_resolved R h

end Think.Validation.GammaPNTSmooth
