# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiscrKeyConfig.Variantef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fc73bd638bd39a6e186e779f7567338f23f1a86a` · SHA-256 `ef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Lean

open Lean Lean.Meta

namespace Aesop

/-- The configuration used by all Aesop indices. -/
-- I don't really know what I'm doing here. I'm just copying the config used
-- by `simp`; see `Meta/Simp/Types.lean:mkIndexConfig`.
def indexConfig : ConfigWithKey :=
  ({ proj := .no, transparency := .reducible : Config }).toConfigWithKey

def mkDiscrTreePath (e : Expr) : MetaM (Array DiscrTree.Key) :=
  withConfigWithKey indexConfig $ DiscrTree.mkPath e

def getUnify (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getUnify e

def getMatch (t : DiscrTree α) (e : Expr) : MetaM (Array α) :=
  withConfigWithKey indexConfig $ t.getMatch e

end Aesop
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=72ab0328323cb4f8679938b8f02d031a7ba980b8848a22c490cca627c0bce0b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscrKeyConfig/Variantef5f590ee1ce5dcc77a3719719b91ef587655bd21e2076b2526c9509d620bbdb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
