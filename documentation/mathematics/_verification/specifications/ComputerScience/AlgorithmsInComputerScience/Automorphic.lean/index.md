# Verification target: Automorphic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d787c6d5bd3380e12fe93cf89ae077824f458a06",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d787c6d5bd3380e12fe93cf89ae077824f458a06`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Arithmetic.EllipticCurve.BSD.Assembly` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BSDTheoremAutomorphicProvenanceSharedData](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicprovenanceshareddata.md) | 39 | `declaration-track:d59b886822749eb032e4d85d7761fc4bb1fa7d6641e4267bb72dff5d6aca08fb` |
| 2 | `structure` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate.md) | 82 | `declaration-track:215fbcb5705bb2ade03af796f0c5fc2b48235c240b3039c0021d2285e0ec41c7` |
| 3 | `def` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate-certifiedforbsd.md) | 133 | `declaration-track:9238ef5ca27590a9825ad7cb8dced88e1d1912933f6f50e93e7f6752f9138780` |
| 4 | `theorem` | [BSDTheoremAutomorphicProvenanceCoherenceCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicprovenancecoherencecertificate-certifiedforbsd-of-f.md) | 181 | `result-track:6c28eebc749c5268d1ebb9cfcfeeab2c63d599d91e82c8f060fd01ac9b628962` |
| 5 | `structure` | [BSDTheoremAutomorphicScopeSharedData](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicscopeshareddata.md) | 237 | `declaration-track:7075ea35a32c067e2a5ce8075d9e97ca2023e3f4ac0c940e1b724e39f51d78cf` |
| 6 | `structure` | [BSDTheoremAutomorphicScopeCoherenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate.md) | 270 | `declaration-track:eaaeb9aa03d5dc48b5a56bdfbdc9418c044a60301f1bc55e1d42fddc90b60f60` |
| 7 | `def` | [BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate-certifiedforbsd.md) | 308 | `declaration-track:936d06549aba125d7e06655a2bdc4b603f61f62f4a7ab2b81b90f4ff1b5be81a` |
| 8 | `theorem` | [BSDTheoremAutomorphicScopeCoherenceCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicscopecoherencecertificate-certifiedforbsd-of-fields.md) | 344 | `result-track:17b5ede177b651336f3afc90e918820770141e46f50ad3a1ba8b1fad9d4e038e` |
| 9 | `structure` | [BSDTheoremAutomorphicObjectSharedData](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectshareddata.md) | 397 | `declaration-track:b1d404147ab657b6868cd6d7e6b5450a814db4a2a134e66c3e29d1d60c5a98f5` |
| 10 | `structure` | [BSDTheoremAutomorphicObjectCoherenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate.md) | 427 | `declaration-track:92e64f7162bae2fd66eae428710ec06a27556c11bef10f0a8f515562aa584029` |
| 11 | `def` | [BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate-certifiedforbsd.md) | 472 | `declaration-track:7521e1bcdf8f12832be502ecc3044f50457e5474fbac723c78f7912bedd7e400` |
| 12 | `theorem` | [BSDTheoremAutomorphicObjectCoherenceCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectcoherencecertificate-certifiedforbsd-of-field.md) | 515 | `result-track:bbe65c8b311cdfd1bb0e534f67a3e5571a1967c573e65f3c0b3be57669fc5420` |
| 13 | `structure` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate.md) | 570 | `declaration-track:be9f8c1ec23c7ebc7ea556a1fea84ac66c0a5ec2cbc8eb6217a1a723b497c209` |
| 14 | `def` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate-certifiedforbsd.md) | 639 | `declaration-track:8a55ca5a5de1d9961894a04ca0102913556473823673f48b58a5418ec24eacf6` |
| 15 | `theorem` | [BSDTheoremAutomorphicObjectKindCoherenceCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicobjectkindcoherencecertificate-certifiedforbsd-of-f.md) | 682 | `result-track:7386d67ef3bb18ddcaffffed5dcd4c767b44837c5de28366dda81f6380f31cbe` |
| 16 | `structure` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate.md) | 741 | `declaration-track:03f96da5642b412d41086b96b9f70848dfe61c0a59c30e369e2a67a385d4a239` |
| 17 | `def` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate-certifiedfor.md) | 820 | `declaration-track:431ae98951df9377ae5010e6bd8863818038fea820898b2a862119e4715723f3` |
| 18 | `theorem` | [BSDTheoremAutomorphicAnalyticSourceKindCoherenceCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Automorphic.lean/declarations/bsdtheoremautomorphicanalyticsourcekindcoherencecertificate-certifiedfor-source-edition-2.md) | 869 | `result-track:5613f7e5395e80c72f52be3ad4864abda44b05c023377834d8a444efe1f0f5a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0b9a3127fbd5bc6ba3677a59a50912d32e64b0909d58fd1f3170e0275ac18821 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Automorphic/Variantb451a86e14a87d0e64e81c07fb397d15bef1799b777d16db6f7c1d725a3783f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
