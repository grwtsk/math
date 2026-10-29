-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustExpectedUpdateCertificate.Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.RustExpectedUpdateCertificate.Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343","mathematical_subject":"Computation.Algorithms","original_sha256":"4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3bacab6e29030f0f671238b4/workspace/Generated/XYZRouteFixture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.XYZ.Transport
import Mathlib.Tactic

/-!
# Generated finite XYZ route and conformance fixture

This quarantine module mirrors the finite V1 golden corpus.  Its contracts,
route observations, proposal classifications, and Rust certificates are finite
conformance evidence only.  In particular, a matching hash or runtime record
does not establish universal Rust correctness or promote executable evidence
to Lean theorem authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RustExpectedUpdateCertificate.Variant4cde86868951289f24cbf7f8ecccd3e8e0378c9ed1d07504acad0c9329115343

public section

namespace Generated.XYZRouteFixture

open Surface.Core.XYZ

@[surface_candidate] abbrev FixtureHost := Fin 9
@[surface_candidate] abbrev FixtureEdgeId := Fin 16

@[surface_candidate] def fixtureHostCode : StableFiniteCode FixtureHost where
  code := Fin.val
  injective := Fin.val_injective
  codeLt := fun host ↦ by simpa using host.isLt

@[surface_candidate] def fixtureEdgeCode : StableFiniteCode FixtureEdgeId where
  code := Fin.val
  injective := Fin.val_injective
  codeLt := fun edge ↦ by simpa using edge.isLt

@[expose, surface_candidate] def fixtureEdge
    (edgeId : FixtureEdgeId) (source target : FixtureHost)
    (tension : Int) (tieBreak : Nat) :
    DeclaredEdge FixtureHost FixtureEdgeId :=
  ⟨edgeId, source, target, tension, tieBreak⟩

@[surface_candidate] def fixtureInsertionEdges :
    List (DeclaredEdge FixtureHost FixtureEdgeId) :=
  [
    fixtureEdge 0 0 2 5 30,
    fixtureEdge 1 0 1 (-1) 20,
    fixtureEdge 2 0 3 5 10,
    fixtureEdge 3 1 5 2 2,
    fixtureEdge 4 1 0 3 3,
    fixtureEdge 5 1 4 0 1,
    fixtureEdge 6 3 6 1 4,
    fixtureEdge 7 3 3 0 6,
    fixtureEdge 8 3 6 (-2) 9,
    fixtureEdge 9 2 7 0 8,
    fixtureEdge 10 2 5 (-3) 5,
    fixtureEdge 11 4 2 0 1,
    fixtureEdge 12 5 6 0 1,
    fixtureEdge 13 6 1 0 1
  ]

@[surface_candidate] def fixtureCanonicalEdges :
    List (DeclaredEdge FixtureHost FixtureEdgeId) :=
  [
    fixtureEdge 1 0 1 (-1) 20,
    fixtureEdge 2 0 3 5 10,
    fixtureEdge 0 0 2 5 30,
    fixtureEdge 5 1 4 0 1,
    fixtureEdge 3 1 5 2 2,
    fixtureEdge 4 1 0 3 3,
    fixtureEdge 10 2 5 (-3) 5,
    fixtureEdge 9 2 7 0 8,
    fixtureEdge 8 3 6 (-2) 9,
    fixtureEdge 7 3 3 0 6,
    fixtureEdge 6 3 6 1 4,
    fixtureEdge 11 4 2 0 1,
    fixtureEdge 12 5 6 0 1,
    fixtureEdge 13 6 1 0 1
  ]

@[surface_candidate] def fixtureEdges :
    Finset (DeclaredEdge FixtureHost FixtureEdgeId) :=
  fixtureInsertionEdges.toFinset

@[expose, surface_candidate] def fixtureContractHash : Hash256 where
  algorithm := "sha256"
  hex := "04975cd90797c913f8426f483c25113487e7153d01e8a3a224ba050aa94981c5"

@[expose, surface_candidate] def fixtureSnapshotHash : Hash256 where
  algorithm := "sha256"
  hex := "e3cdcf86d1fb2616ad2d29ad197a3d656f4a106930aaaac3118494ad17078e02"

@[expose, surface_candidate] def fixtureWrongContractHash : Hash256 where
  algorithm := "sha256"
  hex := "f39ccf7f05cffbff8251ef2c77175f89c6aaaf59e6ee5004449514533d90d7ba"

