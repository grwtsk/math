/-
LeafAddressPredicate — exact source component
Attribution: ATTRIBUTION_CLARIFICATION_NEEDED
Issue: https://github.com/grwtsk/math/issues/254
Provisional mathematical ideas and direction: grwtsk contributors.
Provisional composite search, probabilistic symbolic recombination and linearized diffusive computation: OpenAI/Codex.
Cache warming and model sculpting: the countless, often unnamed mathematicians, enthusiasts, and curious minds whose work and questions have helped shape these tools, and who now have new ways to pursue mathematical answers to the endlessly deep question: “Why?”
These are owner-supplied provisional roles; exact contributions and source lineage need clarification.
Original SHA-256: 9084f20ad12fb46bdbe8e790ab97cea1d1e264ecce2f818d3fdaec73aeb4f855
Organized SHA-256: f609a51e3d530d813312fed12c1271ad87fdc6c1374c63ffbe6869b7dcdf9d5b
PMD: 510.7.010.030.070 trees (editorial navigation only).
Statements, hypotheses and proof bodies are exact source copies. Original whole-file documentation is retained below and may describe other components.
Only containing namespaces and explicit component imports are changed. Distinct historical representations stay distinct.
Uncompiled; no Lean/Lake invocation, public umbrella admission, geometric provider, or new theorem priority claim.
-/

/-
Scope: Leaf-address words, the exact leaf-only HasAddress predicate, and partial single-leaf expansion with its two successful-expansion size theorems. HasAddress and expandAt? both reject the empty address at an internal node. Success is an explicit Option equality premise. No monodromy, torsion or address/expansion equivalence is inferred. Original namespace blocks are copied unchanged; the physical subject path does not rename declarations or add a logical wrapper. Only explicit same-source public companion imports are added where listed. Historical imported representations remain distinct and unreplayed.
-/

import Folder.Catalan.Tree
import GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CombinatorialObjects.Words.CatalanAndCategoryInterfaces.Variant9084f20ad12fb46b.DirectionWordsAndAddresses

/-!
# Folder.Catalan.ExpansionIndex

Radiation role: torsion-action
BinaryMatrix spine: This module records torsion, monodromy, or cohomological actions downstream of shell/phase data.
Ontology: catalan.expansion_index
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: infrastructure
-/


namespace Folder
namespace Catalan

namespace CTree

def HasAddress : CTree → Address → Prop
  | leaf, [] => True
  | leaf, _ :: _ => False
  | node l _, Direction.left :: rest => HasAddress l rest
  | node _ r, Direction.right :: rest => HasAddress r rest
  | node _ _, [] => False

end CTree
end Catalan
end Folder
