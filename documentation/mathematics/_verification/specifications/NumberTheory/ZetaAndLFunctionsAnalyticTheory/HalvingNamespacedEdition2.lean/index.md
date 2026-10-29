# Verification target: Halving Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0578364ef8fa609b949cf51cca40317932cadfa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0578364ef8fa609b949cf51cca40317932cadfa`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.Defs.Counting` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [reflect_re](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/reflect-re.md) | 34 | `result-track:b291c98566e2ccd7253f59b11c1089eef6692f099fd459d1f62e5407f0729ebe` |
| 2 | `lemma` | [reflect_im](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/reflect-im.md) | 35 | `result-track:a2d88dfedc52df67d5e6bf868414534756998e03f6d4917a40df2b5e24a43f22` |
| 3 | `lemma` | [reflect_reflect](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/reflect-reflect.md) | 37 | `result-track:d2d57696c55351b363c5cd8624993bdecbd02568de43f9a47c84f52b58a2dc0e` |
| 4 | `lemma` | [reflect_injective](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/reflect-injective.md) | 40 | `result-track:33d06cb0c621fd584883d259759cc16d26707c7557c3bd33298f56b9a575d407` |
| 5 | `lemma` | [reflect_mem_window](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/reflect-mem-window.md) | 47 | `result-track:42ad64452f2cd64bbd6e23d12dc9923d63505a5773bd24844b712ed63d911804` |
| 6 | `theorem` | [N_le_two_mul_half](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/HalvingNamespacedEdition2.lean/declarations/n-le-two-mul-half.md) | 51 | `result-track:bd908f688bdfe382a02d0bf1849110c0686b6ec11216af416c119f29ec0e042a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=505406b863e634be3573fbb694f663c94c8cdae9f68ce08b4f2359b0988363bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
