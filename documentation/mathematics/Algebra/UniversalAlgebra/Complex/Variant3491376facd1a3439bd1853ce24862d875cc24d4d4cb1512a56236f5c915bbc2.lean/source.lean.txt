-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variant193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.DualNumber.Variant193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Complex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.DualNumber
import Mathlib.Basic.Complex.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.DualNumber.Variant193fd285d36edddb3772a7318beac8028d8cddebfe8eb4cf5744862d48906356

open DualNumber

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (0 : ℂ)

/--
info: Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (1 : ℂ)

/--
info: Real.ofCauchy (sorry /- 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I
-/
#guard_msgs in
#eval (4 : ℂ)

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/)*I
-/
#guard_msgs in
#eval (Complex.I : ℂ)

/--
info: Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I + (Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) + Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/)*I)*ε
-/
#guard_msgs in
#eval (0 : ℂ[ε])
