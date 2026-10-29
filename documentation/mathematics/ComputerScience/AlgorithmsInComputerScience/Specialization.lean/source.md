# Specialization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03f944634974d1b1a0820cb89c32a20ea64ca7a7` · SHA-256 `81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Template

/-!
# Class--prime factorization

Class binding and prime specialization are distinct total maps.  A bound class
template may retain typed prime holes, but its class values cannot depend on a
prime environment.
-/

namespace Mathematics.AbelReynolds

universe u v

structure ClassPrimeFactorization
    (ClassEnvironment : Type u)
    (PrimeEnvironment : Type v)
    (BoundClass Output : Type*) where
  bindClass : ClassEnvironment → BoundClass
  bindPrime : BoundClass → PrimeEnvironment → Output
  evalTemplate : ClassEnvironment → PrimeEnvironment → Output
  factors :
    ∀ classEnvironment primeEnvironment,
      evalTemplate classEnvironment primeEnvironment =
        bindPrime (bindClass classEnvironment) primeEnvironment

theorem ClassPrimeFactorization.class_binding_deterministic
    {ClassEnvironment : Type u}
    {PrimeEnvironment : Type v}
    {BoundClass Output : Type*}
    (factorization :
      ClassPrimeFactorization
        ClassEnvironment PrimeEnvironment BoundClass Output)
    (classEnvironment : ClassEnvironment) :
    factorization.bindClass classEnvironment =
      factorization.bindClass classEnvironment :=
  rfl

structure PrimeBinding where
  hole : PrimeHole
  value : Value
  validationCertificateId : String

def PrimeBinding.SortCorrect (binding : PrimeBinding) : Prop :=
  binding.value.sort = binding.hole.sort

def PrimeBinding.BoundaryCorrect
    (binding : PrimeBinding)
    (target : BoundaryKey)
    (transports : List BoundaryTransport) : Prop :=
  MayConsume binding.hole.boundary target transports

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9008f1d6f8a4aebbce79d30a29f9f17ed58aaebdcc86e3a65ea504d1c6253bb2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Specialization/Variant81dd87ada878880c58b8515169ad1965b30018bd41726ae075cb9417ff4fa5fd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
