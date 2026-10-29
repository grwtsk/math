# Carrier Namespaced Finite Prime Horizon — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97d28e7bdd19423411872b94b96629e8a7afaba3` · SHA-256 `8e9e925730f3d89d100d0eb8b5566dfcfcdc246f4148e51bc09c477f8aa2213e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/PrimeHorizon/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathematics.SemiLocalDefect.WP0.Identifiers

/-!
# Prime-horizon carrier primitive
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinitePrimeHorizon.Variant9a8acd4755fb89eb3ae75213338c5466741b25e7ab43f46af6f2acb33e309eb7

namespace Mathematics.SemiLocalDefect.SoninCore

structure FinitePrimeHorizon where
  Prime : Type
  primeFintype : Fintype Prime
  primeDecEq : DecidableEq Prime
  primeOrder : LinearOrder Prime
  value : Prime → Nat
  value_injective : Function.Injective value
  value_prime : ∀ p, Nat.Prime (value p)
  id : HorizonId
  revision : Nat
  digest : Digest

instance (U : FinitePrimeHorizon) :
    Fintype U.Prime :=
  U.primeFintype

instance (U : FinitePrimeHorizon) :
    DecidableEq U.Prime :=
  U.primeDecEq

instance (U : FinitePrimeHorizon) :
    LinearOrder U.Prime :=
  U.primeOrder

end Mathematics.SemiLocalDefect.SoninCore
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=402a9d8b7df6de8a83a57096e67f83ec1cb03f5d2fcc0384651b7f3d69a87245 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Carrier/Variant29f3fd2abbb7c8f3fde4e73a6e25abe80610f10f40decf69ab23743a756dc578.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
