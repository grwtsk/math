# Axiom Audit Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8265044a636ee92ec5435cb3b79ee2ef27497b3` · SHA-256 `55b9b7a2e89d75d1fc16efa1e4e25702761d0555189a46983b19aad5df0a3ad4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix

/-! Kernel dependency witnesses for the public BitMatrix correspondence core. -/

#print axioms BitMatrix.ArrayBacked.mapInPlace_refines
#print axioms BitMatrix.Carrier.baselineEquiv
#print axioms BitMatrix.Carrier.distinguishedInterpreter_eq_baseline_iff
#print axioms BitMatrix.Codec.SourceCodec.encode_injective
#print axioms BitMatrix.Configuration.Schema003.policy_valid
#print axioms BitMatrix.Configuration.Schema003.generated_entries_required
#print axioms BitMatrix.Configuration.Schema003.generated_entry_count_matches
#print axioms BitMatrix.Rhetorical.four_mode_coverage
#print axioms BitMatrix.Rhetorical.source_relative_scalar_exists_unique
#print axioms BitMatrix.Runtime.Semantics.mem_fixedSet_iff_graphPoint_liesOnDiagonal
#print axioms BitMatrix.Runtime.Semantics.mem_fixedSet_linear_iff_mem_ker_id_sub
#print axioms BitMatrix.Runtime.Semantics.triangleSuccessor_third_power
#print axioms BitMatrix.Geometry.CarrierGrid.carrierMultiplicity_eq_two_pow_codimension
#print axioms BitMatrix.Geometry.CarrierGrid.originMatches_implies_exactCarrier
#print axioms BitMatrix.Geometry.CarrierGrid.odd_center_carrierMultiplicity
#print axioms BitMatrix.Geometry.CarrierGrid.even_center_carrierMultiplicity
#print axioms BitMatrix.Codec.Profiles.normalizeLineEndings_idempotent
#print axioms BitMatrix.Codec.Profiles.profiles_agree_on_canonical_domain
#print axioms BitMatrix.Codec.decodeWitness_length_representable
#print axioms BitMatrix.Runtime.Correspondence.abstractGridCell_rowMajorIndex
#print axioms BitMatrix.Runtime.Correspondence.carrierStateRecord_support_complete
#print axioms BitMatrix.Runtime.Correspondence.carrierStateRecord_count_eq_carrierMultiplicity
#print axioms BitMatrix.Runtime.Correspondence.codecInvocation_encodeDecodeRelation
#print axioms BitMatrix.Runtime.Correspondence.codecInvocation_serialize_preserved
#print axioms BitMatrix.Runtime.FixedProgramInterpreter.DecodedProgram.evaluateOperations_eq_some_evaluate
#print axioms BitMatrix.Runtime.FixedProgramInterpreter.interpretTotal_of_decode_none
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de09a11f103b1f470b98514740f92a77c4d0b6abd708eef76100a7110300765f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/AxiomAudit/Variant55b9b7a2e89d75d1fc16efa1e4e25702761d0555189a46983b19aad5df0a3ad4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
