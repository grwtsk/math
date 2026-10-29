# Revision of indexed dictionaries


Fix an ordered list of key–index references. Assume that the old and new
dictionaries give exactly the same optional lookup at every referenced index:
\[
\forall r\in\mathrm{references},\quad
\mathrm{before}[r.2]?=\mathrm{after}[r.2]?.
\]
`unpack_eq_of_agreement` proves equality of their actual checked decoders.
`unpack_pack_after` specializes this to a packed input list and concludes that
the revised dictionary still decodes to precisely that original list.

## Exact premises and certificates

`AgreesOnReferences` includes missing lookups as optional values; it does not
assume the indices valid. Agreement is reflexive, symmetric and transitive on
the same reference sequence. At an individual reference, equality of decoded
key–payload options is equivalent to equality of the optional payload lookups.

`RevisionCertificate` carries the old dictionary, new dictionary, complete
reference sequence and an actual proof of agreement. Its preservation theorem
uses that proof. A matching hash, count, taxonomy label, prior receipt or
communication event cannot replace the agreement premise.

## Checked obstructions

`stale_slots_counterexample` uses dictionaries `[7,8]` and `[8,7]`, with the
same valid reference list. Dictionary lengths, reference counts and bounds
agree, but the decoded payloads differ. A negative control rejects reuse of
the old round-trip proof for the changed slots.

`failed_decoders_do_not_imply_agreement` gives equal overall failures `none`
while a later referenced lookup differs. Thus equality of failed decoder
outputs is weaker than the per-reference agreement used by the preservation
theorem. Neither counterexample depends on a probabilistic test.

## Sources, verification and credit

The [source](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevision.lean)
reuses the [exact codec](indexed-dictionary.md). Its
[positive consumers](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PositiveDictionaryRevision.lean)
and fresh selected receipt (artifact:gitblob:b5a95d344f418e620982093ac8e0e27661cd22ea)
bind the actual source, controls and owned-declaration audit. The pinned Lean
4.33.0 replay uses trust zero and fatal warnings, allowing only `propext`,
`Classical.choice` and `Quot.sound`. Dependency objects are reused and
fingerprinted. Whole-repository and independent-review acceptance are not
claimed.

The finite-list theorems supply exact mathematical revision conditions. The
operational cache (artifact:gitblob:2304c61045278f7e7ef9b09be4a2ba4367c2b984) separately tests its
hashes, serialization, compression and file operations; a verified refinement
from that Python adapter to these definitions remains open.

Human mathematical direction: grwtsk contributors. Formalization assistance:
OpenAI Codex. Local source is MIT; Mathlib retains upstream credit and licensing.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesDictionaryRevision.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 13 |
| Theorem/lemma commands | 10 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4877c536b2e4cae006da02ca2aa4f205fd454c89a9b7040d2a31db0e775e3c63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/DictionaryRevision.lean","GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/DictionaryRevision.lean","GRWTSK/Logic/FiniteSequences/DictionaryRevision.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
