# Global Attribute In — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `793a51c174f08741b05a76820dc3c858b1ac1719` · SHA-256 `ba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang, Damiano Testa
-/

import Mathlib.Tactic.Linter.GlobalAttributeIn

/-! Tests for the `globalAttributeIn` linter. -/

-- Test disabling the linter.
set_option linter.globalAttributeIn false

set_option autoImplicit false in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

set_option linter.globalAttributeIn true

set_option linter.globalAttributeIn false in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

-- Global instances with `in`, are linted, as they are a footgun.

/--
warning: Despite the `in`, the attribute 'instance 1100' is added globally to 'Int.add'
please remove the `in` or make this a `local instance 1100`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
set_option autoImplicit false in
attribute [instance 1100] Int.add in
set_option autoImplicit false in
instance : Inhabited Int where
  default := 0

/--
warning: Despite the `in`, the attribute 'instance' is added globally to 'Int.add'
please remove the `in` or make this a `local instance`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [instance] Int.add in
instance : Inhabited Int where
  default := 0

/--
warning: Despite the `in`, the attribute 'simp' is added globally to 'Int.add'
please remove the `in` or make this a `local simp`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [simp] Int.add in
instance : Inhabited Int where
  default := 0

namespace X

-- Here's another example, with nested attributes.
/-- warning: declaration uses 'sorry' -/
#guard_msgs in
theorem foo (x y : Nat) : x = y := sorry

/--
warning: Despite the `in`, the attribute 'simp' is added globally to 'foo'
please remove the `in` or make this a `local simp`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
---
warning: Despite the `in`, the attribute 'ext' is added globally to 'foo'
please remove the `in` or make this a `local ext`
note: this linter can be disabled with `set_option linter.globalAttributeIn false`
-/
#guard_msgs in
attribute [simp, local simp, ext, scoped instance, -simp, -ext] foo in
def bar := False

#guard_msgs in
-- `local instance` is allowed with `in`
attribute [local instance] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `local instance priority` is allowed with `in`
attribute [local instance 42] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `scoped instance` is allowed with `in`
attribute [scoped instance] Int.add in
instance : Inhabited Int where
  default := 0

#guard_msgs in
-- `scoped instance priority` is allowed with `in`
attribute [scoped instance 42] Int.add in
instance : Inhabited Int where
  default := 0

end X

-- Omitting the `in` is also fine.

attribute [local instance 42] X.foo

-- Global instance without the `in` are also left alone.
attribute [instance 20000] X.foo

namespace X

attribute [scoped instance 0] foo
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1646e7f1602d4d5e9b3a4d50beca5b4ea766e98a4747d3954105134002f2decf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalAttributeIn/Variantba93730f0e723889a1404ff97b6ec7c81d1d318da2f0687571e3c2967e0b3f8f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
