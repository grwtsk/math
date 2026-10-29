# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PhaseRepresentation.Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eebe8db36b6acc52f0e700717b5653b4d0eb933` · SHA-256 `86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.ResidueDeflection.Phase
import Mathematics.SemiLocalDefect.Hardy.BlockDecomposition

/-!
# Operator representation of the residue phase

The two-element phase acts through a proof-bearing unitary representation.
This operator channel is separate from positive amplitude transport.
-/

namespace Mathematics.SemiLocalDefect.ResidueDeflection

structure PhaseOperatorRepresentation
    (model : OperatorModel) where
  operations : Hardy.OperatorComposition model
  operator : Phase3 → model.Operator
  identity_operator :
    operator .identity = model.identity
  multiplication :
    ∀ left right,
      operator (Phase3.mul left right) =
        operations.compose
          (operator left)
          (operator right)
  reflection_selfAdjoint :
    model.SelfAdjoint (operator .reflect)
  reflection_left_unitary :
    operations.compose
        (operations.adjoint
          (operator .reflect))
        (operator .reflect) =
      model.identity
  reflection_right_unitary :
    operations.compose
        (operator .reflect)
        (operations.adjoint
          (operator .reflect)) =
      model.identity

end Mathematics.SemiLocalDefect.ResidueDeflection
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c918aec1c61f08f44a44e33ec0880de3fbb040c926888093a676653b2e91189 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PhaseRepresentation/Variant86a7840c9922653a884498af9a3a5be245963b001acfb2453929bac198086634.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
