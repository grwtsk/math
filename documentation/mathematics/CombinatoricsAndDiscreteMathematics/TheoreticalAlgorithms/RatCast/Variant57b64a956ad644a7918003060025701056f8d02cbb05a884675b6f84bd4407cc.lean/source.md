# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RatCast.Variant57b64a956ad644a7918003060025701056f8d02cbb05a884675b6f84bd4407cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9feeff2d2ec20127de46a363146b82e3d363b48` · SHA-256 `dca122dff4a5e59f17091b33d2d64f4f215d891b97cfab61d8a5a78c7aaae044`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RatCast.Variant22522d19806a2acc2ddbc8fc135f98e552c4bda90ce1cc2f153924dd98719a92","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22522d19806a2acc2ddbc8fc135f98e552c4bda90ce1cc2f153924dd98719a92","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RatCast.Variant22522d19806a2acc2ddbc8fc135f98e552c4bda90ce1cc2f153924dd98719a92","mathematical_subject":"Computation.DataStructures","original_sha256":"22522d19806a2acc2ddbc8fc135f98e552c4bda90ce1cc2f153924dd98719a92","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/Std/Classes/RatCast.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2014 Robert Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Lewis, Leonardo de Moura, Johannes Hölzl, Mario Carneiro, Gabriel Ebner
-/
import Std.Data.Rat.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RatCast.Variant22522d19806a2acc2ddbc8fc135f98e552c4bda90ce1cc2f153924dd98719a92

/-- Type class for the canonical homomorphism `Rat → K`. -/
class RatCast (K : Type u) where
  /-- The canonical homomorphism `Rat → K`. -/
  protected ratCast : Rat → K

instance : RatCast Rat where ratCast n := n

/-- Canonical homomorphism from `Rat` to a division ring `K`.
This is just the bare function in order to aid in creating instances of `DivisionRing`. -/
@[coe, reducible, match_pattern] protected def Rat.cast {K : Type u} [RatCast K] : Rat → K :=
  RatCast.ratCast

-- see note [coercion into rings]
instance [RatCast K] : CoeTail Rat K where coe := Rat.cast

-- see note [coercion into rings]
instance [RatCast K] : CoeHTCT Rat K where coe := Rat.cast
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14f608fafb71517f586ad871829038b69646d84926f5d6a12bbf46e500ed071a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RatCast/Variant57b64a956ad644a7918003060025701056f8d02cbb05a884675b6f84bd4407cc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
