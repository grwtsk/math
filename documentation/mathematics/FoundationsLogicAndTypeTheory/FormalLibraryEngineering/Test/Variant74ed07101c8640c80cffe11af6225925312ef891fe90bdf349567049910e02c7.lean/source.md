# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Test.Variant74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a2e30cc94757eefc024464cebff97fadc815a3d` · SHA-256 `74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
import Mathlib.Init
import Mathlib.Util.AssertNoSorry
import Qq

/--
warning: The module doc-string for a file should be the first command after the imports.
Please, add a module doc-string (`/-! ... -/`) before `example :=
  trivial`.

Hint: Type `m(odule docstring) + [tab]` to insert a template via snippet.

Note: This linter can be disabled with `set_option linter.style.header false`
---
warning: Module MathlibTest.DirectoryDependencyLinter.Test depends on Mathlib.Util.AssertNoSorry,
but is only allowed to import modules starting with one of [Mathlib.Lean].
Note: module Mathlib.Util.AssertNoSorry is directly imported by this module

Note: This linter can be disabled with `set_option linter.directoryDependency false`
-/
#guard_msgs in
set_option linter.style.header true in
example := trivial

/-!
# Tests for the `directoryDependency` linter
-/

-- Some unit-tests for internal functions.
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Util.Basic == true
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Util.Nested.Basic == true
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Utils.Basic == false
#guard Lean.Name.isPrefixOf `Mathlib.Foo `Mathlib.Util.Foo == false
#guard Lean.Name.isPrefixOf `Mathlib.Util `Mathlib.Utils == false
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=536f6c7da5fda8d073d05dfee5e2a84fcbcf865a56cedd391d97fdf7899c0736 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Test/Variant74ed07101c8640c80cffe11af6225925312ef891fe90bdf349567049910e02c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
