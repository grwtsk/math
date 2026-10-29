# Slug Slug Kind — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c00a762682e8bcf95c2923c662bd383829f760e` · SHA-256 `a9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Meta.AST

namespace Surface

namespace Meta

inductive SlugKind where
  | project
  | module
  | namespace
  | definition
  | theorem
  | structure
  | inductive
  | fixture
  | paperMap
  | claimBoundary
  | runtime
  | rendering
  | htmlPage
deriving DecidableEq, Repr

structure Slug where
  canonical : String
  kind : SlugKind
  sourceName? : Option String
  module? : Option String
  collisionHash? : Option String
deriving Repr

namespace Slug

def Nonempty (slug : Slug) : Prop :=
  slug.canonical ≠ ""

end Slug

structure ExportedAstNode where
  id : String
  slug : Slug
  trusted : Bool
  nonemptyId : id ≠ ""

def ExportedAstNodeValid (node : ExportedAstNode) : Prop :=
  node.trusted = true ∧ Slug.Nonempty node.slug

theorem exported_ast_node_slug_nonempty
    {node : ExportedAstNode} :
    ExportedAstNodeValid node ->
      Slug.Nonempty node.slug := by
  intro h
  exact h.2

end Meta

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=65a8686df6a6e72e54d901781b8eb944f2645ec9f1eceb11c6dbe23ce93735c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Slug/Varianta9f8bc169517d289bc6ead642cc1e010f2aa8f2ad55e0c26e677f3cd7f2effc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
