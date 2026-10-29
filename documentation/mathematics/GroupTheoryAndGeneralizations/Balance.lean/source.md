# Balance — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e6a000f200f47942d16461ada6d2b31e1558c3b` · SHA-256 `8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Hardy.Symbol

/-!
# Archimedean balance

The balance records how the archimedean ratio is paired with every admitted
finite place.  Existence is cut-local; naturality under enlargement is a
separate certificate.
-/

namespace Mathematics.SemiLocalDefect.Hardy

open scoped BigOperators

universe uPrime uSymbol

structure ArchimedeanBalance
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  residual : Symbol
  allocation : Prime → Symbol
  archimedean_factorization :
    profile.archimedeanRatio =
      residual *
        ∏ prime ∈ cut, allocation prime
  paired_quasiInner :
    ∀ prime ∈ cut,
      quasiInner.member
        (allocation prime *
          profile.finiteRatio prime)
  residualHardyCondition : Prop
  residualHardyConditionProof :
    residualHardyCondition
  digest : BalanceDigest

structure ArchimedeanBalanceExistence
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    (profile :
      SemiLocalSymbolProfile Prime Symbol)
    (quasiInner : QuasiInnerClass Symbol)
    (cut : Finset Prime) where
  balance :
    ArchimedeanBalance
      profile quasiInner cut

structure ArchimedeanBalanceNaturality
    {Prime : Type uPrime}
    {Symbol : Type uSymbol}
    [CommGroup Symbol]
    [DecidableEq Prime]
    {profile :
      SemiLocalSymbolProfile Prime Symbol}
    {quasiInner : QuasiInnerClass Symbol}
    {source target : Finset Prime}
    (sourceBalance :
      ArchimedeanBalance
        profile quasiInner source)
    (targetBalance :
      ArchimedeanBalance
        profile quasiInner target) where
  source_subset : source ⊆ target
  retainedPairingCompatible :
    ∀ prime ∈ source,
      sourceBalance.allocation prime =
        targetBalance.allocation prime
  residualTransition : Prop
  residualTransitionProof :
    residualTransition

end Mathematics.SemiLocalDefect.Hardy
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=311f4bb68c37a08acd1cb530a182c67b68cc2397054103188da5ed097175c91a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Balance/Variant8535510ae07bf82060471147383e9131e13c336d59e8072d13135a35f1b5a295.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
