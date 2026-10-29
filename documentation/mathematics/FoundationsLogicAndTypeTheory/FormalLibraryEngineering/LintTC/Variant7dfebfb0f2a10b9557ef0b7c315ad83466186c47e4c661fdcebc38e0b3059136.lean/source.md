# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintTC.Variant7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `045c9486bf67e855c90f2eab978bcc4eee7cf036` · SHA-256 `7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Batteries.Tactic.Lint.TypeClass
import Lean.Elab.Command

open Batteries.Tactic.Lint

namespace A

/--
error: This instance has 1 argument that cannot be inferred using typeclass synthesis. Specifically

  argument 2: `{β : Type}`

These arguments are not instance-implicit and appear neither in another instance-implicit argument nor the return type, so they cannot be inferred using typeclass synthesis.
-/
#guard_msgs in
local instance impossible {α β : Type} [Inhabited α] : Nonempty α := ⟨default⟩

end A

namespace B
/--
error: The declaration `bad` should not be an instance as its return type `Nat` is not a type class.
-/
#guard_msgs in
instance bad : Nat := 1

instance good : Inhabited Nat := ⟨1⟩

end B
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=007f64b4b551c4d007c7e1089e12428d16b32dd6fab6f8c01ac36bd04b58c462 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LintTC/Variant7dfebfb0f2a10b9557ef0b7c315ad83466186c47e4c661fdcebc38e0b3059136.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
