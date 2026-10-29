# Verification target: Classifier Namespaced Window Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc0bb058d83e7bb8c9b2e1449f176a892d87d6b2",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc0bb058d83e7bb8c9b2e1449f176a892d87d6b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WindowClass](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/windowclass.md) | 22 | `declaration-track:0bd0e522a6a19510f902eb3691d72f5120216771e2d00667730c2974883afbec` |
| 2 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/context.md) | 33 | `declaration-track:0a4634d86496abc2af6b8526ac0b42151a49ca3e46207d0e4c34b0ffae88247c` |
| 3 | `def` | [deterministicClassifierClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/deterministicclassifierclaim.md) | 51 | `declaration-track:172c7a2aec7cc7399b435a3e2172349c57578747e0509b1a23dd484ce37fc59d` |
| 4 | `def` | [deterministicClassifierWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/deterministicclassifierwitness.md) | 54 | `declaration-track:a79d8e889db24410e582fb4e66e844847a2a433e033a139f8585ce164f6dce26` |
| 5 | `theorem` | [deterministicClassifierWitness_isProved](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/deterministicclassifierwitness-isproved.md) | 58 | `result-track:6061e35df139f3b982b54faf98aa864d40a4758d634be04d24d3d08c97c13f42` |
| 6 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/atom.md) | 62 | `declaration-track:c0df67a0de1126bd543cfa70b5109f6dd82d63dc2fa6ed830f0524ab408f7804` |
| 7 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/atom-id.md) | 74 | `declaration-track:ff4c5f073c340ad40284aa0e478c138a4fa29e10eaf098052ecea4160c8ed8ef` |
| 8 | `def` | [Atom.claim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/atom-claim.md) | 85 | `declaration-track:7babaff528ab8c07308809fc63e073b65819e01c9afc7918ba75b322e370c5be` |
| 9 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/atomresidue.md) | 96 | `declaration-track:3a05b7d78ed24f1657aca2ac6cf21e76aa66fc70801e79f10be2b21064307f35` |
| 10 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/allatoms.md) | 113 | `declaration-track:43344bb466f8c629f897106ddf80c80de9c43da62260c7bc60d819990b3efab9` |
| 11 | `def` | [classifierResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/classifierresidues.md) | 125 | `declaration-track:776ef5f435366a2c9605f4a8a3bef2fddfc9fca4b3f31005a0f6f7ea32f3b448` |
| 12 | `def` | [primeGapOverclaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/primegapoverclaim.md) | 128 | `declaration-track:551ac5432064a8f791f558e857b0c092cce1e3e687a1c17d804d3d4da7106bba` |
| 13 | `def` | [primeGapOverclaimWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/primegapoverclaimwitness.md) | 131 | `declaration-track:d1894876bd1b5c15e10119aab3b85b7db2e98e53d39b86e2846d981335b31043` |
| 14 | `theorem` | [primeGapOverclaimWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/primegapoverclaimwitness-hasresidue.md) | 135 | `result-track:e2e63bab66e409d6ad2bbb9af07f37982137eec58236be07cb282edaa6a2058c` |
| 15 | `theorem` | [classifierResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/classifierresidue-count.md) | 139 | `result-track:cc0a9cfe1cb0d9317d50d7d2d92ba823efb8cc2ba3a116790c960ff13e1adc10` |
| 16 | `theorem` | [classifierResidues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/classifierresidues-targets-correct.md) | 143 | `result-track:5a4a7bc6bdf9a9c61a138fc9a3cff1563943fbdd0a60735a28efdda9c3efce15` |
| 17 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/allatoms-nodup.md) | 150 | `result-track:4bedfca0cade6c3d57f39b15cd89eb2bc11cc6a376bfd724b6e0552321e4f07e` |
| 18 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierNamespacedWindowClass.lean/declarations/atomid-injective.md) | 154 | `result-track:0087767d936f6fd67bb32ce2d75389a1e86843db9d5dedaa9642a978a6f34d8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=feea181ae6f785ab2978bdca55b05e3b68e91e6dfa2f8fac4fcf1fc3af680870 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variant2e3a19ea9408bdd8f77807c6bb29f549d92677901d87ff8e41ed68343f819b31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
