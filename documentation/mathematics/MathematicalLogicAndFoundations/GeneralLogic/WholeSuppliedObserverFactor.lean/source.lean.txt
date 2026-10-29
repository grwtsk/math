/-
WholeSuppliedObserverFactor — exact original pure mathematical model
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 98ad3f70657c2f438359276bcdd8a0d6df6eaa06d04ab1ba5704561c7b305717
Organized SHA-256: e79259c19f489a79484ea3b2159ee9d10fd2dd74ddba6a2f7f657a010a6040a5
PMD: 510.0.070.020.010 dependent functions (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- The complete six-field CertifiedReducerIR supplies the local representation, program, transition, observation and both universal commutation equations. The exact provider call restricts to the realized image; the raw program is not asserted surjective or equivalent to a canonical quotient. Packet-to-matrix reduction forgets payload framing. No Rust compiler, machine-code verification, efficiency or cryptographic guarantee is inferred. -/

import DAF.Runtime.ReducerIR
import FilesystemCodec.FieldRows
import DAF.Causal.ObserverFactor

import GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43.ShapeIndexedStructuralReducers

/-!
# A total typed reducer language

`ReducerIR` is a deliberately small, intrinsically typed language for the
pure reducers used by the observer examples.  Matrix dimensions, field types,
and packet framing appear in `Rep`, so ill-shaped compositions cannot be
formed.  Evaluation is structural and total.

The packet-to-matrix instruction intentionally returns a dependent variable
matrix and drops `payloadBits`; it is therefore suitable for a lossy observer,
not for a lossless filesystem representation.  A certified observer factor is
added below once the program is accompanied by explicit transition and
observation commutation proofs.

This Lean evaluator certifies the mathematical reducer semantics.  It does
not, by itself, verify a Rust compiler or generated machine code.
-/

open BitMatrix.Reduction.SAT
open FilesystemCodec

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43

namespace BitMatrix.Runtime
open ObservableRecursion
open ObserverFactor

universe uInput uResolution

/--
A reducer program together with the equations making it an observer-local
factor.  The raw program need not be surjective; `toObserverReducer` restricts
its local codomain to the realized image.
-/
structure CertifiedReducerIR
    {Input : Type uInput}
    {Resolution : Type uResolution}
    {GlobalRep : Rep}
    (M : System Input GlobalRep.Denote Resolution)
    (ρ : Resolution) where
  LocalRep : Rep
  program : ReducerIR GlobalRep LocalRep
  localStep : Input → LocalRep.Denote → LocalRep.Denote
  localObserve : LocalRep.Denote → M.Observation ρ
  step_commute : ∀ input state,
    program.eval (M.step input state) =
      localStep input (program.eval state)
  observe_commute : ∀ state,
    localObserve (program.eval state) = M.observe ρ state

namespace CertifiedReducerIR

/-- Every certified program yields a surjective reducer on its realized image. -/
def toObserverReducer
    {Input : Type uInput}
    {Resolution : Type uResolution}
    {GlobalRep : Rep}
    {M : System Input GlobalRep.Denote Resolution}
    {ρ : Resolution}
    (C : CertifiedReducerIR M ρ) :
    ObserverReducer M ρ :=
  ObserverReducer.ofRealizedImage
    C.program.eval C.localStep C.localObserve
    C.step_commute C.observe_commute

end CertifiedReducerIR

end BitMatrix.Runtime

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.DependentFunctions.TypeIndexedReducerModels.Variant98ad3f70657c2f43