@[simp, surface_candidate]
theorem fixtureContractHash_valid : fixtureContractHash.Valid := by
  simp [fixtureContractHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[simp, surface_candidate]
theorem fixtureSnapshotHash_valid : fixtureSnapshotHash.Valid := by
  simp [fixtureSnapshotHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[simp, surface_candidate]
theorem fixtureWrongContractHash_valid : fixtureWrongContractHash.Valid := by
  simp [fixtureWrongContractHash, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet] <;> decide +kernel

@[simp, surface_candidate]
theorem fixtureWrongContractHash_ne :
    fixtureWrongContractHash ≠ fixtureContractHash := by
  intro equality
  have hexEquality := congrArg Hash256.hex equality
  change
    "f39ccf7f05cffbff8251ef2c77175f89c6aaaf59e6ee5004449514533d90d7ba" =
      "04975cd90797c913f8426f483c25113487e7153d01e8a3a224ba050aa94981c5"
    at hexEquality
  have distinct :
      "f39ccf7f05cffbff8251ef2c77175f89c6aaaf59e6ee5004449514533d90d7ba" ≠
        "04975cd90797c913f8426f483c25113487e7153d01e8a3a224ba050aa94981c5" := by
    decide +kernel
  exact distinct hexEquality

@[expose, surface_candidate] def fixtureContract :
    RoutingContract FixtureHost FixtureEdgeId where
  schemaVersion := xyzRoutingSchemaVersionV1
  algorithmVersion := xyzRoutingAlgorithmVersionV1
  serializationVersion := xyzRoutingSerializationVersionV1
  traversalMode := .breadthFirst
  hostCode := fixtureHostCode
  edgeCode := fixtureEdgeCode
  tensionMin := -3
  tensionMax := 5
  tieBreakBound := 31
  edges := fixtureEdges
  fixedFormat := xyzFormatV1
  invariantId := normalizedTristimulusInvariantId
  expectedUpdateId := xyzIdentityExpectedUpdateId
  contractHash := fixtureContractHash

@[simp, surface_candidate]
theorem fixtureContract_contractHash :
    fixtureContract.contractHash = fixtureContractHash := rfl

@[simp, surface_candidate]
theorem fixtureContract_algorithmVersion :
    fixtureContract.algorithmVersion = xyzRoutingAlgorithmVersionV1 := rfl

private theorem fixtureEdgeFinsets_equal :
    fixtureInsertionEdges.toFinset = fixtureCanonicalEdges.toFinset := by
  apply Finset.ext
  intro edge
  simp only [List.mem_toFinset]
  simp [fixtureInsertionEdges, fixtureCanonicalEdges, fixtureEdge]
  aesop

@[simp, surface_candidate]
theorem fixtureContract_sortedCanonicalEdges :
    fixtureContract.sortedCanonicalEdges = fixtureCanonicalEdges := by
  unfold RoutingContract.sortedCanonicalEdges
  rw [show fixtureContract.edges = fixtureCanonicalEdges.toFinset by
    simp [fixtureContract, fixtureEdges, fixtureEdgeFinsets_equal]]
  apply (List.toFinset_sort fixtureContract.canonicalEdgeLE
    (by
      simp [fixtureCanonicalEdges, fixtureEdge] :
        fixtureCanonicalEdges.Nodup)).2
  simp [fixtureCanonicalEdges, fixtureEdge, fixtureContract,
    RoutingContract.canonicalEdgeLE, RoutingContract.canonicalEdgeLexValue,
    fixtureHostCode, fixtureEdgeCode, Prod.Lex.toLex_le_toLex]

@[surface_candidate]
theorem fixtureContract_valid : fixtureContract.Valid := by
  unfold RoutingContract.Valid
  simp only [fixtureContract_sortedCanonicalEdges]
  simp [fixtureContract, FixedFormat.Valid, fixtureEdges,
    fixtureInsertionEdges, fixtureCanonicalEdges, fixtureEdge,
    fixtureHostCode, fixtureEdgeCode,
    RoutingContract.edgeKey,
    RoutingContract.hashMatches, Hash256.Valid, IsLowerHexDigit,
    lowerHexAlphabet, FitsSignedBits, signedHalfRange, fixtureContractHash] <;>
    decide +kernel

@[surface_candidate]
theorem ordered_edge_sorting :
    fixtureContract.sortedCanonicalEdges.map (fun edge ↦ edge.edgeId.val) =
      [1, 2, 0, 5, 3, 4, 10, 9, 8, 7, 6, 11, 12, 13] := by
  simp [fixtureCanonicalEdges, fixtureEdge]

@[surface_candidate]
theorem bfs_route_through_cycle :
    fixtureContract.orderedRoute 0 =
      ⟨[0, 1, 3, 2, 4, 5, 6, 7], [1, 2, 0, 5, 3, 8, 9]⟩ := by
  simp [fixtureContract_sortedCanonicalEdges, fixtureCanonicalEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges]

@[surface_candidate]
theorem self_loop_ignored_after_visit :
    (7 : FixtureEdgeId) ∉
      (fixtureContract.orderedRoute 0).discoveryEdges := by
  simp [bfs_route_through_cycle]

@[surface_candidate]
theorem disconnected_empty_route :
    fixtureContract.orderedRoute 8 = ⟨[8], []⟩ := by
  simp [fixtureContract_sortedCanonicalEdges, fixtureCanonicalEdges, fixtureEdge,
    RoutingContract.orderedRoute, RoutingContract.routeLoop,
    RoutingContract.initialRouteState, RoutingContract.processQueuedHost,
    RoutingContract.discoverOutgoing, RoutingContract.discoverOne,
    RoutingContract.orderedOutgoingEdges, RoutingContract.outgoingEdges]

@[expose, surface_candidate] def proposalEdge :
    DeclaredEdge FixtureHost FixtureEdgeId :=
  fixtureEdge 12 5 6 0 1

@[simp, surface_candidate]
theorem findDeclaredEdge_proposalEdge :
    findDeclaredEdge fixtureContract 12 = some proposalEdge := by
  simp [findDeclaredEdge, fixtureContract_sortedCanonicalEdges,
    fixtureCanonicalEdges, proposalEdge, fixtureEdge]

@[simp, surface_candidate]
theorem findDeclaredEdge_undeclared :
    findDeclaredEdge fixtureContract 15 = none := by
  simp [findDeclaredEdge, fixtureContract_sortedCanonicalEdges,
    fixtureCanonicalEdges, fixtureEdge]

/-! ## Exact update vectors -/

@[surface_candidate] def equalEnergyWhite : FixedXYZ xyzFormatV1 where
  x := ⟨1_000_000, by decide⟩
  y := ⟨1_000_000, by decide⟩
  z := ⟨1_000_000, by decide⟩

@[surface_candidate] def primaryX : FixedXYZ xyzFormatV1 where
  x := ⟨3_000_000, by decide⟩
  y := ⟨0, by decide⟩
  z := ⟨0, by decide⟩

@[surface_candidate] def primaryY : FixedXYZ xyzFormatV1 where
  x := ⟨0, by decide⟩
  y := ⟨3_000_000, by decide⟩
  z := ⟨0, by decide⟩

@[surface_candidate] def primaryZ : FixedXYZ xyzFormatV1 where
  x := ⟨0, by decide⟩
  y := ⟨0, by decide⟩
  z := ⟨3_000_000, by decide⟩

@[surface_candidate] def asymmetricNormalized : FixedXYZ xyzFormatV1 where
  x := ⟨2_000_000, by decide⟩
  y := ⟨750_000, by decide⟩
  z := ⟨250_000, by decide⟩

@[simp, surface_candidate]
theorem equalEnergyWhite_ne_asymmetricNormalized :
    equalEnergyWhite ≠ asymmetricNormalized := by
  intro equality
  have rawEquality := congrArg (fun xyz ↦ xyz.x.raw) equality
  norm_num [equalEnergyWhite, asymmetricNormalized] at rawEquality

private def revisioned
    (revision : Revision) (value : FixedXYZ xyzFormatV1) :
    RevisionedXYZ xyzFormatV1 :=
  ⟨revision, value⟩

@[surface_candidate] def whiteAt0 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨0, by decide⟩ equalEnergyWhite

@[surface_candidate] def primaryXAt1 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨1, by decide⟩ primaryX

@[surface_candidate] def primaryYAt2 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨2, by decide⟩ primaryY

@[surface_candidate] def primaryZAt3 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨3, by decide⟩ primaryZ

@[surface_candidate] def primaryYAt4 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨4, by decide⟩ primaryY

@[surface_candidate] def asymmetricAt42 : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨42, by decide⟩ asymmetricNormalized

@[surface_candidate] def whiteAtMaxRevision : RevisionedXYZ xyzFormatV1 :=
  revisioned ⟨4_294_967_295, by decide⟩ equalEnergyWhite

@[surface_candidate]
theorem identity_expected_update :
    leanExpectedUpdate asymmetricAt42 = asymmetricAt42 := by
  rfl

@[surface_candidate]
theorem equal_energy_normalized_invariant :
    normalizedTristimulusInvariant xyzFormatV1 equalEnergyWhite := by
  decide

/-! ## Proof-bearing finite Rust certificates -/

@[surface_candidate, surface_certificate]
structure RustExpectedUpdateCertificate where
  input : RevisionedXYZ xyzFormatV1
  rustOutput : RevisionedXYZ xyzFormatV1
  conformanceClaim : Prop
  conformanceClaim_eq :
    conformanceClaim = (rustOutput = leanExpectedUpdate input)
  conformanceCertified : conformanceClaim

/-- The runtime-observed output carried by a concrete certificate.  The input
argument makes the public gate explicit; the conformance predicate below is
what proves that this certificate belongs to that input. -/
@[surface_candidate] def rustExpectedUpdate
    (certificate : RustExpectedUpdateCertificate)
    (_input : RevisionedXYZ xyzFormatV1) : RevisionedXYZ xyzFormatV1 :=
  certificate.rustOutput

@[surface_candidate] def RustExpectedUpdateConforms
    (certificate : RustExpectedUpdateCertificate)
    (input : RevisionedXYZ xyzFormatV1) : Prop :=
  certificate.input = input ∧ certificate.conformanceClaim

@[surface_candidate]
theorem rustExpectedUpdate_eq_leanExpectedUpdate
    (certificate : RustExpectedUpdateCertificate)
    (input : RevisionedXYZ xyzFormatV1)
    (h : RustExpectedUpdateConforms certificate input) :
    rustExpectedUpdate certificate input = leanExpectedUpdate input := by
  unfold rustExpectedUpdate
  rw [← h.1]
  rw [← certificate.conformanceClaim_eq]
  exact h.2

private def identityCertificate
    (input : RevisionedXYZ xyzFormatV1) : RustExpectedUpdateCertificate where
  input := input
  rustOutput := input
  conformanceClaim := input = leanExpectedUpdate input
  conformanceClaim_eq := rfl
  conformanceCertified := rfl

@[surface_candidate] def whiteCertificate := identityCertificate whiteAt0
@[surface_candidate] def primaryXCertificate := identityCertificate primaryXAt1
@[surface_candidate] def primaryYCertificate := identityCertificate primaryYAt2
@[surface_candidate] def primaryZCertificate := identityCertificate primaryZAt3
@[surface_candidate] def minMaxCertificate := identityCertificate primaryYAt4
@[surface_candidate] def asymmetricCertificate := identityCertificate asymmetricAt42
@[surface_candidate] def maxRevisionCertificate :=
  identityCertificate whiteAtMaxRevision

@[surface_candidate]
theorem golden_update_certificates_checked :
    RustExpectedUpdateConforms whiteCertificate whiteAt0 ∧
    RustExpectedUpdateConforms primaryXCertificate primaryXAt1 ∧
    RustExpectedUpdateConforms primaryYCertificate primaryYAt2 ∧
    RustExpectedUpdateConforms primaryZCertificate primaryZAt3 ∧
    RustExpectedUpdateConforms minMaxCertificate primaryYAt4 ∧
    RustExpectedUpdateConforms asymmetricCertificate asymmetricAt42 ∧
    RustExpectedUpdateConforms maxRevisionCertificate whiteAtMaxRevision := by
  simp [RustExpectedUpdateConforms, whiteCertificate, primaryXCertificate,
    primaryYCertificate, primaryZCertificate, minMaxCertificate,
    asymmetricCertificate, maxRevisionCertificate, identityCertificate,
    leanExpectedUpdate]

/-! ## Proposal observations -/

@[surface_candidate] def sourceSnapshot : SourceSnapshot FixtureHost where
  schemaVersion := xyzRoutingSchemaVersionV1
  contractHash := fixtureContractHash
  startHost := 0
  sourceHost := 5
  source := revisioned ⟨42, by decide⟩ equalEnergyWhite
  snapshotHash := fixtureSnapshotHash

@[surface_candidate] def baseRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨41, by decide⟩ asymmetricNormalized)⟩

@[surface_candidate] def baseProposal :
    RawProposal FixtureHost FixtureEdgeId where
  schemaVersion := xyzRoutingSchemaVersionV1
  contractHash := fixtureContractHash
  sourceSnapshotHash := fixtureSnapshotHash
  algorithmVersion := xyzRoutingAlgorithmVersionV1
  revision := 42
  edgeId := 12
  claimedSource := 5
  claimedTarget := 6
  source := ⟨1_000_000, 1_000_000, 1_000_000⟩
  proposed := ⟨1_000_000, 1_000_000, 1_000_000⟩

@[surface_candidate] def replayRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨42, by decide⟩ equalEnergyWhite)⟩

