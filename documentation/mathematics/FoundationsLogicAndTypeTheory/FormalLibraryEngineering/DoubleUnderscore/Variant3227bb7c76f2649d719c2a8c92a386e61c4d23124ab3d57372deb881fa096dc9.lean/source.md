# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DoubleUnderscore.Variant3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba641dcf937429392d8707651ebc47077dbb0ba6` · SHA-256 `3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.Linter.Style

set_option linter.style.nameCheck true
variable (n : Nat)

-- this notation generates the declaration `«term__,»` that has a double underscore,
-- but is allowed by `linter.style.nameCheck`.
notation "_" n "," => Nat.succ n

/-- info: `«term__,» : Lean.Name -/
#guard_msgs in
#check `«term__,»

/--
warning: The declaration 'double__underscore' contains '__', which does not follow the mathlib naming conventions. Consider using single underscores instead.
note: this linter can be disabled with `set_option linter.style.nameCheck false`
-/
#guard_msgs in
def double__underscore : Unit := ()
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab2f955d4ff80ffb60548d77317f8f055cbc9383521a99e635482e27c068a0fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DoubleUnderscore/Variant3227bb7c76f2649d719c2a8c92a386e61c4d23124ab3d57372deb881fa096dc9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
