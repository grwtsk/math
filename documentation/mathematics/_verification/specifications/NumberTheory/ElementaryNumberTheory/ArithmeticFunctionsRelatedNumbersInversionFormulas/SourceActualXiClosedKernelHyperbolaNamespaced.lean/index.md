# Verification target: Source Actual Xi Closed Kernel Hyperbola Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82bd050d61fd5709c37a73c13303c823b99db18d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82bd050d61fd5709c37a73c13303c823b99db18d`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualXiHalfHyperbola` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualClosedXiAtomKernel](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedxiatomkernel.md) | 27 | `declaration-track:aec3b3f224cbdf23ba8dba00482adf5a76f945321f2b41caacc2b257ec0055a1` |
| 2 | `def` | [actualClosedMangoldtXiPair](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedmangoldtxipair.md) | 31 | `declaration-track:b61e428e52142975d9692ace85f88952a1c2b7116c667c13f5b2fc853dc93f5d` |
| 3 | `def` | [actualClosedMobiusXiHyperbola](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedmobiusxihyperbola.md) | 35 | `declaration-track:c9b370add37ebcd91a1c3783e78108d3565049274e92a17a62ee29681fc98039` |
| 4 | `theorem` | [ioc_zero_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/ioc-zero-eq.md) | 40 | `result-track:320b371cee0519a4c940596ff9729bec2a796bbc20682ef3f035c025aed3322e` |
| 5 | `theorem` | [psi_eq_positive_prefix](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/psi-eq-positive-prefix.md) | 45 | `result-track:84eacfe32370c343a0eaad91cb4f2fe2e31bc5f52585a68701f2cf6fcb38fbd0` |
| 6 | `theorem` | [actualPsi_eq_moebius_log_hyperbola](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualpsi-eq-moebius-log-hyperbola.md) | 51 | `result-track:63e4d14f1dc29749223bd4d5a73b17296347c803881eb5e1c88dc005100da0cb` |
| 7 | `theorem` | [actualClosedMangoldtXiPair_eq_half_sub_psi](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedmangoldtxipair-eq-half-sub-psi.md) | 61 | `result-track:7a2c2b37da39e7d2878c3dcb90ede832c99fffa67f167dc474f7813b4a196e07` |
| 8 | `theorem` | [actualClosedMangoldtXiPair_eq_joint_hyperbola](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedmangoldtxipair-eq-joint-hyperbola.md) | 70 | `result-track:f0402a134c55a1a2ed9bb948b68faf38e1483f89205f7cc8258a8070588f8326` |
| 9 | `theorem` | [actualClosedXiAtomKernel_touching](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedxiatomkernel-touching.md) | 84 | `result-track:8016a481ac3a8862eb18f4571c6fa9322ac99e06fca8a0fc7631d9db3348d069` |
| 10 | `theorem` | [actualClosedMangoldtXiPair_on_closed_cell](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualclosedmangoldtxipair-on-closed-cell.md) | 89 | `result-track:782a9b1a0bcb98befbb3fd1e5091780b66052a69ddb72b81826c1d23102c1fc3` |
| 11 | `theorem` | [actualAnchoredXiTailPrimitive_eq_closed_pair](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/SourceActualXiClosedKernelHyperbolaNamespaced.lean/declarations/actualanchoredxitailprimitive-eq-closed-pair.md) | 105 | `result-track:32d69b126a6e66791116d8604497de2a9752d356286691061968a97482eca738` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3d4c7b6d8e75763892e266dd4b4b3ac2d8da3ed938d8a479eab5c026b0ae9e8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiClosedKernelHyperbola/Variantd9f6e031f22a6e44d4be64fbe8ca7b62d964ac7ca56e3dca7f862aaf210e1ed0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
