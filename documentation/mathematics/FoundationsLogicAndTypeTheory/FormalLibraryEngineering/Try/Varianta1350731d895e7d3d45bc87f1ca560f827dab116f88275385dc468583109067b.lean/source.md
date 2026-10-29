# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Try.Varianta1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f552f5d5073b64f1a849f1867cea8c31f0393c79` · SHA-256 `a1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Tactic.Try.Collect

public section

namespace Lean

builtin_initialize registerTraceClass `try
builtin_initialize registerTraceClass `try.collect
builtin_initialize registerTraceClass `try.collect.funInd

builtin_initialize registerTraceClass `try.debug
builtin_initialize registerTraceClass `try.debug.funInd
builtin_initialize registerTraceClass `try.debug.chain

end Lean
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03f02ef4ba618bb8ff42dd054634c476f8bea0c28c8c2ad42454b412d11e8015 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Try/Varianta1350731d895e7d3d45bc87f1ca560f827dab116f88275385dc468583109067b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
