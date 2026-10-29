# Verification target: Corpus Carrier Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc49ce67c665b8212ee9238d7215e4b71d4e3ad1",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc49ce67c665b8212ee9238d7215e4b71d4e3ad1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Boolean.Corpus` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [carrierModule](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/carriermodule.md) | 16 | `declaration-track:6f95d9e051ab9db59662de9b26a25bcb3bba25494bf04e3849a089ab3ade9d57` |
| 2 | `def` | [evaluationModule](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/evaluationmodule.md) | 28 | `declaration-track:c3e11ae52748ddef083c113f1d0412dec9c1daf00f4d7b5f534a6783bc210c6b` |
| 3 | `def` | [semanticsModule](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/semanticsmodule.md) | 40 | `declaration-track:4208a4825edad53c27fd07a7d51df7fdea39bf5cabc64835ada3255fb39f2c86` |
| 4 | `def` | [algebraModule](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/algebramodule.md) | 52 | `declaration-track:56cef36887a507195fdfcad7db559737b92e4815036870e4ae5a3dd754d717e8` |
| 5 | `def` | [dependencyClosure](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/dependencyclosure.md) | 56 | `declaration-track:abad42924223b532c36265afec5505f077f71897062d5b35a12de6eeb140cb58` |
| 6 | `theorem` | [dependencyClosure_length](../../../../../ComputerScience/AlgorithmsInComputerScience/CorpusCarrierModule.lean/declarations/dependencyclosure-length.md) | 63 | `result-track:425caa9d462f81b8f127f4f7a4e1d34e073b39f0442350b5a470854ba666a22b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=18f0c5cfa464f7c8cb5c43467e1ac0f1f0d22bfa23af02bb2aefebc12d5d7f94 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Corpus/Variantd0865383930c7b87853127843a69f0328182894fd7e369c65658a1e42bb5e1c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
