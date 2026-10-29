# Verification target: Xi Roots Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9551480d00ea8608119351ab61847c39beffaa5",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9551480d00ea8608119351ab61847c39beffaa5`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.XiReconstruction` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.XiSectionObstruction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Vieta` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sectionPolynomial](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial.md) | 16 | `declaration-track:4ef2f4f1d1be823c194e26ccffd015671eacaea876afac8df9e2529feaeea554` |
| 2 | `theorem` | [sectionPolynomial_eval](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-eval.md) | 19 | `result-track:4ce2adf025e8afbabec0b0f403430a5c6da0a6cc6969182a3d84421a0add9503` |
| 3 | `theorem` | [sectionPolynomial_coeff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-coeff.md) | 23 | `result-track:db2865549403e181c621f9478d46eee44de3e625e2f4d7872f1ba10c496aa144` |
| 4 | `theorem` | [sectionPolynomial_natDegree](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-natdegree.md) | 27 | `result-track:2b19bc2c21c2dc3ced4f5b6b2c806de4244b903d41e4f856bcd34b22261eeb3f` |
| 5 | `theorem` | [sectionPolynomial_leadingCoeff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-leadingcoeff.md) | 36 | `result-track:c1d8bf851633fd0c2e27d0b3bad1712b9450a533ba5dbf26c3b14f58b2269e63` |
| 6 | `lemma` | [esymm_cons_succ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/esymm-cons-succ.md) | 40 | `result-track:3a8c09dc9e5e7ba307484d8460201f1f9411374d8a5e9e0dc4c4ea878163f166` |
| 7 | `lemma` | [roots_square_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/roots-square-sum.md) | 44 | `result-track:69ec8ea24f34c811ca6c6c458e2b0eced8bbb53cd8a95aa63dd642bb03b0a74c` |
| 8 | `theorem` | [sectionPolynomial_roots_square_sum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-roots-square-sum.md) | 55 | `result-track:e4d96059a15765a2ff9dcc224fc992f3330a9da7a302b8b12e05fc0d2af5f630` |
| 9 | `theorem` | [sectionPolynomial_roots_square_sum_re_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-roots-square-sum-re-neg.md) | 78 | `result-track:0aea78bde197061cd1b2abf20b6a2645a83c5f6d4009cbffb79d468e45818ffb` |
| 10 | `lemma` | [roots_square_sum_re_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/roots-square-sum-re-nonneg.md) | 86 | `result-track:41a749594233afc79dbb56634f733f9cea21f1b0a2ed1d8dfd19bab0879a39fc` |
| 11 | `theorem` | [sectionPolynomial_has_nonreal_root](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/sectionpolynomial-has-nonreal-root.md) | 97 | `result-track:0be4a1e946f543e197b3ee78e7ea70339bf434096acca24ded3ad01dfa71fba8` |
| 12 | `theorem` | [spectralSection_has_nonreal_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/XiRootsNamespaced.lean/declarations/spectralsection-has-nonreal-zero.md) | 103 | `result-track:005cc06bd7d6aa6cbe2472d14c452bb8a258a98198af1ac4ae49494e18f3063e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d9fa1ee0db8d7781c3c18661e742b9b6ff8e892b1454938d41f6778e0b5b3b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/0a5ff7d793cdd81057388c76a8aec4401ad096df512f27eb0adc21d116d7a44cXiRoots/Variant5e129bf97cc071807f435df4fbf2baa4db9d24d3cb863a9a4cfe1e885c04a4b8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