@[surface_candidate] def staleRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨43, by decide⟩ equalEnergyWhite)⟩

@[surface_candidate] def conflictRegister : LwwRegister xyzFormatV1 :=
  ⟨some (revisioned ⟨42, by decide⟩ asymmetricNormalized)⟩

@[expose, surface_candidate] def wrongEdgeProposal :
    RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with edgeId := 15 }

@[expose, surface_candidate] def wrongHashProposal :
    RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with contractHash := fixtureWrongContractHash }

@[expose, surface_candidate] def wrongProposedValueProposal :
    RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with proposed := ⟨2_000_000, 750_000, 250_000⟩ }

@[surface_candidate]
inductive FixtureVerificationStatus where
  | accepted
  | replay
  | rejected (reason : ProposalRejection)
deriving DecidableEq, Repr

@[surface_candidate] def verificationStatus :
    VerificationResult FixtureHost FixtureEdgeId → FixtureVerificationStatus
  | .rejected reason => .rejected reason
  | .admitted admitted =>
      match admitted.mergeDecision with
      | .accepted _ => .accepted
      | .replay _ => .replay
      | .stale _ _ => .rejected .staleRevision
      | .conflict _ _ => .rejected .equalRevisionConflict

@[expose, surface_candidate] def mergeStatus :
    MergeDecision xyzFormatV1 → FixtureVerificationStatus
  | .accepted _ => .accepted
  | .replay _ => .replay
  | .stale _ _ => .rejected .staleRevision
  | .conflict _ _ => .rejected .equalRevisionConflict

