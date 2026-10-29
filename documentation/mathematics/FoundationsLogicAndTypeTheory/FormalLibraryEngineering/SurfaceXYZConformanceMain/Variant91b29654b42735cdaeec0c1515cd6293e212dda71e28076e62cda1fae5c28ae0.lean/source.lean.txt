-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.Request.Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:dd72b57dce63c25b6a039856/workspace/tools/SurfaceXYZConformanceMain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Data.Json
import Generated.XYZRouteFixture

/-!
# Finite XYZ conformance CLI

This executable exposes only bounded, deterministic observations of the Lean
V1 fixture.  It can compute a route, compute the identity expected update, and
compare one concrete Rust output with one concrete Lean input.  Its JSON
receipts are finite evidence: they never assert universal Rust correctness and
never promote hashes or runtime equality to Lean theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Request.Variant98c761902e27ec5aa0ba96437d9325627eef7c840c321447ec7021e4202aeccf

open Lean
open Surface.Core.XYZ
open Generated.XYZRouteFixture

namespace SurfaceXYZConformance

def requestSchema : String := "surface.xyz.lean-conformance-request.v1"
def responseSchema : String := "surface.xyz.lean-conformance-response.v1"
def observedSchema : String := "surface.xyz.lean-observed.v1"
def protocolVersion : Nat := 1

def maxRequestBytes : Nat := 16 * 1024
def maxRequestIdBytes : Nat := 128
def maxDecimalBytes : Nat := 16

structure Request where
  requestId : String
  operation : String
  payload : Json

structure WireRevisionedXYZ where
  revision : Nat
  xRaw : Int
  yRaw : Int
  zRaw : Int

def jsonArray (values : List Json) : Json :=
  Json.arr values.toArray

def stringArray (values : List String) : Json :=
  jsonArray (values.map toJson)

def exactObjectKeys (json : Json) (expected : List String) : Except String Unit := do
  let object ← json.getObj?
  if object.size != expected.length then
    throw s!"object must contain exactly: {String.intercalate "," expected}"
  if expected.all object.contains then
    pure ()
  else
    throw s!"object must contain exactly: {String.intercalate "," expected}"

def stringField (json : Json) (field : String) : Except String String := do
  (json.getObjVal? field) >>= Json.getStr?

def natField (json : Json) (field : String) : Except String Nat := do
  (json.getObjVal? field) >>= Json.getNat?

def canonicalNatString (value : String) : Except String Nat := do
  if value.toUTF8.size = 0 || value.toUTF8.size > maxDecimalBytes then
    throw "decimal string is empty or exceeds its bound"
  match value.toNat? with
  | none => throw "expected a canonical unsigned decimal string"
  | some parsed =>
      if toString parsed = value then pure parsed
      else throw "expected a canonical unsigned decimal string"

def canonicalIntString (value : String) : Except String Int := do
  if value.toUTF8.size = 0 || value.toUTF8.size > maxDecimalBytes then
    throw "decimal string is empty or exceeds its bound"
  match value.toInt? with
  | none => throw "expected a canonical signed decimal string"
  | some parsed =>
      if toString parsed = value then pure parsed
      else throw "expected a canonical signed decimal string"

def decimalNatField (json : Json) (field : String) : Except String Nat := do
  canonicalNatString (← stringField json field)

def decimalIntField (json : Json) (field : String) : Except String Int := do
  canonicalIntString (← stringField json field)

def parseWireRevisionedXYZ (json : Json) : Except String WireRevisionedXYZ := do
  exactObjectKeys json ["revision", "xRaw", "yRaw", "zRaw"]
  pure {
    revision := ← decimalNatField json "revision"
    xRaw := ← decimalIntField json "xRaw"
    yRaw := ← decimalIntField json "yRaw"
    zRaw := ← decimalIntField json "zRaw"
  }

def parseRequest (input : String) : Except String Request := do
  if input.toUTF8.size = 0 then
    throw "request is empty"
  if input.toUTF8.size > maxRequestBytes then
    throw s!"request exceeds {maxRequestBytes} bytes"
  let json ← Json.parse input
  exactObjectKeys json
    ["schema", "protocolVersion", "requestId", "operation", "payload"]
  if (← stringField json "schema") != requestSchema then
    throw s!"schema must be {requestSchema}"
  if (← natField json "protocolVersion") != protocolVersion then
    throw "protocolVersion must be 1"
  let requestId ← stringField json "requestId"
  if requestId.toUTF8.size = 0 || requestId.toUTF8.size > maxRequestIdBytes then
    throw s!"requestId must contain between 1 and {maxRequestIdBytes} bytes"
  let operation ← stringField json "operation"
  if operation.toUTF8.size = 0 || operation.toUTF8.size > 64 then
    throw "operation must contain between 1 and 64 bytes"
  pure {
    requestId
    operation
    payload := ← json.getObjVal? "payload"
  }

