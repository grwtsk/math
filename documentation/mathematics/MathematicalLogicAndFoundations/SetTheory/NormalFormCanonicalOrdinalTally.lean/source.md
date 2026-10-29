# Normal Form Canonical Ordinal Tally — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd7ce4f240896f04247ea459d8f8d9efa9224b83` · SHA-256 `ca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.Semantics

/-!
# Canonical profile-relative codes

The wrapper records the raw code, its normalized form, and the profile proof.
-/

namespace Mathematics.StratifiedBoundary

structure CanonicalOrdinalTally
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic) where
  raw : OrdinalTally
  admitted : profile.admits raw
  normalized : OrdinalTally := profile.normalize raw
  normalized_exact : normalized = profile.normalize raw
  normalized_fixed :
    profile.normalize normalized = normalized

def CanonicalOrdinalTally.semanticValue
    {Semantic : Type u}
    {profile : OrdinalNotationProfile Semantic}
    (code : CanonicalOrdinalTally profile) : Semantic :=
  profile.denotes code.normalized

end Mathematics.StratifiedBoundary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=054ff7935f690b21827f23b73f78f2794bd450ef27bb766e2325840159eca918 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/NormalForm/Variantca75ee05033ffa779d8097567daf29d4b37a678b7974d072c6b37c889b825fb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