@[surface_candidate]
theorem baseProposal_verificationStatus
    (register : LwwRegister xyzFormatV1) :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot register baseProposal) =
        mergeStatus (merge register sourceSnapshot.source) := by
  simp [verifyProposal, fixtureContract_valid,
    sourceSnapshot, baseProposal, proposalEdge,
    rangeCheckedXYZ?, InRawRange, xyzFormatV1, equalEnergyWhite,
    revisioned, leanExpectedUpdate, normalizedTristimulusInvariant]
  split
  · rename_i hfind
    simp [findDeclaredEdge_proposalEdge] at hfind
  · rename_i edge hfind
    have edgeEquals : edge = proposalEdge := by
      have found := hfind
      rw [findDeclaredEdge_proposalEdge] at found
      exact (Option.some.inj found).symm
    subst edge
    simp [sourceSnapshot, baseProposal,
      proposalEdge, fixtureEdge, rangeCheckedXYZ?, InRawRange, xyzFormatV1,
      equalEnergyWhite, revisioned, leanExpectedUpdate,
      normalizedTristimulusInvariant, revisionModulus]
    split
    all_goals
      simp only [verificationStatus]
      simp_all only [mergeStatus]

@[surface_candidate]
theorem accepted_newer_revision :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot baseRegister baseProposal) =
        .accepted := by
  rw [baseProposal_verificationStatus]
  simp [mergeStatus, baseRegister,
    sourceSnapshot, revisioned, merge]

