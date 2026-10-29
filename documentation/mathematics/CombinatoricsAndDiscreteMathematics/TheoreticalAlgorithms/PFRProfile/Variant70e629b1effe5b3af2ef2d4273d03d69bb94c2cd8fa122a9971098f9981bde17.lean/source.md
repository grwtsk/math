# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PFRProfile.Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e7573c875d31469a429fbd87ce6f9c968671ed18` · SHA-256 `70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao PFR blueprint-driven profile -/

namespace Mathematics.Projects.Tao

structure ParameterDependency where
  parameterId : StableId
  downstreamDeclarationIds : List StableId
  downstreamBlueprintIds : List StableId
  deriving DecidableEq, Repr

structure PFRProfile where
  base : Projects.ProjectProfile
  blueprintArtifactIds : List StableId
  blueprintGraphIds : List StableId
  theoremBlueprintMapIds : List StableId
  issueIds : List StableId
  paperReferenceIds : List StableId
  parameterDependencies : List ParameterDependency
  stageIds : List StableId
  workflowIds : List StableId
  mathlibMigrationIds : List StableId
  profileDigest : Digest

end Mathematics.Projects.Tao
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ae287fce735a0a95b9f652ba11d2294036e6e9185258d83ce0d5c42e470d74c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PFRProfile/Variant70e629b1effe5b3af2ef2d4273d03d69bb94c2cd8fa122a9971098f9981bde17.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
