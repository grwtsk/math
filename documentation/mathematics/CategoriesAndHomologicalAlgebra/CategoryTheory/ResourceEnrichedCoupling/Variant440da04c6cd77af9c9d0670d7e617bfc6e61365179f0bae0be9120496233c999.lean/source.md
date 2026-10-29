# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ResourceEnrichedCoupling.Variant440da04c6cd77af9c9d0670d7e617bfc6e61365179f0bae0be9120496233c999

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6e21a9f579a655249aeba8c11ee84abd1605a5a` · SHA-256 `440da04c6cd77af9c9d0670d7e617bfc6e61365179f0bae0be9120496233c999`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.NNReal.Defs
import Mathematics.Resolution.EffectiveArithmeticSource

/-!
# Lax resource-enriched coupling

The object map may be functorial at the semantic level, while costs and
advantage losses compose through certified inequalities.
-/

namespace Mathematics.Resolution

universe u v w x

/-- A small category with resource and approximation structure on every arrow. -/
structure ResourceCategory where
  Object : Type u
  Hom : Object → Object → Type v
  identity : ∀ object, Hom object object
  comp :
    ∀ {source middle target},
      Hom source middle → Hom middle target → Hom source target
  comp_identity_left :
    ∀ {source target} (arrow : Hom source target),
      comp (identity source) arrow = arrow
  comp_identity_right :
    ∀ {source target} (arrow : Hom source target),
      comp arrow (identity target) = arrow
  comp_assoc :
    ∀ {a b c d}
      (first : Hom a b) (second : Hom b c) (third : Hom c d),
      comp (comp first second) third =
        comp first (comp second third)
  cost : ∀ {source target}, Hom source target → ResourceCost
  advantageLoss : ∀ {source target}, Hom source target → ℝ≥0
  identityCost :
    ∀ object, (cost (identity object)).Le .zero
  compositionCost :
    ∀ {source middle target}
      (first : Hom source middle) (second : Hom middle target),
      (cost (comp first second)).Le
        ((cost first).sequential (cost second))
  identityAdvantageLoss :
    ∀ object, advantageLoss (identity object) = 0
  compositionAdvantageLoss :
    ∀ {source middle target}
      (first : Hom source middle) (second : Hom middle target),
      advantageLoss (comp first second) ≤
        advantageLoss first + advantageLoss second

/--
A lax resource-enriched coupling between effective arithmetic sources and
security-game reductions.
-/
structure ResourceEnrichedCoupling
    (source target : ResourceCategory) where
  objectMap : source.Object → target.Object
  morphismMap :
    ∀ {left right},
      source.Hom left right →
        target.Hom (objectMap left) (objectMap right)
  mapIdentity :
    ∀ object,
      morphismMap (source.identity object) =
        target.identity (objectMap object)
  mapComposition :
    ∀ {left middle right}
      (first : source.Hom left middle)
      (second : source.Hom middle right),
      morphismMap (source.comp first second) =
        target.comp (morphismMap first) (morphismMap second)
  mappedCost :
    ∀ {left right} (arrow : source.Hom left right),
      (target.cost (morphismMap arrow)).Le (source.cost arrow)
  mappedCompositionCost :
    ∀ {left middle right}
      (first : source.Hom left middle)
      (second : source.Hom middle right),
      (target.cost
          (morphismMap (source.comp first second))).Le
        ((target.cost (morphismMap first)).sequential
          (target.cost (morphismMap second)))
  mappedAdvantageLoss :
    ∀ {left right} (arrow : source.Hom left right),
      target.advantageLoss (morphismMap arrow) ≤
        source.advantageLoss arrow
  mappedCompositionAdvantageLoss :
    ∀ {left middle right}
      (first : source.Hom left middle)
      (second : source.Hom middle right),
      target.advantageLoss
          (morphismMap (source.comp first second)) ≤
        target.advantageLoss (morphismMap first) +
          target.advantageLoss (morphismMap second)

end Mathematics.Resolution
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=699550791fcd7591bc442a7b019ab3c3d13d28bb0ba2ae1547388ce17595bfa6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ResourceEnrichedCoupling/Variant440da04c6cd77af9c9d0670d7e617bfc6e61365179f0bae0be9120496233c999.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
