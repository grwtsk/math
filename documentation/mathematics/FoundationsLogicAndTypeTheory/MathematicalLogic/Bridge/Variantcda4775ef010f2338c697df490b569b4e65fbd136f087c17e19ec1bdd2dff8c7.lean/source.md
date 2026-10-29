# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Bridge.Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d016029d16ed22d9dc28c728af287216d18b89e2` · SHA-256 `cda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Federation.ProjectFiber

/-! # Proof-bearing bridges between project fibers -/

namespace Mathematics.Federation

universe u v

/-- Exact two-sided bridge; construction requires both inverse laws. -/
structure ExactBridge (Source : Type u) (Target : Type v) where
  bridgeId : StableId
  forward : Source → Target
  backward : Target → Source
  leftInverse : Function.LeftInverse backward forward
  rightInverse : Function.RightInverse backward forward
  certificateDigest : Digest

namespace ExactBridge

theorem forward_injective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Injective bridge.forward :=
  bridge.leftInverse.injective

theorem forward_surjective
    {Source : Type u}
    {Target : Type v}
    (bridge : ExactBridge Source Target) :
    Function.Surjective bridge.forward :=
  bridge.rightInverse.surjective

end ExactBridge

end Mathematics.Federation
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d98d5968fd043ce0bb5e90d4426ad4e623f5dc872134f45cc3551fada5f9c0f3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Bridge/Variantcda4775ef010f2338c697df490b569b4e65fbd136f087c17e19ec1bdd2dff8c7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
