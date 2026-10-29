import Mathematics.Authority.Kernel
import Mathematics.Prismatic.TorsionTower
import Mathlib.LinearAlgebra.Span.Basic

/-!
# One prime-local fiber candidate

The carrier is indexed by an already certified prime, but the fiber itself is
not certified.  It packages a bounded-prism candidate, a semilinear Frobenius,
a necessary fragment of a Nygaard filtration, and a finite torsion tower.  A
derived-completeness proof, a complete Nygaard formalization, and every
comparison theorem remain explicit obligations.
-/

namespace Mathematics.Prismatic

open Mathematics.Authority

universe u v w

/--
A candidate Nygaard filtration.  Besides being decreasing and exhaustive at
level zero, it records the necessary Frobenius divisibility condition.  These
fields do not claim the full derived Nygaard construction.
-/
structure NygaardFiltrationCandidate
    (prime : CertifiedPrime)
    (A : Type u) (ModuleCarrier : Type v)
    [CommRing A] [AddCommGroup ModuleCarrier] [Module A ModuleCarrier]
    (frobenius : ModuleCarrier →+ ModuleCarrier) where
  level : Nat → Submodule A ModuleCarrier
  level_zero : level 0 = ⊤
  antitone :
    ∀ {lower upper}, lower ≤ upper → level upper ≤ level lower
  frobenius_divisible :
    ∀ (index : Nat) (value : ModuleCarrier),
      value ∈ level index →
        ∃ quotient : ModuleCarrier,
          frobenius value =
            ((prime.value : A) ^ index) • quotient
  levelDigest : Nat → Digest
  evidenceAddress : ObjectAddress

/-- Frobenius-derived polynomial data before a local Euler theorem exists. -/
structure FrobeniusEulerCandidate (Coefficient : Type w) where
  coefficients : List Coefficient
  normalizationDigest : Digest
  sourceFrobeniusDigest : Digest
  evidenceAddress : ObjectAddress

/--
Candidate local fiber at an already certified prime.  No field can promote its
Euler candidate or its unresolved derived/comparison obligations.
-/
structure PrimeLocalFiberCandidate
    (prime : CertifiedPrime)
    (A : Type u) (Cohomology : Type v)
    (Level : Nat → Type w)
    [CommRing A]
    [AddCommGroup Cohomology] [Module A Cohomology]
    [∀ level, AddCommGroup (Level level)]
    [∀ level, Fintype (Level level)] where
  prism : BoundedPrismCandidate prime A
  frobeniusAction : Cohomology →+ Cohomology
  frobeniusSemilinear :
    ∀ (scalar : A) (value : Cohomology),
      frobeniusAction (scalar • value) =
        prism.deltaStructure.frobenius scalar •
          frobeniusAction value
  nygaard :
    NygaardFiltrationCandidate
      prime A Cohomology frobeniusAction
  torsionTower : PrimePowerTorsionTower prime Level
  localEulerCandidate : Option (FrobeniusEulerCandidate ℤ)
  comparisonObligationIds : List StableId
  candidateDigest : Digest
  evidenceAddress : ObjectAddress

/-!
## Kernel-bound local fibers

`PrimeLocalFiberCandidate` remains a proposal because its comparison and
derived-completion obligations are still explicit.  A finite certified state
must therefore retain the complete typed candidate and a kernel certificate
for the fixed integrity statement below.  It cannot replace that data with an
address.
-/

/--
The complete typed realization retained by a certified finite-prime state.
The algebra, cohomology carrier, finite torsion levels, and all of their type
class dictionaries remain part of the value, so no address lookup is needed
to recover the local mathematical object.
-/
structure PrimeLocalFiberRealization
    (prime : CertifiedPrime) where
  Coefficient : Type u
  Cohomology : Type u
  Level : Nat → Type u
  coefficientRing : CommRing Coefficient
  cohomologyGroup : AddCommGroup Cohomology
  cohomologyModule :
    @Module Coefficient Cohomology
      coefficientRing.toSemiring cohomologyGroup.toAddCommMonoid
  levelGroup : ∀ level, AddCommGroup (Level level)
  levelFintype : ∀ level, Fintype (Level level)
  candidate :
    @PrimeLocalFiberCandidate
      prime Coefficient Cohomology Level
      coefficientRing cohomologyGroup cohomologyModule
      levelGroup levelFintype

