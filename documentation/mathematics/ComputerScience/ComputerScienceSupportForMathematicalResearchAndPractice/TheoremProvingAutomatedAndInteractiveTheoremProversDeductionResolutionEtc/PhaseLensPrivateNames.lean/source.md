# Phase Lens Private Names — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dc70a83808f37e37312f64eea32553323332fde` · SHA-256 `6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch
open Lean Elab Command
elab "phase_audit_private " input:str : command => do
  let name := input.getString.splitOn "." |>.foldl (fun n s =>
    match s.toNat? with
    | some k => Name.num n k
    | none => Name.str n s) Name.anonymous
  let id := mkIdent name
  elabCommand (← `(command| #print $id:ident))
  elabCommand (← `(command| #print axioms $id:ident))

phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.sqrt_nat_pow"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.log_div_sqrt_cube_le"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.prime_inv_sqrt_le_three_quarters"
phase_audit_private "_private.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.0.FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateHigherPrimePowers.higher_prime_weight_le"
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=27d7a04c9f984442973dd7b3b56c828772b63b30fc9aa948786e906d2d31b1f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3cPhaseLensPrivate/Variant6be27d43315358fdf85773653194c5a9fd43514f3f1c13f9c56e131bd9cb2f3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
