# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DefaultRuleSetsInit.Variantc577b86ad446f78a1c5151e0273c5fba76612d1b2cba99e81fc99fd14feaa1a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bd27d9f04cbdb94dccf309d582ab34d2ddf15a13` · SHA-256 `c577b86ad446f78a1c5151e0273c5fba76612d1b2cba99e81fc99fd14feaa1a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

set_option aesop.check.all true

declare_aesop_rule_sets [regular₁, regular₂]

declare_aesop_rule_sets [dflt₁, dflt₂] (default := true)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3dee1f396a024b7407d78c62b99c2b1c65c4736e66c1ae1ca28b932ea2ee9ef5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefaultRuleSetsInit/Variantc577b86ad446f78a1c5151e0273c5fba76612d1b2cba99e81fc99fd14feaa1a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
