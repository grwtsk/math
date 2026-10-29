import Mathematics.Capability.Principal
import Mathematics.Concept.Authority
import Mathematics.Ingestion.TypedIngress
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Generated mathematical ancestry

Generated mathematics re-enters through the same source-addressed gate.  Its
generator, task, inputs, target, authority, and obligations are immutable
ancestry coordinates; generation does not grant theorem authority.
-/

namespace Mathematics.Ingestion

inductive GeneratorKind
  | human
  | externalModel
  | localModel
  | symbolicSearch
  | compiler
  | transformation
  deriving DecidableEq, Repr

structure GeneratedAncestry where
  ancestryId : StableId
  generatorKind : GeneratorKind
  generator : Capability.Principal
  taskDigest : Digest
  promptDigest : Option Digest
  inputAddressIds : List StableId
  outputAddress : SourceAnalysis.AbstractSourceAddress
  authority : Concept.Profile
  obligationIds : List StableId
  predecessorAncestryIds : List StableId
  ancestryDigest : Digest
  deriving DecidableEq

/-- Re-ingestion binds generated output to a typed ingress entry. -/
structure GeneratedReingestion
    (ancestry : GeneratedAncestry) where
  entry : TypedIngressEntry
  output_address_exact :
    entry.sourceAddress = ancestry.outputAddress
  reingestionReceiptId : StableId
  reingestionDigest : Digest

theorem GeneratedReingestion.retains_generator
    {ancestry : GeneratedAncestry}
    (_reingestion : GeneratedReingestion ancestry) :
    ∃ generator, generator = ancestry.generator :=
  ⟨ancestry.generator, rfl⟩

end Mathematics.Ingestion
