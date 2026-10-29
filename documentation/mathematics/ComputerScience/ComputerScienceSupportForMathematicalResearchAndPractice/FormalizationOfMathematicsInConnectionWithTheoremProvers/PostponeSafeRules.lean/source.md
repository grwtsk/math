# Postpone Safe Rules — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fddbc4246570b858955ff3e7bc3ecede27291bbc` · SHA-256 `d5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

-- This is a test case for postponed safe rules. When a safe rule assigns mvars,
-- it is not applied but instead postponed. Then we later try it again as an
-- unsafe rule.
--
-- It's hard to test this feature completely because we can't really tell from
-- the outside when a rule has been applied. But we can at least look at the
-- traces of the following test cases.

axiom T : Nat → Prop

@[aesop safe]
axiom t : T 0

example : ∃ (i : Nat), T i := by
  aesop


axiom U : Nat → Prop

@[aesop safe 0]
axiom u₁ : U 0

@[aesop safe 1]
axiom u₂ : U 1

example : ∃ i, U i ∧ i = 1 := by
  aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=727452c757dbdacdb2aeb3a99f725cc3fce30d627953235b59275982b3085e61 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PostponeSafeRules/Variantd5642969d7aaa37edf5c7a0199750cedd7e29bc23acea1d82301d4113b7ca56e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
