# Complete source: GRWTSK.LinearAlgebra.CommonJ.Checks.SignAudit

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdddee6b4741f94d9aeb4eb9f5cf84f6ddc20afd` · SHA-256 `ddb2f18308d077dea4ed9a978247c3e661d374a952ae979943f529d8b5a1de50`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.CommonJ
import Lean

open GRWTSK.Algebra GRWTSK.LinearAlgebra.CommonJ Lean Elab Command

namespace GRWTSK.LinearAlgebra.CommonJ.SignChecks

theorem generic_sign_loop_consumer {R : Type u} [CommRing R] (c s : ℕ → R)
    (h : ∀ i, c i ^ 2 + s i ^ 2 = 1) (n k : ℕ) :
    flipUnit * orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k * flipUnit =
      (orderedProduct (fun i => rotationUnit (c i) (s i) (h i)) n k)⁻¹ :=
  commonJ_loop_sign_conjugation c s h n k

theorem rational_reverse_consumer :
    orderedProduct (fun i => if i = 0 then rationalEdge else rationalEdge⁻¹) 0 2 = 1 :=
  rational_reverse_loop_identity

example {R : Type u} [CommRing R] :
    flipMatrix * rotationMatrix (0 : R) 1 * flipMatrix = -rotationMatrix 0 1 :=
  flip_commonJ_reverse

end GRWTSK.LinearAlgebra.CommonJ.SignChecks

elab "#audit_common_j_signs" : command => liftTermElabM do
  let original ← getEnv
  let some equations ← Meta.getEqnsFor? `GRWTSK.LinearAlgebra.CommonJ.flipUnit
    | throwError "missing native flip-unit equation family"
  unless equations == #[`GRWTSK.LinearAlgebra.CommonJ.flipUnit.eq_1] do
    throwError "unexpected native flip-unit equation family"
  let env ← getEnv
  let roots := #[`GRWTSK.LinearAlgebra.CommonJ.flipMatrix,
    `GRWTSK.LinearAlgebra.CommonJ.flipUnit,
    `GRWTSK.LinearAlgebra.CommonJ.flip_rotation_inverse,
    `GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_inverse,
    `GRWTSK.LinearAlgebra.CommonJ.rational_reverse_loop_identity,
    `GRWTSK.LinearAlgebra.CommonJ.flipUnit_inverse,
    `GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
    `GRWTSK.LinearAlgebra.CommonJ.flip_commonJ_reverse]
  let companions := #[`GRWTSK.LinearAlgebra.CommonJ.flipMatrix.eq_1,
    `GRWTSK.LinearAlgebra.CommonJ.flipUnit._proof_1,
    `GRWTSK.LinearAlgebra.CommonJ.flipUnit.eq_1,
    `GRWTSK.LinearAlgebra.CommonJ.rotationUnit.congr_simp]
  for n in roots ++ companions do
    let some info := env.find? n | throwError "missing sign declaration: {n}"
    if info.isUnsafe then throwError "unsafe sign declaration: {n}"
    match info with
    | .axiomInfo _ => throwError "undeclared axiom: {n}"
    | _ => pure ()
    for ax in (← collectAxioms n) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved sign axiom {ax}"
    logInfo m!"COMMON_J_SIGN_DECL::{n}"
  for n in equations do
    let some info := env.find? n | throwError "missing native equation"
    let some proof := info.value? true | throwError "missing native equation proof"
    Meta.checkWithKernel proof
    unless (← Meta.isDefEq (← Meta.inferType proof) info.type) do
      throwError "native equation type mismatch"
    logInfo m!"COMMON_J_SIGN_DERIVED::{n}::originallyStored={(original.find? n).isSome}"
  for (consumer, target) in
      #[(`GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
         `GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_inverse),
        (`GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation,
         `GRWTSK.LinearAlgebra.CommonJ.flipUnit_inverse),
        (`GRWTSK.LinearAlgebra.CommonJ.SignChecks.generic_sign_loop_consumer,
         `GRWTSK.LinearAlgebra.CommonJ.commonJ_loop_sign_conjugation),
        (`GRWTSK.LinearAlgebra.CommonJ.SignChecks.rational_reverse_consumer,
         `GRWTSK.LinearAlgebra.CommonJ.rational_reverse_loop_identity)] do
    let some info := env.find? consumer | throwError "missing sign consumer"
    let some proof := info.value? true | throwError "missing sign consumer proof"
    unless proof.getUsedConstants.contains target do
      throwError "missing canonical sign proof dependency: {consumer}, {target}"
    for ax in (← collectAxioms consumer) do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "unapproved sign consumer axiom"
    logInfo m!"COMMON_J_SIGN_REUSE::{consumer}::{target}"

#audit_common_j_signs
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec6a883c119c7b88356cacb3c75d2355c3f3326f1e05dc82f317de9f6e4688c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CommonJ/Checks/SignAudit__SourceOccurrence341da7c7c4e6e881f72ce734.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
