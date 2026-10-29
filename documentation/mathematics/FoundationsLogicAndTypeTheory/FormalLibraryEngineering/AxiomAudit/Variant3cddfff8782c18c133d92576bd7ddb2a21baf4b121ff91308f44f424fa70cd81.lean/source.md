# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant3cddfff8782c18c133d92576bd7ddb2a21baf4b121ff91308f44f424fa70cd81

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `482ac0609711fce04569bb4e8327db4896a0385e` · SHA-256 `3cddfff8782c18c133d92576bd7ddb2a21baf4b121ff91308f44f424fa70cd81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.Construct.Envelope
set_option pp.universes true
set_option pp.fullNames true
#check FormalResearch.Construct.Envelope.close_extensive
#print axioms FormalResearch.Construct.Envelope.close_extensive
#check FormalResearch.Construct.Envelope.close_monotone
#print axioms FormalResearch.Construct.Envelope.close_monotone
#check FormalResearch.Construct.Envelope.close_idempotent
#print axioms FormalResearch.Construct.Envelope.close_idempotent
#check FormalResearch.Construct.Envelope.close_closed
#print axioms FormalResearch.Construct.Envelope.close_closed
#check FormalResearch.Construct.Envelope.close_least
#print axioms FormalResearch.Construct.Envelope.close_least
#check FormalResearch.Construct.Envelope.checkEnvelope_correct
#print axioms FormalResearch.Construct.Envelope.checkEnvelope_correct
#check FormalResearch.Construct.Envelope.wrap_projections
#print axioms FormalResearch.Construct.Envelope.wrap_projections
#check FormalResearch.Construct.Envelope.wrap_payload_preserved
#print axioms FormalResearch.Construct.Envelope.wrap_payload_preserved
#check FormalResearch.Construct.Envelope.valid_payload_projection
#print axioms FormalResearch.Construct.Envelope.valid_payload_projection
#check FormalResearch.Construct.Envelope.valid_restriction_closure
#print axioms FormalResearch.Construct.Envelope.valid_restriction_closure
#check FormalResearch.Construct.Envelope.valid_closure_least
#print axioms FormalResearch.Construct.Envelope.valid_closure_least
#check FormalResearch.Construct.Envelope.restriction_attenuation
#print axioms FormalResearch.Construct.Envelope.restriction_attenuation
#check FormalResearch.Construct.Envelope.NativeFixture.native_fixture_valid
#print axioms FormalResearch.Construct.Envelope.NativeFixture.native_fixture_valid
#check FormalResearch.Construct.Envelope.NativeFixture.native_fixture_accepted
#print axioms FormalResearch.Construct.Envelope.NativeFixture.native_fixture_accepted
#check FormalResearch.Construct.Envelope.NativeFixture.native_fixture_projection
#print axioms FormalResearch.Construct.Envelope.NativeFixture.native_fixture_projection
#check FormalResearch.Construct.Envelope.NativeFixture.native_fixture_restrictions
#print axioms FormalResearch.Construct.Envelope.NativeFixture.native_fixture_restrictions
#check FormalResearch.Construct.Envelope.NativeFixture.equal_payload_distinct_occurrences
#print axioms FormalResearch.Construct.Envelope.NativeFixture.equal_payload_distinct_occurrences
#check FormalResearch.Construct.Envelope.NativeFixture.stripped_restrictions_rejected
#print axioms FormalResearch.Construct.Envelope.NativeFixture.stripped_restrictions_rejected
#check FormalResearch.Construct.Envelope.NativeFixture.stale_reference_rejected
#print axioms FormalResearch.Construct.Envelope.NativeFixture.stale_reference_rejected
#check FormalResearch.Construct.Envelope.NativeFixture.inherited_attribution_preserved
#print axioms FormalResearch.Construct.Envelope.NativeFixture.inherited_attribution_preserved
#print FormalResearch.Construct.Envelope.EnvelopeValid
#print FormalResearch.Construct.Envelope.Closed
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=48f62d322c12eee0aafba4023a35ead33f39a448e0e291d29d56d7f086a3b8e9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant3cddfff8782c18c133d92576bd7ddb2a21baf4b121ff91308f44f424fa70cd81.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
