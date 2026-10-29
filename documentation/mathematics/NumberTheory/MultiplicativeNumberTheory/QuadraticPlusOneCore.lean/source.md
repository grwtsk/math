# Complete source: GRWTSK.Interfaces.QuadraticPlusOneCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4ef22633324eb8c60349eb77fc8dbf24f532a10` · SHA-256 `67844f96de1dc825c6c2ce8047bf79d0f340ae13152bf4a115ef586368d2d9e1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting
import GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
import GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
import GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOneControls

set_option autoImplicit false

/-!
# Isolated `n^2 + 1` local-arithmetic and Gaussian-line root

This source-only root collects local roots and coprime CRT multiplicativity,
exact finite residue-block counts, the thin Gaussian norm and multiplication
constraints, and the strict prime-value correction boundary.

It is intentionally not imported by `GRWTSK.lean`.

No prime-power lifting theorem, polynomial-sieve estimate, thin Gaussian
bilinear bound, finite-exception result, or quadratic-prime theorem is
supplied.
-/
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2eed8af584edd8261dc94c42b4b7466ef5900bb2d58eacf98ec4e8ea490b26bf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/QuadraticPlusOneCore.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
