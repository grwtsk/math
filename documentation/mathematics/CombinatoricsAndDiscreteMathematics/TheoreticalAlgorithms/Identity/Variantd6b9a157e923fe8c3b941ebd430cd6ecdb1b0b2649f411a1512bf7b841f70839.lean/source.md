# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Identity.Variantd6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e36ce20db76de25e2bd84a281049eabf6af92abe` · SHA-256 `d6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.Index.Records
import DAF.Manifest

/-!
# Stable world-model identities

The existing Continuous Assurance identifiers for mathematical objects,
formal declarations, representations, obligations, and artifacts are reused.
This module adds only identities not already present in the parent namespace.
-/

namespace Surface.ContinuousAssurance.WorldModel

/-- Stable identity of a proposition independently of its representation. -/
structure PropositionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of an assumption in a finite assumption context. -/
structure AssumptionId where
  value : String
  deriving DecidableEq, Repr

/-- Stable semantic identity of one mathematical world model. -/
structure WorldModelId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one typed model translation. -/
structure TranslationId where
  value : String
  deriving DecidableEq, Repr

/-- Stable identity of one declared dependency edge. -/
structure DependencyId where
  value : String
  deriving DecidableEq, Repr

/-- Human-independent vocabulary identity for a model version. -/
structure Vocabulary where
  identity : ArtifactIdentity
  symbols : List String
  deriving DecidableEq, Repr

/-- Namespace boundary in which a model version publishes declarations. -/
structure DeclarationNamespace where
  value : String
  deriving DecidableEq, Repr

/-- Identity of the finite registry snapshot itself. -/
structure RegistryVersionId where
  version : DAF.Version
  sourceDigest : ArtifactIdentity
  deriving DecidableEq, Repr

end Surface.ContinuousAssurance.WorldModel

```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05230625f495b2900cdd8233dc130b22036b2009014c0afb1b43c365a8b91121 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Identity/Variantd6b9a157e923fe8c3b941ebd430cd6ecdb1b0b2649f411a1512bf7b841f70839.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
