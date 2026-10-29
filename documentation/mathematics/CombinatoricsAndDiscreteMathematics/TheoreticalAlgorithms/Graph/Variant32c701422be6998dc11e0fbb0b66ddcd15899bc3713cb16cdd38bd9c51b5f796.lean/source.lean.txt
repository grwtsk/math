-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTreeChildEdgesFrom.Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FormulaTreeChildEdgesFrom.Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313","mathematical_subject":"Computation.DataStructures","original_sha256":"ae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Boolean/Syntax/Graph.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Boolean.Syntax.Basic
import Surface.Boolean.Matrix.Warshall


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FormulaTreeChildEdgesFrom.Variantae961e6f0271cc8b749e1e6193776a8788643f3de91d344b0932760ecbec0313

namespace Surface.Boolean

universe u

/--
Edges of a Boolean expression tree under preorder numbering.

The root receives index `root`. A unary node has one child at `root + 1`.
A binary node has its left child at `root + 1` and its right child after the
entire left subtree.
-/
def FormulaTree.childEdgesFrom (root : Nat) : FormulaTree α → List (Nat × Nat)
  | .var _ => []
  | .falsum => []
  | .truth => []
  | .neg p =>
      let child := root + 1
      [(root, child)] ++ FormulaTree.childEdgesFrom child p
  | .conj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .disj p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .impl p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .eqv p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q
  | .nand p q =>
      let left := root + 1
      let right := root + 1 + FormulaTree.nodeCount p
      [(root, left), (root, right)] ++
        FormulaTree.childEdgesFrom left p ++
        FormulaTree.childEdgesFrom right q

/--
A Boolean expression tree as a Boolean adjacency matrix.

A `1` at `(i, j)` means that node `i` is the parent of node `j`.
-/
def FormulaTree.adjacencyMatrix
    (p : FormulaTree α) :
    BoolMatrix (FormulaTree.nodeCount p) (FormulaTree.nodeCount p) :=
  fun i j => decide ((i.val, j.val) ∈ FormulaTree.childEdgesFrom 0 p)

@[simp] theorem FormulaTree.entry_adjacencyMatrix
    (p : FormulaTree α)
    (i j : Fin (FormulaTree.nodeCount p)) :
    BoolMatrix.entry (FormulaTree.adjacencyMatrix p) i j =
      decide ((i.val, j.val) ∈ FormulaTree.childEdgesFrom 0 p) :=
  rfl

/--
The transitive reachability matrix of the tree graph.

This applies Warshall's algorithm to the tree adjacency matrix.
-/
def FormulaTree.reachabilityMatrix
    (p : FormulaTree α) :
    BoolMatrix (FormulaTree.nodeCount p) (FormulaTree.nodeCount p) :=
  BoolMatrix.warshall (FormulaTree.adjacencyMatrix p)

end Surface.Boolean
