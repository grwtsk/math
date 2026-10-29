-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.KarnaughMapKMap.Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.KarnaughMapKMap.Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/KarnaughMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.TruthTable
import Boolean.Cube.Hypercube.Gray


namespace GRWTSK.Algebra.LinearAlgebra.KarnaughMapKMap.Variant759626602dd95823efc8005f5bc510437a12625cd10feb4c003fb09a25bf3960

namespace Boolean.Cube

/--
A Karnaugh map with row and column axes in Gray-code order.

The total number of Boolean variables is `rowBits + colBits`.
-/
abbrev KarnaughMap.KMap (rowBits colBits : Nat) :=
  Matrix (2 ^ rowBits) (2 ^ colBits)

/-- Gray bit for a row coordinate in a K-map. -/
def KarnaughMap.rowBit
    (rowBits : Nat)
    (r : Fin (2 ^ rowBits))
    (i : Nat) :
    Bool :=
  Hypercube.grayBit r.val (rowBits - 1 - i)

/-- Gray bit for a column coordinate in a K-map. -/
def KarnaughMap.colBit
    (colBits : Nat)
    (c : Fin (2 ^ colBits))
    (j : Nat) :
    Bool :=
  Hypercube.grayBit c.val (colBits - 1 - j)

/--
Input vertex addressed by a Karnaugh map cell.

The first `rowBits` coordinates come from the Gray-coded row index. The remaining
coordinates come from the Gray-coded column index.
-/
def KarnaughMap.input
    (rowBits colBits : Nat)
    (r : Fin (2 ^ rowBits))
    (c : Fin (2 ^ colBits)) :
    Hypercube.Point (rowBits + colBits) :=
  fun i =>
    if i.val < rowBits then
      KarnaughMap.rowBit rowBits r i.val
    else
      KarnaughMap.colBit colBits c (i.val - rowBits)

/-- Convert a truth table into a Karnaugh map. -/
def KarnaughMap.fromTruthTable {rowBits colBits : Nat}
    (T : TruthTable (rowBits + colBits)) :
    KarnaughMap.KMap rowBits colBits :=
  fun r c => T (KarnaughMap.input rowBits colBits r c)

/-- The Gray-ordered row axis used by a K-map. -/
def KarnaughMap.rowAxis (rowBits : Nat) :
    List (Hypercube.Point rowBits) :=
  Hypercube.grayTraversal rowBits

/-- The Gray-ordered column axis used by a K-map. -/
def KarnaughMap.colAxis (colBits : Nat) :
    List (Hypercube.Point colBits) :=
  Hypercube.grayTraversal colBits

end Boolean.Cube