@[surface_candidate]
theorem identical_replay_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot replayRegister baseProposal) =
        .replay := by
  rw [baseProposal_verificationStatus]
  simp [mergeStatus, replayRegister,
    sourceSnapshot, revisioned, merge]

@[surface_candidate]
theorem stale_rejection_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot staleRegister baseProposal) =
        .rejected .staleRevision := by
  rw [baseProposal_verificationStatus]
  simp [mergeStatus, staleRegister,
    sourceSnapshot, revisioned, merge]

@[surface_candidate]
theorem equal_revision_conflict_rejection_observed :
    verificationStatus
      (verifyProposal fixtureContract sourceSnapshot conflictRegister baseProposal) =
        .rejected .equalRevisionConflict := by
  rw [baseProposal_verificationStatus]
  simp [mergeStatus, conflictRegister,
    sourceSnapshot, revisioned, merge,
    equalEnergyWhite_ne_asymmetricNormalized]

@[surface_candidate]
theorem wrong_edge_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister wrongEdgeProposal) =
        .rejected .undeclaredEdge := by
  simp [verifyProposal, fixtureContract_valid, sourceSnapshot,
    wrongEdgeProposal, baseProposal]
  split
  · rfl
  · rename_i edge hfind
    have impossible := hfind
    rw [findDeclaredEdge_undeclared] at impossible
    contradiction

