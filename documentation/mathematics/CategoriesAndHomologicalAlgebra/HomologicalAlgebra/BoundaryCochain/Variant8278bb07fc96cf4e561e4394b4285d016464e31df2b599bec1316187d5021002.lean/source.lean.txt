-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SoninBoundaryCochain.Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SoninBoundaryCochain.Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de","mathematical_subject":"Foundations.Unclassified","original_sha256":"f987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP2/BoundaryCochain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP2.Increment

/-!
# WP2 Sonin boundary cochain

The increment is exposed as a one-cochain.  Positivity and square closure are
projections of the supplied capacity certificate.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SoninBoundaryCochain.Variantf987d5db56082b6d337c7a27be86e3fc5fcf6966980512910996779a4c2b31de

namespace Mathematics.SemiLocalDefect.SoninCore

def soninBoundaryCochain
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    (P : SoninProjectionProfile H)
    (S : PrimeCut U)
    (p : U.Prime) :
    HilbertEnd H.Ambient :=
  soninIncrement P S p

theorem soninBoundaryCochain_nonnegative
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p : U.Prime)
    (hp : p ∉ S) :
    OperatorNonnegative
      (soninBoundaryCochain P S p) :=
  soninIncrement_nonnegative
    cert S p hp

theorem soninBoundaryCochain_closed
    {U : FinitePrimeHorizon}
    {H : FiniteSoninHorizon U}
    {P : SoninProjectionProfile H}
    (cert : SoninCapacityCertificate P)
    (S : PrimeCut U)
    (p q : U.Prime)
    (hp : p ∉ S)
    (hq : q ∉ S)
    (hpq : p ≠ q) :
    soninBoundaryCochain P S p
    +
    soninBoundaryCochain
      P
      (insert p S)
      q
    =
    soninBoundaryCochain P S q
    +
    soninBoundaryCochain
      P
      (insert q S)
      p :=
  cert.square_closed
    S p q hp hq hpq

end Mathematics.SemiLocalDefect.SoninCore
