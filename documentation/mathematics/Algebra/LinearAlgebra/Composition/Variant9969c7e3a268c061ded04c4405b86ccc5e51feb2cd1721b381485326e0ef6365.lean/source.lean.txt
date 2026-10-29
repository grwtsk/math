import Surface.Legacy.BinaryLogicMatrix.Tree.Counting

namespace Surface.Legacy
namespace BinaryLogicMatrix
namespace Tree

def compose (a b : BinaryLogicTree) : BinaryLogicTree :=
  BinaryLogicTree.compose a b

theorem compose_eq_node (a b : BinaryLogicTree) :
    compose a b = BinaryLogicTree.node a b := rfl

theorem raw_node_left_right_visible
    {A B C D : BinaryLogicTree}
    (h : BinaryLogicTree.node A B = BinaryLogicTree.node C D) :
    A = C ∧ B = D :=
  BinaryLogicTree.raw_node_left_right_visible h

end Tree
end BinaryLogicMatrix
end Surface.Legacy
