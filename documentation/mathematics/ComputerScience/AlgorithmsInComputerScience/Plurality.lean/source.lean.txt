import Mathematics.Concept.PointUniverse
import Mathematics.Oracle.Jurisdiction

/-!
# Oracle plurality over one point universe

Many oracles may interpret the same mathematics under different jurisdictions.
They do not receive private semantic identity spaces.
-/

namespace Mathematics.Oracle

structure OracleFamily where
  familyId : StableId
  pointUniverse : Concept.PointUniverse
  jurisdictions : List Jurisdiction
  jurisdiction_ids_unique :
    (jurisdictions.map Jurisdiction.jurisdictionId).Nodup
  sharedPointUniverse :
    ∀ jurisdiction ∈ jurisdictions,
      jurisdiction.pointUniverseId =
        pointUniverse.universeId
  jurisdictionsValid :
    ∀ jurisdiction ∈ jurisdictions,
      jurisdiction.Valid
  familyDigest : Digest

theorem OracleFamily.no_private_point_universe
    (family : OracleFamily)
    {jurisdiction : Jurisdiction}
    (member : jurisdiction ∈ family.jurisdictions) :
    jurisdiction.pointUniverseId =
      family.pointUniverse.universeId :=
  family.sharedPointUniverse jurisdiction member

theorem OracleFamily.jurisdiction_valid
    (family : OracleFamily)
    {jurisdiction : Jurisdiction}
    (member : jurisdiction ∈ family.jurisdictions) :
    jurisdiction.Valid :=
  family.jurisdictionsValid jurisdiction member

end Mathematics.Oracle
