# Verification target: Formal Research Riemann Hypothesis Source Paired Tail Prime Block

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0184d6c2f6f62e630fd5a8ec29df40694bdec984",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variantcfe526865f1cc0caf744bb267e7bf168a475fb9c97f13c359dab3bb54841ce3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0184d6c2f6f62e630fd5a8ec29df40694bdec984`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variantcfe526865f1cc0caf744bb267e7bf168a475fb9c97f13c359dab3bb54841ce3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variantcfe526865f1cc0caf744bb267e7bf168a475fb9c97f13c359dab3bb54841ce3c.lean.json)

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
| 1 | `def` | [earlyPrimeBlock](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlyprimeblock.md) | 26 | `declaration-track:8ab1946ed03a8344e115a243da0155e649cb909f7073657bb3489a1bc120e0cf` |
| 2 | `def` | [complementaryPrimeBlocks](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/complementaryprimeblocks.md) | 30 | `declaration-track:bbca9e587a116e92cd561a5be634ad87c6eb1855e04e1df754db87a69c85506f` |
| 3 | `theorem` | [earlyCorrelation_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlycorrelation-ge.md) | 35 | `result-track:89edb426e8b09f0a41785961c587e3b1622d886c6900db21584031c118c53cec` |
| 4 | `theorem` | [earlyTailTest_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlytailtest-le.md) | 45 | `result-track:a068d6014ed9d7e493bdab03f52ab6f5e29c049224161e431f63b124f3eff541` |
| 5 | `theorem` | [earlyPrimeBlock_le_mass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlyprimeblock-le-mass.md) | 70 | `result-track:f28010bc7e2f9f60aa053003de841667e77b4ea5b1464398997471180235bf99` |
| 6 | `theorem` | [earlyPrimeMass_ge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlyprimemass-ge.md) | 89 | `result-track:21b42153f7f0d21a9695d99662db3ff7ac5e231bd02191c6da151a9d637a3053` |
| 7 | `theorem` | [earlyPrimeBlock_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlyprimeblock-le.md) | 98 | `result-track:1a419e5d6bf82462dcbe3b2428124dbb8b0b6bb954f67abf3a8a82e37e1aaa03` |
| 8 | `theorem` | [earlyPrimeBlock_eventual_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/earlyprimeblock-eventual-bound.md) | 111 | `result-track:328b2291ebd09163f1bae046b007c0aeafe08db9dbd891a05ce57063f9b9919c` |
| 9 | `theorem` | [primeSum_eq_early_add_complement](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/primesum-eq-early-add-complement.md) | 121 | `result-track:517e58346e3058dcc254a9fcf3c850406768befe0f0470b045a0ae4d3ca624c1` |
| 10 | `theorem` | [complementary_repayment_of_tail](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock.lean/declarations/complementary-repayment-of-tail.md) | 130 | `result-track:8d4dfd7e917eee44f19d241e61d8a1b88cdd03ba04e5286e5ba21e76ac3d5f72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=859d2e33d3c39b07d1e9ba1cf40afafbe28343e912a9f779a5eb05bea934020c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variantcfe526865f1cc0caf744bb267e7bf168a475fb9c97f13c359dab3bb54841ce3c.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/FormalResearchRiemannHypothesisSourcePairedTailPrimeBlock/Variantcfe526865f1cc0caf744bb267e7bf168a475fb9c97f13c359dab3bb54841ce3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
