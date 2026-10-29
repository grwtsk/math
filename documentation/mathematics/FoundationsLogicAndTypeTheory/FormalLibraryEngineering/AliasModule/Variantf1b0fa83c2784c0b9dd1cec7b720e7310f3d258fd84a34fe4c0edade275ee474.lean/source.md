# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AliasModule.Variantf1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54f57890812c5e5fe0f9672b004162d290f5f566` · SHA-256 `f1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
module
public import Batteries.Tactic.Alias

set_option linter.missingDocs false

theorem priv_thm : 1 + 1 = 2 := rfl

theorem priv_iff : True ↔ True := Iff.rfl

def priv_def : Nat := 5

-- A public alias of a private theorem is allowed: theorem proofs are not exported,
-- so the alias's value referring to the private name does not leak anything.
public alias thm_alias := priv_thm

-- The iff-direction form works for private iff theorems too.
public alias ⟨mp_alias, mpr_alias⟩ := priv_iff

-- A private alias of a private definition is fine.
alias priv_def_alias := priv_def

-- A private alias of a private theorem also works.
alias priv_thm_alias := priv_thm

-- A public alias of a private *definition* must still be rejected, because the
-- definition's value would leak the private implementation.
/-- error: Unknown constant `priv_def` -/
#guard_msgs in
public alias def_alias := priv_def
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7052be20d32b7fe0e5ed579f1fabb2486b3ba57d049d570ed806222e40bfe4d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AliasModule/Variantf1b0fa83c2784c0b9dd1cec7b720e7310f3d258fd84a34fe4c0edade275ee474.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
