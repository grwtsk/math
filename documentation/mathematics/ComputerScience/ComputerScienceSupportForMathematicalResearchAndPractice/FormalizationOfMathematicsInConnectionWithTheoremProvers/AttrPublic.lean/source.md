# Attr Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40a710b2ac47da0b5445cc77b01b43cca5ae1f38` · SHA-256 `6ee1de864a02e91a4132166bd395382bf527107cbab064ed2c6bb6ef2b82e6fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon, Kim Morrison
-/
module

meta import Lean.Util.Trace

public meta section

open Lean

initialize registerTraceClass `plausible.instance
initialize registerTraceClass `plausible.decoration
initialize registerTraceClass `plausible.discarded
initialize registerTraceClass `plausible.success
initialize registerTraceClass `plausible.shrink.steps
initialize registerTraceClass `plausible.shrink.candidates
initialize registerTraceClass `plausible.deriving.arbitrary
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b009294c001d30e0995c80a6627c8a74b39db74e477864a0da48757fad5598f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variant6ee1de864a02e91a4132166bd395382bf527107cbab064ed2c6bb6ef2b82e6fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
