import Mathematics.BinaryFrontier.Refinement.Address

/-!
# Orientation-equivariant addressing

Tree addresses remain independent of symmetry.  This bridge is required only
when an automorphism is claimed to preserve the oriented binary index.
-/

namespace Mathematics.BinaryFrontier.Symmetry

open Mathematics.BinaryFrontier.Refinement

universe uNode uGroup

structure OrientationEquivariance
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    (addresses :
      TreeAddressRegistry tree)
    (GroupCarrier : Type uGroup)
    [Group GroupCarrier]
    [MulAction GroupCarrier Node] where
  addressAction :
    GroupCarrier →
      FrontierAddress →
      FrontierAddress
  addressActionIdentity :
    ∀ address,
      addressAction 1 address = address
  addressActionCompatible :
    ∀ left right address,
      addressAction (left * right) address =
        addressAction left
          (addressAction right address)
  nodeAddressEquivariant :
    ∀ automorphism node,
      addresses.address
          (automorphism • node) =
        addressAction automorphism
          (addresses.address node)
  depthInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .rawPath.length =
        address.rawPath.length
  orientedPathInvariant :
    ∀ automorphism address,
      (addressAction automorphism address)
          .orientedPath =
        address.orientedPath

theorem equalDepthIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address).equalDepthIndex =
      address.equalDepthIndex := by
  unfold FrontierAddress.equalDepthIndex
  rw [equivariance.orientedPathInvariant]

theorem selfDelimitingIndex_invariant
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {addresses :
      TreeAddressRegistry tree}
    {GroupCarrier : Type uGroup}
    [Group GroupCarrier]
    [MulAction GroupCarrier Node]
    (equivariance :
      OrientationEquivariance
        addresses GroupCarrier)
    (automorphism : GroupCarrier)
    (address : FrontierAddress) :
    (equivariance.addressAction
        automorphism address)
          .selfDelimitingIndex =
      address.selfDelimitingIndex := by
  unfold FrontierAddress.selfDelimitingIndex
  rw [equivariance.depthInvariant,
    equalDepthIndex_invariant
      equivariance automorphism address]

end Mathematics.BinaryFrontier.Symmetry
