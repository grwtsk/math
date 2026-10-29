# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Spread.Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ea6090b4f5fd7de26b6d7a26f18487a4f4c33cc` · SHA-256 `d2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Spread

set_option autoImplicit true
class Foo (α : Type) where
  bar : True

class Something where
  bar : True

instance : Something where
  bar := by trivial

instance : Foo α where
  __ := instSomething -- include fields from `instSomething`

example : Foo α := {
  __ := instSomething -- include fields from `instSomething`
}

structure A (α : Type) where
  default : α
  x : α

axiom mkDefault (α : Type) : Inhabited α

noncomputable example (α : Type) : A α where
  __ := mkDefault α
  x := default
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4e12995cad66a974fa81618fc0663b1d52d201ae4b5536695f1dea72a0fbd49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Spread/Variantd2cd1f8d0af04a997cce0a9fde5fa8223e248cf93f6c43652bb4f66b28b8e19b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
