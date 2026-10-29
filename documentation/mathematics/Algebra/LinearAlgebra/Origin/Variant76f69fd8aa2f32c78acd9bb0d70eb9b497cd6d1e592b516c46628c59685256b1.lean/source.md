# Complete source: GRWTSK.Algebra.LinearAlgebra.Origin.Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e143274c8f79a36b79c9490d12717ea9458db8b9` · SHA-256 `76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Resolution.Frequency
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Certified finite-field origin projection

Origin is an exact idempotent linear projection.  It groups unresolved
obligations but cannot alter their proof status.
-/

namespace Mathematics.Resolution

universe u v w

structure CertifiedOriginSystem
    (𝔽 : Type u)
    (V : Type v)
    (Obligation : Type w)
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V] where
  encode : Obligation → V
  project : V →ₗ[𝔽] V
  idempotent :
    project.comp project = project

def CertifiedOriginSystem.origin
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (obligation : Obligation) :
    V :=
  system.project (system.encode obligation)

def originLayer
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (cut : InvocationCut Obligation Proof Event)
    (unresolvedSet : Finset Obligation)
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (frequency : Nat)
    (origin : V) :
    Finset Obligation :=
  unresolvedSet.filter fun obligation ↦
    cut.frequency obligation = frequency ∧
    system.origin obligation = origin

theorem originLayer_coherent
    [DecidableEq Obligation]
    [DecidableEq Proof]
    [DecidableEq Event]
    [DecidableEq V]
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    {cut : InvocationCut Obligation Proof Event}
    {unresolvedSet : Finset Obligation}
    {system : CertifiedOriginSystem 𝔽 V Obligation}
    {frequency : Nat}
    {origin : V}
    {obligation : Obligation}
    (member :
      obligation ∈
        originLayer cut unresolvedSet system frequency origin) :
    system.project (system.encode obligation) = origin :=
  (Finset.mem_filter.mp member).2.2

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a128ea99f1322d6ac9198d992cc98ef9e1872bde7aceccf7597f4f6cede7ec48 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Origin/Variant76f69fd8aa2f32c78acd9bb0d70eb9b497cd6d1e592b516c46628c59685256b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
