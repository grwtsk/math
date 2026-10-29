import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.Bit0.M536f75726365547265652f4e6f4475702e6c65616e


/- source-tree-label: STL1|L|addr=01111010|role=proof_code_atom|slug=sourcetree-importclosure|owner=canonical_owner|core=SourceTree/ImportClosure.lean|leaf=M536f75726365547265652f496d706f7274436c6f737572652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.SourceTree

def importClosure : List Think.PhaseId :=
  Think.centerSpine

theorem importClosure_complete (p : Think.PhaseId) :
    p ∈ importClosure := by
  exact Think.centerSpine_complete p

end Think.SourceTree
