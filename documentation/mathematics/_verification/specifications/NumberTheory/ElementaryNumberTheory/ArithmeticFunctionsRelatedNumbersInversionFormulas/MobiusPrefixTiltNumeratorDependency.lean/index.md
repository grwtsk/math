# Verification target: Mobius Prefix Tilt Numerator Dependency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36f8ca1f711d581433cfd4c84a17c26d15cc951c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36f8ca1f711d581433cfd4c84a17c26d15cc951c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.FiniteMobiusController` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RemovableSingularity` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/dirichletnumerator.md) | 14 | `declaration-track:5dc2372c166115f261f65444c3ff364d2e54efe8ceff184d2e90525a329d6bc8` |
| 2 | `def` | [correctedNumerator](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/correctednumerator.md) | 19 | `declaration-track:0854bc8b1b045660c1161bcb8625b575ad1c67ab90f44bda85bbbf2bb1bbd795` |
| 3 | `def` | [logNormalization](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/lognormalization.md) | 24 | `declaration-track:c668117403411d54a17453ba6741e61b8af81cabedff2ef3ba77f5ef17532281` |
| 4 | `theorem` | [exponential_at_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/exponential-at-half.md) | 29 | `result-track:7d0a53e0ebf041a7f3eea939564f79d1981fea424d76e18a8a486067f32f662d` |
| 5 | `theorem` | [dirichletNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/dirichletnumerator-half.md) | 39 | `result-track:0b0cd41c1fe142f56525b3174a43afdb7c89485871045de12e1ccf4922419e7b` |
| 6 | `theorem` | [correctedNumerator_half](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/correctednumerator-half.md) | 50 | `result-track:c01595ebdab193d7da5b11f4f942e952da6ee88d9ff611e181858de8a04e6b45` |
| 7 | `theorem` | [correctedNumerator_differentiable](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MobiusPrefixTiltNumeratorDependency.lean/declarations/correctednumerator-differentiable.md) | 55 | `result-track:6e6040850881317769ab60711c2d203c5a3683289839b5b44ee756b68fff78bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=784053ea24901af0657236520e18eb2ec5f4650b3255773ed03e26d082c1dd2e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/MobiusPrefixTiltNumeratorDependency/Variant10284475a48cd6562e6f365938d8ba4e42c68cef63ecda013bcd1be8c98375a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
