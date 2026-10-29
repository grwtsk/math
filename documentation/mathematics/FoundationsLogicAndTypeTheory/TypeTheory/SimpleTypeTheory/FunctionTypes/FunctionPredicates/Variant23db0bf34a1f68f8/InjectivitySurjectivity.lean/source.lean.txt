/-
Independent injective, surjective and bijective function predicates
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 23db0bf34a1f68f8a2116f26f4edae6f4ee580445b3f772167fd693898275840
Organized SHA-256: 9f68bb1286a3ee4ab992bc37d0088476317b77f95938123fc808de85512b54b4
PMD: 510.0.070.010.020 function types (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.FunctionPredicates.Variant23db0bf34a1f68f8

/-! Core lightweight category and bijection predicates for Think logic receipts. -/

def Injective {A B : Type} (f : A → B) : Prop :=
  ∀ {x y : A}, f x = f y → x = y

def Surjective {A B : Type} (f : A → B) : Prop :=
  ∀ y : B, ∃ x : A, f x = y

def Bijective {A B : Type} (f : A → B) : Prop :=
  Injective f ∧ Surjective f

end GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.SimpleTypeTheory.FunctionTypes.FunctionPredicates.Variant23db0bf34a1f68f8
