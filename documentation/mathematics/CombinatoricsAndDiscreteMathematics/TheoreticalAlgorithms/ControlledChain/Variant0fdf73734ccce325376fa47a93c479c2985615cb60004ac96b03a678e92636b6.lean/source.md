# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ControlledChain.Variant0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0ea907974b03cee947263430fefe40ce80f7e6f` · SHA-256 `0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Attention.ControlledChain
import Mathematics.MobiusOntology.ErrorTransform

/-!
# Carrier-indexed controlled chains

The chain index enforces adjacency of independently typed carriers.  Its
scalar profile is merely a composition-preserving image of that typed proof.
-/

namespace Mathematics.MobiusOntology

open scoped NNReal

universe u

abbrev MetricCarrier := Mathematics.Attention.MetricCarrier
abbrev ControlledChain := Mathematics.Attention.ControlledChain

namespace ControlledChain

variable {X Y : MetricCarrier.{u}}

def collapse (chain : ControlledChain X Y) :
    Mathematics.Attention.ControlledArrow X Y :=
  Mathematics.Attention.ControlledChain.collapse chain

def runReference
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runReference chain

def runImplementation
    (chain : ControlledChain X Y) :
    X.carrier → Y.carrier :=
  Mathematics.Attention.ControlledChain.runImplementation chain

def profile (chain : ControlledChain X Y) :
    List ErrorFactor :=
  Mathematics.Attention.ControlledChain.profile chain

theorem final_discrepancy_le
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound
    chain initialSound

theorem closedForm
    (chain : ControlledChain X Y)
    {implementationInput referenceInput : X.carrier}
    {initial : ℝ≥0}
    (initialSound :
      nndist implementationInput referenceInput ≤ initial) :
    nndist
        (chain.runImplementation implementationInput)
        (chain.runReference referenceInput) ≤
      initial *
          Mathematics.Attention.ErrorFactor.downstreamGain chain.profile +
        Mathematics.Attention.ErrorFactor.weightedResidual chain.profile :=
  Mathematics.Attention.ControlledChain.run_error_bound_closedForm
    chain initialSound

/-- The continuous branch is accepted only under its declared final budget. -/
structure ContinuousBudgetCertificate
    (chain : ControlledChain X Y) where
  initial : ℝ≥0
  allowed : ℝ≥0
  propagated :
    Mathematics.Attention.ErrorFactor.propagateFrom
        initial chain.profile ≤
      allowed

end ControlledChain

end Mathematics.MobiusOntology
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=590c2a2e6afff33f87d1f597ac1a0290b1d51157576115bd8acb8c8640baf53d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ControlledChain/Variant0fdf73734ccce325376fa47a93c479c2985615cb60004ac96b03a678e92636b6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
