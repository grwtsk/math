# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompilerTarget.Varianta248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a75137a7927d0d1d94517d97b0e5551644ce537` · SHA-256 `a248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.ContinuousAssurance.QuantizationLevel
import Surface.ContinuousAssurance.Transformation

/-!
# Submitted compiler targets

A `CompilerTarget` is declarative data about a selected implementation target.
Lean proves consequences of the submitted record only; it does not inspect the
physical compiler.  `maximumSupportedResolution` is therefore an
implementation-policy ceiling, never a mathematical maximum on finite bit
planes.
-/

namespace Surface.ContinuousAssurance

open Surface.Quantization

/-- Pinned declarative description of one compiler/target combination. -/
structure CompilerTarget where
  compilerId : String
  compilerVersion : String
  targetTriple : String
  wordBits : Nat
  wordBitsPositive : 0 < wordBits
  sourceEvidence : List ArtifactIdentity
  deriving Repr

/-- The positive word-width ceiling declared by a compiler target. -/
def maximumSupportedResolution
    (target : CompilerTarget) :
    ResolutionBits :=
  ⟨target.wordBits, target.wordBitsPositive⟩

@[simp]
theorem maximumSupportedResolution_value
    (target : CompilerTarget) :
    (maximumSupportedResolution target).value = target.wordBits :=
  rfl

end Surface.ContinuousAssurance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fca496229907b8568ae04d02a485e180ee5927f41064dfcf6af200080ecf04f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CompilerTarget/Varianta248c795c3f93fdf517ab848afed4c3aaea08da6540d20e27b8ef049885014f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
