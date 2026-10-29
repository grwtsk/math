-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.XCollected.Variant53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.XCollected.Variant53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce","mathematical_subject":"Algebra.Polynomials","original_sha256":"53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/53/53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce--SourcePolynomialArithmeticCheck.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization


namespace GRWTSK.Algebra.CommutativeAlgebra.XCollected.Variant53b002d9dfa52858272e06d974f1497951afdd254d1989dcc93fc484bd24b5ce

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

namespace SourcePolynomialArithmeticCheck

set_option maxHeartbeats 1000000 in
-- The generated polynomial has 150 terms and needs additional elaboration heartbeats.
/-- Exact kernel check of the independently generated x-collected expression. -/
theorem x_collected (r v x : ℝ) :
    (r * unitSecond x - unitBump x / 4) *
      (r * unitSecond (x-v) - unitBump (x-v) / 4) =
  (
    (-7168 * r^2 * v^6 + 15360 * r^2 * v^4 - 9216 * r^2 * v^2 + 1024 * r^2 + 32 * r * v^8 - 352 * r * v^6 + 672 * r * v^4 - 416 * r * v^2 + 64 * r + v^8 - 4 * v^6 + 6 * v^4 - 4 * v^2 + 1) +
    (43008 * r^2 * v^5 - 61440 * r^2 * v^3 + 18432 * r^2 * v - 256 * r * v^7 + 2112 * r * v^5 - 2688 * r * v^3 + 832 * r * v - 8 * v^7 + 24 * v^5 - 24 * v^3 + 8 * v) * x +
    (64512 * r^2 * v^6 - 245760 * r^2 * v^4 + 175104 * r^2 * v^2 - 18432 * r^2 - 288 * r * v^8 + 2944 * r * v^6 - 8928 * r * v^4 + 6336 * r * v^2 - 832 * r - 4 * v^8 + 44 * v^6 - 84 * v^4 + 52 * v^2 - 8) * x^2 +
    (-387072 * r^2 * v^5 + 696320 * r^2 * v^3 - 227328 * r^2 * v + 2304 * r * v^7 - 14080 * r * v^5 + 21632 * r * v^3 - 7296 * r * v + 32 * v^7 - 152 * v^5 + 176 * v^3 - 56 * v) * x^3 +
    (-107520 * r^2 * v^6 + 1198080 * r^2 * v^4 - 1075200 * r^2 * v^2 + 113664 * r^2 + 480 * r * v^8 - 11328 * r * v^6 + 38720 * r * v^4 - 30816 * r * v^2 + 3648 * r + 6 * v^8 - 136 * v^6 + 346 * v^4 - 228 * v^2 + 28) * x^4 +
    (645120 * r^2 * v^5 - 2211840 * r^2 * v^3 + 872448 * r^2 * v - 3840 * r * v^7 + 35712 * r * v^5 - 65792 * r * v^3 + 24000 * r * v - 48 * v^7 + 368 * v^5 - 520 * v^3 + 168 * v) * x^5 +
    (50176 * r^2 * v^6 - 1720320 * r^2 * v^4 + 2414592 * r^2 * v^2 - 290816 * r^2 - 224 * r * v^8 + 15232 * r * v^6 - 72384 * r * v^4 + 68224 * r * v^2 - 8000 * r - 4 * v^8 + 184 * v^6 - 664 * v^4 + 500 * v^2 - 56) * x^6 +
    (-301056 * r^2 * v^5 + 2580480 * r^2 * v^3 - 1437696 * r^2 * v + 1792 * r * v^7 - 37632 * r * v^5 + 94464 * r * v^3 - 39680 * r * v + 32 * v^7 - 432 * v^5 + 800 * v^3 - 280 * v) * x^7 +
    (752640 * r^2 * v^4 - 2257920 * r^2 * v^2 + 359424 * r^2 - 6496 * r * v^6 + 60960 * r * v^4 - 76896 * r * v^2 + 9920 * r + v^8 - 116 * v^6 + 666 * v^4 - 620 * v^2 + 70) * x^8 +
    (-1003520 * r^2 * v^3 + 1075200 * r^2 * v + 13888 * r * v^5 - 64640 * r * v^3 + 35520 * r * v - 8 * v^7 + 248 * v^5 - 680 * v^3 + 280 * v) * x^9 +
    (752640 * r^2 * v^2 - 215040 * r^2 - 19040 * r * v^4 + 43200 * r * v^2 - 7104 * r + 28 * v^6 - 340 * v^4 + 444 * v^2 - 56) * x^10 +
    (-301056 * r^2 * v + 17024 * r * v^3 - 16512 * r * v - 56 * v^5 + 304 * v^3 - 168 * v) * x^11 +
    (50176 * r^2 - 9632 * r * v^2 + 2752 * r + 70 * v^4 - 172 * v^2 + 28) * x^12 +
    (3136 * r * v - 56 * v^3 + 56 * v) * x^13 +
    (-448 * r + 28 * v^2 - 8) * x^14 +
    (-8 * v) * x^15 +
    (1) * x^16
  ) / 16
 := by
  dsimp [unitSecond, unitBump]
  ring

#print axioms x_collected

end SourcePolynomialArithmeticCheck
