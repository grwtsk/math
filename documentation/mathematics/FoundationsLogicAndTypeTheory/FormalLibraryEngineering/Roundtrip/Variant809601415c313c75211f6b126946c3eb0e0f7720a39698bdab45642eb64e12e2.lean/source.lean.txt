-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundtripDag.Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.RoundtripDag.Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/bourbaki/lean/test/roundtrip.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  roundtrip.lean — Round-trip DAG serialization test.
  Verifies `export ∘ import = id` on in-memory structures.
-/
import Lean
import Kernel.Core

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundtripDag.Variantf96ff7eaba6743203fedfb704380546e32afa9aa4a6e7465c48ce4c8be533055

open Kernel

open Lean Meta IO

/-- Dummy test DAG to simulate minimal export/import cycle. -/
def roundtripDag : Dag :=
  let n1 := { id := ⟨"n1"⟩, expr := .const `True [] }
  let n2 := { id := ⟨"n2"⟩, expr := .const `True [] }
  let e1 := {
    id := ⟨"e1"⟩,
    from := ⟨"n1"⟩,
    to := ⟨"n2"⟩,
    kind := .material,
    proof := .const `trivial [],
    w? := none,
    spec? := none
  }
  { V := [n1, n2], E := [e1] }

/-- Encode a DAG to JSON string. -/
def encodeDag (dag : Dag) : String :=
  match toJson dag with
  | .ok j => j.compress
  | .error e => panic! s!"encoding error: {e}"

/-- Decode a DAG from JSON string. -/
def decodeDag (s : String) : Option Dag :=
  match Lean.Json.parse s with
  | .ok j => Lean.FromJson.fromJson? j
  | .error _ => none

/-- Main test function. Exports and re-imports a DAG, then compares structure. -/
def testRoundTrip : IO Unit := do
  IO.println "▶ Exporting DAG..."
  let raw := encodeDag roundtripDag
  IO.println s!"Serialized: {raw.take 120}..."

  IO.println "▶ Re-importing DAG..."
  let back := decodeDag raw
  match back with
  | some dag' =>
    if dag'.V.length = roundtripDag.V.length ∧ dag'.E.length = roundtripDag.E.length then
      IO.println s!"✅ Round-trip check passed: nodes={dag'.V.length}, edges={dag'.E.length}"
    else
      throw <| userError s!"❌ Structure mismatch: {dag'.V.length} vs {roundtripDag.V.length}"
  | none => throw <| userError "❌ JSON parse failed during round-trip."

#eval testRoundTrip
