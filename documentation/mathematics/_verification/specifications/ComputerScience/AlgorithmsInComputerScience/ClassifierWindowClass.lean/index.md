# Verification target: Classifier Window Class

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdf94603184941d5c5539d55f0e19cbabe3d8946",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdf94603184941d5c5539d55f0e19cbabe3d8946`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Kernel.Checked` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [WindowClass](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/windowclass.md) | 14 | `declaration-track:048064ddadd55c235480ecc97ed299def94fd38000e32f36c7d82bacbdfe1292` |
| 2 | `structure` | [Context](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/context.md) | 25 | `declaration-track:8f2d9268c3e0e3219fad6503350e4a8a8b7fd180d1d4246faff1d3ef129fe75e` |
| 3 | `def` | [deterministicClassifierClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/deterministicclassifierclaim.md) | 43 | `declaration-track:28e529e16db1b4c5537feeb35d2f88ecb80bcb57d086985cde1c8bd23de20d83` |
| 4 | `def` | [deterministicClassifierWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/deterministicclassifierwitness.md) | 46 | `declaration-track:3dba9f163caf959eb8f8886adc18371a4663d2e78c701fa7bc18e0ba7c33d859` |
| 5 | `theorem` | [deterministicClassifierWitness_isProved](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/deterministicclassifierwitness-isproved.md) | 50 | `result-track:8e988bce1ea66cbafbfe18f58e623d4422ec4e7b50d4fef4495b6b7a40dd8197` |
| 6 | `inductive` | [Atom](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/atom.md) | 54 | `declaration-track:2fcfb799554598ced658e86bc4dbabfbd74ef3506e1e87da911dc14f74826d10` |
| 7 | `def` | [Atom.id](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/atom-id.md) | 66 | `declaration-track:6057f4a96e7b5c4fe5b9e9e7e34e0a0768856222bd78a858254a4744ec097eb3` |
| 8 | `def` | [Atom.claim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/atom-claim.md) | 77 | `declaration-track:aa44715a57a3cd99b91f498f1d186587fca8312957d047db8993abc3d9019264` |
| 9 | `def` | [atomResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/atomresidue.md) | 88 | `declaration-track:cb2db06fdee2c448ae71e640cdca27ab9564fbfc4a7e96a18accb5685a43fcf6` |
| 10 | `def` | [allAtoms](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/allatoms.md) | 105 | `declaration-track:571e45ca957eccc712c98d1ddc171ddcc4a13855798923f371b54538263eb691` |
| 11 | `def` | [classifierResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/classifierresidues.md) | 117 | `declaration-track:ecc155b97e734e166c421a521f8968fbeb36a6a72a54ab71adfcf3663166500f` |
| 12 | `def` | [primeGapOverclaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/primegapoverclaim.md) | 120 | `declaration-track:4d6fb81fee4dba947152a37117e740745ece646ea4b0c6bde4689d1770782aea` |
| 13 | `def` | [primeGapOverclaimWitness](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/primegapoverclaimwitness.md) | 123 | `declaration-track:11fb1bf8ac2e646b047844303d8fa270a6b8f2505ebc9db5fcbbaa4669c88897` |
| 14 | `theorem` | [primeGapOverclaimWitness_hasResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/primegapoverclaimwitness-hasresidue.md) | 127 | `result-track:d4b27e24b4b47fa430f2e57c080cb98079a3565145fb763995c9719f042f6c02` |
| 15 | `theorem` | [classifierResidue_count](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/classifierresidue-count.md) | 131 | `result-track:922890399d36d8d1518ee173aff15a6deb69d49c6f24ba013d7936a8dd87999c` |
| 16 | `theorem` | [classifierResidues_targets_correct](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/classifierresidues-targets-correct.md) | 135 | `result-track:e93985a699aea380072c73258027d1606bacf4e7c29e5604df126741d3b0764d` |
| 17 | `theorem` | [allAtoms_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/allatoms-nodup.md) | 142 | `result-track:05f64f705a717528f99ad2526c2324fc29c1c7237b607e1eb251fae0fa07a804` |
| 18 | `theorem` | [atomId_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ClassifierWindowClass.lean/declarations/atomid-injective.md) | 146 | `result-track:b54bdd2a785f8288f7e4954abbac73bf19000fd251e05f2d35db6c229b22901b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ae59e233d30064ed757de74cccc8c77c21d0381fd4c8bfdb8b28d6aa659f8baf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Classifier/Variantfd7480f449c25ed0fa74ca992aabd698bd93aceb2c54c13d2a9bde939f0cf047.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
