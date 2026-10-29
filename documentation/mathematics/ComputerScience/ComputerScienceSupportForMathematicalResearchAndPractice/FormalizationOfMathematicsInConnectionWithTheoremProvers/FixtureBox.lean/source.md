# Fixture Box — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8769aa208eb7f17aaa1a253f965e740c6c0ec83` · SHA-256 `d6157a6999e4657109131cfd4d9c78b8c4d76ee8e4790fc12ff3abb3b81bbae6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
namespace FormalResearch.Fixture
inductive Token where
  | atom
  | pair (left right : Token)
structure Box where
  value : Nat
class HasValue (α : Type) where
  value : α
instance : HasValue Nat := ⟨0⟩
private def hidden : Nat := 7
def value : Nat := 1
theorem changed : (1 : Nat) = 1 := rfl
theorem same : True := And.left (And.intro True.intro True.intro)
theorem source : True := True.intro
theorem target : True ∧ True := ⟨True.intro, True.intro⟩
theorem transport : True → (True ∧ True) := fun h => ⟨h, h⟩
theorem equivalence : True ↔ (True ∧ True) := ⟨fun h => ⟨h, h⟩, And.left⟩
theorem freshA : True := True.intro
theorem freshB : True ∧ True := ⟨True.intro, True.intro⟩
end FormalResearch.Fixture
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5df0bee23de6299a572bbb457f4adebca93a837e33d29c71c78d23fd0e2e4a77 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Fixture/Variantd6157a6999e4657109131cfd4d9c78b8c4d76ee8e4790fc12ff3abb3b81bbae6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
