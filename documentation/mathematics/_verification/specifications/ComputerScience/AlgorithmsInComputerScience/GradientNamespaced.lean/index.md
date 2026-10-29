# Verification target: Gradient Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e9329d9c6d64f96072271e44fcecc4fbd0849cd",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e9329d9c6d64f96072271e44fcecc4fbd0849cd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimize` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.Optimization.Box` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gradientInterval](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/gradientinterval.md) | 49 | `declaration-track:83bda5322964696063ca77e6cd0788fa7f36e23d0158bfb4d479c5a5e2e5c779` |
| 2 | `def` | [gradientIntervalN](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/gradientintervaln.md) | 53 | `declaration-track:b0c33060afbe477fb0cad2a358fde2c42a522a1f55f787c0d7ae7502b1042aa9` |
| 3 | `def` | [mkDualEnvCore](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/mkdualenvcore.md) | 60 | `declaration-track:6f6951eff06813647217cb7e5eeb13af2dfeaff7bfd8c6840293e80375321f3d` |
| 4 | `def` | [evalWithDerivCore](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/evalwithderivcore.md) | 64 | `declaration-track:faaa877d5434b6098370151b291d9998a9fd019238463288e3819c688e4d5ba3` |
| 5 | `def` | [derivIntervalCoreN](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/derivintervalcoren.md) | 69 | `declaration-track:05aabf0862ceb7cebde6beecae52618a62ec89099a81fc75b8e82d2fe20d8aae` |
| 6 | `def` | [gradientIntervalCore](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/gradientintervalcore.md) | 74 | `declaration-track:c624da6492e051c359aeef3ab6c87fafe6d6a36daddd9fea1b5ad4613992477a` |
| 7 | `inductive` | [IntervalSign](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/intervalsign.md) | 80 | `declaration-track:d3a5cc907b238a54f67665624fb4398ce4a8c4a0fa5a767ab4f1abc461840ed4` |
| 8 | `def` | [classifySign](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/classifysign.md) | 89 | `declaration-track:cd1d614d5bd4bee1f9aec7618ca80633deb43fabf5d822860949691268aecb67` |
| 9 | `def` | [gradientSignature](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/gradientsignature.md) | 97 | `declaration-track:da581997ff69fbf2151b7ea6e04f4a2798d7610592cf2c1be4c014e8ad9a1181` |
| 10 | `def` | [isStrictlyPositive](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/isstrictlypositive.md) | 103 | `declaration-track:4ff23173c363f441cd141d990980b572e97476e62743c37851727cc7b3b0b0f7` |
| 11 | `def` | [isStrictlyNegative](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/isstrictlynegative.md) | 106 | `declaration-track:f65b9ade44fb3445a02bdc7339a80c391db9a5dbb4d6faaa20df75e599297c87` |
| 12 | `def` | [isNonnegative](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/isnonnegative.md) | 109 | `declaration-track:135508ce46cc814ef3102e5e76866295b0dd59e854c1f18b95d185144ebdf9c9` |
| 13 | `def` | [isNonpositive](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/isnonpositive.md) | 112 | `declaration-track:63c4456a2229df11656aaf23d2123183c3683ea53e736fc73c7772dce082ec39` |
| 14 | `def` | [canPruneToLo](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/canprunetolo.md) | 118 | `declaration-track:878df5ba560bf86aacc3f9c48d73e686e71c14d7218f134c835e1b292ddda3e7` |
| 15 | `def` | [canPruneToHi](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/canprunetohi.md) | 123 | `declaration-track:0178503a5c9037b354f76f733486241f318b3f27afccf9416525f17a4c92b067` |
| 16 | `def` | [pruneBoxForMin](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/pruneboxformin.md) | 128 | `declaration-track:eb5d9e0c51b6b80fe9acf25dfe499156481facaa39dd0e3cdaa8e85d90ec9c9c` |
| 17 | `theorem` | [gradientInterval_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/gradientinterval-correct.md) | 147 | `result-track:950314e9f06dce56a1a511ae924d93f52e4f68c9985d8f9e020f1404c9c5c20d` |
| 18 | `theorem` | [pruneToLo_preserves_min](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/prunetolo-preserves-min.md) | 167 | `result-track:b1755b79e4a2ad77f7512447709dada3c83a7754fb37b9179c0560626318c673` |
| 19 | `theorem` | [pruneToHi_preserves_min](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/prunetohi-preserves-min.md) | 244 | `result-track:49565d1b7439c922575650fcaa6da6e0447d6e43ce9a445b3249ef7b66184747` |
| 20 | `theorem` | [pruneBoxForMin_subset](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/pruneboxformin-subset.md) | 318 | `result-track:465b1794e3c60e14c80237c7480cb2f82c206ccb319a8ac3d69bc738627ddc18` |
| 21 | `theorem` | [pruneBoxForMin_length](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/pruneboxformin-length.md) | 362 | `result-track:36d311f97c5072e757e747fa416ac8f418baf110a6dd1932dff75b04ebb5a907` |
| 22 | `theorem` | [pruneBoxForMin_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/GradientNamespaced.lean/declarations/pruneboxformin-correct.md) | 382 | `result-track:bcd9622f4acdcfb44de0001630fb7c91d6985ce152f4df0b87d5c0420cd854e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b72c18617f7563de3280569f4ae87da5c7a642ab351b86eb9a897c96fce643af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Gradient/Variant2f44b0ce70f006a976d056aee90abb7064ee5c64ebbe6634f69a26c5a7dcd26f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
