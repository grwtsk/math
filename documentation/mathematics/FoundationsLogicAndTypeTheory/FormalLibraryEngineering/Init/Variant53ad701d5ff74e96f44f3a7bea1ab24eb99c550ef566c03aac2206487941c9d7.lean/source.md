# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Init.Variant53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ba1866f02d1e5343933a830e2db8cad72782089` · SHA-256 `53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Peter Nelson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Nelson
-/
import Mathlib.Init
import Aesop

/-!
# Matroid Rule Set

This module defines the `Matroid` Aesop rule set which is used by the
`aesop_mat` tactic. Aesop rule sets only become visible once the file in which
they're declared is imported, so we must put this declaration into its own file.
-/

declare_aesop_rule_sets [Matroid]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c744b2bbf8a76ac09cee3fbaeea96591988ef3b7e2925b7b3de29b3611cb52e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant53ad701d5ff74e96f44f3a7bea1ab24eb99c550ef566c03aac2206487941c9d7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
