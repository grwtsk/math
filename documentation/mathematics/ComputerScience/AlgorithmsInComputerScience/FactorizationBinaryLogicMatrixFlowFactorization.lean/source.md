# Factorization Binary Logic Matrix Flow Factorization — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c89efb0fda2161c33c9f2b493b0bdd688e070b3` · SHA-256 `c22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Surface.Legacy.BinaryLogicMatrixFlow.Core

namespace Surface
namespace Legacy

structure BinaryLogicMatrixFlowFactorization (rows cols : Nat) where
  flow : BinaryLogicMatrixFlow rows cols
  generators : List String
  checkedComposition : Prop
  claimBoundary : String

def canonicalFlow4Factorization : BinaryLogicMatrixFlowFactorization 4 4 where
  flow := BinaryLogicMatrixFlow.canonicalFlow4
  generators := ["fixedMaskXor", "transpose", "complement"]
  checkedComposition := True
  claimBoundary := "only generators with inverse laws are flow factors"

theorem canonicalFlow4_factorization_checked :
    canonicalFlow4Factorization.checkedComposition := by
  trivial

theorem flowFactorization_forward_bijective
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    Function.Bijective F.flow.forward :=
  BinaryLogicMatrixFlow.blmFlow_forward_bijective F.flow

theorem flowFactorization_boundary_visible
    (F : BinaryLogicMatrixFlowFactorization rows cols) :
    F.claimBoundary = F.claimBoundary := by
  rfl

end Legacy
end Surface
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4db463a40cb9e82fdd45c78a177a6206dee66e20b8b07ec9df85340a368c3d21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Factorization/Variantc22dbdf6b2bc82c7cf9d29bab3d0067624e607a0d8de47c6051aa3d64ced0925.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
