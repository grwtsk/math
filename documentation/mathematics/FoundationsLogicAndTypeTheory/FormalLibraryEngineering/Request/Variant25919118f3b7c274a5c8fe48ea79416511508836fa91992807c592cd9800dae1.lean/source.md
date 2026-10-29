# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c04f25f176a18f83316ab1f32431a4fa4fe239e3` · SHA-256 `25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.GraphAccess.Core.Objective
import Mathematics.GraphAccess.Core.Budget

/-!
# Proposal-only graph-access request
-/

namespace Mathematics.GraphAccess

structure GraphAccessRequest where
  schemaVersion : String := "noeoueeue.graph-access-request.v1"
  requestId : String
  graphCutRef : String
  sourceNodeRef : String
  targetNodeRef : Option String
  authorityMode : AuthorityMode
  objective : AccessObjective
  requestedMode : Option TraversalMode
  relationScopeRef : String
  admissibilityRef : String
  edgeCostProfileRef : Option String
  heuristicProfileRef : Option String
  portLabelProfileRef : Option String
  actionAlphabetRef : Option String
  invariantLawRef : Option String
  traversalBudget : GraphAccessBudget
  verificationProfileRef : String
  presentationProfileRef : String
  contextCutRef : String
  principalRef : String
  authorityRef : String
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem access_request_is_nonauthoritative
    (request : GraphAccessRequest) :
    request.authoritativeEffect = false :=
  request.authoritativeEffect_exact

end Mathematics.GraphAccess
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=770939f14a7b21defc302ab917ce72bf0eaffd3a985ed6c8699409036e0c08a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Request/Variant25919118f3b7c274a5c8fe48ea79416511508836fa91992807c592cd9800dae1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
