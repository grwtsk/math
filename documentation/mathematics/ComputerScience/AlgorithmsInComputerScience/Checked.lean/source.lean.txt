import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit1.M4b65726e656c2f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=010000000|role=proof_code_atom|slug=kernel-checked|owner=canonical_owner|core=Kernel/Checked.lean|leaf=M4b65726e656c2f436865636b65642e6c65616e.lean -/

set_option autoImplicit false

namespace FWR

inductive Checked (P : Prop) where
  | proved : P -> Checked P
  | residue : List Residue -> Checked P

namespace Checked

def residues {P : Prop} : Checked P -> List Residue
  | proved _ => []
  | residue rs => rs

def hasResidue {P : Prop} : Checked P -> Bool
  | proved _ => false
  | residue rs => !rs.isEmpty

def isProved {P : Prop} : Checked P -> Bool
  | proved _ => true
  | residue _ => false

end Checked

end FWR
