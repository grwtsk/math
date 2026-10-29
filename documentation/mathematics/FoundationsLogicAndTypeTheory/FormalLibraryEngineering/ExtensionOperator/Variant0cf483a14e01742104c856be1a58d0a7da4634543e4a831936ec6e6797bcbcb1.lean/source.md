# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionOperator.Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa1d9bff86ad3a9c0f2f987196f4173e003cc56f` · SHA-256 `0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.Analysis.Decoupling.Basic

set_option autoImplicit false

namespace Think.Analysis.Decoupling
namespace ExtensionOperator

/-- The data named by an extension operator for a parameterized plane curve. -/
structure ExtensionOperatorData where
  phiOne : ℝ → ℝ
  phiTwo : ℝ → ℝ
  interval : Set ℝ
  amplitude : ℝ → ℂ

/--
Placeholder value-level extension operator.

This records the signature used by the paper. The analytic integral and its
estimates remain open residue in this repository state.
-/
def extensionOperator
    (_phiOne _phiTwo : ℝ → ℝ)
    (_Q : Set ℝ)
    (_g : ℝ → ℂ)
    (_x : PlanePoint) : ℂ :=
  0

/-- Graph-curve specialization for curves of the form `(t, phi t)`. -/
def graphExtensionOperator
    (phi : ℝ → ℝ)
    (Q : Set ℝ)
    (g : ℝ → ℂ)
    (x : PlanePoint) : ℂ :=
  extensionOperator (fun t : ℝ => t) phi Q g x

def extensionOperatorResidue : String :=
  "extension_operator_integral_and_estimates_not_formalized"

theorem graph_extension_operator_is_specialization
    (phi : ℝ → ℝ) (Q : Set ℝ) (g : ℝ → ℂ) (x : PlanePoint) :
    graphExtensionOperator phi Q g x =
      extensionOperator (fun t : ℝ => t) phi Q g x := rfl

end ExtensionOperator
end Think.Analysis.Decoupling
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0c68ab440cd56d4909ee99d50ad07171dbeaae8555906d2ac2d83ff1f1c395a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtensionOperator/Variant0cf483a14e01742104c856be1a58d0a7da4634543e4a831936ec6e6797bcbcb1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
