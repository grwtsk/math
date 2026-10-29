# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Main.Variantabad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f691dea016d6a0f4a16d48fb7277f445238f20e3` · SHA-256 `abad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SpectralProof.DAGIndex
import SpectralProof.Determinants.ZetaDet
import SpectralProof.Determinants.SpectralMap
import SpectralProof.Equivalences.FinalClosure

open SpectralProof

/-- 
Formal CLI entry point for the canonical spectral determinant project.
Run with `lake exe spectralProof`.
-/
def main : IO Unit := do
  IO.println "=== Spectral Proof Diagnostic ===\n"

  IO.println s!"dagIndex size: {dagIndex.length}"
  IO.println "Known DAG nodes:"
  for (label, thm) in dagIndex do
    IO.println s!"  {label} ↦ {thm}"

  IO.println "\nChecking key definitions..."
  IO.println "spectralMap(ρ) := (ρ - 1/2)/i"
  IO.println "zetaDet T λ := exp(-∑ₙ λⁿ / n · Tr(Tⁿ))"

  IO.println "\n✅ SpectralProof.Main loaded successfully."
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06da343254760d33ce60aa5f3b03902c3ab41191592c0d47e0dc95685227ee85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Main/Variantabad31645a85c7a4054427fb4a1c103bd8d774ebc6da0c86bec8bb8e4a288bf5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