@[surface_candidate]
theorem wrong_hash_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister wrongHashProposal) =
        .rejected .invalidContractHash := by
  simp [verificationStatus, verifyProposal, fixtureContract_valid,
    sourceSnapshot, wrongHashProposal, baseProposal,
    fixtureWrongContractHash_ne]

@[surface_candidate]
theorem wrong_proposed_value_rejection_observed :
    verificationStatus (verifyProposal fixtureContract sourceSnapshot
      baseRegister wrongProposedValueProposal) =
        .rejected .expectedUpdateMismatch := by
  simp [verifyProposal, fixtureContract_valid, sourceSnapshot,
    wrongProposedValueProposal, baseProposal, rangeCheckedXYZ?, InRawRange,
    xyzFormatV1, equalEnergyWhite, asymmetricNormalized, revisioned,
    leanExpectedUpdate, normalizedTristimulusInvariant]
  split
  · rename_i hfind
    simp [findDeclaredEdge_proposalEdge] at hfind
  · rename_i edge hfind
    have edgeEquals : edge = proposalEdge := by
      have found := hfind
      rw [findDeclaredEdge_proposalEdge] at found
      exact (Option.some.inj found).symm
    subst edge
    simp [verificationStatus, sourceSnapshot, wrongProposedValueProposal,
      baseProposal, proposalEdge, fixtureEdge, rangeCheckedXYZ?, InRawRange,
      xyzFormatV1, equalEnergyWhite, asymmetricNormalized, revisioned,
      leanExpectedUpdate, normalizedTristimulusInvariant, revisionModulus]

/-! ## SharedArrayBuffer V1 golden metadata

These constants mirror the finite browser/Rust frame layout.  They specify
byte and word offsets only and carry no browser, memory-model, or theorem
authority beyond the arithmetic equality proved below.
-/

@[expose, surface_candidate] def sabHeaderBytesV1 : Nat := 64
@[expose, surface_candidate] def sabControlWordsV1 : Nat := 16
@[expose, surface_candidate] def sabSlotCountV1 : Nat := 3
@[expose, surface_candidate] def sabSlotBytesV1 : Nat := 4096
@[expose, surface_candidate] def sabTotalBytesV1 : Nat := 12352

@[expose, surface_candidate] def sabSlotOffsetsV1 : List Nat :=
  [64, 4160, 8256]

@[expose, surface_candidate] def sabMagicUnsignedV1 : Nat := 1398298970
@[expose, surface_candidate] def sabAbiVersionV1 : Nat := 1

/-- MAGIC through ERROR_CODE, in their exact control-word order. -/
@[expose, surface_candidate] def sabWordIndicesV1 : List Nat :=
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

/-- EMPTY, WRITING, READY, and ERROR. -/
@[expose, surface_candidate] def sabStateCodesV1 : List Nat :=
  [0, 1, 2, 3]

@[surface_candidate]
theorem sabLayoutV1_checked :
    sabHeaderBytesV1 + sabSlotCountV1 * sabSlotBytesV1 = sabTotalBytesV1 ∧
      sabControlWordsV1 * 4 = sabHeaderBytesV1 ∧
      sabSlotOffsetsV1 = [sabHeaderBytesV1,
        sabHeaderBytesV1 + sabSlotBytesV1,
        sabHeaderBytesV1 + 2 * sabSlotBytesV1] ∧
      sabMagicUnsignedV1 = 1398298970 ∧
      sabAbiVersionV1 = 1 ∧
      sabWordIndicesV1 = List.range 11 ∧
      sabStateCodesV1 = List.range 4 := by
  decide

end Generated.XYZRouteFixture
