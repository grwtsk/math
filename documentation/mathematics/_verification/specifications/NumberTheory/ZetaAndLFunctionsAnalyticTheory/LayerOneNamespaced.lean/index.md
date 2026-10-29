# Verification target: Layer One Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a151c94a90a39e74a77c3833894b3bb4fcf98dc",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a151c94a90a39e74a77c3833894b3bb4fcf98dc`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Coeff.DiagLaw` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [norm_sq_prime_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/declarations/norm-sq-prime-term.md) | 34 | `result-track:a7effa29e9604d101731aceec0658ba9351bd60135f42cd845cc2e80778cad7d` |
| 2 | `lemma` | [re_sq_add_im_sq_inv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/declarations/re-sq-add-im-sq-inv.md) | 43 | `result-track:2c695c7f9a0ad5771f4cadaa39667acc6cd4c2bbceb14309c1120db5dd9c4f67` |
| 3 | `def` | [primeLogPowSum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/declarations/primelogpowsum.md) | 50 | `declaration-track:133c421805f2a9c729f2088d8cc5834413809eb385d8fa264cf9eb6c6869c78f` |
| 4 | `lemma` | [sfPart_one_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/declarations/sfpart-one-eq.md) | 54 | `result-track:ae2f10189035c34f32186397e0f5b7725e207a601b327b31b7c32cb0b8d05b4e` |
| 5 | `theorem` | [sfPart_one_asymp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/LayerOneNamespaced.lean/declarations/sfpart-one-asymp.md) | 72 | `result-track:ba202586bb79dfb2afabe8ad77ce739512dfca6e7188b6242902584f56a68b26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1c6b078a79b9e660bb59dd2b6c37455b7e4b44361128dbae95a477753eb5ecdb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LayerOne/Variantf5c72cc1fb3fa38d2d697d8114c5dcb5b733d97de9e6237789746a3999e502a7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
