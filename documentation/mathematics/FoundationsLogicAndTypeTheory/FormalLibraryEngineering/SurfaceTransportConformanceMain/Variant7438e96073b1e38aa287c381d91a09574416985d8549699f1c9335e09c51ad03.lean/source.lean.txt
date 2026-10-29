import Lean.Data.Json
import Surface.Core.Transport
import Surface.Refactor.Syntax
import Surface.Refactor.Surgery

/-!
# Finite transport conformance manifest

The executable identifies the exact level-one interfaces consumed by bounded
golden/property corpora.  It deliberately does not turn a successful test run
into a universal Rust, parser, patch, client, or Lean equivalence theorem.
-/

open Lean

namespace SurfaceTransportConformance

def main (args : List String) : IO UInt32 := do
  if !args.isEmpty then
    IO.eprintln "usage: surface_transport_conformance"
    return 64
  let output := Json.mkObj [
    ("schema", toJson "surface.transport.conformance-manifest.v1"),
    ("evidenceLevel", toJson "finiteGoldenCorpus"),
    ("exposesProposition", toJson false),
    ("interfaces", toJson [
      "RustTransportConforms",
      "RustStructuralPacketConforms",
      "RustBracketProjectionConforms",
      "RustSurgeryVerifierConforms",
      "RustPatchCompilerConforms",
      "ClientPacketDecoderConforms"]),
    ("nonclaims", toJson [
      "Finite corpus agreement is not a universal implementation proof.",
      "Parser output and build observations are not Lean kernel proofs.",
      "Transport metadata does not prove transported theorem tasks."])
  ]
  IO.println output.compress
  pure 0

end SurfaceTransportConformance

def main (args : List String) : IO UInt32 :=
  SurfaceTransportConformance.main args
