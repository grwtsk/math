-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalManifestCommitment.Variant87a285b99c2452903db3dae0e0d68664b9df242e94e9f92fcf605a645f5cc069","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87a285b99c2452903db3dae0e0d68664b9df242e94e9f92fcf605a645f5cc069","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CanonicalManifestCommitment.Variant87a285b99c2452903db3dae0e0d68664b9df242e94e9f92fcf605a645f5cc069","mathematical_subject":"Computation.DataStructures","original_sha256":"87a285b99c2452903db3dae0e0d68664b9df242e94e9f92fcf605a645f5cc069","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Runtime/Soundness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Runtime.Trace

/-!
# Kernel-checked DHF1 acceptance and operation preservation

Self-contained acceptance is obtained only by decoding all three foreign byte
frames and recomputing the selected exact sparse-matrix action.  No
expected-output field or editable fixture participates in that decision.

Self-contained acceptance is deliberately not repository authority: a caller
could submit a different, internally consistent manifest.  Production
acceptance therefore additionally takes a `CanonicalManifestCommitment` and
checks exact manifest bytes as well as the committed wire and decoded identity
digests.  Exact byte equality means this boundary does not assume SHA-256
collision resistance.  Gamma enclosures are structurally decodable for
inspection, but any submission carrying them is outside either accepted-trace
predicate.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CanonicalManifestCommitment.Variant87a285b99c2452903db3dae0e0d68664b9df242e94e9f92fcf605a645f5cc069

namespace DAF.Runtime.DHF1

def rustProducer : WireString :=
  [100, 97, 102, 45, 117, 110, 105, 118, 101, 114, 115, 101, 45,
    114, 117, 110, 116, 105, 109, 101, 47, 48, 46, 49, 46, 48]

def characterMatches (manifest : RuntimeManifest)
    (request : ExecutionRequest) (trace : RuntimeTrace) : Prop :=
  match request.characterProfileId, trace.character with
  | none, none => True
  | some id, some observed =>
      ∃ profile,
        manifest.findCharacter id = some profile ∧
        observed.orbit = profile.conjugacyOrbit ∧
        observed.conductor = profile.conductor ∧
        observed.parity = profile.parity
  | _, _ => False

instance (manifest : RuntimeManifest) (request : ExecutionRequest)
    (trace : RuntimeTrace) : Decidable (characterMatches manifest request trace) := by
  unfold characterMatches
  split <;> infer_instance

def AcceptanceConditions (submission : RuntimeSubmission)
    (manifest : RuntimeManifest) (request : ExecutionRequest)
    (trace : RuntimeTrace) (operator : NamedOperator)
    (formalOutput : SparseVector) : Prop :=
  request.expectedManifestDigest = sha256 submission.manifestWire ∧
  trace.manifestDigest = sha256 submission.manifestWire ∧
  trace.terrainDigest = manifest.terrainDigest ∧
  trace.characterRegistryDigest = manifest.characterRegistryDigest ∧
  trace.operatorDigest = sha256 (operator.id ++ operator.matrixDigest) ∧
  trace.matrixDigest = operator.matrixDigest ∧
  trace.pointVector = request.input ∧
  trace.foldPath = request.foldPath ∧
  trace.inputDigest = sha256 submission.requestWire ∧
  trace.observedOutput = formalOutput ∧
  (encodeSparseVector formalOutput).map sha256 = some trace.outputDigest ∧
  characterMatches manifest request trace ∧
  manifest.gammaEnclosures = [] ∧
  trace.spectralGrid = [] ∧
  trace.gammaEnclosures = [] ∧
  trace.producer = rustProducer

instance (submission : RuntimeSubmission) (manifest : RuntimeManifest)
    (request : ExecutionRequest) (trace : RuntimeTrace)
    (operator : NamedOperator) (formalOutput : SparseVector) :
    Decidable (AcceptanceConditions submission manifest request trace
      operator formalOutput) := by
  unfold AcceptanceConditions
  infer_instance

