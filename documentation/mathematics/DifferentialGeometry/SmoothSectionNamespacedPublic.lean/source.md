# Smooth Section Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60fc086f7818296a288d9c5e05098b50d5f3b3b4` · SHA-256 `270c5bb432a14f5e82ecf8aefaba45b8a13f8fabc55010db84d1add9a65da824`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.Algebra.Variant7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Algebra.Variant7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Geometry/Manifold/VectorBundle/SmoothSection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth, Floris van Doorn, Michael Rothgang
-/
module

public import Mathlib.Algebra.Order.Algebra
public import Mathlib.Algebra.Order.BigOperators.Expect
public import Mathlib.Algebra.Order.Field.Power
public import Mathlib.Analysis.Normed.Group.Basic
public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Data.EReal.Inv
public import Mathlib.Data.Nat.Totient
public import Mathlib.Data.Sym.Sym2
public import Mathlib.Tactic.ContinuousFunctionalCalculus
public import Mathlib.Tactic.NormNum.GCD
public import Mathlib.Tactic.Positivity


namespace GRWTSK.Geometry.Algebra.Variant7c2a3acc160ada36dd5e3cfd19df6136c842597d79ef19de5af993a7f181044b

deprecated_module (since := "2026-05-12")
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b33791d1837369853cd7f361dd6cd9285eeaa535af8a2c6e68a4a0e43a6b8117 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/SmoothSection/Variantf917d814da41751c1fbbf9149c0b4d1bf34f9b3ce0f60d81bfe76c071155f1f5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
