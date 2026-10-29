-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PiL2.Variant656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PiL2.Variant656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/EuclideanSpace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.PiL2


namespace GRWTSK.Analysis.FunctionalAnalysis.PiL2.Variant656d690d7d38859e86481691c0ea9bc694cb8b839904d6c21230a4b88aed6304

#guard_expr !₂[] = (WithLp.equiv 2 (∀ _ : Fin 0, _)).symm ![]
#guard_expr !₂[1, 2, 3] = (WithLp.equiv 2 (∀ _ : Fin 3, ℕ)).symm ![1, 2, 3]
#guard_expr !₁[1, 2, (3 : ℝ)] = (WithLp.equiv 1 (∀ _ : Fin 3, ℝ)).symm ![1, 2, 3]

section delaborator

/-- info: !₂[1, 2, 3] : WithLp 2 (Fin 3 → ℕ) -/
#guard_msgs in
#check !₂[1, 2, 3]

set_option pp.mvars false in
/-- info: !₀[] : WithLp 0 (Fin 0 → ?_) -/
#guard_msgs in
#check !₀[]

section var
variable {p : ENNReal}
/-- info: (WithLp.equiv p (Fin 3 → ℕ)).symm ![1, 2, 3] : WithLp p (Fin 3 → ℕ) -/
#guard_msgs in#check !ₚ[1, 2, 3]
end var

section tombstoned_var
/- Here the `p` in the subscript is shadowed by a later p; so even if we do
make the delaborator less conservative, it should not fire here since `✝` cannot
be subscripted. -/
variable {p : ENNReal} {x} (hx : x = !ₚ[1, 2, 3]) (p : True)
/-- info: hx : x = (WithLp.equiv p✝ (Fin 3 → ℕ)).symm ![1, 2, 3] -/
#guard_msgs in #check hx
end tombstoned_var

end delaborator
