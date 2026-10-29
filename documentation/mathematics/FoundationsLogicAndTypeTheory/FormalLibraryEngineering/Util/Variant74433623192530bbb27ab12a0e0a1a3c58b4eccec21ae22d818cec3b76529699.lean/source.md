# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Util.Variant74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64af5134f4dcd861ec65ad997154c0ba5f155386` · SHA-256 `74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Util.CollectFVars
public import Lean.Util.CollectLevelParams
public import Lean.Util.CollectMVars
public import Lean.Util.CollectLevelMVars
public import Lean.Util.CollectLooseBVars
public import Lean.Util.FindMVar
public import Lean.Util.FindLevelMVar
public import Lean.Util.MonadCache
public import Lean.Util.PPExt
public import Lean.Util.Path
public import Lean.Util.Profile
public import Lean.Util.RecDepth
public import Lean.Util.ShareCommon
public import Lean.Util.Sorry
public import Lean.Util.Trace
public import Lean.Util.FindExpr
public import Lean.Util.ReplaceExpr
public import Lean.Util.ForEachExpr
public import Lean.Util.ForEachExprWhere
public import Lean.Util.ReplaceLevel
public import Lean.Util.FoldConsts
public import Lean.Util.SCC
public import Lean.Util.TestExtern
public import Lean.Util.OccursCheck
public import Lean.Util.HasConstCache
public import Lean.Util.Heartbeats
public import Lean.Util.SafeExponentiation
public import Lean.Util.NumObjs
public import Lean.Util.NumApps
public import Lean.Util.FVarSubset
public import Lean.Util.SortExprs
public import Lean.Util.Reprove
public import Lean.Util.ParamMinimizer
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0d0470ba5277c040f8dbfb789a4c14ab9c5d0c199e33fa5f49304563dc3f3f5b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variant74433623192530bbb27ab12a0e0a1a3c58b4eccec21ae22d818cec3b76529699.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
