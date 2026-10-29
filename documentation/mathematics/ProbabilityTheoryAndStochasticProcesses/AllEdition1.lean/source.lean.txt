import Mathematics.BinaryFrontier.PartialBitfield.Order
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Completion.Bitfield
import Mathematics.BinaryFrontier.Completion.ContinuationCover
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Obstruction.Factorization
import Mathematics.BinaryFrontier.Obstruction.Provenance
import Mathematics.BinaryFrontier.Symmetry.Canonical
import Mathematics.BinaryFrontier.Symmetry.CompletionEquivariance
import Mathematics.BinaryFrontier.Symmetry.ObstructionAction
import Mathematics.BinaryFrontier.Symmetry.OrientationEquivariance
import Mathematics.BinaryFrontier.Refinement.Tree
import Mathematics.BinaryFrontier.Refinement.Address
import Mathematics.BinaryFrontier.Refinement.Boundary
import Mathematics.BinaryFrontier.Refinement.CanonicalObstruction
import Mathematics.BinaryFrontier.Refinement.Resolver
import Mathematics.BinaryFrontier.Presentation.DistinctionAdapter
import Mathematics.BinaryFrontier.Presentation.CompletionAdapter
import Mathematics.BinaryFrontier.Presentation.Noninterference
import Mathematics.BinaryFrontier.Presentation.CognitiveLoad

/-!
# Binary-frontier proof boundary

The umbrella exports finite structural implications and explicitly
proof-bearing adapters for change request `CR-NOE-BFPO-001`.

Canonicalization is data-only and can be used for obstructions only through a
context containing completion equivariance and primitive-core transport.
Resolver totality means a typed result for finite certified input, including
explicit unknown and malformed-input results.  It does not decide arbitrary
completion semantics.

Concrete project registries, completion decisions, continuation covers,
primitive-core extraction, admitted symmetry actions, terminal-address
certificates, and runtime owner admission remain separate evidence
obligations.
-/
