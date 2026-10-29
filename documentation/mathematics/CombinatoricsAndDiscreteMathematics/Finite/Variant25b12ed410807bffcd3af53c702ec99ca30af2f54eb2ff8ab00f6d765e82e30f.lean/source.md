# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant25b12ed410807bffcd3af53c702ec99ca30af2f54eb2ff8ab00f6d765e82e30f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `68d42a999712ce100fd92308e8c423092ff511eb` · SHA-256 `d338e66d203c968c1249a69d6a39b38c6458dafb1b0d6ff2516e471601c46979`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Divisibility/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/

import Mathlib.Algebra.Divisibility.Basic
import Mathlib.Data.Fintype.Defs

/-!
# Divisibility in finite types
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Divisibility.Variant2ff12cfcc4adfc593aba54368ef41404313a482fa2c6731837ec8f6f6888167e

variable {M : Type*} [Semigroup M]

instance [Fintype M] [DecidableEq M] (a b : M) : Decidable (a ∣ b) :=
  decidable_of_iff (∃ c, b = a * c) dvd_def

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93caebff9d0cdb15f75c03b46e571717cba0216339fa0668223e4dc8f8af3e34 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant25b12ed410807bffcd3af53c702ec99ca30af2f54eb2ff8ab00f6d765e82e30f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
