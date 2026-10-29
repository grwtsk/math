# Higher Order — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de9b46c8fdcb4632054a18804f9b991d8e91410b` · SHA-256 `d5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.HigherOrder

set_option autoImplicit true
namespace HigherOrderTest

@[higher_order map_comp_pure]
theorem map_pure' {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
  {α β : Type u} (g : α → β) (x : α) : g <$> (pure x : f α) = pure (g x) := map_pure g x

example {f : Type u → Type v} [Applicative f] [LawfulApplicative f]
    {α β : Type u} (g : α → β) : Functor.map g ∘ (pure : α → f α) = pure ∘ g := by
  apply map_comp_pure

end HigherOrderTest
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29155a99ac8347e8d51be59b435fd2eb1bc19d800e75ec7f6ea11b143c2c4e63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HigherOrder/Variantd5aeb00dc0abcc3a45fe324d2e35a3b7100c2bf142088d4071bed493ce60335f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
