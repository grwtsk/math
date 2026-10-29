import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Gist

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure TimeScope where
  validAt? : Option String
  invalidAt? : Option String
  createdAt? : Option String
  expiredAt? : Option String
deriving DecidableEq, Repr

structure TimeScopedFact where
  subject : String
  predicate : String
  object : String
  vertex : MemoryVertex
  scope : TimeScope
  confidence : Nat
  factVertex : vertex.kind = MemoryKind.fact

def TimeScopedFact.tripleKey (f : TimeScopedFact) : String :=
  f.subject ++ "|" ++ f.predicate ++ "|" ++ f.object

end Think.RadoProjectedModularHeatflow.MemoryCore
