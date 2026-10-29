import Mathlib.Data.Finset.Basic
import Mathematics.Toolchain.LeanVersion

/-! # Frozen Lake dependency graphs -/

namespace Mathematics.Toolchain

structure LakePackageNode where
  packageId : StableId
  name : String
  revision : String
  sourceDigest : Digest
  deriving DecidableEq, Repr

structure LakeDependencyEdge where
  consumer : StableId
  dependency : StableId
  deriving DecidableEq, Repr

structure LakeGraph where
  packages : Finset LakePackageNode
  edges : Finset LakeDependencyEdge
  closed :
    ∀ edge ∈ edges,
      (∃ package ∈ packages, package.packageId = edge.consumer) ∧
      (∃ package ∈ packages, package.packageId = edge.dependency)
  graphDigest : Digest

end Mathematics.Toolchain
