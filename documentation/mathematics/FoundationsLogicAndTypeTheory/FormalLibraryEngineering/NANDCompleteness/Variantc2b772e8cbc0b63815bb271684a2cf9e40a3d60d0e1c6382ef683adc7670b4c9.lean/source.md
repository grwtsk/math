# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NANDCompleteness.Variantc2b772e8cbc0b63815bb271684a2cf9e40a3d60d0e1c6382ef683adc7670b4c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6c1dc2cc94d9b5c41fa65241b9d38d6704f68be` · SHA-256 `c2b772e8cbc0b63815bb271684a2cf9e40a3d60d0e1c6382ef683adc7670b4c9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Boolean.Completeness

/-!
# Folder.Theorem.Boolean.NANDCompleteness

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports proved facts or contract exposures for the BinaryMatrix radiation program.
Ontology: proof.boolean.nandcompleteness
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/


namespace Folder
namespace Boolean

theorem nand_functionally_complete
    (e : BoolExpr)
    (ρ : Env) :
    (compileToNand e).eval ρ = e.eval ρ :=
  compileToNand_correct e ρ

end Boolean
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ba2466fe32da0bdb48911d8a6b5ba29793f8a1c360abe0a7174b4b6ed3eb06c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/NANDCompleteness/Variantc2b772e8cbc0b63815bb271684a2cf9e40a3d60d0e1c6382ef683adc7670b4c9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
