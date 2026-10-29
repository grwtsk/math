# AST — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a30e2650523d6d79b1657d703e358cef6bd6a52` · SHA-256 `94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Surface

namespace Meta

inductive AstNodeKind where
  | project
  | module
  | namespace
  | declaration
  | structure
  | structureField
  | inductive
  | constructor
  | definition
  | theorem
  | proof
  | fixture
  | runtimeBinding
  | typeScriptBinding
  | webGpuView
  | paperReference
  | claimBoundary
  | htmlPage
  | context
  | morphism
  | baseChange
  | comparison
  | fiber
deriving DecidableEq, Repr

inductive TrustStatus where
  | trusted
  | generator
  | fixtureOnly
  | externalReference
  | notClaimed
deriving DecidableEq, Repr

inductive DependencyPrecision where
  | exact
  | conservative
  | manual
  | unknown
deriving DecidableEq, Repr

structure SourceRange where
  startLine : Nat
  startColumn : Nat
  endLine : Nat
  endColumn : Nat
deriving Repr

structure AstNode where
  id : String
  slug : String
  kind : AstNodeKind
  displayTitle : String
  sourcePath : String
  sourceRange? : Option SourceRange
  module? : Option String
  namespace? : Option String
  leanName? : Option String
  trustStatus : TrustStatus
  dependencies : List String
  fixtures : List String
  paperReferences : List String
  claimBoundaries : List String
  htmlPath : String
  contentHash : String
deriving Repr

structure AstEdge where
  fromId : String
  toId : String
  relation : String
  precision : DependencyPrecision
deriving Repr

structure ProjectAst where
  root : AstNode
  nodes : List AstNode
  edges : List AstEdge
deriving Repr

end Meta

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33d0bc2d1fbe099c464ad0572c97f97e78bd0fea37a4e396f2a3d4d3b602dcc3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AST/Variant94cf471fe178a9a61e74a9aaafa7ce5b0ba2dbb6364403548ea19b161911c186.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