/-- The executable verifier follows the same narrow operation as Rust:
manifest lookup followed by one exact sparse matrix application. -/
def verifySubmission (submission : RuntimeSubmission) : Bool :=
  match decodeManifest submission.manifestWire,
      decodeRequest submission.requestWire,
      decodeTrace submission.traceWire with
  | some manifest, some request, some trace =>
      match manifest.findOperator request.operatorId with
      | none => false
      | some operator =>
          match operator.matrix.apply request.input with
          | none => false
          | some formalOutput =>
              decide (AcceptanceConditions submission manifest request trace
                operator formalOutput)
  | _, _, _ => false

/-- Self-contained acceptance checks the submitted bundle against itself.  It
establishes exact finite recomputation, but does not select which manifest is
the repository's canonical manifest.  Production callers should use
`CanonicallyAcceptedTrace` instead. -/
def AcceptedTrace (submission : RuntimeSubmission) : Prop :=
  verifySubmission submission = true

instance (submission : RuntimeSubmission) : Decidable (AcceptedTrace submission) := by
  unfold AcceptedTrace
  infer_instance

/-! ## Canonical manifest commitment -/

/-- The external trust anchor for production finite execution.

`manifestWire` is retained, rather than only its hash, so acceptance can prove
that the received manifest is byte-for-byte the selected manifest.  The four
digests are repeated intentionally: the verifier checks both the wire digest
and the identity fields decoded from those exact bytes.  Constructing this
value from arbitrary input does not make that input canonical; repository
configuration must select the value. -/
structure CanonicalManifestCommitment where
  manifestWire : List UInt8
  manifestDigest : Digest
  snapshotDigest : Digest
  terrainDigest : Digest
  characterRegistryDigest : Digest
  deriving DecidableEq, Repr

/-- Executable exact-byte and decoded-identity check between an externally
selected commitment and a received submission. -/
def manifestPinnedCheck (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) : Bool :=
  decide (submission.manifestWire = commitment.manifestWire) &&
  decide (sha256 commitment.manifestWire = commitment.manifestDigest) &&
  match decodeManifest commitment.manifestWire with
  | none => false
  | some manifest =>
      decide (manifest.snapshotDigest = commitment.snapshotDigest) &&
      decide (manifest.terrainDigest = commitment.terrainDigest) &&
      decide (manifest.characterRegistryDigest =
        commitment.characterRegistryDigest)

/-- Exact-byte and decoded-identity relation checked by
`manifestPinnedCheck`. -/
def ManifestPinned (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) : Prop :=
  manifestPinnedCheck commitment submission = true

instance (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) :
    Decidable (ManifestPinned commitment submission) := by
  unfold ManifestPinned
  infer_instance

/-- Kernel-checked interpretation of the executable commitment check. -/
theorem manifestPinned_sound
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (pinned : ManifestPinned commitment submission) :
    submission.manifestWire = commitment.manifestWire ∧
    sha256 commitment.manifestWire = commitment.manifestDigest ∧
    ∃ manifest,
      decodeManifest commitment.manifestWire = some manifest ∧
      manifest.snapshotDigest = commitment.snapshotDigest ∧
      manifest.terrainDigest = commitment.terrainDigest ∧
      manifest.characterRegistryDigest =
        commitment.characterRegistryDigest := by
  unfold ManifestPinned manifestPinnedCheck at pinned
  simp only [Bool.and_eq_true, decide_eq_true_eq] at pinned
  obtain ⟨⟨wireEquality, digestEquality⟩, identities⟩ := pinned
  cases decoded : decodeManifest commitment.manifestWire with
  | none => simp [decoded] at identities
  | some manifest =>
      simp only [decoded, Bool.and_eq_true, decide_eq_true_eq] at identities
      exact ⟨wireEquality, digestEquality, manifest, rfl,
        identities.1.1, identities.1.2, identities.2⟩

/-- Production verifier: exact finite self-contained verification conjoined
with an externally selected exact manifest commitment. -/
def verifyCanonicalSubmission (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) : Bool :=
  verifySubmission submission && manifestPinnedCheck commitment submission

/-- Production acceptance relative to an explicit repository-selected
manifest commitment. -/
def CanonicallyAcceptedTrace (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) : Prop :=
  verifyCanonicalSubmission commitment submission = true

