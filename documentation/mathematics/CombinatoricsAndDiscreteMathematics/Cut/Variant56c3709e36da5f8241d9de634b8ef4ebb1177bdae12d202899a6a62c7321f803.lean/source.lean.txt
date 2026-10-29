-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCut.Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeCut.Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/PrimeHorizon/Cut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Card
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Carrier

/-!
# Prime-cut primitive
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCut.Variant0c3e82b81c92d7adb850edfd56e390424b34601e3c65e2872ae3d7350c3f8c8d

namespace Mathematics.SemiLocalDefect.SoninCore

abbrev PrimeCut
    (U : FinitePrimeHorizon) :=
  Finset U.Prime

def topCut
    (U : FinitePrimeHorizon) :
    PrimeCut U :=
  Finset.univ

def cutDepth
    {U : FinitePrimeHorizon}
    (S : PrimeCut U) :
    Nat :=
  S.card

end Mathematics.SemiLocalDefect.SoninCore
