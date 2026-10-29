# Complete source: GRWTSK.Algebra.LinearAlgebra.Iteration.Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a1beba947f391fde33185f3803498b58257959d` · SHA-256 `1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BooleanMatrix.Application.Core

/-!
# Iterated BooleanMatrix execution
-/

namespace BooleanMatrix
namespace Application

/-- Execute an application a finite number of times. -/
def iterate
    (application : Application) :
    Nat → Application
  | 0 => identity
  | Nat.succ steps =>
      comp application (iterate application steps)

@[simp]
theorem iterate_zero
    (application : Application)
    (input : Matrix) :
    iterate application 0 input = input :=
  rfl

@[simp]
theorem iterate_succ
    (application : Application)
    (steps : Nat)
    (input : Matrix) :
    iterate application (Nat.succ steps) input =
      application (iterate application steps input) :=
  rfl

/-- The complete countable execution sequence from an initial matrix. -/
def orbit
    (application : Application)
    (initial : Matrix) :
    Nat → Matrix :=
  fun step => iterate application step initial

@[simp]
theorem orbit_zero
    (application : Application)
    (initial : Matrix) :
    orbit application initial 0 = initial :=
  rfl

@[simp]
theorem orbit_succ
    (application : Application)
    (initial : Matrix)
    (step : Nat) :
    orbit application initial (Nat.succ step) =
      application (orbit application initial step) :=
  rfl

end Application
end BooleanMatrix
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b7a21c1eb7688a04b54eaf8bfde2aff2fd4bc2e72bec7b7b9994246f589a65c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Iteration/Variant1f1f2efdeade9306a1a4bda646fae6973db5dd281989d7be08dfd6cff2d1eeb3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
