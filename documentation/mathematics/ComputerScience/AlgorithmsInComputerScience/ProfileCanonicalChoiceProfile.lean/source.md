# Profile Canonical Choice Profile — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5e2bffbc8f7f078a2bea6099205306227c44ea1` · SHA-256 `04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Ecosystem.Artifact

/-! # Project-native interpretation profiles -/

namespace Mathematics.Projects

inductive CanonicalChoiceProfile
  | mathlibCompatibility
  | pedagogicalFaithfulness
  | computationalEfficiency
  | minimalDependency
  | historicalSource
  | projectNative
  deriving DecidableEq, Repr

/-- Declared ingestion behavior for one sovereign upstream project. -/
structure ProjectProfile where
  profileId : StableId
  identity : Ecosystem.ProjectIdentity
  canonicalChoice : CanonicalChoiceProfile
  requiredArtifactKinds : List Ecosystem.ArtifactKind
  preserveLocalDefinitions : Bool
  preserveFailures : Bool
  preserveHistory : Bool
  profileDigest : Digest
  deriving Repr

end Mathematics.Projects
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b974827c63df5a02c9464c4dfbcee69575368414e1a610abc1316f8d19277be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Profile/Variant04d5aace9d14397142ec7c6f3ba6bf28164925d053730c50db784ff15aa96dab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
