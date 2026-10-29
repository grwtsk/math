# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SafePrefixInTerminalError.Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c320cca7a0057bafd584a3d92d9374b8b90765a` · SHA-256 `3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Aesop

/--
error: Tactic `aesop` failed, failed to prove the goal after exhaustive search.
Initial goal:
  ⊢ ∀ (a b : Nat), a + b = b + 2 * a
Remaining goals after safe rules:
  a b : Nat
  ⊢ a + b = b + 2 * a
-/
#guard_msgs in
example : ∀ (a b : Nat), a + b = b + 2 * a := by
  aesop (config := { terminal := true })
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aea551727b95375587542f89e80dbf1ba5a8bf3653cacbb3c0c61e020a241a4f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SafePrefixInTerminalError/Variant3f599a4d738e2ab2b1756048cef592a308f2b0f01ede07172969876ea88a3d90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
