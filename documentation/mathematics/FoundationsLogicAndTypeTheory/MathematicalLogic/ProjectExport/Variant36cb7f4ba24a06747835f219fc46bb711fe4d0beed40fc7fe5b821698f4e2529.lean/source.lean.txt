import ContractElements.Id

/-! # Sovereign project export metadata. -/

namespace URSM.Contracts

structure ProjectTable (n : Nat) where
  project : Fin n → ProjectKey
  unique : Function.Injective project
  tableDigest : DigestRef

structure ProjectExport where
  key : ProjectKey
  packageName : String
  publicRoot : String
  leanToolchainDigest : DigestRef
  lakeGraphDigest : DigestRef
  sourceDigest : DigestRef
  compiledEnvironmentDigest : DigestRef
  publicApiDigest : DigestRef
  theoremIndexDigest : DigestRef
  kernelCheckDigest : DigestRef
  unresolvedDigest : DigestRef
  payloadRoot : ObjectRef
  exportDigest : DigestRef
  deriving DecidableEq, Repr

structure ProjectCodec (A : Type) where
  codecId : String
  schemaDigest : DigestRef
  encode : A → ByteArray
  decode? : ByteArray → Option A
  leftInverse : ∀ value, decode? (encode value) = some value
  maximumBytes : Nat

end URSM.Contracts
