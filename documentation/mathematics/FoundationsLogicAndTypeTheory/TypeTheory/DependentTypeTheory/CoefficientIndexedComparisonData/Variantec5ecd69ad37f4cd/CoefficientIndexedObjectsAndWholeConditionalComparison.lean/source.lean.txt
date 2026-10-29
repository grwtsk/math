/-
CoefficientIndexedObjectsAndWholeConditionalComparison — individual source review
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: ec5ecd69ad37f4cd299b56989fcfd0caa4b57a6296ba4fcaad6e4c396f706aa2
Organized SHA-256: bcad8845170abd0889d1a64a301d74630f51c5400661b241c2e04cc10af59c3b
PMD: 510.0.070.020 dependent type theory (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/- Three complete seams retain coefficient-indexed carrier objects and the whole etale-comparison record including explicit coefficientChange and Hypothesis-to-bijectivity premise; the whole representation datum with actual group/ring instances, representation-to-units, integral group-ring homomorphism and exact generator equation; and the whole degree-indexed supplied functoriality package with its InducedBy predicate/proof. Only the functoriality component adds its exact same-source representation module. The two anonymous instances remain verbatim positional typeclass projections, without invented Lean declaration names. No algebraic K-theory construction, etale realization, equivalence or localization/completion theorem is inferred. -/

import DAF.Assembly.Interface
import DAF.Comparison.Coefficients
import Mathlib.Algebra.MonoidAlgebra.Basic

/-!
# Arithmetic-realization interfaces

The structures in this module are parameters for arithmetic comparison
problems; they are not global existence theorems.  A representation of a group
in the units of a number ring is additional input, and the proof that a group
ring map is induced by that representation is stored with the input.

Likewise, an arithmetic K-theory or etale comparison is represented through a
supplied functoriality/comparison interface.  No ordinary homology group is
identified with algebraic K-theory here, and no K-theory comparison is assumed
to be bijective without its named hypothesis.  Localization and completion
change coefficient objects; an explicit coefficient change therefore remains
in the type of every etale comparison datum.
-/

namespace DAF.Arithmetic

open scoped MonoidAlgebra

universe uG uR uS uT uK uE uP

/--
An object belonging to a particular coefficient context.

This is intentionally a structure rather than an abbreviation: even when two
models happen to use the same carrier type, an object over `R` is not
definitionally an object over `S`.  Additional module, topology, or completion
data can be carried by theory-specific refinements of this minimal interface.
-/
structure CoefficientObject
    (R : Comparison.CoefficientContext.{uR}) where
  Carrier : Type uK

/--
An arithmetic/etale comparison between objects over explicitly different
coefficient contexts.

The contexts are parameters of the datum, rather than descriptive tags.  In
particular, a comparison ending over a localized or completed context cannot
be silently reused as an endomorphism over its source context.
-/
structure EtaleComparisonDatum
    (R : Comparison.CoefficientContext.{uR})
    (S : Comparison.CoefficientContext.{uP}) where
  prime : Nat
  degree : Int
  coefficientChange : Comparison.CoefficientChange R S
  KTheoryObject : CoefficientObject.{uR, uK} R
  EtaleObject : CoefficientObject.{uP, uE} S
  comparison : KTheoryObject.Carrier → EtaleObject.Carrier
  Hypothesis : Prop
  comparison_bijective :
    Hypothesis → Function.Bijective comparison

end DAF.Arithmetic
