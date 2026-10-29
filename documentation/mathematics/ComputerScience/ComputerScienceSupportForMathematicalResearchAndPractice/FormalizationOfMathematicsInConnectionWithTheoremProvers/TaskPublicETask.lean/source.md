# Task Public ETask — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0fcbefa7f0741d9311506054e144eb6dcdc64db0` · SHA-256 `8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Control.Option
public import Init.Control.Except

namespace Lake

public instance : Monad Task where
  map := Task.map
  pure := Task.pure
  bind := Task.bind

public abbrev ETask ε := ExceptT ε Task
public abbrev OptionTask := OptionT Task

@[expose] public def BaseIOTask := Task
public instance : Monad BaseIOTask := inferInstanceAs (Monad Task)
public instance [Inhabited α] : Inhabited (BaseIOTask α) := inferInstance

public abbrev EIOTask ε := ExceptT ε BaseIOTask
public abbrev OptionIOTask := OptionT BaseIOTask

public instance : Inhabited (OptionIOTask α) := ⟨failure⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1ecad9baacd527a65784a59e2c5ce8a533dd8ff5f08a6218eca6b82a8ef0e2a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Task/Variant8cd7cf164a3e50fcdf6b7d9b3dbfe7a027943c646b9e1c5ab2f98681ba573fed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
