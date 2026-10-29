import Mathematics.Resolution.Result

/-!
# Authenticated continuation bindings

A continuation is bound to the complete committed cut, proof-status table,
accepted registry, frontier, and next layer.  Authentication does not confer
theorem authority; it only prevents substitution of a different frontier.
-/

namespace Mathematics.Resolution

universe u

structure ContinuationBinding where
  cutDigest : String
  proofRegistryDigest : String
  statusDigest : String
  acceptedRegistryDigest : String
  frontierDigest : String
  contextDigest : String
  layerIndex : Nat
  deriving DecidableEq, Repr

structure ContinuationAuthenticator (Token : Type u) where
  sign : ContinuationBinding → Token
  verify : Token → ContinuationBinding → Bool
  verifies_signed :
    ∀ binding, verify (sign binding) binding = true
  binding_exclusive :
    ∀ token left right,
      verify token left = true →
      verify token right = true →
      left = right

structure AuthenticatedContinuation
    (authenticator : ContinuationAuthenticator Token)
    (binding : ContinuationBinding) where
  token : Token
  verified :
    authenticator.verify token binding = true

abbrev AuthenticatedToken
    (authenticator : ContinuationAuthenticator Token) :=
  Σ binding, AuthenticatedContinuation authenticator binding

def ContinuationAuthenticator.issue
    (authenticator : ContinuationAuthenticator Token)
    (binding : ContinuationBinding) :
    AuthenticatedContinuation authenticator binding :=
  {
    token := authenticator.sign binding
    verified := authenticator.verifies_signed binding
  }

theorem authenticated_binding_unique
    (authenticator : ContinuationAuthenticator Token)
    {left right : ContinuationBinding}
    (continuation :
      AuthenticatedContinuation authenticator left)
    (alsoVerified :
      authenticator.verify continuation.token right = true) :
    left = right :=
  authenticator.binding_exclusive
    continuation.token left right
    continuation.verified alsoVerified

end Mathematics.Resolution
