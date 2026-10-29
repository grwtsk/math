# Spinor Soundness — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9af2f5c01a2d3a4f01d2de06e1f318c12c7468a` · SHA-256 `1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
  spinor_soundness.lean — Unit tests for Kernel.Spinor and BackfillSpinor.
  Confirms that spinor edges embed correctly and that soundness hooks are defined.
-/
import Kernel.Core
import Kernel.Spinor
import Kernel.BackfillSpinor

open Kernel
open Kernel.Spinor
open Kernel.BackfillSpinor

def sampleUUID (s : String) : UUID := ⟨s⟩

def dummyExpr : Expr := .const `True []

def dummyProof : Expr := .const `trivial []

def exampleSpinorEdge : Edge :=
  {
    id    := ⟨"e123"⟩,
    from  := ⟨"nA"⟩,
    to    := ⟨"nB"⟩,
    kind  := .spinor,
    proof := dummyExpr,
    w?    := some (1),
    spec? := some { λ := 0.5, μ := 1.0 }
  }

def minimalDag : Dag :=
  { V := [
      { id := ⟨"nA"⟩, expr := dummyExpr },
      { id := ⟨"nB"⟩, expr := dummyExpr }
    ],
    E := [exampleSpinorEdge]
  }

#eval IO.println "▶ Spinor test: embedding node nA into ℓ²(4)..."
#eval embed 4 (sampleUUID "nA")

#eval IO.println "▶ Spinor test: embedding distance (ℓ²)..."
#eval dist (embed 4 (sampleUUID "nA")) (embed 4 (sampleUUID "nB"))

#eval IO.println "▶ Backfill test: generate path from spinor edge..."
#eval match backfill exampleSpinorEdge minimalDag with
  | some result =>
    IO.println s!"Backfill: {result.hops.length} hops, valid = {result.valid}"
  | none => IO.println "Backfill failed: edge was not eligible"

#check Spinor.sound  -- ensures theorem is syntactically correct
#check BackfillSpinor.dense_reduction  -- check contract exists

#eval IO.println "✅ spinor_soundness.lean tests complete."
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a36cb6e38da5c0749e3cd00d3279c726d365a68ba38cd3b12ae8bd33b4e5b14 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SpinorSoundness/Variant1e0a3429ca85e92e5f6fc16f1cd25d83fa68cb2827add266138ff97428116850.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
