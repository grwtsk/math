# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SATReductionTests.Variant9e26f8b87f78a4f08a45aad747ab5038bdd9635b34a080947349557f86c5173f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f14b60466f4fa2901f73eb48766b15d374d9e696` · SHA-256 `02d737167e8563d3720007edabdff916826d559bd7d65e57cf41fa0a94efb8ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitNot1.Varianta7ce96781631dac3c8b19eea30428de73034906aa9cef004a146e30cab0509c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7ce96781631dac3c8b19eea30428de73034906aa9cef004a146e30cab0509c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BitNot1.Varianta7ce96781631dac3c8b19eea30428de73034906aa9cef004a146e30cab0509c8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a7ce96781631dac3c8b19eea30428de73034906aa9cef004a146e30cab0509c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/.codex/audits/native-world-model-4d75f63f/replay-d050d760/Surface/BinaryMatrix/SATReductionTests.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BinaryMatrix.SATReduction
import Mathlib.Tactic.FinCases

/-!
# Tests for the SAT reduction development
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BitNot1.Varianta7ce96781631dac3c8b19eea30428de73034906aa9cef004a146e30cab0509c8

namespace SATReductionTests

open SATReduction

private def σ000 : Assignment
  | 0 => false
  | 1 => false
  | 2 => false
  | _ => false

private def σ011 : Assignment
  | 0 => false
  | 1 => true
  | 2 => true
  | _ => false

example : CNF.Holds σ000 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ000]

example : CNF.Holds σ011 (encodeGate 2 (.xor 0 1)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, encodeGate, σ011]

example : ¬ CNF.Holds σ000 (encodeGate 2 (.const true)) := by
  simp [CNF.Holds, Clause.Holds, Literal.Holds, Literal.forBit,
    encodeGate, σ000]

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.conj 0 1)) ↔
      σ 2 = (σ 0 && σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.conj 0 1)

example (σ : Assignment) :
    CNF.Holds σ (encodeGate 2 (.xor 0 1)) ↔
      σ 2 = (σ 0 != σ 1) := by
  simpa [Gate.eval] using encodeGate_correct σ 2 (.xor 0 1)

example (gates : List Gate) :
    (encodeFrom 7 gates).length ≤ 4 * gates.length :=
  encodeFrom_length_le_four_mul 7 gates

private def bitNot1 : Bits 1 → Bits 1 :=
  fun x _ => !(x 0)

example (target : Bits 1) :
    CNF.Satisfiable (truthTableCNF bitNot1 target) ↔
      ∃ input, bitNot1 input = target :=
  every_fixed_width_function_reduces_to_sat bitNot1 target

private def identity1 : Bits 1 → Bits 1 := id

private theorem identity1_bijective : Function.Bijective identity1 := by
  constructor
  · intro a b h
    simpa [identity1] using h
  · intro y
    exact ⟨y, rfl⟩

example (target : Bits 1) :
    ∃! input, identity1 input = target :=
  bijective_has_unique_preimage identity1 identity1_bijective target


private def identityCircuit1 : Circuit 1 1 where
  gates := []
  outputs := fun _ => ⟨0, by decide⟩

private theorem identityCircuit1_implements :
    identityCircuit1.Implements identity1 := by
  constructor
  · intro σ _
    funext i
    fin_cases i
    rfl
  · intro input
    exact ⟨inputAssignment input, readInput_inputAssignment input, trivial⟩

example (target : Bits 1) :
    CNF.Satisfiable (identityCircuit1.toCNF target) ↔
      ∃ input, identity1 input = target :=
  identityCircuit1.satisfiable_toCNF_iff_preimage
    identity1 identityCircuit1_implements target

example (target : Bits 1) :
    ∃! input, identityCircuit1.InputWitness target input :=
  bijective_circuit_has_unique_sat_input
    identityCircuit1 identity1 identityCircuit1_implements
    identity1_bijective target

end SATReductionTests
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe6ea0909699de86f6884724fe09d1503a94aa26b88f2b1214f07417d1c045e3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SATReductionTests/Variant9e26f8b87f78a4f08a45aad747ab5038bdd9635b34a080947349557f86c5173f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
