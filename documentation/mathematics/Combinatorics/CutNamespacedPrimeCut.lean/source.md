# Cut Namespaced Prime Cut — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61112ec064ac0a56a1c2313a65c2311a12b0d3f9` · SHA-256 `3b79d4b876d2bbc55e66f011793f0edf428ba2642e74ac390bf44968d8e081bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ba02c268ec6c50367ed5fc35b350ac7dda00c043a4ecf1067b777e2c31de0b0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Cut/Variant56c3709e36da5f8241d9de634b8ef4ebb1177bdae12d202899a6a62c7321f803.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
