# Coefficient Ring — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12298d3fc6df0818c55b949df1a0c2b515d20e8e` · SHA-256 `f4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Registered finite q-series

Only finite truncations are evaluated definitionally.  Infinite convergence
and coefficient-domain membership require separate certificates.
-/

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

structure RationalQSeries where
  coefficient : Nat → ℚ

def RationalQSeries.evaluateThrough
    (series : RationalQSeries)
    (order : Nat)
    (q : ℚ) : ℚ :=
  ∑ degree ∈ Finset.range (order + 1),
    series.coefficient degree * q ^ degree

structure QInterval where
  lower : ℚ
  upper : ℚ
  lower_nonnegative : 0 ≤ lower
  ordered : lower ≤ upper
  upper_le_one : upper ≤ 1

inductive CoefficientDomain
  | integers
  | dyadicSqrtTwo
  | rationals
  | registeredAlgebraic
deriving DecidableEq, Repr

structure CoefficientDomainCertificate
    (series : RationalQSeries) where
  domain : CoefficientDomain
  member : Nat → Prop
  allCoefficients :
    ∀ degree,
      member degree
  domainSound : Prop
  domainSoundProof : domainSound

end Mathematics.SemiLocalDefect.QSeries
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7df16db68f44b191bf071dfeacd9592d29f6b782bafd16225c8043df95bb6365 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CoefficientRing/Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
