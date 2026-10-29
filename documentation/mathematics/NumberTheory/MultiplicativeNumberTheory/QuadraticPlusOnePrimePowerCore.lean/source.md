# Complete source: GRWTSK.Interfaces.QuadraticPlusOnePrimePowerCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `333068c379ef9bf1cdbfb9bc1cc000b6cf98d06f` · SHA-256 `faf18cbe7b376de71eb895c2e3b0b0f901880df8956e463cb8c0522c785247ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.Interfaces.QuadraticPlusOneCore
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts
import GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls

set_option autoImplicit false

/-!
# Isolated prime-power lifting root for `n^2+1`

This source-only root extends the local-root and Gaussian-line packet with
the direct odd-prime Hensel step, exact prime-power counts, and the exceptional
2-adic branch.

It is intentionally not imported by `GRWTSK.lean`.

No sieve estimate, thin-family bilinear bound, prime-detection correction,
finite-exception theorem, or quadratic-prime theorem is supplied.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=76d4ed2216cd187715b6453066ab92d5aedb46371ed16057e6a8972f4590cddb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/QuadraticPlusOnePrimePowerCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
