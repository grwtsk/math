# Monoid Localization Cardinality Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `791587a8458e88764232e4cdca566399ad4621d1` · SHA-256 `a9f8dd39c2db92ca8de77dd3a25b24bf9cd625c8da0c848b59d2c50398f656d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","mathematical_subject":"Algebra.Groups","original_sha256":"45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/MonoidLocalization/Cardinality.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jz Pan. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jz Pan
-/
import Mathlib.GroupTheory.MonoidLocalization.Basic
import Mathlib.GroupTheory.OreLocalization.Cardinality

/-!

# Cardinality of localizations of commutative monoids

This file contains some results on cardinality of localizations.

-/


namespace GRWTSK.Algebra.GroupTheory.CardinalMkLe.Variant45fa65e5c9fa16b4c0b21ab62b0e856a5686a3ece9d48e0f1b849ea69b8c61a2

universe u

open Cardinal

namespace Localization

variable {M : Type u} [CommMonoid M] (S : Submonoid M)

@[to_additive]
theorem cardinalMk_le : #(Localization S) ≤ #M :=
  OreLocalization.cardinalMk_le S

end Localization
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45870f5e8ea86d939ba33c62d1bca9f9914f3be557fbd06363bbf23b1c2a9674 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Cardinality/Variant850278618b9632fd0dbdb27221661a25859e92cdb941481cbf070e4479fdec3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
