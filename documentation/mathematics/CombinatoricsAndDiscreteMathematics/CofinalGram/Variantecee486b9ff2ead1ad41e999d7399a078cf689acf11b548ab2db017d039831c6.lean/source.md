# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CofinalGram.Variantecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94e952eff134a6c16cd032ae75d093ab875eae5f` · SHA-256 `ecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.Sonin.FiniteHorizonGram

/-!
# Cofinal Sonin Gram stability

Convergence topology and nondegeneracy are explicit certificate data.
-/

namespace Mathematics.SemiLocalDefect.Sonin

universe uPrime uSpace

structure CofinalPrimeHorizon
    (Prime : Type uPrime)
    [DecidableEq Prime] where
  cut : Nat → Finset Prime
  monotone :
    ∀ index,
      cut index ⊆ cut (index + 1)
  cofinal :
    ∀ prime,
      ∃ threshold,
        ∀ index,
          threshold ≤ index →
          prime ∈ cut index

inductive GramConvergenceMode
  | operatorNorm
  | strongOperator
  | packetTrace
deriving DecidableEq, Repr

structure CofinalSoninGramStability
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    {family : SoninSpaceFamily Prime}
    {connectors : SoninConnectorSystem family}
    {range :
      FiniteHorizonRangeProjection
        model connectors}
    (grams :
      FiniteHorizonGramFamily
        model connectors range)
    (horizons :
      CofinalPrimeHorizon Prime) where
  limitGram : Finset Prime → model.Operator
  mode : GramConvergenceMode
  converges : Prop
  convergesProof : converges
  limitSelfAdjoint :
    ∀ cut,
      model.SelfAdjoint (limitGram cut)
  limitNonnegative :
    ∀ cut,
      model.Nonnegative (limitGram cut)
  uniformlyNondegenerate : Prop
  uniformlyNondegenerateProof :
    uniformlyNondegenerate

end Mathematics.SemiLocalDefect.Sonin
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e2c35b59f74d4f7e53e4ca0e13cf2d2562bc492d1dbbb061762130ab18cf93ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/CofinalGram/Variantecee486b9ff2ead1ad41e999d7399a078cf689acf11b548ab2db017d039831c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
