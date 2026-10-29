# Basic Basic Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b66b197baa53b42ef34d44bca00d14c43a7f5398` · SHA-256 `502b676c78ed2555899e18020dca400cce98389e0f7802a72356b0bd979ed261`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Wanted/RingTheory/Congruence/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.RingTheory.Congruence.Basic


namespace GRWTSK.Algebra.Congruence.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537

variable {R R' : Type*}

namespace RingCon

variable [Add R] [Mul R] [Add R'] [Mul R']

open scoped Function

-- This probably needs the RingCon version of `Setoid.comap_surjective`
proof_wanted comap_ringConGen_equiv
    {F} [FunLike F R' R] [MulHomClass F R' R] [AddHomClass F R' R] [EquivLike F R' R]
    (r : R → R → Prop) (f : F) :
    (ringConGen r).comap f = ringConGen (r on f)

end RingCon
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=842fbc7dab0ead54fb6655db99c4be7c08cec84b97d138030317f1802aa1ceee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant26f9168256366bb86cb17d4efc5169bc6dec9975ec71b54eb1e092c1e28ac90b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