instance (commitment : CanonicalManifestCommitment)
    (submission : RuntimeSubmission) :
    Decidable (CanonicallyAcceptedTrace commitment submission) := by
  unfold CanonicallyAcceptedTrace
  infer_instance

/-- Representation means that the observed runtime vector is exactly the
formal result selected by the decoded manifest and request. -/
def Represents (submission : RuntimeSubmission) : Prop :=
  ∃ manifest request trace operator formalOutput,
    decodeManifest submission.manifestWire = some manifest ∧
    decodeRequest submission.requestWire = some request ∧
    decodeTrace submission.traceWire = some trace ∧
    manifest.findOperator request.operatorId = some operator ∧
    operator.matrix.apply request.input = some formalOutput ∧
    trace.observedOutput = formalOutput

/-- Full checked witness extracted from acceptance. -/
theorem acceptedTrace_sound {submission : RuntimeSubmission}
    (accepted : AcceptedTrace submission) :
    ∃ manifest request trace operator formalOutput,
      decodeManifest submission.manifestWire = some manifest ∧
      decodeRequest submission.requestWire = some request ∧
      decodeTrace submission.traceWire = some trace ∧
      manifest.findOperator request.operatorId = some operator ∧
      operator.matrix.apply request.input = some formalOutput ∧
      AcceptanceConditions submission manifest request trace
        operator formalOutput := by
  unfold AcceptedTrace verifySubmission at accepted
  cases manifestDecoded : decodeManifest submission.manifestWire with
  | none => simp [manifestDecoded] at accepted
  | some manifest =>
      cases requestDecoded : decodeRequest submission.requestWire with
      | none => simp [manifestDecoded, requestDecoded] at accepted
      | some request =>
          cases traceDecoded : decodeTrace submission.traceWire with
          | none => simp [manifestDecoded, requestDecoded, traceDecoded] at accepted
          | some trace =>
              cases operatorFound : manifest.findOperator request.operatorId with
              | none =>
                  simp [manifestDecoded, requestDecoded, traceDecoded,
                    operatorFound] at accepted
              | some operator =>
                  cases applied : operator.matrix.apply request.input with
                  | none =>
                      simp [manifestDecoded, requestDecoded, traceDecoded,
                        operatorFound, applied] at accepted
                  | some formalOutput =>
                      simp [manifestDecoded, requestDecoded, traceDecoded,
                        operatorFound, applied] at accepted
                      have conditions : AcceptanceConditions submission manifest
                          request trace operator formalOutput := by
                        exact accepted
                      exact ⟨manifest, request, trace, operator, formalOutput,
                        rfl, rfl, rfl, operatorFound, applied, conditions⟩

/-- Production soundness theorem requested at the foreign-runtime boundary. -/
theorem acceptedTrace_represents {submission : RuntimeSubmission}
    (accepted : AcceptedTrace submission) : Represents submission := by
  obtain ⟨manifest, request, trace, operator, formalOutput,
    manifestDecoded, requestDecoded, traceDecoded, operatorFound,
    applied, conditions⟩ := acceptedTrace_sound accepted
  exact ⟨manifest, request, trace, operator, formalOutput,
    manifestDecoded, requestDecoded, traceDecoded, operatorFound,
    applied, conditions.2.2.2.2.2.2.2.2.2.1⟩

/-- Operation preservation exposes the exact formal application equation,
not merely a decoded output that agrees with a mutable expected vector. -/
theorem acceptedTrace_operation_preserved {submission : RuntimeSubmission}
    (accepted : AcceptedTrace submission) :
    ∃ manifest request trace operator formalOutput,
      decodeManifest submission.manifestWire = some manifest ∧
      decodeRequest submission.requestWire = some request ∧
      decodeTrace submission.traceWire = some trace ∧
      manifest.findOperator request.operatorId = some operator ∧
      operator.matrix.apply request.input = some formalOutput ∧
      trace.observedOutput = formalOutput :=
  acceptedTrace_represents accepted

/-! ## Production soundness from the canonical commitment -/

