import Surface.ContinuousAssurance.Index.Validation

/-!
# Authority-preserving index queries

Query results retain whether the payload is a formal fact, external
observation, review, authorization, or unresolved obligation.  These
constructors are intentionally not interchangeable.
-/

namespace Surface.ContinuousAssurance

inductive CanonicalIndexQueryResult
  | fact (record : FormalDeclarationRecord) (claim : IndexedClaim)
  | observation (record : EvidenceEventRecord) (evidence : EvidenceItem)
  | review (record : ReviewBindingRecord) (review : ReviewRecord)
  | authorization (record : AuthorizationBindingRecord)
      (authorization : AuthorizationRecord)
  | obligation (record : ObligationRecord) (obligation : ObligationId)

/-- A finite query over exact object identity. -/
def CanonicalIndex.queryObject
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId) : List AnyIndexRecord :=
  index.records.filter fun record => record.objectId == objectId

theorem CanonicalIndex.mem_queryObject_iff
    (index : CanonicalIndex)
    (objectId : MathematicalObjectId)
    (record : AnyIndexRecord) :
    record ∈ index.queryObject objectId ↔
      record ∈ index.records ∧ record.objectId = objectId := by
  simp [CanonicalIndex.queryObject]

end Surface.ContinuousAssurance
