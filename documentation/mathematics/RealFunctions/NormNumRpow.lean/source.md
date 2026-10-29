# Norm Num Rpow — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc28ac51253f8ad1a5282cb41f926799c996c170` · SHA-256 `5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, David Renshaw
-/
import Mathlib.Analysis.SpecialFunctions.Pow.Real

example : (2 : ℝ) ^ (3 : ℝ) = 8 := by norm_num1
example : (1 : ℝ) ^ (20 : ℝ) = 1 := by norm_num1
example : (-2 : ℝ) ^ (3 : ℝ) = -8 := by norm_num1
example : (1/5 : ℝ) ^ (2 : ℝ) = 1/25 := by norm_num1
example : (-1/3 : ℝ) ^ (-3 : ℝ) = -27 := by norm_num1
example : (1/2 : ℝ) ^ (-3 : ℝ) = 8 := by norm_num1
example : (2 : ℝ) ^ (-3 : ℝ) = 1/8 := by norm_num1
example : (-2 : ℝ) ^ (-3 : ℝ) = -1/8 := by norm_num1
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e97a758626097a1d48db36143b6cb974b346feab9ab8e032a5e7a2c98a6c0670 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/SpecialFunctions/NormNumRpow/Variant5d74c1c98e83377b0e93b6ca6d08ec3ac724dd45faab9faa6311bb3490a74333.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
