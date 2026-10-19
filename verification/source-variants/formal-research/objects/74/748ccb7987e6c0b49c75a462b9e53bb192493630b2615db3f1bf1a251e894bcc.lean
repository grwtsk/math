
/- source-tree-label: STL1|L|addr=10110101|role=proof_code_atom|slug=imports-authoritylevel|owner=canonical_owner|core=Imports/AuthorityLevel.lean|leaf=M496d706f7274732f417574686f726974794c6576656c2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Imports

inductive AuthorityLevel where
  | metadata
  | statementSurface
  | sourceReference
  | importedTheorem
  | adaptedTheorem
  | transferTheorem
  | internalProof
deriving DecidableEq, Repr

end Think.Imports
