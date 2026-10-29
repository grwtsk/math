# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44243ca66e1dbc486e8819312b7ef22752fdba86` · SHA-256 `10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Std.Tactic.SeqFocus

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  constructor
  -- error: too many tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩; trivial; trivial]
  -- error: not enough tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩]
  map_tacs [trivial; exact ⟨0, rfl⟩; trivial]

example : ((True ∧ True) ∧ (∃ x : Nat, x = x)) ∧ (True ∧ (∃ x : Nat, x = x)) := by
  constructor
  constructor
  map_tacs [(constructor; trivial); exact ⟨0, rfl⟩; constructor]
  trivial
  trivial
  exact ⟨0, rfl⟩

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  -- error: not enough tactics
  fail_if_success constructor <;> [trivial]
  map_tacs [constructor <;> [trivial; exact ⟨0, rfl⟩]; constructor]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe23b7b7d053232f60cf15f6c396d8aa25ada274496686b06cad9160e9d04475 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SeqFocus/Variant10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
