# Verification target: Query Git Log Walk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ac66d54a1d47eb3b247ef9ff110438523a99758",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ac66d54a1d47eb3b247ef9ff110438523a99758`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Cache.Marker` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gitLogWalk](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/gitlogwalk.md) | 28 | `declaration-track:3b021ae5ba527a100abbabcfdcb5966e5a7946ec72a84f9b7451e9735ac5a2fd` |
| 2 | `def` | [gitMergeBase](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/gitmergebase.md) | 47 | `declaration-track:5d67f76cb77f9e0ff845aa986097dc02e49bea022f4b0874ad9443409f35055b` |
| 3 | `def` | [headIsAncestorOfMaster](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/headisancestorofmaster.md) | 67 | `declaration-track:1f07f80caa700e4134ca8e47a13d6da3e27cfcc549b01482b6662a7621c82754` |
| 4 | `def` | [probeContainerForSHA](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/probecontainerforsha.md) | 86 | `declaration-track:80187adce12039370f7cbf505cc2fd782d2f44cd42f39c8f3b041fc243c12cbd` |
| 5 | `def` | [defaultUnsafeSHAWindow](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/defaultunsafeshawindow.md) | 109 | `declaration-track:222469d34837cc417ddac1201d0ac3d7302d1e9704eb08cc40cdfcf426be7781` |
| 6 | `def` | [findRecentSHAsWithCache](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/findrecentshaswithcache.md) | 119 | `declaration-track:4b0c9cfd54035a7de4c164e7fba5ac76f6456274902c78b8e51a0bba33c8ef2e` |
| 7 | `def` | [findMostRecentSHAWithCache](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/findmostrecentshawithcache.md) | 134 | `declaration-track:f53a0f57e42366203d44503cfb6319119e9b1d024bf69f61124310a70400214b` |
| 8 | `def` | [resolveGitRef](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/resolvegitref.md) | 142 | `declaration-track:1554675c67a70c0713941b5f532b201004388fed72e50ca08cfcea39a7f4e319` |
| 9 | `def` | [resolveQueryRepo](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/resolvequeryrepo.md) | 157 | `declaration-track:4b7d278956647f4dc72ab36ca971c02489ed4db0f62109fd79d762a12dcaab3f` |
| 10 | `def` | [cacheQuerySingle](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/cachequerysingle.md) | 173 | `declaration-track:e8823e348cbeb8468a053e875ac3d9b68c4cfff608ce710ac714f750e5c2368d` |
| 11 | `def` | [cacheQuery](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/cachequery.md) | 196 | `declaration-track:3ec63c90092f227b857e5459fbea31e3a04eadc8242ec853a3fc9087dc8ca9f2` |
| 12 | `def` | [discoverUnsafeScopes](../../../../../ComputerScience/AlgorithmsInComputerScience/QueryGitLogWalk.lean/declarations/discoverunsafescopes.md) | 239 | `declaration-track:35d89fea5943f3247f792dcc25649a6856d89aa295506dde903add64b7919b7d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f0aac1095179a9f99e0e6522d734703eb35fa2b91fdd1f7e880b090676de652 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
