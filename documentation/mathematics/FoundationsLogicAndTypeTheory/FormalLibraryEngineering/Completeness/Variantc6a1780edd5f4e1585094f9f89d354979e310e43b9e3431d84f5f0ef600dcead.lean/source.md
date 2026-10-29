# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Completeness.Variantc6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1a92d7edb7cd8fe5556f0f5ed81a9fed126d96` · SHA-256 `c6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Boolean.NAND

/-!
# Folder.Boolean.Completeness

Radiation role: boolean-linear-analysis
BinaryMatrix spine: This module contains auxiliary Boolean, linear, or analytic mathematics adjacent to the BinaryMatrix spine.
Ontology: boolean.completeness
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

def compileToNand : BoolExpr → NandExpr
  | .var n => .var n
  | .tru => nandTrue
  | .fls => nandFalse
  | .not e => nandNot (compileToNand e)
  | .and a b => nandAnd (compileToNand a) (compileToNand b)
  | .or a b => nandOr (compileToNand a) (compileToNand b)
  | .xor a b => nandXor (compileToNand a) (compileToNand b)

theorem compileToNand_correct
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ := by
  induction e with
  | var n =>
      rfl
  | tru =>
      simp [compileToNand]
  | fls =>
      simp [compileToNand]
  | not e ih =>
      simp [compileToNand, ih]
  | and a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | or a b iha ihb =>
      simp [compileToNand, iha, ihb]
  | xor a b iha ihb =>
      simp [compileToNand, iha, ihb]

end Boolean
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a54720782b3a617b06c8c8b6fd59f3f195a164bc6ec946eacece00da37fd250a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Completeness/Variantc6a1780edd5f4e1585094f9f89d354979e310e43b9e3431d84f5f0ef600dcead.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