namespace PrimeLocalFiberRealization

def candidateDigest
    {prime : CertifiedPrime}
    (realization : PrimeLocalFiberRealization prime) : Digest :=
  letI := realization.coefficientRing
  letI := realization.cohomologyGroup
  letI := realization.cohomologyModule
  letI := realization.levelGroup
  letI := realization.levelFintype
  realization.candidate.candidateDigest

def sourceDigest
    {prime : CertifiedPrime}
    (realization : PrimeLocalFiberRealization prime) : Digest :=
  letI := realization.coefficientRing
  letI := realization.cohomologyGroup
  letI := realization.cohomologyModule
  letI := realization.levelGroup
  letI := realization.levelFintype
  realization.candidate.prism.sourceDigest

def comparisonObligationIds
    {prime : CertifiedPrime}
    (realization : PrimeLocalFiberRealization prime) : List StableId :=
  letI := realization.coefficientRing
  letI := realization.cohomologyGroup
  letI := realization.cohomologyModule
  letI := realization.levelGroup
  letI := realization.levelFintype
  realization.candidate.comparisonObligationIds

def objectAddress
    {prime : CertifiedPrime}
    (realization : PrimeLocalFiberRealization prime) : ObjectAddress :=
  letI := realization.coefficientRing
  letI := realization.cohomologyGroup
  letI := realization.cohomologyModule
  letI := realization.levelGroup
  letI := realization.levelFintype
  realization.candidate.evidenceAddress

end PrimeLocalFiberRealization

/--
The fixed proposition checked when a typed local realization enters a
certified finite state.  Its algebraic laws are already proof fields of the
candidate; this statement additionally binds the retained object and every
still-open comparison identifier to canonical, valid identities.

It deliberately does not assert that the open comparison or
derived-completion obligations have been proved.
-/
def PrimeLocalFiberCertificationStatement
    {prime : CertifiedPrime}
    (realization : PrimeLocalFiberRealization prime) : Prop :=
  realization.candidateDigest.Valid ∧
    realization.sourceDigest.Valid ∧
    ∀ obligation ∈ realization.comparisonObligationIds,
      obligation.Valid

/--
A typed, prime-indexed local fiber admitted by an accepted kernel certificate.
The prime value is an index, the complete realization is retained, and the
certificate is checked against the realization's own digest.  No public field
can substitute an address for the fiber.
-/
structure CertifiedPrimeLocalFiber (primeValue : Nat) where
  prime : CertifiedPrime
  prime_value_bound :
    prime.value = primeValue
  realization : PrimeLocalFiberRealization.{u} prime
  environment : FrozenKernelEnvironment
  kernel :
    AcceptedKernelCertificate
      environment
      (PrimeLocalFiberCertificationStatement realization)
  statementDigest_bound :
    kernel.declaration.statementDigest =
      realization.candidateDigest

namespace CertifiedPrimeLocalFiber

/-- The accepted certificate proves the fixed integrity statement exactly. -/
theorem certificationStatement
    {primeValue : Nat}
    (fiber : CertifiedPrimeLocalFiber primeValue) :
    PrimeLocalFiberCertificationStatement fiber.realization :=
  fiber.kernel.proves

/-- The type index is backed by the retained primality proof. -/
theorem isPrime
    {primeValue : Nat}
    (fiber : CertifiedPrimeLocalFiber primeValue) :
    Nat.Prime primeValue := by
  rw [← fiber.prime_value_bound]
  exact fiber.prime.isPrime

/-- Storage identity is a projection of the typed realization, not the fiber. -/
def objectAddress
    {primeValue : Nat}
    (fiber : CertifiedPrimeLocalFiber primeValue) : ObjectAddress :=
  fiber.realization.objectAddress

/-- The accepted declaration is bound to the retained candidate digest. -/
theorem declaration_statement_digest_bound
    {primeValue : Nat}
    (fiber : CertifiedPrimeLocalFiber primeValue) :
    fiber.kernel.declaration.statementDigest =
      fiber.realization.candidateDigest :=
  fiber.statementDigest_bound

end CertifiedPrimeLocalFiber

end Mathematics.Prismatic