def successResponse (request : Request) (result : Json) : Json :=
  Json.mkObj [
    ("schema", toJson responseSchema),
    ("protocolVersion", toJson protocolVersion),
    ("requestId", toJson request.requestId),
    ("operation", toJson request.operation),
    ("success", toJson true),
    ("authority", toJson "finiteEvidence"),
    ("result", result)
  ]

def failureResponse
    (requestId operation code message : String) : Json :=
  Json.mkObj [
    ("schema", toJson responseSchema),
    ("protocolVersion", toJson protocolVersion),
    ("requestId", toJson requestId),
    ("operation", toJson operation),
    ("success", toJson false),
    ("authority", toJson "finiteEvidence"),
    ("error", Json.mkObj [
      ("code", toJson code),
      ("message", toJson message)
    ])
  ]

def revisionedJson (value : RevisionedXYZ xyzFormatV1) : Json :=
  Json.mkObj [
    ("revision", toJson (toString value.revision.val)),
    ("xRaw", toJson (toString value.value.x.raw)),
    ("yRaw", toJson (toString value.value.y.raw)),
    ("zRaw", toJson (toString value.value.z.raw))
  ]

def typedRevisionedXYZ (wire : WireRevisionedXYZ) : Except String (RevisionedXYZ xyzFormatV1) := do
  if revisionBound : wire.revision < revisionModulus then
    match fixedXYZV1OfRaw? ⟨wire.xRaw, wire.yRaw, wire.zRaw⟩ with
    | some value => pure ⟨⟨wire.revision, revisionBound⟩, value⟩
    | none => throw "XYZ channels must be in range and sum to 3000000"
  else
    throw "revision is outside the unsigned 32-bit range"

def rawClassification (wire : WireRevisionedXYZ) : String :=
  if wire.xRaw < xyzFormatV1.minRaw || xyzFormatV1.maxRaw < wire.xRaw ||
      wire.yRaw < xyzFormatV1.minRaw || xyzFormatV1.maxRaw < wire.yRaw ||
      wire.zRaw < xyzFormatV1.minRaw || xyzFormatV1.maxRaw < wire.zRaw then
    "CHANNEL_OUT_OF_RANGE"
  else if wire.xRaw + wire.yRaw + wire.zRaw = xyzFormatV1.scaleRaw then
    "VALID_NORMALIZED"
  else
    "INVALID_SUM"

def routeJson (startHost : Nat) : Except String Json := do
  if hostBound : startHost < 9 then
    let route := fixtureContract.orderedRoute (⟨startHost, hostBound⟩ : FixtureHost)
    pure <| Json.mkObj [
      ("startHost", toJson (toString startHost)),
      ("hosts", stringArray (route.hosts.map (fun host => toString host.val))),
      ("discoveryEdges", stringArray
        (route.discoveryEdges.map (fun edge => toString edge.val)))
    ]
  else
    throw "startHost must be a decimal string in the range 0..8"

def expectedUpdateJson (wire : WireRevisionedXYZ) : Except String Json := do
  if revisionBound : wire.revision < revisionModulus then
    match fixedXYZV1OfRaw? ⟨wire.xRaw, wire.yRaw, wire.zRaw⟩ with
    | none =>
        pure <| Json.mkObj [
          ("classification", toJson (rawClassification wire)),
          ("output", Json.null)
        ]
    | some value =>
        let input : RevisionedXYZ xyzFormatV1 :=
          ⟨⟨wire.revision, revisionBound⟩, value⟩
        pure <| Json.mkObj [
          ("classification", toJson "VALID_NORMALIZED"),
          ("output", revisionedJson (leanExpectedUpdate input))
        ]
  else
    throw "revision is outside the unsigned 32-bit range"

def checkConcreteCertificateJson
    (inputWire rustOutputWire : WireRevisionedXYZ) : Except String Json := do
  let input ← typedRevisionedXYZ inputWire
  let rustOutput ← typedRevisionedXYZ rustOutputWire
  let expected := leanExpectedUpdate input
  pure <| Json.mkObj [
    ("conforms", toJson (rustOutput == expected)),
    ("rustOutput", revisionedJson rustOutput),
    ("leanExpectedUpdate", revisionedJson expected),
    ("authority", toJson "finiteEvidence"),
    ("universalRustCorrectness", toJson false)
  ]