/-- Canonical acceptance contains the complete self-contained exact verifier. -/
theorem canonicallyAcceptedTrace_selfContained
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (accepted : CanonicallyAcceptedTrace commitment submission) :
    AcceptedTrace submission := by
  unfold CanonicallyAcceptedTrace verifyCanonicalSubmission at accepted
  simp only [Bool.and_eq_true] at accepted
  exact accepted.1

/-- Canonical acceptance pins the received manifest to the externally selected
bytes and all declared identity digests. -/
theorem canonicallyAcceptedTrace_manifestPinned
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (accepted : CanonicallyAcceptedTrace commitment submission) :
    ManifestPinned commitment submission := by
  unfold CanonicallyAcceptedTrace verifyCanonicalSubmission at accepted
  simp only [Bool.and_eq_true] at accepted
  exact accepted.2

/-- In particular, production acceptance proves exact manifest-byte equality,
not merely equality of two SHA-256 values. -/
theorem canonicallyAcceptedTrace_exact_manifest_bytes
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (accepted : CanonicallyAcceptedTrace commitment submission) :
    submission.manifestWire = commitment.manifestWire :=
  (manifestPinned_sound
    (canonicallyAcceptedTrace_manifestPinned accepted)).1

/-- The committed wire digest and decoded repository identity fields are all
available as proof objects after production acceptance. -/
theorem canonicallyAcceptedTrace_manifest_identity
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (accepted : CanonicallyAcceptedTrace commitment submission) :
    sha256 commitment.manifestWire = commitment.manifestDigest ∧
    ∃ manifest,
      decodeManifest commitment.manifestWire = some manifest ∧
      manifest.snapshotDigest = commitment.snapshotDigest ∧
      manifest.terrainDigest = commitment.terrainDigest ∧
      manifest.characterRegistryDigest =
        commitment.characterRegistryDigest :=
  (manifestPinned_sound
    (canonicallyAcceptedTrace_manifestPinned accepted)).2

/-- The production predicate inherits exact formal operation preservation. -/
theorem canonicallyAcceptedTrace_operation_preserved
    {commitment : CanonicalManifestCommitment}
    {submission : RuntimeSubmission}
    (accepted : CanonicallyAcceptedTrace commitment submission) :
    Represents submission :=
  acceptedTrace_represents (canonicallyAcceptedTrace_selfContained accepted)

/-- No advisory Gamma enclosure can acquire finite-operation authority through
an accepted trace. -/
theorem acceptedTrace_has_no_advisory_gamma {submission : RuntimeSubmission}
    (accepted : AcceptedTrace submission) :
    ∃ manifest request trace,
      decodeManifest submission.manifestWire = some manifest ∧
      decodeRequest submission.requestWire = some request ∧
      decodeTrace submission.traceWire = some trace ∧
      manifest.gammaEnclosures = [] ∧
      trace.spectralGrid = [] ∧ trace.gammaEnclosures = [] := by
  obtain ⟨manifest, request, trace, operator, formalOutput,
    manifestDecoded, requestDecoded, traceDecoded, _, _, conditions⟩ :=
    acceptedTrace_sound accepted
  exact ⟨manifest, request, trace, manifestDecoded, requestDecoded, traceDecoded,
    conditions.2.2.2.2.2.2.2.2.2.2.2.2.1,
    conditions.2.2.2.2.2.2.2.2.2.2.2.2.2.1,
    conditions.2.2.2.2.2.2.2.2.2.2.2.2.2.2.1⟩

/-- A structurally decoded advisory Gamma record cannot be promoted by the
finite-operation verifier. -/
theorem advisoryGamma_trace_not_accepted
    {submission : RuntimeSubmission} {trace : RuntimeTrace}
    (decoded : decodeTrace submission.traceWire = some trace)
    (advisory : trace.gammaEnclosures ≠ []) :
    ¬ AcceptedTrace submission := by
  intro accepted
  obtain ⟨_, _, acceptedTrace, _, _, acceptedDecoded, _, _, noGamma⟩ :=
    acceptedTrace_has_no_advisory_gamma accepted
  rw [decoded] at acceptedDecoded
  injection acceptedDecoded with equality
  subst acceptedTrace
  exact advisory noGamma

end DAF.Runtime.DHF1
