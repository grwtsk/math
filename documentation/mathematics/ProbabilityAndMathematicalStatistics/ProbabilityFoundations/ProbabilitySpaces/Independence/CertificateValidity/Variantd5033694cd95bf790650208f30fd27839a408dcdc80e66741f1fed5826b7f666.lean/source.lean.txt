import Mathematics.Authority.CertificateMetadata

/-!
# Selective certificate validity

Mathematical validity, committed authorization, and current snapshot authority
are independent.  A certificate is usable only when all three hold.
-/

namespace Mathematics.Authority

open Mathematics.Projection

/-- Exact equality of every recorded component dependency. -/
def MathematicallyValidAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  ∀ dependency ∈ certificate.dependencies,
    dependency.Matches snapshot

/-- Authorization is a sealed capability, not a metadata Boolean. -/
def AuthorizedAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  Nonempty (AcceptedCertificateAuthorization certificate snapshot)

/--
Current usability requires a verified-active master snapshot and exact
certificate/snapshot identity.
-/
def NotRevokedAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  Nonempty (VerifiedActiveMasterSnapshot snapshot) ∧
    certificate.snapshot = snapshot.id

/-- The complete fail-closed usability predicate. -/
def UsableAt
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) : Prop :=
  MathematicallyValidAt certificate snapshot ∧
  AuthorizedAt certificate snapshot ∧
  NotRevokedAt certificate snapshot

theorem mathematicallyValidAt_iff
    (certificate : CertificateMetadata)
    (snapshot : MasterSnapshot) :
    MathematicallyValidAt certificate snapshot ↔
      ∀ dependency ∈ certificate.dependencies,
        snapshot.componentDigest dependency.component =
          dependency.digest :=
  Iff.rfl

theorem UsableAt.mathematicallyValid
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (usable : UsableAt certificate snapshot) :
    MathematicallyValidAt certificate snapshot :=
  usable.1

theorem UsableAt.snapshotExact
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (usable : UsableAt certificate snapshot) :
    certificate.snapshot = snapshot.id :=
  usable.2.2.2

/-- Failed mathematical validity is sufficient to reject usability. -/
theorem not_usableAt_of_not_mathematicallyValid
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (invalid : ¬ MathematicallyValidAt certificate snapshot) :
    ¬ UsableAt certificate snapshot := by
  intro usable
  exact invalid usable.mathematicallyValid

/-- Revoked metadata cannot possess the sealed admitted authorization. -/
theorem revoked_not_authorized
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (revoked : certificate.authorityState = .revoked) :
    ¬ AuthorizedAt certificate snapshot := by
  rintro ⟨authorization⟩
  have admitted := authorization.admitted
  rw [revoked] at admitted
  cases admitted

/-- Superseded metadata cannot possess the sealed admitted authorization. -/
theorem superseded_not_authorized
    {certificate : CertificateMetadata}
    {snapshot : MasterSnapshot}
    (superseded :
      certificate.authorityState = .superseded) :
    ¬ AuthorizedAt certificate snapshot := by
  rintro ⟨authorization⟩
  have admitted := authorization.admitted
  rw [superseded] at admitted
  cases admitted

/-- Exact component changes between two immutable snapshots. -/
structure SnapshotChange
    (before after : MasterSnapshot) where
  changed : Finset SnapshotComponent
  unchanged_outside :
    ∀ component,
      component ∉ changed →
        after.componentDigest component =
          before.componentDigest component
  changed_exact :
    ∀ component ∈ changed,
      after.componentDigest component ≠
        before.componentDigest component

/-- The certificate has no dependency in the changed component set. -/
def IndependentOf
    (certificate : CertificateMetadata)
    {before after : MasterSnapshot}
    (change : SnapshotChange before after) : Prop :=
  ∀ dependency ∈ certificate.dependencies,
    dependency.component ∉ change.changed

/--
Selective survival: changing unrelated components preserves mathematical
validity.  Authorization and current-snapshot status must still be checked
separately.
-/
theorem mathematicallyValidAt_of_independent_change
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    (independent : IndependentOf certificate change) :
    MathematicallyValidAt certificate after := by
  intro dependency member
  unfold SnapshotDependency.Matches
  rw [change.unchanged_outside dependency.component
    (independent dependency member)]
  exact validBefore dependency member

/-- Any exact change to a recorded component invalidates the old metadata. -/
theorem not_mathematicallyValidAt_of_changed_dependency
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (changed : dependency.component ∈ change.changed) :
    ¬ MathematicallyValidAt certificate after := by
  intro validAfter
  have beforeMatches := validBefore dependency member
  have afterMatches := validAfter dependency member
  apply change.changed_exact dependency.component changed
  calc
    after.componentDigest dependency.component =
        dependency.digest := afterMatches
    _ = before.componentDigest dependency.component :=
      beforeMatches.symm

/-- Runtime-independent mathematics survives a runtime-only digest change. -/
theorem runtime_change_preserves_mathematical_validity
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (runtimeOnly : change.changed = { .runtime })
    (validBefore : MathematicallyValidAt certificate before)
    (runtimeIndependent :
      ∀ dependency ∈ certificate.dependencies,
        dependency.component ≠ .runtime) :
    MathematicallyValidAt certificate after := by
  apply mathematicallyValidAt_of_independent_change
      change validBefore
  intro dependency member
  simpa [runtimeOnly] using runtimeIndependent dependency member

/-- An operator-dependent fixed-point certificate fails after operator change. -/
theorem operator_change_invalidates
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (operatorDependency : dependency.component = .operator)
    (operatorChanged : .operator ∈ change.changed) :
    ¬ MathematicallyValidAt certificate after := by
  have dependencyChanged :
      dependency.component ∈ change.changed := by
    simpa [operatorDependency] using operatorChanged
  exact
    not_mathematicallyValidAt_of_changed_dependency
      change validBefore member dependencyChanged

/--
A surgery changing operator or transport invalidates every certificate that
records either component.  Reconstruction or an explicit theorem migration
is required before reuse.
-/
theorem surgery_change_invalidates
    {certificate : CertificateMetadata}
    {before after : MasterSnapshot}
    (change : SnapshotChange before after)
    (operatorChanged : .operator ∈ change.changed)
    (transportChanged : .transport ∈ change.changed)
    (validBefore : MathematicallyValidAt certificate before)
    {dependency : SnapshotDependency}
    (member : dependency ∈ certificate.dependencies)
    (surgeryDependent :
      dependency.component = .operator ∨
        dependency.component = .transport) :
    ¬ MathematicallyValidAt certificate after := by
  apply
    not_mathematicallyValidAt_of_changed_dependency
      change validBefore member
  rcases surgeryDependent with operatorDependency | transportDependency
  · simpa [operatorDependency] using operatorChanged
  · simpa [transportDependency] using transportChanged

end Mathematics.Authority
