# Request Change Kind — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `088bc4726d6f68feb124d365226dbfaebe602fc7` · SHA-256 `1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Incremental.ImportGraph

namespace Surface
namespace Incremental

inductive ChangeKind where
  | sourceChanged
  | importChanged
  | declarationChanged
  | claimBoundaryChanged
  | proofStatusChanged
  | generatorVersionChanged
  | forcedRegeneration
deriving Repr, DecidableEq

structure ChangedLeanFile where
  path : String
  beforeHash? : Option ContentHash
  afterHash : ContentHash
  changeKind : ChangeKind
  claimBoundary : List String
deriving Repr

inductive ArtifactKind where
  | moduleAst
  | declarationAst
  | declarationGraph
  | theoremManifest
  | syntacticCategory
  | syntacticSite
  | coverBasis
  | omegaFragment
  | internalLanguage
  | affineToposObject
  | pascalTreeManifest
  | resurfaceIndex
  | reportJson
deriving Repr, DecidableEq

structure IncrementalGenerationRequest where
  requestId : String
  sourceSnapshot : String
  toolchainHash : ContentHash
  generatorVersionHash : ContentHash
  changedFiles : List ChangedLeanFile
  requestedArtifactKinds : List ArtifactKind
  forceRegenerateModules : List ModuleKey
  claimBoundary : List String
deriving Repr

theorem changedLeanFile_boundary_visible
    (F : ChangedLeanFile) :
    F.claimBoundary = F.claimBoundary :=
  rfl

end Incremental
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9e222e9b8eec53e8523279a14f3cd8894407700b4cc283068b7241af849017bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Request/Variant1f964cd19cf63a603c6f86b33edf3aa857afe114e97f60ea0783ff6bd67d9213.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
