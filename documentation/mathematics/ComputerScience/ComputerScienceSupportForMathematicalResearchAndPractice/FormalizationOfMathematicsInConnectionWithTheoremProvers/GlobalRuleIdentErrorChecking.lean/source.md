# Global Rule Ident Error Checking — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a964a0279ec9282d0cdad48fb09d752b895d280` · SHA-256 `b69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

/--
error: duplicate rule 'Nat.add_assoc'; rule 'bar' was already given.
Use [<term>,...] to give multiple rules.
-/
#guard_msgs in
@[aesop norm simp Nat.add_assoc]
theorem bar : True := trivial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=59c4336f69df10ff178acd2f88d8d3fbc92388f1eb8de6a0002a895450d09eb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GlobalRuleIdentErrorChecking/Variantb69d8e0305444b03992e5cdd1071d164d55204a552c9691900995caeb60e0502.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