def dispatch (request : Request) : Except String Json := do
  match request.operation with
  | "orderedRoute" =>
      exactObjectKeys request.payload ["startHost"]
      routeJson (← decimalNatField request.payload "startHost")
  | "expectedUpdate" =>
      let wire ← parseWireRevisionedXYZ request.payload
      expectedUpdateJson wire
  | "checkRustCertificate" =>
      exactObjectKeys request.payload ["input", "rustOutput"]
      let input ← parseWireRevisionedXYZ
        (← request.payload.getObjVal? "input")
      let rustOutput ← parseWireRevisionedXYZ
        (← request.payload.getObjVal? "rustOutput")
      checkConcreteCertificateJson input rustOutput
  | _ => throw s!"unknown operation: {request.operation}"

def processRequest (input : String) : Json :=
  match parseRequest input with
  | .error message => failureResponse "" "" "INVALID_REQUEST" message
  | .ok request =>
      match dispatch request with
      | .ok result => successResponse request result
      | .error message =>
          let code := if request.operation = "orderedRoute" ||
            request.operation = "expectedUpdate" ||
            request.operation = "checkRustCertificate" then
              "INVALID_REQUEST"
            else
              "UNKNOWN_OPERATION"
          failureResponse request.requestId request.operation code message

def routeObservationJson (name : String) (startHost : FixtureHost) : Json :=
  let route := fixtureContract.orderedRoute startHost
  Json.mkObj [
    ("name", toJson name),
    ("startHost", toJson (toString startHost.val)),
    ("hosts", stringArray (route.hosts.map (fun host => toString host.val))),
    ("discoveryEdges", stringArray
      (route.discoveryEdges.map (fun edge => toString edge.val)))
  ]

def validUpdateObservationJson
    (name : String)
    (input : RevisionedXYZ xyzFormatV1)
    (certificate : RustExpectedUpdateCertificate) : Json :=
  let output := leanExpectedUpdate input
  let certificateConforms :=
    certificate.input == input && certificate.rustOutput == output
  Json.mkObj [
    ("name", toJson name),
    ("revision", toJson (toString input.revision.val)),
    ("xRaw", toJson (toString input.value.x.raw)),
    ("yRaw", toJson (toString input.value.y.raw)),
    ("zRaw", toJson (toString input.value.z.raw)),
    ("classification", toJson "VALID_NORMALIZED"),
    ("output", revisionedJson output),
    ("certificateConforms", toJson certificateConforms)
  ]

def invalidUpdateObservationJson
    (name : String) (wire : WireRevisionedXYZ) : Json :=
  let computed := expectedUpdateJson wire
  let (classification, output) := match computed with
    | .ok result =>
        (result.getObjValD "classification", result.getObjValD "output")
    | .error _ => (toJson (rawClassification wire), Json.null)
  Json.mkObj [
    ("name", toJson name),
    ("revision", toJson (toString wire.revision)),
    ("xRaw", toJson (toString wire.xRaw)),
    ("yRaw", toJson (toString wire.yRaw)),
    ("zRaw", toJson (toString wire.zRaw)),
    ("classification", classification),
    ("output", output),
    ("certificateConforms", toJson false)
  ]

def proposalRejectionCode : ProposalRejection → String
  | .invalidSchema => "INVALID_SCHEMA"
  | .invalidContractHash => "INVALID_CONTRACT_HASH"
  | .invalidSourceSnapshotHash => "INVALID_SOURCE_SNAPSHOT_HASH"
  | .invalidAlgorithmVersion => "INVALID_ALGORITHM_VERSION"
  | .undeclaredEdge => "UNDECLARED_EDGE"
  | .edgeEndpointMismatch => "EDGE_ENDPOINT_MISMATCH"
  | .revisionOutOfRange => "REVISION_OUT_OF_RANGE"
  | .staleRevision => "STALE_REVISION"
  | .equalRevisionConflict => "EQUAL_REVISION_CONFLICT"
  | .channelOutOfRange => "CHANNEL_OUT_OF_RANGE"
  | .sourceMismatch => "SOURCE_MISMATCH"
  | .expectedUpdateMismatch => "EXPECTED_UPDATE_MISMATCH"
  | .colorInvariantViolation => "COLOR_INVARIANT_VIOLATION"
  | .invalidHashFraming => "INVALID_HASH_FRAMING"
  | .internalContractInvalid => "INTERNAL_CONTRACT_INVALID"

