# Declaration Graph — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `815e86f17a151cfdf8ea918f73aa14ee35828b10` · SHA-256 `ef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.AST.Core

namespace Surface

namespace AST

def DeclarationGraph := List LeanDeclarationAst

def theoremDeclarations (graph : DeclarationGraph) : List LeanDeclarationAst :=
  graph.filter fun declaration =>
    declaration.kind = LeanDeclarationKind.theorem

theorem theoremDeclarations_are_theorems
    {graph : DeclarationGraph} {declaration : LeanDeclarationAst} :
    declaration ∈ theoremDeclarations graph ->
      declaration.kind = LeanDeclarationKind.theorem := by
  intro h
  simp [theoremDeclarations] at h
  exact h.2

end AST

end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6150f699516494854b09c14685b3011dbbc50ee5506f94875d056ee3151d15d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeclarationGraph/Variantef61c520ed68327314a9b919788624a3ea81bfe019d660e26c49536963deeb53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
