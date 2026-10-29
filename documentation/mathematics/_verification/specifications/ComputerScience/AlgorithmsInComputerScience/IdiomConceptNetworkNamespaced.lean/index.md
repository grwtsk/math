# Verification target: Idiom Concept Network Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca2fbcd4d7455deeaf4c5f4d6ac708159bce03f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca2fbcd4d7455deeaf4c5f4d6ac708159bce03f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Substitution` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [NetworkVertexKind](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/networkvertexkind.md) | 15 | `declaration-track:e39a5475cff44f9cffa58765933e9333b81745ce7f0d1d0f436ab53a14e8aabc` |
| 2 | `structure` | [NetworkVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/networkvertex.md) | 24 | `declaration-track:b0c52eadbb4447d2de6a9b99ac778b365a112218a28b6c6ad9fdefcc6c0fee8d` |
| 3 | `inductive` | [NetworkEdgeType](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/networkedgetype.md) | 30 | `declaration-track:9abb0bb25d21038eb075b69f952a4db64acf4c18b93a4ed2c7d03a5523c8fd98` |
| 4 | `structure` | [NetworkEdge](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/networkedge.md) | 44 | `declaration-track:84d0c7f94c0181440019c3701d9f07f9b65258a880e2a6cada12890b7509fa00` |
| 5 | `structure` | [IdiomConceptNetwork](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/idiomconceptnetwork.md) | 52 | `declaration-track:965c86b98427b911b62de7d4a13ac5158b593a6e00c5f78dd29fa6d2f9b4e8fb` |
| 6 | `def` | [NetworkEdgeType.entails](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/networkedgetype-entails.md) | 66 | `declaration-track:0c3a0708f9b95058c1354ee25e8e5ba7baec93bb0b32314e1eb557fdeb4f598c` |
| 7 | `theorem` | [shared_imagery_not_synonymy](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/shared-imagery-not-synonymy.md) | 73 | `result-track:25fdd02da3424737d466b5419e802e5ca7d5c43d905fc2df1f3be305e735f864` |
| 8 | `theorem` | [shared_concept_not_synonymy](../../../../../ComputerScience/AlgorithmsInComputerScience/IdiomConceptNetworkNamespaced.lean/declarations/shared-concept-not-synonymy.md) | 78 | `result-track:f3a120c0c1ef8cffc45dc886c0dc788b2f48a25be2156b2f8c4663a77ea394da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=37883bf825f956c415014a2ac32dd3054ee2615e962e28eb12c80ac1a10c4277 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/IdiomConceptNetwork/Varianted5408db1ecd83cb3dd2965209d9907bb0ac97526a13f9e34686c1b7fce6e501.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