def proposalObservationJson
    (name : String)
    (result : VerificationResult FixtureHost FixtureEdgeId) : Json :=
  let (status, reason) := match verificationStatus result with
    | .accepted => ("ACCEPTED_NEWER", Json.null)
    | .replay => ("IDENTICAL_REPLAY", Json.null)
    | .rejected rejection =>
        ("REJECTED", toJson (proposalRejectionCode rejection))
  Json.mkObj [
    ("name", toJson name),
    ("status", toJson status),
    ("reason", reason)
  ]

def observeProposal
    (name : String)
    (contract : RoutingContract FixtureHost FixtureEdgeId)
    (snapshot : SourceSnapshot FixtureHost)
    (register : LwwRegister xyzFormatV1)
    (proposal : RawProposal FixtureHost FixtureEdgeId) : Json :=
  proposalObservationJson name
    (verifyProposal contract snapshot register proposal)

/-! The following are executable finite mutations, not expected labels. -/

def zeroTieBreakContract : RoutingContract FixtureHost FixtureEdgeId :=
  { fixtureContract with tieBreakBound := 0 }

def invalidSchemaProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with schemaVersion := 2 }

def invalidFramingHash : Hash256 where
  algorithm := "SHA256"
  hex := fixtureContractHash.hex

def invalidFramingProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with contractHash := invalidFramingHash }

def fabricatedSnapshotHash : Hash256 where
  algorithm := "sha256"
  hex := "28e2bbd0a5f2925a2bb2fc2cff6efb557c092acedb6299b82a3d763637644fcf"

/-!
Lean deliberately treats SHA-256 values as opaque.  It cannot reproduce the
Rust-only vector in which a fabricated snapshot hash is installed on both
sides and then rejected by recomputation.  This finite surrogate supplies the
same well-framed fabricated hash on the proposal side only, exercising Lean's
`invalidSourceSnapshotHash` equality gate without claiming SHA-256 authority.
-/
def fabricatedSnapshotHashProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with sourceSnapshotHash := fabricatedSnapshotHash }

def invalidAlgorithmProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with algorithmVersion := 2 }

/-!
The Rust wire mutation uses edge code 99, which cannot inhabit
`FixtureEdgeId = Fin 16`.  Edge 15 is the exact finite Lean surrogate: it is
in the typed ingress domain but absent from the declared contract.
-/
def endpointMismatchProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with claimedTarget := 5 }

def revisionOutOfRangeProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with revision := 4_294_967_296 }

def channelOutOfRangeProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with proposed := ⟨3_000_001, 1_000_000, 1_000_000⟩ }

def sourceMismatchProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with source := ⟨1_000_001, 999_999, 1_000_000⟩ }

def invalidInvariantXYZ : FixedXYZ xyzFormatV1 where
  x := ⟨1_000_000, by decide⟩
  y := ⟨1_000_000, by decide⟩
  z := ⟨999_999, by decide⟩

def invalidInvariantSnapshot : SourceSnapshot FixtureHost :=
  { sourceSnapshot with
    source := ⟨⟨42, by decide⟩, invalidInvariantXYZ⟩ }

def invalidInvariantProposal : RawProposal FixtureHost FixtureEdgeId :=
  { baseProposal with
    source := ⟨1_000_000, 1_000_000, 999_999⟩
    proposed := ⟨1_000_000, 1_000_000, 999_999⟩ }

def goldenStaleRegister : LwwRegister xyzFormatV1 :=
  ⟨some ⟨⟨43, by decide⟩, asymmetricNormalized⟩⟩

def routeObservations : List Json := [
  routeObservationJson
    "start-h0-cycle-self-loop-parallel-and-disconnected" 0,
  routeObservationJson
    "start-h8-empty-outgoing-disconnected" 8
]

