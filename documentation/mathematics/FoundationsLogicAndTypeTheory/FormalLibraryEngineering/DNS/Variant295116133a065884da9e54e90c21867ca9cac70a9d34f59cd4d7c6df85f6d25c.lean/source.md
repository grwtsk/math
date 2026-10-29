# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DNS.Variant295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4b3fc4cf7ffd11ce39415bc098a8f00482b377eb` · SHA-256 `295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Init.System.Promise
public import Init.Data.SInt
public import Std.Net

@[expose] public section

namespace Std
namespace Internal
namespace UV
namespace DNS

open Std.Net

/--
Asynchronously resolves a hostname and service to an array of socket addresses.
-/
@[extern "lean_uv_dns_get_info"]
opaque getAddrInfo (host : @& String) (service : @& String) (family : UInt8) :
    IO (IO.Promise (Except IO.Error (Array IPAddr)))

/--
Performs a reverse DNS lookup on a `SocketAddress`.
-/
@[extern "lean_uv_dns_get_name"]
opaque getNameInfo (host : @& SocketAddress) : IO (IO.Promise (Except IO.Error (String × String)))

end DNS
end UV
end Internal
end Std
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=baae75fdbcba43d2e4ca8ab86c00dfd63bed6831a6e824599c1fb302b3753998 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DNS/Variant295116133a065884da9e54e90c21867ca9cac70a9d34f59cd4d7c6df85f6d25c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
