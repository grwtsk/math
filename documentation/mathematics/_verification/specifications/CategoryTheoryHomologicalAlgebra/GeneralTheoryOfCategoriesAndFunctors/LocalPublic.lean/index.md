# Verification target: Local Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db656ce1bc19145f5df5ab06712fd888e28930b1",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant8a7b2273c0c38e0ab7a07dc4767b9c4732755b469b6defd5c0b93698493f4769.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db656ce1bc19145f5df5ab06712fd888e28930b1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant8a7b2273c0c38e0ab7a07dc4767b9c4732755b469b6defd5c0b93698493f4769.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant8a7b2273c0c38e0ab7a07dc4767b9c4732755b469b6defd5c0b93698493f4769.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isLocal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/islocal.md) | 46 | `declaration-track:1f5b9c2cdbec48303ec76b3ac616fb4ea8dfbb7fdf1c6e704c080f7640742232` |
| 2 | `lemma` | [isLocal_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/islocal-iff.md) | 50 | `result-track:89d2e94ef2096caf74e3be20bdd7a735094de9a48292fca367e917fef74aaf9a` |
| 3 | `def` | [isColocal](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/iscolocal.md) | 59 | `declaration-track:e966354eefba37faabea588027c8961fafcf3f897c252a3872f4c1f8d88ad92c` |
| 4 | `lemma` | [isColocal_iff](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/iscolocal-iff.md) | 63 | `result-track:b3f068f893ad9318e2b015ee5a7661578992f60dabf30dd9fa7cf8e0de4dbd29` |
| 5 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:4ffadd5bbe2ba6dbe94103cfafc1da17b85bbe5959e403877fc2a9f7601db10c` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/instance-source-edition-4.md) | 73 | `declaration-track:bd0b4c336a6884963fe8edb04664ba23faabe9048d5988fb932a5c0af5b272c7` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/instance.md) | 80 | `declaration-track:47331b32750c1b12187177398fea2540c2221e8c59e69008b45b77459513df35` |
| 8 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/instance-source-edition-3.md) | 93 | `declaration-track:5bd30eb4f737ce1a444b5807a8256fc0db7c05b13706e90ca2c30c9a6452ef4a` |
| 9 | `lemma` | [isLocal_antitone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/islocal-antitone.md) | 107 | `result-track:2e89e0a6d3aa4ffc59e888610cf4ad721af83ec4441e7fed623fce54293208b7` |
| 10 | `lemma` | [isColocal_antitone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/iscolocal-antitone.md) | 114 | `result-track:d6e51997bdddef0a34e5963e3f8a062b4d1ddca5e93c34dfc6ac0b516f8cddf4` |
| 11 | `lemma` | [isLocal_iSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/islocal-isup.md) | 121 | `result-track:5dd59ba68d8e08bdc488260ac3fb86c6dababa0fcfda787efd3b47d62d182779` |
| 12 | `lemma` | [isColocal_iSup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/iscolocal-isup.md) | 127 | `result-track:18d2c6e2c6b7d339fa4dafc8de43116f97d8993d1310e0733b8d4c5322598b47` |
| 13 | `lemma` | [isLocal_single_iff_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/islocal-single-iff-bijective.md) | 131 | `result-track:25dc1762c5396937937737c529c526c2346370bd813e37a4275c850ce7ef2a74` |
| 14 | `lemma` | [isColocal_single_iff_bijective](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LocalPublic.lean/declarations/iscolocal-single-iff-bijective.md) | 136 | `result-track:ba6a1e9ec26b4cae467397b8036ca44aa042bb7aba4a6cebea9ab232f5abc3c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3e7fec48aaa605b754d34bdbf04363d4785bc11a3568f1c5dec6b89fd5eded46 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant8a7b2273c0c38e0ab7a07dc4767b9c4732755b469b6defd5c0b93698493f4769.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Local/Variant8a7b2273c0c38e0ab7a07dc4767b9c4732755b469b6defd5c0b93698493f4769.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
