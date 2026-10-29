# Verification target: Private V1 Input Early Prime Block

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8306ec2b1f77df61e2ac7b7c3508aac1cdccfa9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8306ec2b1f77df61e2ac7b7c3508aac1cdccfa9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [earlyPrimeBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlyprimeblock.md) | 26 | `declaration-track:b1212c7c913307dd49ce15efefe5b13a2dc8727f630d9b3a4941a8e730341efc` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/complementaryprimeblocks.md) | 30 | `declaration-track:dfb64b3b220d78dbb86174e84922fd41256401d60093655a490642fe96355d4f` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlycorrelation-ge.md) | 35 | `result-track:0488f626ca59d76970476eb544df448590ff56fa354c4c98cff58c54dbdece3c` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlytailtest-le.md) | 45 | `result-track:af0dd1ff579231527589407bcc9cdae4709a17b0723f7d5f0f1a77204db9732a` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlyprimeblock-le-mass.md) | 70 | `result-track:56d4c9e7304ca8f10d8daca8506d97a3e854b7871592ab89634084f725634839` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlyprimemass-ge.md) | 89 | `result-track:b0d64eef76a5228614d2c32c7aa5b7d5e934cd853101a025c2f0955e4432bbdc` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlyprimeblock-le.md) | 98 | `result-track:16f1fa36a64a4ab7691d4024fa23b6c8c753a0901cbe39011908fb3c9c9a4f1f` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/earlyprimeblock-eventual-bound.md) | 110 | `result-track:b686549b130696d9527612de7ad51773daf3bd6b1e767d1c5ff31f6b5e621151` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/primesum-eq-early-add-complement.md) | 120 | `result-track:228fd69f5e1eaa7068aa222efe1c3a483862330c472cfd7f692abe7f1b4b4b4b` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/PrivateV1InputEarlyPrimeBlock.lean/declarations/complementary-repayment-of-tail.md) | 129 | `result-track:25a07e47581f4b199f3970c3f3ac49af3dab343a8ee169f6b2111b05fad4bcfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=03f99df4f4305e63357f2890f9eca34e15d8fcb7fda9bd06b029f88becd98a53 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrivateV1Input/Variantf6d7aa1246c395a08b81f5a47c1f20ab4b3e2e4e24f45b52962d827cdda9cb02.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
