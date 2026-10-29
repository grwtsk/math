# Verification target: Cheb Coprime Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "148adc76e100cf7e6b8f2d3c19126fec5a3b68fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `148adc76e100cf7e6b8f2d3c19126fec5a3b68fd`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 17; external provider; requires a separately pinned dependency.
- `Zeta23.Chebyshev` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [sum_half_pow_Icc_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/declarations/sum-half-pow-icc-le.md) | 31 | `result-track:fe38469c59f4f7b8f5941e138e20539fb75ddbaffb84798b147752b190620c19` |
| 2 | `lemma` | [removed_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/declarations/removed-le.md) | 43 | `result-track:836921a4a588a10bbbd492a36e094b25ad2859931fcbf86c39c3175a5c0f093a` |
| 3 | `theorem` | [chebyshevMertensCoprime](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/declarations/chebyshevmertenscoprime.md) | 214 | `result-track:07f6f5dec3863c74fb1e7f356d2c7f3011e5f601bbef8bd9df9d318fb188f2d9` |
| 4 | `theorem` | [chebyshevMertensCoprimeBounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/declarations/chebyshevmertenscoprimebounded.md) | 303 | `result-track:170c873f98548399db44e08785339674e62b6edfc0affaf4c31c34d9500a18c0` |
| 5 | `theorem` | [chebyshevMertensCoprime'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebCoprimeNamespaced.lean/declarations/chebyshevmertenscoprime-source-edition-2.md) | 419 | `result-track:67d24af155a7edf11d60a0f80256d82a07cb7a9f2fa13067518ecd858c3cc1b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=378dc63fd4fc2882931e691caa701eca69a0f0f77413eb250cd0f67aaf306ad1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ChebCoprime/Variant25424d1b5792500a3c76f615468aeec6362a43880e69501fff48d3822ef524e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
