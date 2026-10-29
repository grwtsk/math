# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Functions.Variant7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ebe624acd4c3ae34067d762ea28c10385a6130c` · SHA-256 `7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 LeanCert Contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: LeanCert Contributors
-/
import LeanCert.Engine.TaylorModel.Trig
import LeanCert.Engine.TaylorModel.ExpLog
import LeanCert.Engine.TaylorModel.Hyperbolic
import LeanCert.Engine.TaylorModel.Special

/-!
# Taylor Models - Function-Specific Definitions

This file re-exports all function-specific Taylor model definitions.
The implementation is split into:

* `TaylorModel/Trig.lean` - Sin, Cos, Sinc (and future Tan)
* `TaylorModel/ExpLog.lean` - Exp, Log
* `TaylorModel/Hyperbolic.lean` - Sinh, Cosh, Tanh, Atan, Atanh, Asinh
* `TaylorModel/Special.lean` - Erf (and future Sqrt)

## Main definitions (re-exported)

### Trig
* `sinTaylorPoly`, `cosTaylorPoly`, `sincTaylorPoly`
* `tmSin`, `tmCos`, `tmSinc`
* `tmSin_correct`, `tmCos_correct`

### ExpLog
* `expTaylorPoly`, `logTaylorPolyAtCenter`
* `tmExp`, `tmLog`
* `tmExp_correct`, `tmLog_correct`

### Hyperbolic
* `sinhTaylorPoly`, `coshTaylorPoly`, `atanTaylorPoly`, `atanhTaylorPoly`, `asinhTaylorPoly`
* `tmSinh`, `tmCosh`, `tmTanh`, `tmAtan`, `tmAtanh`, `tmAsinh`
* `tmSinh_correct`, `tmCosh_correct`, `tmAtanh_correct`

### Special
* `erfTaylorPoly`
* `tmErf`
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4e49e3f2eac5ef763f12e36cae0c887806b0eebab2e16091bd35e6966fc95395 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Functions/Variant7f02fc560c85212f282893dc84b51c37a51a59c04e1f3af2cd83216becea0155.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