def updateObservations : List Json := [
  validUpdateObservationJson
    "equal-energy-white" whiteAt0 whiteCertificate,
  validUpdateObservationJson
    "primary-axis-x" primaryXAt1 primaryXCertificate,
  validUpdateObservationJson
    "primary-axis-y" primaryYAt2 primaryYCertificate,
  validUpdateObservationJson
    "primary-axis-z" primaryZAt3 primaryZCertificate,
  validUpdateObservationJson
    "asymmetric-normalized" asymmetricAt42 asymmetricCertificate,
  validUpdateObservationJson
    "explicit-min-max-boundaries" primaryYAt4 minMaxCertificate,
  invalidUpdateObservationJson
    "invalid-normalized-sum" ⟨5, 1000000, 1000000, 999999⟩,
  invalidUpdateObservationJson
    "out-of-range-wire-channel" ⟨6, 3000001, 0, -1⟩,
  validUpdateObservationJson
    "maximal-nonwrapping-revision" whiteAtMaxRevision maxRevisionCertificate
]

def proposalObservations : List Json := [
  observeProposal "internal-contract-invalid-first" zeroTieBreakContract
    sourceSnapshot baseRegister baseProposal,
  observeProposal "invalid-schema" fixtureContract
    sourceSnapshot baseRegister invalidSchemaProposal,
  observeProposal "invalid-hash-framing" fixtureContract
    sourceSnapshot baseRegister invalidFramingProposal,
  observeProposal "invalid-contract-hash" fixtureContract
    sourceSnapshot baseRegister wrongHashProposal,
  observeProposal "matching-but-fabricated-source-snapshot-hash" fixtureContract
    sourceSnapshot baseRegister fabricatedSnapshotHashProposal,
  observeProposal "invalid-algorithm-version" fixtureContract
    sourceSnapshot baseRegister invalidAlgorithmProposal,
  observeProposal "undeclared-edge" fixtureContract
    sourceSnapshot baseRegister wrongEdgeProposal,
  observeProposal "edge-endpoint-mismatch" fixtureContract
    sourceSnapshot baseRegister endpointMismatchProposal,
  observeProposal "revision-out-of-range" fixtureContract
    sourceSnapshot baseRegister revisionOutOfRangeProposal,
  observeProposal "channel-out-of-range" fixtureContract
    sourceSnapshot baseRegister channelOutOfRangeProposal,
  observeProposal "source-mismatch" fixtureContract
    sourceSnapshot baseRegister sourceMismatchProposal,
  observeProposal "expected-update-mismatch" fixtureContract
    sourceSnapshot baseRegister wrongProposedValueProposal,
  observeProposal "color-invariant-violation" fixtureContract
    invalidInvariantSnapshot baseRegister invalidInvariantProposal,
  observeProposal "stale-revision" fixtureContract
    sourceSnapshot goldenStaleRegister baseProposal,
  observeProposal "equal-revision-conflict" fixtureContract
    sourceSnapshot conflictRegister baseProposal,
  observeProposal "accepted-newer" fixtureContract
    sourceSnapshot baseRegister baseProposal,
  observeProposal "identical-replay" fixtureContract
    sourceSnapshot replayRegister baseProposal
]

def nonclaims : List String := [
  "Finite conformance evidence does not establish universal Rust correctness.",
  "Hashes and matching vectors do not grant Lean theorem authority.",
  "Finite XYZ transport has no analytic, torsion, modular-form, browser, or DOM authority."
]

def leanObservedCorpus : Json :=
  Json.mkObj [
    ("schema", toJson observedSchema),
    ("protocolVersion", toJson protocolVersion),
    ("authority", toJson "finiteEvidence"),
    ("routes", jsonArray routeObservations),
    ("expectedUpdates", jsonArray updateObservations),
    ("proposals", jsonArray proposalObservations),
    ("nonclaims", stringArray nonclaims)
  ]

def emitCorpus (path : String) : IO UInt32 := do
  IO.FS.writeFile path (leanObservedCorpus.compress ++ "\n")
  pure 0

def processFile (path : String) : IO UInt32 := do
  let input ← IO.FS.readFile path
  let response := processRequest input
  IO.println response.compress
  pure (if response.getObjValD "success" == toJson true then 0 else 2)

def processStdin : IO UInt32 := do
  let input ← (← IO.getStdin).readToEnd
  let response := processRequest input
  IO.println response.compress
  pure (if response.getObjValD "success" == toJson true then 0 else 2)

def main (args : List String) : IO UInt32 :=
  match args with
  | [] => processStdin
  | ["--request", path] => processFile path
  | ["--emit", path] => emitCorpus path
  | _ => do
      IO.eprintln
        "usage: surface_xyz_conformance [--request REQUEST.json | --emit PATH]"
      pure 64

end SurfaceXYZConformance

def main (args : List String) : IO UInt32 :=
  SurfaceXYZConformance.main args
