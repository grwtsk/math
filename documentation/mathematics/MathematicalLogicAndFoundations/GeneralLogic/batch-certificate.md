# Certificates for incrementally decoded batches


Let `certificate : Certificate Key Payload` contain an actual proof of its
predicate on its exact entries. With decidable payload equality, assume

```lean
certificate.entries = oldRows ++ (first ++ second)
```

The certificate can then be reused for the actual representation obtained by
packing `oldRows` and incrementally appending `first` and `second`. Its decoder
reconstructs exactly the full certified history. Sequential and combined
appends also satisfy the same decoded predicates whenever the original
references are valid.

## Semantic reuse and representation identity

The result uses the actual
[composition law](incremental-composition.md) and
[semantic certificate](decision-certificate.md), including the established
`unpack_pack` law. It assumes no serializer contract. A concrete three-row
certificate is reused by a sequential representation with a different
dictionary and different numeric references from the certificate's fresh
`pack`. The actual decoded occurrences agree.

Such reuse transfers the supplied proof about decoded rows. Source paths,
hashes, representation occurrences and verification states remain separate
identities. Equal decoded content does not identify either source bytes or
the packed values themselves.

## Appending does not manufacture new evidence

The certificate must cover the full appended history. A proof about the old
rows need not hold after extension: the empty history has length zero, while
appending one actual occurrence produces a history of length one. The checked
counterexample retains successful decoding before and after extension and
refutes the original predicate afterward. The negative consumer rejects an
attempt to use only the old proof for the new history.

## Sources, verification and limits

The [source](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean),
[positive consumers](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/PositiveBatchCertificate.lean)
and native receipt (artifact:gitblob:ee5491d74763e928845609fc6784dd1273d1698b)
bind exact bytes and the complete local import closure. Replay uses pinned
Lean 4.33.0, trust zero, fatal warnings and a complete owned-declaration and
transitive-axiom audit. Only `propext`, `Classical.choice` and `Quot.sound`
are permitted. Pinned dependency objects are reused and fingerprinted.

The integration record (artifact:gitblob:db91ea69fd0db9d738f8174c1c947b55efd42703)
and source review (artifact:gitblob:b16fd42e5f2fad01623eaba6020eaade216b555c)
retain contribution roles, antecedents and correspondence limits. A refinement
to Python, JSON, cryptographic hashes, byte serialization, compression or
filesystem transactions remains open. No complexity bound, whole-library
acceptance or independent validation is claimed.

Human mathematical direction: grwtsk contributors. Formalization and checking
assistance: OpenAI Codex. Local source is MIT; Lean and Mathlib retain upstream
authors and licenses. No mathematical novelty is claimed.

**Current source scope.** Source links identify the existing mathematical modules. Earlier proposed bindings and verification receipts retain their recorded paths and hashes; this pointer repair records current bytes and does not claim fresh proof replay.

<!-- BEGIN GENERATED MATHEMATICS TOTALS -->

## Totals

Scope: this object guide and the current bytes of its registered primary source [`GRWTSK/Logic/FiniteSequences/BatchCertificate.lean`](../../../../GRWTSK/MathematicalLogicAndFoundations/GeneralLogic/FiniteSequencesBatchCertificate.lean).

| Inventory | Total |
|---|---:|
| Object guide | 1 |
| Linked primary source file | 1 |
| Source declaration commands | 7 |
| Theorem/lemma commands | 5 |

Theorem/lemma commands are included in declaration commands. These are source syntax counts; compiler-generated declarations and proof acceptance are outside their scope.

[Count definitions](../../_support/reference/library-pages.md#count-definitions) · [Structured inventory](../../_support/reference/library-summary.json).

<!-- END GENERATED MATHEMATICS TOTALS -->

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a82c036af2a25903cbd4f6469cf793ef36d680a4ecd09f1ec3e66cce11c51d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/BatchCertificate.lean","GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FiniteSequences/Checks/Positive/BatchCertificate.lean","GRWTSK/Logic/FiniteSequences/BatchCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
