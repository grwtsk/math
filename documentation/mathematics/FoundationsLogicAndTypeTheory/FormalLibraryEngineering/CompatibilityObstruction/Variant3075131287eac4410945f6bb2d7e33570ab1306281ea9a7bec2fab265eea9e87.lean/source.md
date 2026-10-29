# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompatibilityObstruction.Variant3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `258419a6a3e11c74d195d447b14ea2303caf76a5` · SHA-256 `3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.Status

/-!
# Folder.GrandChallenge.CompatibilityObstruction

Radiation role: research-boundary
BinaryMatrix spine: This module records the shared grand-challenge obstruction template.
Ontology: grand_challenge_program
Pivot role: theorem-ladder
Zero typology: obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge

structure StaticInvariant where
  branch : ChallengeBranch
  label : String

structure DynamicOrRecursiveProcess where
  branch : ChallengeBranch
  label : String

structure RealizationComparison where
  branch : ChallengeBranch
  sourceLabel : String
  targetLabel : String
  comparisonSupplied : Prop

structure ForbiddenConfiguration where
  branch : ChallengeBranch
  label : String

structure ObstructionClass where
  branch : ChallengeBranch
  invariant : StaticInvariant
  forbidden : ForbiddenConfiguration
  label : String

structure ObstructionNonzero
    (_O : ObstructionClass) : Prop where
  witness : True

structure CompatibleConfiguration where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  obstruction : ObstructionClass
  obstructionVanishes : Prop
  label : String

structure CompatibilityObstructionProgram where
  branch : ChallengeBranch
  invariant : StaticInvariant
  process : DynamicOrRecursiveProcess
  realization : RealizationComparison
  forbidden : ForbiddenConfiguration
  obstruction : ObstructionClass
  forbiddenProducesObstruction : Prop
  forbiddenProducesObstruction_certified : forbiddenProducesObstruction
  compatibilityExcludesForbidden : Prop
  compatibilityExcludesForbidden_certified : compatibilityExcludesForbidden
  sourceLabel : String

theorem forbidden_produces_obstruction_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.forbiddenProducesObstruction :=
  P.forbiddenProducesObstruction_certified

theorem compatibility_excludes_forbidden_if_supplied
    (P : CompatibilityObstructionProgram) :
    P.compatibilityExcludesForbidden :=
  P.compatibilityExcludesForbidden_certified

theorem program_has_static_invariant
    (P : CompatibilityObstructionProgram) :
    ∃ I : StaticInvariant, P.invariant = I :=
  ⟨P.invariant, rfl⟩

theorem program_has_obstruction_class
    (P : CompatibilityObstructionProgram) :
    ∃ O : ObstructionClass, P.obstruction = O :=
  ⟨P.obstruction, rfl⟩

end GrandChallenge
end Folder
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6892d93cde8ef7f7b9b1cf02752826a7085956389ade67c105ba035788d25e67 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompatibilityObstruction/Variant3075131287eac4410945f6bb2d7e33570ab1306281ea9a7bec2fab265eea9e87.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
