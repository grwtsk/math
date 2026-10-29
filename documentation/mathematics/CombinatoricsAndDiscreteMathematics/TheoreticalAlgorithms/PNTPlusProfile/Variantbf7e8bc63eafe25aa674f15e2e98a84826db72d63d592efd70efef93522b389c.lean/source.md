# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PNTPlusProfile.Variantbf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b795e3bf59c3360d4eaa26dcc46cf48477dd4db7` · SHA-256 `bf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Projects.Profile

/-! # Tao PNT+ explicit-estimate profile -/

namespace Mathematics.Projects.Tao

structure ExactParameter where
  parameterId : StableId
  exactValueDigest : Option Digest
  intervalEnclosureDigest : Option Digest
  literatureSourceId : StableId
  literatureDate : String
  checkerVersionDigest : Digest
  deriving DecidableEq, Repr

structure ParameterEdge where
  sourceParameterId : StableId
  targetTheoremId : StableId
  transformationDigest : Digest
  deriving DecidableEq, Repr

structure PNTPlusProfile where
  base : Projects.ProjectProfile
  theoremNodeIds : List StableId
  parameters : List ExactParameter
  dependencies : List ParameterEdge
  numericalCheckerIds : List StableId
  blueprintArtifactIds : List StableId
  issueIds : List StableId
  sourcePaperIds : List StableId
  proofProducingValidationRequired : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c4c4e45d593a29bb71c8b5a02db0c5fa03d7339911fd7941b89bbb8a46260b2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PNTPlusProfile/Variantbf7e8bc63eafe25aa674f15e2e98a84826db72d63d592efd70efef93522b389c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
