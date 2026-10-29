# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.CertifiedPrime.Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4a73f02029c334d08cdf38433f13bbc97d996f7` · SHA-256 `2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.Event
import Mathlib.Data.Nat.Prime.Basic

/-!
# Certified prime-local base point

A prismatic fiber is indexed by a prime that is already certified.  No
constructor in this module searches for, predicts, or manufactures a new
prime.
-/

namespace Mathematics.Prismatic

/-- A fixed prime together with the immutable evidence that introduced it. -/
structure CertifiedPrime where
  value : Nat
  isPrime : Nat.Prime value
  statementDigest : Digest
  certificate : ObjectAddress
  deriving Repr

namespace CertifiedPrime

theorem two_le (prime : CertifiedPrime) : 2 ≤ prime.value :=
  prime.isPrime.two_le

theorem ne_zero (prime : CertifiedPrime) : prime.value ≠ 0 :=
  Nat.ne_of_gt (lt_of_lt_of_le Nat.zero_lt_two prime.two_le)

theorem ne_one (prime : CertifiedPrime) : prime.value ≠ 1 :=
  Nat.ne_of_gt prime.two_le

end CertifiedPrime

end Mathematics.Prismatic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4d0186609810bbf75ac8d3962b81b14a68d2c4c07d1e2a27750f0575507039bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/CertifiedPrime/Variant2c24a4980c23b985f6af681f54b268c6c20683c425fecba0ab7429b519a66ecf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
